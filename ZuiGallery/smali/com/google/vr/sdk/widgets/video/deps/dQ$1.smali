.class Lcom/google/vr/sdk/widgets/video/deps/dQ$1;
.super Lcom/google/vr/sdk/widgets/video/deps/cG$a;
.source "DashDownloadAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/dQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/vr/sdk/widgets/video/deps/cG$a<",
        "Lcom/google/vr/sdk/widgets/video/deps/dL;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cG$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/net/Uri;Z[Lcom/google/vr/sdk/widgets/video/deps/dL;)Lcom/google/vr/sdk/widgets/video/deps/cx;
    .locals 1

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dQ;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/dQ;-><init>(Landroid/net/Uri;Z[Lcom/google/vr/sdk/widgets/video/deps/dL;)V

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/net/Uri;Z[Ljava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/cx;
    .locals 0

    .line 6
    check-cast p3, [Lcom/google/vr/sdk/widgets/video/deps/dL;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/dQ$1;->a(Landroid/net/Uri;Z[Lcom/google/vr/sdk/widgets/video/deps/dL;)Lcom/google/vr/sdk/widgets/video/deps/cx;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "DashDownloadAction"

    return-object v0
.end method

.method protected synthetic a(I)[Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dQ$1;->b(I)[Lcom/google/vr/sdk/widgets/video/deps/dL;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dQ$1;->c(Ljava/io/DataInputStream;)Lcom/google/vr/sdk/widgets/video/deps/dL;

    move-result-object p1

    return-object p1
.end method

.method protected b(I)[Lcom/google/vr/sdk/widgets/video/deps/dL;
    .locals 0

    .line 4
    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/dL;

    return-object p1
.end method

.method protected c(Ljava/io/DataInputStream;)Lcom/google/vr/sdk/widgets/video/deps/dL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dL;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/dL;-><init>(III)V

    return-object v0
.end method
