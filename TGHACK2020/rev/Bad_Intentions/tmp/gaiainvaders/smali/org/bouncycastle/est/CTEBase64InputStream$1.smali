.class Lorg/bouncycastle/est/CTEBase64InputStream$1;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/est/CTEBase64InputStream;-><init>(Ljava/io/InputStream;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/est/CTEBase64InputStream;


# direct methods
.method constructor <init>(Lorg/bouncycastle/est/CTEBase64InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/est/CTEBase64InputStream$1;->this$0:Lorg/bouncycastle/est/CTEBase64InputStream;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream$1;->this$0:Lorg/bouncycastle/est/CTEBase64InputStream;

    iget-object v0, v0, Lorg/bouncycastle/est/CTEBase64InputStream;->data:[B

    iget-object v1, p0, Lorg/bouncycastle/est/CTEBase64InputStream$1;->this$0:Lorg/bouncycastle/est/CTEBase64InputStream;

    iget v2, v1, Lorg/bouncycastle/est/CTEBase64InputStream;->wp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lorg/bouncycastle/est/CTEBase64InputStream;->wp:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method
