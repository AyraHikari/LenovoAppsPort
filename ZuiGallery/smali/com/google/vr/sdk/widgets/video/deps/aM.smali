.class final Lcom/google/vr/sdk/widgets/video/deps/aM;
.super Ljava/lang/Object;
.source "ConstantBitrateSeeker.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/aN$b;


# static fields
.field private static final a:I = 0x8


# instance fields
.field private final b:J

.field private final c:I

.field private final d:J


# direct methods
.method public constructor <init>(JIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aM;->b:J

    .line 3
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/aM;->c:I

    const-wide/16 p1, -0x1

    cmp-long p1, p4, p1

    if-nez p1, :cond_0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/aM;->a(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aM;->d:J

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aM;->b:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    const-wide/16 v0, 0x8

    mul-long/2addr p1, v0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aM;->c:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public a()Z
    .locals 4

    .line 6
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aM;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aM;->d:J

    return-wide v0
.end method

.method public b(J)J
    .locals 6

    .line 7
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/aM;->d:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    const-wide/16 v2, 0x0

    move-wide v0, p1

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(JJJ)J

    move-result-wide p1

    .line 10
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aM;->b:J

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aM;->c:I

    int-to-long v2, v2

    mul-long/2addr p1, v2

    const-wide/32 v2, 0x7a1200

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method
