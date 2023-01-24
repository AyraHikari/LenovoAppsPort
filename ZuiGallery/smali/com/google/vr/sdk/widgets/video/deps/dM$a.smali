.class public abstract Lcom/google/vr/sdk/widgets/video/deps/dM$a;
.super Lcom/google/vr/sdk/widgets/video/deps/dM;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/dM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field final d:I

.field final e:J

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dM$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dJ;JJIJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dJ;",
            "JJIJ",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dM$d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/dM;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dJ;JJ)V

    .line 2
    iput p6, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->d:I

    .line 3
    iput-wide p7, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->e:J

    .line 4
    iput-object p9, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract a(J)I
.end method

.method public a(JJ)I
    .locals 5

    .line 6
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->b()I

    move-result v0

    .line 7
    invoke-virtual {p0, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->a(J)I

    move-result p3

    if-nez p3, :cond_0

    return v0

    .line 10
    :cond_0
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->f:Ljava/util/List;

    if-nez p4, :cond_3

    .line 11
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->e:J

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->b:J

    div-long/2addr v1, v3

    .line 12
    iget p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->d:I

    div-long/2addr p1, v1

    long-to-int p1, p1

    add-int/2addr p4, p1

    if-ge p4, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-ne p3, p1, :cond_2

    move v0, p4

    goto :goto_0

    :cond_2
    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    .line 15
    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0

    :cond_3
    add-int/2addr p3, v0

    add-int/lit8 p3, p3, -0x1

    move p4, v0

    :goto_1
    if-gt p4, p3, :cond_6

    sub-int v1, p3, p4

    .line 20
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p4

    .line 21
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->a(I)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_4

    add-int/lit8 p4, v1, 0x1

    goto :goto_1

    :cond_4
    if-lez v2, :cond_5

    add-int/lit8 v1, v1, -0x1

    move p3, v1

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    if-ne p4, v0, :cond_7

    move p3, p4

    :cond_7
    return p3
.end method

.method public final a(I)J
    .locals 8

    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 38
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->d:I

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dM$d;

    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/dM$d;->a:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->c:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 39
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->d:I

    sub-int/2addr p1, v0

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->e:J

    mul-long/2addr v0, v2

    :goto_0
    move-wide v2, v0

    const-wide/32 v4, 0xf4240

    .line 40
    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->b:J

    invoke-static/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(IJ)J
    .locals 4

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->f:Ljava/util/List;

    const-wide/32 v1, 0xf4240

    if-eqz v0, :cond_0

    .line 30
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->d:I

    sub-int/2addr p1, p2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dM$d;

    iget-wide p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dM$d;->b:J

    mul-long/2addr p1, v1

    .line 31
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->b:J

    div-long/2addr p1, v0

    return-wide p1

    .line 32
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->a(J)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->b()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_1

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->a(I)J

    move-result-wide v0

    sub-long/2addr p2, v0

    goto :goto_0

    .line 35
    :cond_1
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->e:J

    mul-long/2addr p1, v1

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->b:J

    div-long p2, p1, v0

    :goto_0
    return-wide p2
.end method

.method public abstract a(Lcom/google/vr/sdk/widgets/video/deps/dK;I)Lcom/google/vr/sdk/widgets/video/deps/dJ;
.end method

.method public b()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->d:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
