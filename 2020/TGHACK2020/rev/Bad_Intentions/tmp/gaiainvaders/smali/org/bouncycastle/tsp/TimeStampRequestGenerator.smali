.class public Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
.super Ljava/lang/Object;


# instance fields
.field private certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

.field private reqPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    return-void
.end method


# virtual methods
.method public addExtension(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p3}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->addExtension(Ljava/lang/String;Z[B)V

    return-void
.end method

.method public addExtension(Ljava/lang/String;Z[B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    return-void
.end method

.method public addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPIOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/tsp/TSPUtil;->addExtension(Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    return-void
.end method

.method public generate(Ljava/lang/String;[B)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Ljava/lang/String;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object p1

    return-object p1
.end method

.method public generate(Ljava/lang/String;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 8

    if-eqz p1, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/tsp/MessageImprint;

    invoke-direct {v3, p1, p2}, Lorg/bouncycastle/asn1/tsp/MessageImprint;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    const/4 p1, 0x0

    iget-object p2, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    :cond_0
    move-object v7, p1

    new-instance p1, Lorg/bouncycastle/tsp/TimeStampRequest;

    new-instance p2, Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    iget-object v4, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->reqPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz p3, :cond_1

    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v5, p3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iget-object v6, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;-><init>(Lorg/bouncycastle/asn1/tsp/MessageImprint;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-direct {p1, p2}, Lorg/bouncycastle/tsp/TimeStampRequest;-><init>(Lorg/bouncycastle/asn1/tsp/TimeStampReq;)V

    return-object p1

    :cond_1
    const/4 v5, 0x0

    iget-object v6, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;-><init>(Lorg/bouncycastle/asn1/tsp/MessageImprint;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-direct {p1, p2}, Lorg/bouncycastle/tsp/TimeStampRequest;-><init>(Lorg/bouncycastle/asn1/tsp/TimeStampReq;)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No digest algorithm specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Ljava/lang/String;[B)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object p1

    return-object p1
.end method

.method public generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Ljava/lang/String;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object p1

    return-object p1
.end method

.method public setCertReq(Z)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-void
.end method

.method public setReqPolicy(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->reqPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public setReqPolicy(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->reqPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
