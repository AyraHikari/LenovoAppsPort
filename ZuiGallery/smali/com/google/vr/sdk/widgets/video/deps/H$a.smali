.class Lcom/google/vr/sdk/widgets/video/deps/H$a;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field protected a:Landroid/media/AudioTrack;

.field private b:Z

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/H$1;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 16
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method public a(J)V
    .locals 4

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/H$a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->h:J

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->g:J

    .line 13
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->i:J

    .line 14
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->a:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method

.method public a(Landroid/media/AudioTrack;Z)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->a:Landroid/media/AudioTrack;

    .line 3
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->b:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->g:J

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->d:J

    .line 6
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->e:J

    .line 7
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->f:J

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->c:I

    :cond_0
    return-void
.end method

.method public b()J
    .locals 8

    .line 20
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->g:J

    sub-long/2addr v0, v2

    .line 22
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->c:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 23
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->i:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->h:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_1

    return-wide v2

    :cond_1
    const-wide v4, 0xffffffffL

    .line 27
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    int-to-long v6, v1

    and-long/2addr v4, v6

    .line 28
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->b:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    .line 30
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->d:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->f:J

    .line 31
    :cond_2
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->f:J

    add-long/2addr v4, v0

    .line 32
    :cond_3
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->d:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    .line 33
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->e:J

    .line 34
    :cond_4
    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->d:J

    .line 35
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->e:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v4, v0

    return-wide v4
.end method

.method public c()J
    .locals 4

    .line 36
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/H$a;->b()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H$a;->c:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public f()J
    .locals 1

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
