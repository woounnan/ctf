.class public abstract Lorg/bouncycastle/operator/AsymmetricKeyUnwrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/KeyUnwrapper;


# instance fields
.field private algorithmId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/operator/AsymmetricKeyUnwrapper;->algorithmId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/AsymmetricKeyUnwrapper;->algorithmId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method
