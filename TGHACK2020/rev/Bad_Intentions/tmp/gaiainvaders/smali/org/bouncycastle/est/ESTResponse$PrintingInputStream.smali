.class Lorg/bouncycastle/est/ESTResponse$PrintingInputStream;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/est/ESTResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrintingInputStream"
.end annotation


# instance fields
.field private final src:Ljava/io/InputStream;

.field final synthetic this$0:Lorg/bouncycastle/est/ESTResponse;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/est/ESTResponse;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/est/ESTResponse$PrintingInputStream;->this$0:Lorg/bouncycastle/est/ESTResponse;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/est/ESTResponse$PrintingInputStream;->src:Ljava/io/InputStream;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/est/ESTResponse;Ljava/io/InputStream;Lorg/bouncycastle/est/ESTResponse$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/est/ESTResponse$PrintingInputStream;-><init>(Lorg/bouncycastle/est/ESTResponse;Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse$PrintingInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse$PrintingInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse$PrintingInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return v0
.end method
