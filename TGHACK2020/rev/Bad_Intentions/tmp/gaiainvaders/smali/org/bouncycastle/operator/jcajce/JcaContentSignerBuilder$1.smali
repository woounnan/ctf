.class Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/ContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private stream:Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$SignatureOutputStream;

.field final synthetic this$0:Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

.field final synthetic val$sig:Ljava/security/Signature;

.field final synthetic val$signatureAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method constructor <init>(Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;Ljava/security/Signature;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;->val$sig:Ljava/security/Signature;

    iput-object p3, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;->val$signatureAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$SignatureOutputStream;

    iget-object p2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    iget-object p3, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;->val$sig:Ljava/security/Signature;

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$SignatureOutputStream;-><init>(Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;Ljava/security/Signature;)V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;->stream:Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$SignatureOutputStream;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;->val$signatureAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;->stream:Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$SignatureOutputStream;

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;->stream:Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$SignatureOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$SignatureOutputStream;->getSignature()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/operator/RuntimeOperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception obtaining signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
