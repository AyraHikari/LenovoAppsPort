.class public abstract Lcom/google/vr/sdk/widgets/video/deps/eu;
.super Lcom/google/vr/sdk/widgets/video/deps/U;
.source "SubtitleOutputBuffer.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ep;


# instance fields
.field private c:Lcom/google/vr/sdk/widgets/video/deps/ep;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/U;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->c:Lcom/google/vr/sdk/widgets/video/deps/ep;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->d:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ep;->a(J)I

    move-result p1

    return p1
.end method

.method public a(I)J
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->c:Lcom/google/vr/sdk/widgets/video/deps/ep;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ep;->a(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->d:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a()V
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/U;->a()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->c:Lcom/google/vr/sdk/widgets/video/deps/ep;

    return-void
.end method

.method public a(JLcom/google/vr/sdk/widgets/video/deps/ep;J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->a:J

    .line 3
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->c:Lcom/google/vr/sdk/widgets/video/deps/ep;

    const-wide p1, 0x7fffffffffffffffL

    cmp-long p1, p4, p1

    if-nez p1, :cond_0

    .line 4
    iget-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->a:J

    .line 5
    :cond_0
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->d:J

    return-void
.end method

.method public b()I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->c:Lcom/google/vr/sdk/widgets/video/deps/ep;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ep;->b()I

    move-result v0

    return v0
.end method

.method public b(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/em;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->c:Lcom/google/vr/sdk/widgets/video/deps/ep;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->d:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ep;->b(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract e()V
.end method
