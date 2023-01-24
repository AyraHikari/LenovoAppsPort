.class public final Lcom/google/vr/sdk/widgets/video/deps/gF;
.super Ljava/io/BufferedOutputStream;
.source "ReusableBufferedOutputStream.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gF;->a:Z

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 20
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gF;->out:Ljava/io/OutputStream;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gF;->count:I

    .line 22
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gF;->a:Z

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gF;->a:Z

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gF;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gF;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 17
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
