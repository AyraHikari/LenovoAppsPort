.class final Lcom/google/vr/sdk/widgets/video/deps/dz$d;
.super Ljava/lang/Object;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/dz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field public final a:Z

.field public final b:J

.field public final c:J


# direct methods
.method private constructor <init>(ZJJ)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz$d;->a:Z

    .line 29
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dz$d;->b:J

    .line 30
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dz$d;->c:J

    return-void
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/dI;J)Lcom/google/vr/sdk/widgets/video/deps/dz$d;
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v4, p1

    .line 1
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dI;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x0

    const-wide v7, 0x7fffffffffffffffL

    move v10, v6

    move-wide v13, v7

    const-wide/16 v11, 0x0

    move v7, v10

    move v8, v7

    :goto_0
    if-ge v7, v1, :cond_4

    .line 7
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/dI;->c:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/vr/sdk/widgets/video/deps/dE;

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/dE;->d:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/vr/sdk/widgets/video/deps/dK;

    invoke-virtual {v9}, Lcom/google/vr/sdk/widgets/video/deps/dK;->e()Lcom/google/vr/sdk/widgets/video/deps/dA;

    move-result-object v9

    if-nez v9, :cond_0

    .line 9
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/dz$d;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    move-object v0, v6

    move-wide/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dz$d;-><init>(ZJJ)V

    return-object v6

    .line 10
    :cond_0
    invoke-interface {v9}, Lcom/google/vr/sdk/widgets/video/deps/dA;->b()Z

    move-result v15

    or-int/2addr v10, v15

    .line 11
    invoke-interface {v9, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a(J)I

    move-result v15

    const/16 v16, 0x1

    if-nez v15, :cond_1

    move/from16 v17, v7

    move/from16 v8, v16

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    goto :goto_1

    :cond_1
    if-nez v8, :cond_2

    .line 17
    invoke-interface {v9}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a()I

    move-result v2

    move/from16 v17, v7

    .line 18
    invoke-interface {v9, v2}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a(I)J

    move-result-wide v6

    .line 19
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    const/4 v6, -0x1

    if-eq v15, v6, :cond_3

    add-int/2addr v2, v15

    add-int/lit8 v2, v2, -0x1

    .line 22
    invoke-interface {v9, v2}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a(I)J

    move-result-wide v6

    .line 23
    invoke-interface {v9, v2, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/dA;->a(IJ)J

    move-result-wide v15

    add-long/2addr v6, v15

    .line 24
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-wide v13, v6

    goto :goto_1

    :cond_2
    move/from16 v17, v7

    :cond_3
    :goto_1
    add-int/lit8 v7, v17, 0x1

    const/4 v6, 0x0

    goto :goto_0

    .line 26
    :cond_4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dz$d;

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/dz$d;-><init>(ZJJ)V

    return-object v0
.end method
