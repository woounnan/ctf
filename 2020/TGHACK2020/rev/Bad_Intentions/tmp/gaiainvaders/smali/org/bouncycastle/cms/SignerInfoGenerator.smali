.class public Lorg/bouncycastle/cms/SignerInfoGenerator;
.super Ljava/lang/Object;


# instance fields
.field private calculatedDigest:[B

.field private certHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

.field private final digAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

.field private final digester:Lorg/bouncycastle/operator/DigestCalculator;

.field private final sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

.field private final sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

.field private final signer:Lorg/bouncycastle/operator/ContentSigner;

.field private final signerIdentifier:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

.field private final unsAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/cms/SignerInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Z)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-interface {p2}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    :goto_0
    iput-object p5, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object p6, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object p4, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-interface {p2}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    :goto_0
    if-eqz p5, :cond_1

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {p1}, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object p4, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    iget-object p1, p1, Lorg/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object p3, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method

.method private getAttributeSet(Lorg/bouncycastle/asn1/cms/AttributeTable;)Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getBaseParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "contentType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "digestAlgID"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "signatureAlgID"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    const-string p2, "digest"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/SignerInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    invoke-interface {v1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;->findEncryptionAlgorithm(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-direct {p0, p1, v2, v6, v3}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getBaseParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getAttributeSet(Lorg/bouncycastle/asn1/cms/AttributeTable;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    invoke-interface {v3}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "DER"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    move-object v4, v0

    move-object v5, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    invoke-interface {v2}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    :goto_0
    move-object v4, v0

    move-object v5, v1

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-direct {p0, p1, v4, v6, v1}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getBaseParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object p1

    const-string v1, "encryptedDigest"

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getAttributeSet(Lorg/bouncycastle/asn1/cms/AttributeTable;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    move-object v8, p1

    goto :goto_2

    :cond_2
    move-object v8, v1

    :goto_2
    new-instance p1, Lorg/bouncycastle/asn1/cms/SignerInfo;

    iget-object v3, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v7, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/asn1/cms/SignerInfo;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "encoding error."

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public getAssociatedCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->certHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object v0
.end method

.method public getCalculatedDigest()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCalculatingOutputStream()Ljava/io/OutputStream;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/util/io/TeeOutputStream;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    invoke-interface {v2}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digester:Lorg/bouncycastle/operator/DigestCalculator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->digAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signer:Lorg/bouncycastle/operator/ContentSigner;

    invoke-interface {v1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getGeneratedVersion()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getSID()Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    return-object v0
.end method

.method public getSignedAttributeTableGenerator()Lorg/bouncycastle/cms/CMSAttributeTableGenerator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object v0
.end method

.method public getUnsignedAttributeTableGenerator()Lorg/bouncycastle/cms/CMSAttributeTableGenerator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object v0
.end method

.method public hasAssociatedCertificate()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->certHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setAssociatedCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGenerator;->certHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

    return-void
.end method
