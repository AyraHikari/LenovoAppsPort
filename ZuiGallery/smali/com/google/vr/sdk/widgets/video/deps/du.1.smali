.class public final Lcom/google/vr/sdk/widgets/video/deps/du;
.super Lcom/google/vr/sdk/widgets/video/deps/dm;
.source "InitializationChunk.java"


# instance fields
.field private final i:Lcom/google/vr/sdk/widgets/video/deps/dn;

.field private volatile j:I

.field private volatile k:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/dn;)V
    .locals 11

    const/4 v3, 0x2

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/dm;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;ILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p6

    .line 2
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/du;->i:Lcom/google/vr/sdk/widgets/video/deps/dn;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/du;->k:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/du;->k:Z

    return v0
.end method

.method public c()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/du;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/du;->j:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fy;->a(J)Lcom/google/vr/sdk/widgets/video/deps/fy;

    move-result-object v0

    .line 9
    :try_start_0
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/ap;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/du;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/du;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 10
    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ap;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;JJ)V

    .line 11
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/du;->j:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/du;->i:Lcom/google/vr/sdk/widgets/video/deps/dn;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dn;->a(Lcom/google/vr/sdk/widgets/video/deps/dn$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/du;->i:Lcom/google/vr/sdk/widgets/video/deps/dn;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dn;->a:Lcom/google/vr/sdk/widgets/video/deps/as;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-nez v3, :cond_1

    .line 15
    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/du;->k:Z

    if-nez v4, :cond_1

    .line 16
    invoke-interface {v0, v7, v1}, Lcom/google/vr/sdk/widgets/video/deps/as;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eq v3, v0, :cond_2

    move v2, v0

    .line 17
    :cond_2
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-interface {v7}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/du;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/du;->j:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/du;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    return-void

    :catchall_0
    move-exception v0

    .line 20
    :try_start_3
    invoke-interface {v7}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/du;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/du;->j:I

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 23
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/du;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    throw v0
.end method

.method public f()J
    .locals 2

    .line 4
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/du;->j:I

    int-to-long v0, v0

    return-wide v0
.end method
