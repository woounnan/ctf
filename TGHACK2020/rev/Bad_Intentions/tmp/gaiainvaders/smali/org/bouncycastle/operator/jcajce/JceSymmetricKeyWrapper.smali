.class public Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;
.super Lorg/bouncycastle/operator/SymmetricKeyWrapper;


# instance fields
.field private helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

.field private random:Ljava/security/SecureRandom;

.field private wrappingKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;->determineKeyEncAlg(Ljavax/crypto/SecretKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/operator/SymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;->wrappingKey:Ljavax/crypto/SecretKey;

    return-void
.end method

.method static determineKeyEncAlg(Ljava/lang/String;I)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 4

    const-string v0, "DES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "TripleDES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "RC2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance p1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v0, "1.2.840.113549.1.9.16.3.7"

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x3a

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_1
    const-string v0, "AES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x100

    const/16 v2, 0xc0

    const/16 v3, 0x80

    if-eqz v0, :cond_5

    if-ne p1, v3, :cond_2

    sget-object p0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    sget-object p0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    sget-object p0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    :goto_0
    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal keysize in AES"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string v0, "SEED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object p1, Lorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_npki_app_cmsSeed_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object p0

    :cond_6
    const-string v0, "Camellia"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    if-ne p1, v3, :cond_7

    sget-object p0, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_1

    :cond_7
    if-ne p1, v2, :cond_8

    sget-object p0, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_1

    :cond_8
    if-ne p1, v1, :cond_9

    sget-object p0, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_wrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    :goto_1
    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object p1

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal keysize in Camellia"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown algorithm"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_2
    new-instance p0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object p1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0
.end method

.method private static determineKeyEncAlg(Ljavax/crypto/SecretKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    invoke-static {v0, p0}, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;->determineKeyEncAlg(Ljava/lang/String;I)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/operator/jcajce/OperatorUtils;->getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {p0}, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->createSymmetricWrapper(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x3

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;->wrappingKey:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/operator/OperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot wrap key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
