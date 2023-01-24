.class public final Lcom/google/vr/sdk/widgets/video/deps/fZ;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fZ$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x20000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/fy;JJLcom/google/vr/sdk/widgets/video/deps/fv;[BLcom/google/vr/sdk/widgets/video/deps/gD;ILcom/google/vr/sdk/widgets/video/deps/fZ$a;)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p5

    move-object/from16 v0, p6

    move-object/from16 v2, p9

    move-object/from16 v3, p0

    :goto_0
    if-eqz p7, :cond_0

    .line 47
    invoke-virtual/range {p7 .. p8}, Lcom/google/vr/sdk/widgets/video/deps/gD;->b(I)V

    .line 48
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_6

    .line 50
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-object v6, v3, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    iget-object v7, v3, Lcom/google/vr/sdk/widgets/video/deps/fy;->d:[B

    iget-wide v8, v3, Lcom/google/vr/sdk/widgets/video/deps/fy;->f:J

    add-long v8, v8, p1

    iget-wide v10, v3, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    sub-long v10, v8, v10

    const-wide/16 v12, -0x1

    iget-object v14, v3, Lcom/google/vr/sdk/widgets/video/deps/fy;->h:Ljava/lang/String;

    iget v5, v3, Lcom/google/vr/sdk/widgets/video/deps/fy;->i:I

    or-int/lit8 v15, v5, 0x2

    move-object v5, v4

    move-wide/from16 v8, p1

    invoke-direct/range {v5 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/gD$a; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :try_start_1
    invoke-interface {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J

    move-result-wide v5

    .line 52
    iget-wide v7, v2, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->c:J

    const-wide/16 v9, -0x1

    cmp-long v3, v7, v9

    if-nez v3, :cond_1

    cmp-long v3, v5, v9

    if-eqz v3, :cond_1

    .line 53
    iget-wide v7, v4, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    add-long/2addr v7, v5

    iput-wide v7, v2, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->c:J

    :cond_1
    const-wide/16 v5, 0x0

    :goto_1
    cmp-long v3, v5, p3

    if-eqz v3, :cond_5

    .line 56
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    cmp-long v7, p3, v9

    if-eqz v7, :cond_2

    .line 59
    array-length v7, v0

    int-to-long v7, v7

    sub-long v11, p3, v5

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    goto :goto_2

    .line 60
    :cond_2
    array-length v7, v0

    .line 61
    :goto_2
    invoke-interface {v1, v0, v3, v7}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a([BII)I

    move-result v3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_3

    .line 63
    iget-wide v7, v2, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->c:J

    cmp-long v3, v7, v9

    if-nez v3, :cond_5

    .line 64
    iget-wide v7, v4, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    add-long/2addr v7, v5

    iput-wide v7, v2, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->c:J

    goto :goto_3

    :cond_3
    int-to-long v7, v3

    add-long/2addr v5, v7

    .line 66
    iget-wide v11, v2, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->b:J

    add-long/2addr v11, v7

    iput-wide v11, v2, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->b:J

    goto :goto_1

    .line 57
    :cond_4
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_1
    .catch Lcom/google/vr/sdk/widgets/video/deps/gD$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :cond_5
    :goto_3
    invoke-static/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    return-wide v5

    :catch_0
    move-object v3, v4

    goto :goto_4

    .line 49
    :cond_6
    :try_start_2
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4
    :try_end_2
    .catch Lcom/google/vr/sdk/widgets/video/deps/gD$a; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 74
    invoke-static/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    throw v0

    .line 72
    :catch_1
    :goto_4
    invoke-static/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/fy;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/fZ;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/fS;Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-interface {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fS;->a(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/fY;

    .line 79
    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fS;->b(Lcom/google/vr/sdk/widgets/video/deps/fY;)V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/fS$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fV;[BLcom/google/vr/sdk/widgets/video/deps/gD;ILcom/google/vr/sdk/widgets/video/deps/fZ$a;Z)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p6

    .line 24
    invoke-static/range {p2 .. p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static/range {p3 .. p3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v10, v11, v0}, Lcom/google/vr/sdk/widgets/video/deps/fZ;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fZ$a;)V

    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;-><init>()V

    :goto_0
    move-object v12, v0

    .line 29
    invoke-static/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/fZ;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)Ljava/lang/String;

    move-result-object v13

    .line 30
    iget-wide v0, v10, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    .line 31
    iget-wide v2, v10, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    const-wide/16 v14, -0x1

    cmp-long v2, v2, v14

    if-eqz v2, :cond_1

    iget-wide v2, v10, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    goto :goto_1

    :cond_1
    invoke-interface {v11, v13}, Lcom/google/vr/sdk/widgets/video/deps/fS;->b(Ljava/lang/String;)J

    move-result-wide v2

    :goto_1
    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    :goto_2
    const-wide/16 v20, 0x0

    cmp-long v0, v18, v20

    if-eqz v0, :cond_7

    cmp-long v22, v18, v14

    if-eqz v22, :cond_2

    move-wide/from16 v4, v18

    goto :goto_3

    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    move-wide v4, v0

    :goto_3
    move-object/from16 v0, p1

    move-object v1, v13

    move-wide/from16 v2, v16

    .line 35
    invoke-interface/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/fS;->c(Ljava/lang/String;JJ)J

    move-result-wide v0

    cmp-long v2, v0, v20

    if-lez v2, :cond_3

    goto :goto_4

    :cond_3
    neg-long v8, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide v3, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v23, v8

    move/from16 v8, p5

    move-object v9, v12

    .line 38
    invoke-static/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/fZ;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;JJLcom/google/vr/sdk/widgets/video/deps/fv;[BLcom/google/vr/sdk/widgets/video/deps/gD;ILcom/google/vr/sdk/widgets/video/deps/fZ$a;)J

    move-result-wide v0

    cmp-long v0, v0, v23

    if-gez v0, :cond_5

    if-eqz p7, :cond_7

    if-nez v22, :cond_4

    goto :goto_6

    .line 41
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_5
    move-wide/from16 v0, v23

    :goto_4
    add-long v16, v16, v0

    if-nez v22, :cond_6

    goto :goto_5

    :cond_6
    move-wide/from16 v20, v0

    :goto_5
    sub-long v18, v18, v20

    goto :goto_2

    :cond_7
    :goto_6
    return-void
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fZ$a;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 3
    invoke-static/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/fZ;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)Ljava/lang/String;

    move-result-object v8

    .line 4
    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->e:J

    .line 5
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    const-wide/16 v9, -0x1

    cmp-long v4, v4, v9

    if-eqz v4, :cond_0

    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fy;->g:J

    move-object/from16 v0, p1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/google/vr/sdk/widgets/video/deps/fS;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 6
    :goto_0
    iput-wide v4, v1, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->c:J

    const-wide/16 v11, 0x0

    .line 7
    iput-wide v11, v1, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->a:J

    .line 8
    iput-wide v11, v1, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->b:J

    move-wide v13, v2

    move-wide v15, v4

    :goto_1
    cmp-long v2, v15, v11

    if-eqz v2, :cond_5

    cmp-long v17, v15, v9

    const-wide v18, 0x7fffffffffffffffL

    if-eqz v17, :cond_1

    move-wide v6, v15

    goto :goto_2

    :cond_1
    move-wide/from16 v6, v18

    :goto_2
    move-object/from16 v2, p1

    move-object v3, v8

    move-wide v4, v13

    .line 12
    invoke-interface/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/fS;->c(Ljava/lang/String;JJ)J

    move-result-wide v2

    cmp-long v4, v2, v11

    if-lez v4, :cond_2

    .line 14
    iget-wide v4, v1, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->a:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->a:J

    goto :goto_3

    :cond_2
    neg-long v2, v2

    cmp-long v4, v2, v18

    if-nez v4, :cond_3

    return-void

    :cond_3
    :goto_3
    add-long/2addr v13, v2

    if-nez v17, :cond_4

    move-wide v2, v11

    :cond_4
    sub-long/2addr v15, v2

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fZ$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 22
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/fV;

    invoke-direct {v2, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fV;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    const/high16 p2, 0x20000

    new-array v3, p2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-static/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/fZ;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;Lcom/google/vr/sdk/widgets/video/deps/fS;Lcom/google/vr/sdk/widgets/video/deps/fV;[BLcom/google/vr/sdk/widgets/video/deps/gD;ILcom/google/vr/sdk/widgets/video/deps/fZ$a;Z)V

    return-void
.end method
