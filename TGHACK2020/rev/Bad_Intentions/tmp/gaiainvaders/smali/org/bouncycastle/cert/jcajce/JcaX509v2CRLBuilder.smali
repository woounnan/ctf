.class public Lorg/bouncycastle/cert/jcajce/JcaX509v2CRLBuilder;
.super Lorg/bouncycastle/cert/X509v2CRLBuilder;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/util/Date;)V
    .locals 0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cert/jcajce/JcaX509v2CRLBuilder;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/util/Date;)V
    .locals 0

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cert/X509v2CRLBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/util/Date;)V

    return-void
.end method
