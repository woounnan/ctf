.class public Lorg/bouncycastle/cms/OriginatorInfoGenerator;
.super Ljava/lang/Object;


# instance fields
.field private final origCRLs:Ljava/util/List;

.field private final origCerts:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    iget-object v0, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/util/Store;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/OriginatorInfoGenerator;-><init>(Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->getCertificatesFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->getCRLsFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public generate()Lorg/bouncycastle/cms/OriginatorInformation;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/OriginatorInformation;

    new-instance v1, Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    iget-object v2, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    invoke-static {v2}, Lorg/bouncycastle/cms/CMSUtils;->createDerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    invoke-static {v3}, Lorg/bouncycastle/cms/CMSUtils;->createDerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/cms/OriginatorInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/OriginatorInformation;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/OriginatorInformation;

    new-instance v1, Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    iget-object v2, p0, Lorg/bouncycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    invoke-static {v2}, Lorg/bouncycastle/cms/CMSUtils;->createDerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/cms/OriginatorInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/OriginatorInformation;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)V

    return-object v0
.end method
