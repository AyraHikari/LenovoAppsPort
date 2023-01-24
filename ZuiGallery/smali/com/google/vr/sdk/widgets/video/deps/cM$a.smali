.class final Lcom/google/vr/sdk/widgets/video/deps/cM$a;
.super Lcom/google/vr/sdk/widgets/video/deps/cT;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/z;JJ)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cT;-><init>(Lcom/google/vr/sdk/widgets/video/deps/z;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->c()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/z$b;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/z$b;-><init>()V

    invoke-virtual {p1, v1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$b;Z)Lcom/google/vr/sdk/widgets/video/deps/z$b;

    move-result-object v0

    .line 5
    iget-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->e:Z

    xor-int/2addr v3, v2

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, p4, v3

    if-nez v3, :cond_2

    .line 6
    iget-wide p4, v0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->i:J

    .line 7
    :cond_2
    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->i:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_7

    .line 8
    iget-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->i:J

    cmp-long v3, p4, v6

    if-lez v3, :cond_3

    .line 9
    iget-wide p4, v0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->i:J

    :cond_3
    cmp-long v3, p2, v4

    if-eqz v3, :cond_5

    .line 10
    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->d:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v2

    :goto_3
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    cmp-long v0, p2, p4

    if-gtz v0, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v1

    .line 11
    :goto_4
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 12
    :cond_7
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/z$a;-><init>()V

    invoke-virtual {p1, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->d()J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-nez p1, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 14
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cM$a;->c:J

    .line 15
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cM$a;->d:J

    return-void
.end method


# virtual methods
.method public a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Z)Lcom/google/vr/sdk/widgets/video/deps/z$a;
    .locals 3

    .line 30
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cM$a;->b:Lcom/google/vr/sdk/widgets/video/deps/z;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Z)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object p1

    .line 31
    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cM$a;->d:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cM$a;->c:J

    sub-long v0, p2, v0

    :cond_0
    iput-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/z$a;->d:J

    return-object p1
.end method

.method public a(ILcom/google/vr/sdk/widgets/video/deps/z$b;ZJ)Lcom/google/vr/sdk/widgets/video/deps/z$b;
    .locals 6

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cM$a;->b:Lcom/google/vr/sdk/widgets/video/deps/z;

    const/4 v1, 0x0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$b;ZJ)Lcom/google/vr/sdk/widgets/video/deps/z$b;

    move-result-object p1

    .line 18
    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cM$a;->d:J

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, p4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cM$a;->c:J

    sub-long/2addr p2, v0

    goto :goto_0

    :cond_0
    move-wide p2, p4

    :goto_0
    iput-wide p2, p1, Lcom/google/vr/sdk/widgets/video/deps/z$b;->i:J

    .line 19
    iget-wide p2, p1, Lcom/google/vr/sdk/widgets/video/deps/z$b;->h:J

    cmp-long p2, p2, p4

    if-eqz p2, :cond_2

    .line 20
    iget-wide p2, p1, Lcom/google/vr/sdk/widgets/video/deps/z$b;->h:J

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cM$a;->c:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/google/vr/sdk/widgets/video/deps/z$b;->h:J

    .line 21
    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cM$a;->d:J

    cmp-long p2, p2, p4

    if-nez p2, :cond_1

    iget-wide p2, p1, Lcom/google/vr/sdk/widgets/video/deps/z$b;->h:J

    goto :goto_1

    .line 22
    :cond_1
    iget-wide p2, p1, Lcom/google/vr/sdk/widgets/video/deps/z$b;->h:J

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cM$a;->d:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    :goto_1
    iput-wide p2, p1, Lcom/google/vr/sdk/widgets/video/deps/z$b;->h:J

    .line 23
    iget-wide p2, p1, Lcom/google/vr/sdk/widgets/video/deps/z$b;->h:J

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cM$a;->c:J

    sub-long/2addr p2, v0

    iput-wide p2, p1, Lcom/google/vr/sdk/widgets/video/deps/z$b;->h:J

    .line 24
    :cond_2
    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cM$a;->c:J

    invoke-static {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide p2

    .line 25
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/z$b;->b:J

    cmp-long v0, v0, p4

    if-eqz v0, :cond_3

    .line 26
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/z$b;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/z$b;->b:J

    .line 27
    :cond_3
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/z$b;->c:J

    cmp-long p4, v0, p4

    if-eqz p4, :cond_4

    .line 28
    iget-wide p4, p1, Lcom/google/vr/sdk/widgets/video/deps/z$b;->c:J

    add-long/2addr p4, p2

    iput-wide p4, p1, Lcom/google/vr/sdk/widgets/video/deps/z$b;->c:J

    :cond_4
    return-object p1
.end method
