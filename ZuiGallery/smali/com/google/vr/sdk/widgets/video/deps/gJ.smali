.class public final Lcom/google/vr/sdk/widgets/video/deps/gJ;
.super Ljava/lang/Object;
.source "TimestampAdjuster.java"


# static fields
.field public static final a:J = 0x7fffffffffffffffL

.field private static final b:J = 0x200000000L


# instance fields
.field private c:J

.field private d:J

.field private volatile e:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->e:J

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->a(J)V

    return-void
.end method

.method public static d(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p0, v0

    const-wide/32 v0, 0x15f90

    .line 41
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static e(J)J
    .locals 2

    const-wide/32 v0, 0x15f90

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    .line 42
    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->c:J

    return-wide v0
.end method

.method public declared-synchronized a(J)V
    .locals 4

    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 6
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()J
    .locals 6

    .line 9
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->e:J

    goto :goto_0

    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->c:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    move-wide v2, v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public b(J)J
    .locals 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 19
    :cond_0
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->e:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    .line 20
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->e:J

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->e(J)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    add-long/2addr v2, v0

    const-wide v4, 0x200000000L

    .line 21
    div-long/2addr v2, v4

    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    mul-long/2addr v6, v4

    add-long/2addr v6, p1

    mul-long/2addr v2, v4

    add-long/2addr p1, v2

    sub-long v2, v6, v0

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    move-wide p1, v6

    .line 26
    :cond_1
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->d(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->c(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public c()J
    .locals 5

    .line 12
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->c:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 13
    :cond_0
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->e:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->d:J

    :goto_0
    return-wide v1
.end method

.method public c(J)J
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 29
    :cond_0
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->e:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    .line 30
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->e:J

    goto :goto_0

    .line 31
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->c:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    sub-long/2addr v0, p1

    .line 32
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->d:J

    .line 33
    :cond_2
    monitor-enter p0

    .line 34
    :try_start_0
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->e:J

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 36
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->d:J

    add-long/2addr p1, v0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 36
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->e:J

    return-void
.end method

.method public declared-synchronized e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 38
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gJ;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 40
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
