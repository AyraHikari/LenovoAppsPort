.class public Lcom/google/vr/sdk/widgets/video/deps/dM$c;
.super Lcom/google/vr/sdk/widgets/video/deps/dM$a;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/dM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final g:Lcom/google/vr/sdk/widgets/video/deps/dO;

.field final h:Lcom/google/vr/sdk/widgets/video/deps/dO;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dJ;JJIJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/dO;Lcom/google/vr/sdk/widgets/video/deps/dO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dJ;",
            "JJIJ",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dM$d;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/dO;",
            "Lcom/google/vr/sdk/widgets/video/deps/dO;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/google/vr/sdk/widgets/video/deps/dM$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dJ;JJIJLjava/util/List;)V

    .line 2
    iput-object p10, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->g:Lcom/google/vr/sdk/widgets/video/deps/dO;

    .line 3
    iput-object p11, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->h:Lcom/google/vr/sdk/widgets/video/deps/dO;

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 15
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 17
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->e:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->b:J

    div-long/2addr v0, v2

    .line 18
    invoke-static {p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dK;)Lcom/google/vr/sdk/widgets/video/deps/dJ;
    .locals 12

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->g:Lcom/google/vr/sdk/widgets/video/deps/dO;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/dK;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dK;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dO;->a(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v7

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/dJ;

    const-wide/16 v8, 0x0

    const-wide/16 v10, -0x1

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/dJ;-><init>(Ljava/lang/String;JJ)V

    return-object p1

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dM$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dK;)Lcom/google/vr/sdk/widgets/video/deps/dJ;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dK;I)Lcom/google/vr/sdk/widgets/video/deps/dJ;
    .locals 12

    .line 9
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->f:Ljava/util/List;

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->d:I

    sub-int v2, p2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/dM$d;

    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/dM$d;->a:J

    goto :goto_0

    .line 11
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->d:I

    sub-int v1, p2, v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->e:J

    mul-long/2addr v1, v3

    :goto_0
    move-wide v4, v1

    .line 12
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dM$c;->h:Lcom/google/vr/sdk/widgets/video/deps/dO;

    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/dK;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/dK;->d:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    move-object v0, v1

    move-object v1, v2

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dO;->a(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v7

    .line 13
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dJ;

    const-wide/16 v8, 0x0

    const-wide/16 v10, -0x1

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/dJ;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method
