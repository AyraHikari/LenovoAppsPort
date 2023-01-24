.class public Lcom/google/vr/sdk/widgets/video/deps/ds;
.super Lcom/google/vr/sdk/widgets/video/deps/dk;
.source "ContainerMediaChunk.java"


# instance fields
.field private final j:I

.field private final k:J

.field private final l:Lcom/google/vr/sdk/widgets/video/deps/dn;

.field private volatile m:I

.field private volatile n:Z

.field private volatile o:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJIIJLcom/google/vr/sdk/widgets/video/deps/dn;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/vr/sdk/widgets/video/deps/dk;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJI)V

    .line 2
    iput p11, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->j:I

    .line 3
    iput-wide p12, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->k:J

    .line 4
    iput-object p14, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->l:Lcom/google/vr/sdk/widgets/video/deps/dn;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->n:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->n:Z

    return v0
.end method

.method public final c()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->m:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fy;->a(J)Lcom/google/vr/sdk/widgets/video/deps/fy;

    move-result-object v0

    .line 13
    :try_start_0
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/ap;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 14
    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ap;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;JJ)V

    .line 15
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->m:I

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ds;->d()Lcom/google/vr/sdk/widgets/video/deps/dl;

    move-result-object v0

    .line 17
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->k:J

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dl;->a(J)V

    .line 18
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->l:Lcom/google/vr/sdk/widgets/video/deps/dn;

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dn;->a(Lcom/google/vr/sdk/widgets/video/deps/dn$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->l:Lcom/google/vr/sdk/widgets/video/deps/dn;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dn;->a:Lcom/google/vr/sdk/widgets/video/deps/as;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 21
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->n:Z

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 22
    invoke-interface {v0, v7, v2}, Lcom/google/vr/sdk/widgets/video/deps/as;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eq v2, v0, :cond_2

    move v1, v0

    .line 23
    :cond_2
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    invoke-interface {v7}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->m:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    .line 30
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->o:Z

    return-void

    :catchall_0
    move-exception v0

    .line 26
    :try_start_3
    invoke-interface {v7}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->m:I

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 29
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    throw v0
.end method

.method public final f()J
    .locals 2

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->m:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public g()I
    .locals 2

    .line 6
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->i:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->j:I

    add-int/2addr v0, v1

    return v0
.end method

.method public h()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ds;->o:Z

    return v0
.end method
