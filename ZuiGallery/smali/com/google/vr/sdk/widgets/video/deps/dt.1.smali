.class public abstract Lcom/google/vr/sdk/widgets/video/deps/dt;
.super Lcom/google/vr/sdk/widgets/video/deps/dm;
.source "DataChunk.java"


# static fields
.field private static final i:I = 0x4000


# instance fields
.field private j:[B

.field private k:I

.field private volatile l:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;ILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;[B)V
    .locals 11

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/dm;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;ILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p7

    .line 2
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->j:[B

    return-void
.end method

.method private g()V
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->j:[B

    const/16 v1, 0x4000

    if-nez v0, :cond_0

    new-array v0, v1, [B

    .line 24
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->j:[B

    goto :goto_0

    .line 25
    :cond_0
    array-length v2, v0

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->k:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 26
    array-length v2, v0

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->j:[B

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->l:Z

    return-void
.end method

.method protected abstract a([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->l:Z

    return v0
.end method

.method public final c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->k:I

    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 12
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->l:Z

    if-nez v0, :cond_1

    .line 13
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/dt;->g()V

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->j:[B

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->k:I

    const/16 v4, 0x4000

    invoke-interface {v0, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a([BII)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 16
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->k:I

    goto :goto_0

    .line 17
    :cond_1
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->l:Z

    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->j:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->k:I

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dt;->a([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    return-void

    :catchall_0
    move-exception v0

    .line 21
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    throw v0
.end method

.method public d()[B
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->j:[B

    return-object v0
.end method

.method public f()J
    .locals 2

    .line 5
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->k:I

    int-to-long v0, v0

    return-wide v0
.end method
