.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish256Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0xe

.field private static final ROTATION_0_1:I = 0x10

.field private static final ROTATION_1_0:I = 0x34

.field private static final ROTATION_1_1:I = 0x39

.field private static final ROTATION_2_0:I = 0x17

.field private static final ROTATION_2_1:I = 0x28

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x25

.field private static final ROTATION_4_0:I = 0x19

.field private static final ROTATION_4_1:I = 0x21

.field private static final ROTATION_5_0:I = 0x2e

.field private static final ROTATION_5_1:I = 0xc

.field private static final ROTATION_6_0:I = 0x3a

.field private static final ROTATION_6_1:I = 0x16

.field private static final ROTATION_7_0:I = 0x20

.field private static final ROTATION_7_1:I = 0x20


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->kw:[J

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v3

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v4

    array-length v5, v1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_2

    array-length v5, v2

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    aget-wide v7, p1, v5

    const/4 v9, 0x1

    aget-wide v10, p1, v9

    const/4 v12, 0x2

    aget-wide v13, p1, v12

    const/4 v15, 0x3

    aget-wide v16, p1, v15

    const/16 v18, 0x11

    move-wide/from16 v18, v16

    move-wide/from16 v16, v13

    move-wide v13, v10

    move-wide v10, v7

    const/16 v7, 0x11

    :goto_0
    if-lt v7, v9, :cond_0

    aget v8, v3, v7

    aget v20, v4, v7

    add-int/lit8 v21, v8, 0x1

    aget-wide v22, v1, v21

    sub-long v10, v10, v22

    add-int/lit8 v22, v8, 0x2

    aget-wide v23, v1, v22

    add-int/lit8 v25, v20, 0x1

    aget-wide v26, v2, v25

    add-long v23, v23, v26

    sub-long v13, v13, v23

    add-int/lit8 v23, v8, 0x3

    aget-wide v26, v1, v23

    add-int/lit8 v24, v20, 0x2

    aget-wide v28, v2, v24

    add-long v26, v26, v28

    sub-long v5, v16, v26

    add-int/lit8 v16, v8, 0x4

    aget-wide v16, v1, v16

    move-wide/from16 v29, v13

    int-to-long v12, v7

    add-long v16, v16, v12

    const-wide/16 v31, 0x1

    add-long v16, v16, v31

    move-object/from16 v27, v3

    move-object/from16 v31, v4

    sub-long v3, v18, v16

    const/16 v14, 0x20

    invoke-static {v3, v4, v14, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v3

    sub-long/2addr v10, v3

    move-wide/from16 v16, v10

    move-wide/from16 v9, v29

    invoke-static {v9, v10, v14, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v5, v9

    const/16 v11, 0x3a

    move-wide/from16 v14, v16

    invoke-static {v9, v10, v11, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v14, v9

    const/16 v11, 0x16

    invoke-static {v3, v4, v11, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v3

    sub-long/2addr v5, v3

    const/16 v11, 0x2e

    invoke-static {v3, v4, v11, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v3

    sub-long/2addr v14, v3

    const/16 v11, 0xc

    invoke-static {v9, v10, v11, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v5, v9

    const/16 v11, 0x19

    invoke-static {v9, v10, v11, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v14, v9

    const/16 v11, 0x21

    invoke-static {v3, v4, v11, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v3

    sub-long/2addr v5, v3

    aget-wide v16, v1, v8

    sub-long v14, v14, v16

    aget-wide v16, v1, v21

    aget-wide v18, v2, v20

    add-long v16, v16, v18

    sub-long v9, v9, v16

    aget-wide v16, v1, v22

    aget-wide v18, v2, v25

    add-long v16, v16, v18

    sub-long v5, v5, v16

    aget-wide v16, v1, v23

    add-long v16, v16, v12

    sub-long v3, v3, v16

    const/4 v8, 0x5

    invoke-static {v3, v4, v8, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v3

    sub-long/2addr v14, v3

    const/16 v11, 0x25

    invoke-static {v9, v10, v11, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v5, v9

    const/16 v11, 0x17

    invoke-static {v9, v10, v11, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v14, v9

    const/16 v11, 0x28

    invoke-static {v3, v4, v11, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v3

    sub-long/2addr v5, v3

    const/16 v11, 0x34

    invoke-static {v3, v4, v11, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v3

    sub-long/2addr v14, v3

    const/16 v11, 0x39

    invoke-static {v9, v10, v11, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v5, v9

    const/16 v11, 0xe

    invoke-static {v9, v10, v11, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long v11, v14, v9

    const/16 v13, 0x10

    invoke-static {v3, v4, v13, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v18

    sub-long v16, v5, v18

    add-int/lit8 v7, v7, -0x2

    move-wide v13, v9

    move-wide v10, v11

    move-object/from16 v3, v27

    move-object/from16 v4, v31

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v9, 0x1

    const/4 v12, 0x2

    const/4 v15, 0x3

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x0

    aget-wide v4, v1, v3

    sub-long/2addr v10, v4

    const/4 v4, 0x1

    aget-wide v5, v1, v4

    aget-wide v7, v2, v3

    add-long/2addr v5, v7

    sub-long/2addr v13, v5

    const/4 v5, 0x2

    aget-wide v6, v1, v5

    aget-wide v8, v2, v4

    add-long/2addr v6, v8

    sub-long v16, v16, v6

    const/4 v2, 0x3

    aget-wide v6, v1, v2

    sub-long v18, v18, v6

    aput-wide v10, p2, v3

    aput-wide v13, p2, v4

    aput-wide v16, p2, v5

    aput-wide v18, p2, v2

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method encryptBlock([J[J)V
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->kw:[J

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v3

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v4

    array-length v5, v1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_2

    array-length v5, v2

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    aget-wide v7, p1, v5

    const/4 v9, 0x1

    aget-wide v10, p1, v9

    const/4 v12, 0x2

    aget-wide v13, p1, v12

    const/4 v15, 0x3

    aget-wide v16, p1, v15

    aget-wide v18, v1, v5

    add-long v7, v7, v18

    aget-wide v18, v1, v9

    aget-wide v20, v2, v5

    add-long v18, v18, v20

    add-long v10, v10, v18

    aget-wide v18, v1, v12

    aget-wide v20, v2, v9

    add-long v18, v18, v20

    add-long v13, v13, v18

    aget-wide v18, v1, v15

    add-long v16, v16, v18

    move-wide/from16 v5, v16

    move-wide/from16 v16, v13

    move-wide v13, v10

    move-wide v10, v7

    const/4 v7, 0x1

    :goto_0
    const/16 v8, 0x12

    if-ge v7, v8, :cond_0

    aget v8, v3, v7

    aget v19, v4, v7

    const/16 v15, 0xe

    add-long/2addr v10, v13

    invoke-static {v13, v14, v15, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    const/16 v15, 0x10

    move-wide/from16 v22, v13

    add-long v12, v16, v5

    invoke-static {v5, v6, v15, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    const/16 v14, 0x34

    add-long/2addr v10, v5

    invoke-static {v5, v6, v14, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    const/16 v14, 0x39

    add-long v12, v12, v22

    move-wide/from16 v16, v10

    move-wide/from16 v9, v22

    invoke-static {v9, v10, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v11, 0x17

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    add-long v3, v16, v9

    invoke-static {v9, v10, v11, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v11, 0x28

    add-long/2addr v12, v5

    invoke-static {v5, v6, v11, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long/2addr v3, v5

    const/4 v11, 0x5

    invoke-static {v5, v6, v11, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    const/16 v14, 0x25

    add-long/2addr v12, v9

    invoke-static {v9, v10, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    aget-wide v16, v1, v8

    add-long v3, v3, v16

    add-int/lit8 v14, v8, 0x1

    aget-wide v16, v1, v14

    aget-wide v24, v2, v19

    add-long v16, v16, v24

    add-long v9, v9, v16

    add-int/lit8 v16, v8, 0x2

    aget-wide v24, v1, v16

    add-int/lit8 v17, v19, 0x1

    aget-wide v26, v2, v17

    add-long v24, v24, v26

    add-long v12, v12, v24

    add-int/lit8 v24, v8, 0x3

    aget-wide v25, v1, v24

    move-wide/from16 v27, v12

    int-to-long v11, v7

    add-long v25, v25, v11

    add-long v5, v5, v25

    const/16 v13, 0x19

    add-long/2addr v3, v9

    invoke-static {v9, v10, v13, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v13, 0x21

    move-wide/from16 v25, v11

    add-long v11, v27, v5

    invoke-static {v5, v6, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    const/16 v13, 0x2e

    add-long/2addr v3, v5

    invoke-static {v5, v6, v13, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    const/16 v13, 0xc

    add-long/2addr v11, v9

    invoke-static {v9, v10, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v13, 0x3a

    add-long/2addr v3, v9

    invoke-static {v9, v10, v13, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    const/16 v13, 0x16

    add-long/2addr v11, v5

    invoke-static {v5, v6, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long/2addr v3, v5

    const/16 v13, 0x20

    invoke-static {v5, v6, v13, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long/2addr v11, v9

    invoke-static {v9, v10, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    aget-wide v13, v1, v14

    add-long/2addr v3, v13

    aget-wide v13, v1, v16

    aget-wide v16, v2, v17

    add-long v13, v13, v16

    add-long/2addr v13, v9

    aget-wide v9, v1, v24

    const/16 v16, 0x2

    add-int/lit8 v19, v19, 0x2

    aget-wide v16, v2, v19

    add-long v9, v9, v16

    add-long v16, v11, v9

    add-int/lit8 v8, v8, 0x4

    aget-wide v8, v1, v8

    add-long v8, v8, v25

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    add-long/2addr v5, v8

    add-int/lit8 v7, v7, 0x2

    move-wide v10, v3

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    const/4 v9, 0x1

    const/4 v12, 0x2

    const/4 v15, 0x3

    goto/16 :goto_0

    :cond_0
    const/4 v4, 0x0

    aput-wide v10, p2, v4

    const/4 v1, 0x1

    aput-wide v13, p2, v1

    const/4 v1, 0x2

    aput-wide v16, p2, v1

    const/4 v1, 0x3

    aput-wide v5, p2, v1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
