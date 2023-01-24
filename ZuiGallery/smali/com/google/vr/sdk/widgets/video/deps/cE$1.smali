.class Lcom/google/vr/sdk/widgets/video/deps/cE$1;
.super Ljava/lang/Object;
.source "ProgressiveDownloadAction.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/io/DataInputStream;)Lcom/google/vr/sdk/widgets/video/deps/cx;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cE$1;->b(Ljava/io/DataInputStream;)Lcom/google/vr/sdk/widgets/video/deps/cE;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "ProgressiveDownloadAction"

    return-object v0
.end method

.method public b(Ljava/io/DataInputStream;)Lcom/google/vr/sdk/widgets/video/deps/cE;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cE;

    .line 4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/cE;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
