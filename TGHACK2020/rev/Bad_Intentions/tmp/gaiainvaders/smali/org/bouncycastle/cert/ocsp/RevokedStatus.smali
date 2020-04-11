.class public Lorg/bouncycastle/cert/ocsp/RevokedStatus;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cert/ocsp/CertificateStatus;


# instance fields
.field info:Lorg/bouncycastle/asn1/ocsp/RevokedInfo;


# direct methods
.method public constructor <init>(Ljava/util/Date;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-static {p2}, Lorg/bouncycastle/asn1/x509/CRLReason;->lookup(I)Lorg/bouncycastle/asn1/x509/CRLReason;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/x509/CRLReason;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/RevokedStatus;->info:Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/RevokedInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/RevokedStatus;->info:Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    return-void
.end method


# virtual methods
.method public getRevocationReason()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/RevokedStatus;->info:Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->getRevocationReason()Lorg/bouncycastle/asn1/x509/CRLReason;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/RevokedStatus;->info:Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->getRevocationReason()Lorg/bouncycastle/asn1/x509/CRLReason;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CRLReason;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to get a reason where none is available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRevocationTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/RevokedStatus;->info:Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->getRevocationTime()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->extractDate(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public hasRevocationReason()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/RevokedStatus;->info:Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->getRevocationReason()Lorg/bouncycastle/asn1/x509/CRLReason;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
