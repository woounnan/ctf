.class public Lorg/bouncycastle/cert/ocsp/jcajce/JcaBasicOCSPRespBuilder;
.super Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/operator/DigestCalculator;)V

    return-void
.end method
