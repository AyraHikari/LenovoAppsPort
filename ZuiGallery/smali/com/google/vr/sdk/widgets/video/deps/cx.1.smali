.class public abstract Lcom/google/vr/sdk/widgets/video/deps/cx;
.super Ljava/lang/Object;
.source "DownloadAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cx$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Lcom/google/vr/sdk/widgets/video/deps/cx$a;Ljava/io/InputStream;)Lcom/google/vr/sdk/widgets/video/deps/cx;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 5
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/cx$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-interface {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/cx$a;->a(Ljava/io/DataInputStream;)Lcom/google/vr/sdk/widgets/video/deps/cx;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 13
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/cy;

    const-string p1, "No Creator can be found to parse the data."

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cy;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 12
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    throw p0
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/cx;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 15
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/cx;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cx;->a(Ljava/io/DataOutputStream;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/vr/sdk/widgets/video/deps/cC;)Lcom/google/vr/sdk/widgets/video/deps/cB;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract a(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/google/vr/sdk/widgets/video/deps/cx;)Z
.end method

.method public final a()[B
    .locals 1

    .line 19
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 20
    :try_start_0
    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cx;->a(Lcom/google/vr/sdk/widgets/video/deps/cx;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 23
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method protected abstract c()Z
.end method
