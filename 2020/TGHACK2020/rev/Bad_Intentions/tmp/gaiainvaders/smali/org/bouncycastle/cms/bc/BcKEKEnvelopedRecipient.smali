.class public Lorg/bouncycastle/cms/bc/BcKEKEnvelopedRecipient;
.super Lorg/bouncycastle/cms/bc/BcKEKRecipient;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/bc/BcSymmetricKeyUnwrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/bc/BcKEKRecipient;-><init>(Lorg/bouncycastle/operator/bc/BcSymmetricKeyUnwrapper;)V

    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/cms/bc/BcKEKEnvelopedRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/4 p3, 0x0

    invoke-static {p3, p1, p2}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createContentCipher(ZLorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/Object;

    move-result-object p1

    new-instance p3, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance v0, Lorg/bouncycastle/cms/bc/BcKEKEnvelopedRecipient$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/bouncycastle/cms/bc/BcKEKEnvelopedRecipient$1;-><init>(Lorg/bouncycastle/cms/bc/BcKEKEnvelopedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/lang/Object;)V

    invoke-direct {p3, v0}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/InputDecryptor;)V

    return-object p3
.end method
