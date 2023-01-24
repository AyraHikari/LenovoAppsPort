.class public final Lcom/google/vr/sdk/widgets/video/deps/dw;
.super Lcom/google/vr/sdk/widgets/video/deps/dk;
.source "SingleSampleMediaChunk.java"


# instance fields
.field private final j:I

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private volatile l:I

.field private volatile m:Z

.field private volatile n:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJIILcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/vr/sdk/widgets/video/deps/dk;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJI)V

    .line 2
    iput p11, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->j:I

    .line 3
    iput-object p12, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->k:Lcom/google/vr/sdk/widgets/video/deps/m;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->m:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->m:Z

    return v0
.end method

.method public c()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->l:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fy;->a(J)Lcom/google/vr/sdk/widgets/video/deps/fy;

    move-result-object v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 13
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->l:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    :cond_0
    move-wide v5, v0

    .line 14
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ap;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->l:I

    int-to-long v3, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ap;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;JJ)V

    .line 15
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/dw;->d()Lcom/google/vr/sdk/widgets/video/deps/dl;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dl;->a(J)V

    .line 17
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->j:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/dl;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object v4

    .line 18
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->k:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-interface {v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v3, v1, :cond_1

    .line 21
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->l:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->l:I

    const v1, 0x7fffffff

    .line 22
    invoke-interface {v4, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/at;IZ)I

    move-result v3

    goto :goto_0

    .line 23
    :cond_1
    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->l:I

    .line 24
    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->f:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    .line 28
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->n:Z

    return-void

    :catchall_0
    move-exception v0

    .line 27
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    throw v0
.end method

.method public f()J
    .locals 2

    .line 6
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->l:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dw;->n:Z

    return v0
.end method
