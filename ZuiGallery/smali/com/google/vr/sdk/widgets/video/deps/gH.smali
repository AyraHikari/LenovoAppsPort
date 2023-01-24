.class public final Lcom/google/vr/sdk/widgets/video/deps/gH;
.super Ljava/lang/Object;
.source "StandaloneMediaClock.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/gw;


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private d:Lcom/google/vr/sdk/widgets/video/deps/s;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/s;->a:Lcom/google/vr/sdk/widgets/video/deps/s;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->d:Lcom/google/vr/sdk/widgets/video/deps/s;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/s;)Lcom/google/vr/sdk/widgets/video/deps/s;
    .locals 2

    .line 26
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->a:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gH;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gH;->a(J)V

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->d:Lcom/google/vr/sdk/widgets/video/deps/s;

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 4
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->a:Z

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->c:J

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->a:Z

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->b:J

    .line 13
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->a:Z

    if-eqz p1, :cond_0

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->c:J

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gw;)V
    .locals 2

    .line 16
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/gw;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gH;->a(J)V

    .line 17
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/gw;->c()Lcom/google/vr/sdk/widgets/video/deps/s;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->d:Lcom/google/vr/sdk/widgets/video/deps/s;

    return-void
.end method

.method public b()J
    .locals 6

    .line 19
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->b:J

    .line 20
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->a:Z

    if-eqz v2, :cond_1

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->c:J

    sub-long/2addr v2, v4

    .line 22
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->d:Lcom/google/vr/sdk/widgets/video/deps/s;

    iget v4, v4, Lcom/google/vr/sdk/widgets/video/deps/s;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 23
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v2

    goto :goto_0

    .line 24
    :cond_0
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->d:Lcom/google/vr/sdk/widgets/video/deps/s;

    invoke-virtual {v4, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/s;->a(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public c()Lcom/google/vr/sdk/widgets/video/deps/s;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->d:Lcom/google/vr/sdk/widgets/video/deps/s;

    return-object v0
.end method

.method public d()V
    .locals 2

    .line 8
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->a:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gH;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gH;->a(J)V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gH;->a:Z

    :cond_0
    return-void
.end method
