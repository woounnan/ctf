.class public Lorg/bouncycastle/openssl/jcajce/JcaPKCS8Generator;
.super Lorg/bouncycastle/openssl/PKCS8Generator;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Lorg/bouncycastle/operator/OutputEncryptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/openssl/PKCS8Generator;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/operator/OutputEncryptor;)V

    return-void
.end method
