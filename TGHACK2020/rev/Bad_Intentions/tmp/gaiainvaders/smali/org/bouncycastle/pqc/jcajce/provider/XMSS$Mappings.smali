.class public Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/XMSS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 14

    const-string v0, "KeyFactory.XMSS"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSKeyFactorySpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.XMSS"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSKeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_with_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SHA256"

    const-string v5, "XMSS"

    const-string v6, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha256"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_with_SHAKE128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SHAKE128"

    const-string v11, "XMSS"

    const-string v12, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake128"

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA512"

    const-string v3, "XMSS"

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha512"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v11, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_with_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "SHAKE256"

    const-string v9, "XMSS"

    const-string v10, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake256"

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "KeyFactory.XMSSMT"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTKeyFactorySpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.XMSSMT"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTKeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_with_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SHA256"

    const-string v5, "XMSSMT"

    const-string v6, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha256"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v13, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_with_SHAKE128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SHAKE128"

    const-string v11, "XMSSMT"

    const-string v12, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake128"

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v5, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA512"

    const-string v3, "XMSSMT"

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha512"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v11, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_with_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "SHAKE256"

    const-string v9, "XMSSMT"

    const-string v10, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake256"

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;-><init>()V

    const-string v2, "XMSS"

    invoke-virtual {p0, p1, v0, v2, v1}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;-><init>()V

    const-string v2, "XMSSMT"

    invoke-virtual {p0, p1, v0, v2, v1}, Lorg/bouncycastle/pqc/jcajce/provider/XMSS$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method
