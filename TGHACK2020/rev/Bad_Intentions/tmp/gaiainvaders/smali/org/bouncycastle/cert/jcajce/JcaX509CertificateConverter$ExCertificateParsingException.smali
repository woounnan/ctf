.class Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateParsingException;
.super Ljava/security/cert/CertificateParsingException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExCertificateParsingException"
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;

.field final synthetic this$0:Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateParsingException;->this$0:Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {p0, p2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateParsingException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter$ExCertificateParsingException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
