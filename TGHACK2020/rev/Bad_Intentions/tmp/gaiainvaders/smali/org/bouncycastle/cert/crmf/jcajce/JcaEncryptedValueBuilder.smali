.class public Lorg/bouncycastle/cert/crmf/jcajce/JcaEncryptedValueBuilder;
.super Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/KeyWrapper;Lorg/bouncycastle/operator/OutputEncryptor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;-><init>(Lorg/bouncycastle/operator/KeyWrapper;Lorg/bouncycastle/operator/OutputEncryptor;)V

    return-void
.end method


# virtual methods
.method public build(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/crmf/EncryptedValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/crmf/jcajce/JcaEncryptedValueBuilder;->build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    move-result-object p1

    return-object p1
.end method
