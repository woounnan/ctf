.class public Lorg/bouncycastle/cert/crmf/RegTokenControl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cert/crmf/Control;


# static fields
.field private static final type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private final token:Lorg/bouncycastle/asn1/DERUTF8String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_regToken:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/cert/crmf/RegTokenControl;->type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/RegTokenControl;->token:Lorg/bouncycastle/asn1/DERUTF8String;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERUTF8String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/RegTokenControl;->token:Lorg/bouncycastle/asn1/DERUTF8String;

    return-void
.end method


# virtual methods
.method public getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    sget-object v0, Lorg/bouncycastle/cert/crmf/RegTokenControl;->type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/RegTokenControl;->token:Lorg/bouncycastle/asn1/DERUTF8String;

    return-object v0
.end method
