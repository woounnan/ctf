.class public Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PublicKey;
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/XMSSKey;


# instance fields
.field private final keyParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

.field private final treeDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->treeDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;->getTreeDigest()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->treeDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/pqc/asn1/XMSSPublicKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/XMSSPublicKey;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;->getHeight()I

    move-result v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->treeDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v3}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil;->getDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/asn1/XMSSPublicKey;->getPublicSeed()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/asn1/XMSSPublicKey;->getRoot()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->withRoot([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->treeDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v3, p1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->treeDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->toByteArray()[B

    move-result-object v1

    iget-object p1, p1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->toByteArray()[B

    move-result-object p1

    invoke-static {v1, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "XMSS"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 6

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;

    iget-object v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v3

    new-instance v4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v5, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->treeDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;-><init>(ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/pqc/asn1/XMSSPublicKey;

    iget-object v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getPublicSeed()[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getRoot()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/asn1/XMSSPublicKey;-><init>([B[B)V

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v0

    return v0
.end method

.method getKeyParams()Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    return-object v0
.end method

.method public getTreeDigest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->treeDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil;->getXMSSDigestName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->treeDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method
