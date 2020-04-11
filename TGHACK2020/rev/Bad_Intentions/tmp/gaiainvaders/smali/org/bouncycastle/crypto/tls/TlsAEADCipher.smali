.class public Lorg/bouncycastle/crypto/tls/TlsAEADCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsCipher;


# static fields
.field static final NONCE_DRAFT_CHACHA20_POLY1305:I = 0x2

.field public static final NONCE_RFC5288:I = 0x1


# instance fields
.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field protected decryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

.field protected decryptImplicitNonce:[B

.field protected encryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

.field protected encryptImplicitNonce:[B

.field protected macSize:I

.field protected nonceMode:I

.field protected record_iv_length:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;III)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;III)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v7

    const/16 v8, 0x50

    if-eqz v7, :cond_4

    iput v6, v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->nonceMode:I

    const/16 v7, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v6, v9, :cond_1

    const/4 v11, 0x2

    if-ne v6, v11, :cond_0

    const/16 v6, 0xc

    iput v10, v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v8}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    :cond_1
    const/4 v6, 0x4

    iput v7, v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    :goto_0
    iput-object v1, v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    iput v5, v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->macSize:I

    mul-int/lit8 v11, v4, 0x2

    mul-int/lit8 v12, v6, 0x2

    add-int/2addr v11, v12

    invoke-static {v1, v11}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/bouncycastle/crypto/tls/TlsContext;I)[B

    move-result-object v12

    new-instance v13, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v13, v12, v10, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    add-int/lit8 v14, v4, 0x0

    new-instance v15, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v15, v12, v14, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    add-int/2addr v14, v4

    add-int v4, v14, v6

    invoke-static {v12, v14, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    add-int v8, v4, v6

    invoke-static {v12, v4, v8}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    if-ne v8, v11, :cond_3

    invoke-interface/range {p1 .. p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v3, v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iput-object v2, v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iput-object v4, v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    iput-object v14, v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    move-object/from16 v16, v15

    move-object v15, v13

    move-object/from16 v13, v16

    goto :goto_1

    :cond_2
    iput-object v2, v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iput-object v3, v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iput-object v14, v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    iput-object v4, v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    :goto_1
    iget v1, v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    add-int/2addr v6, v1

    new-array v1, v6, [B

    iget-object v2, v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    new-instance v3, Lorg/bouncycastle/crypto/params/AEADParameters;

    mul-int/lit8 v4, v5, 0x8

    invoke-direct {v3, v13, v4, v1}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B)V

    invoke-interface {v2, v9, v3}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v2, v0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    new-instance v3, Lorg/bouncycastle/crypto/params/AEADParameters;

    invoke-direct {v3, v15, v4, v1}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B)V

    invoke-interface {v2, v10, v3}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_3
    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    :cond_4
    const/16 v2, 0x50

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1
.end method


# virtual methods
.method public decodeCiphertext(JS[BII)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v0, p5

    move/from16 v4, p6

    invoke-virtual {v1, v4}, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->getPlaintextLimit(I)I

    move-result v5

    if-ltz v5, :cond_4

    iget-object v5, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    array-length v6, v5

    iget v7, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    add-int/2addr v6, v7

    new-array v6, v6, [B

    iget v7, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->nonceMode:I

    const/16 v8, 0x50

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v7, v9, :cond_2

    const/4 v5, 0x2

    if-ne v7, v5, :cond_1

    array-length v5, v6

    add-int/lit8 v5, v5, -0x8

    invoke-static {v2, v3, v6, v5}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    const/4 v5, 0x0

    :goto_0
    iget-object v7, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    array-length v9, v7

    if-ge v5, v9, :cond_0

    aget-byte v9, v6, v5

    aget-byte v7, v7, v5

    xor-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p4

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_2
    array-length v7, v5

    invoke-static {v5, v10, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v6

    iget v7, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    sub-int/2addr v5, v7

    move-object/from16 v9, p4

    invoke-static {v9, v0, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget v5, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    add-int v13, v0, v5

    sub-int v14, v4, v5

    iget-object v0, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, v14}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v4, v0, [B

    move/from16 v5, p3

    invoke-virtual {v1, v2, v3, v5, v0}, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->getAdditionalData(JSI)[B

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/crypto/params/AEADParameters;

    const/4 v3, 0x0

    iget v5, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->macSize:I

    mul-int/lit8 v5, v5, 0x8

    invoke-direct {v2, v3, v5, v6, v0}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    :try_start_0
    iget-object v0, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, v10, v2}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v11, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    const/16 v16, 0x0

    move-object/from16 v12, p4

    move-object v15, v4

    invoke-interface/range {v11 .. v16}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result v0

    add-int/2addr v0, v10

    iget-object v2, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v2, v4, v0}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    array-length v2, v4

    if-ne v0, v2, :cond_3

    return-object v4

    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v2

    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    move-wide v2, p1

    move/from16 v0, p6

    iget-object v4, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    array-length v5, v4

    iget v6, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    add-int/2addr v5, v6

    new-array v5, v5, [B

    iget v6, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->nonceMode:I

    const/16 v8, 0x50

    const/4 v7, 0x1

    const/4 v9, 0x0

    if-eq v6, v7, :cond_1

    const/4 v4, 0x2

    if-ne v6, v4, :cond_0

    array-length v4, v5

    add-int/lit8 v4, v4, -0x8

    invoke-static {p1, p2, v5, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    const/4 v4, 0x0

    :goto_0
    iget-object v6, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    array-length v10, v6

    if-ge v4, v10, :cond_2

    aget-byte v10, v5, v4

    aget-byte v6, v6, v4

    xor-int/2addr v6, v10

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    array-length v6, v4

    invoke-static {v4, v9, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    array-length v4, v4

    invoke-static {p1, p2, v5, v4}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    :cond_2
    iget-object v4, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v4, v0}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v4

    iget v6, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    add-int/2addr v4, v6

    new-array v10, v4, [B

    if-eqz v6, :cond_3

    array-length v4, v5

    sub-int/2addr v4, v6

    invoke-static {v5, v4, v10, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget v9, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    move v4, p3

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->getAdditionalData(JSI)[B

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/params/AEADParameters;

    const/4 v4, 0x0

    iget v6, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->macSize:I

    mul-int/lit8 v6, v6, 0x8

    invoke-direct {v3, v4, v6, v5, v2}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    :try_start_0
    iget-object v2, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v2, v7, v3}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v2, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v10

    move v7, v9

    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result v0

    add-int/2addr v9, v0

    iget-object v0, v1, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, v10, v9}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v9, v0

    array-length v0, v10

    if-ne v9, v0, :cond_4

    return-object v10

    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v2, v8, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method protected getAdditionalData(JSI)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    const/16 p1, 0x8

    invoke-static {p3, v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object p1

    const/16 p2, 0x9

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;[BI)V

    const/16 p1, 0xb

    invoke-static {p4, v0, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    return-object v0
.end method

.method public getPlaintextLimit(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->macSize:I

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    sub-int/2addr p1, v0

    return p1
.end method
