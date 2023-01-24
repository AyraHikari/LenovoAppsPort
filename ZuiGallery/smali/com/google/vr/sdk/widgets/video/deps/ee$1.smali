.class Lcom/google/vr/sdk/widgets/video/deps/ee$1;
.super Lcom/google/vr/sdk/widgets/video/deps/cG$a;
.source "HlsDownloadAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/vr/sdk/widgets/video/deps/cG$a<",
        "Ljava/lang/String;",
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
.method protected bridge synthetic a(Landroid/net/Uri;Z[Ljava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/cx;
    .locals 0

    .line 6
    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ee$1;->a(Landroid/net/Uri;Z[Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/cx;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/net/Uri;Z[Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/cx;
    .locals 1

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ee;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ee;-><init>(Landroid/net/Uri;Z[Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "HlsDownloadAction"

    return-object v0
.end method

.method protected synthetic a(I)[Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ee$1;->b(I)[Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ee$1;->c(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected b(I)[Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method protected c(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
