.class final Lcom/google/vr/sdk/widgets/video/deps/dU$c;
.super Lcom/google/vr/sdk/widgets/video/deps/fd;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/dU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fd;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dU$c;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dU$c;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU$c;->a:I

    return v0
.end method

.method public a(J)V
    .locals 2

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 5
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU$c;->a:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dU$c;->b(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU$c;->g:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 8
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dU$c;->b(IJ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dU$c;->a:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
