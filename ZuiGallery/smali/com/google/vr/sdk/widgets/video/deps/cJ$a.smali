.class public final Lcom/google/vr/sdk/widgets/video/deps/cJ$a;
.super Ljava/lang/Object;
.source "AdaptiveMediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/cJ;

.field private final c:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;-><init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;J)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a:Landroid/os/Handler;

    .line 5
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->b:Lcom/google/vr/sdk/widgets/video/deps/cJ;

    .line 6
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->c:J

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;J)J
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->b(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;)Lcom/google/vr/sdk/widgets/video/deps/cJ;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->b:Lcom/google/vr/sdk/widgets/video/deps/cJ;

    return-object p0
.end method

.method private b(J)J
    .locals 3

    .line 35
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->c:J

    add-long/2addr v0, p1

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public a(J)Lcom/google/vr/sdk/widgets/video/deps/cJ$a;
    .locals 3

    .line 8
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->b:Lcom/google/vr/sdk/widgets/video/deps/cJ;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;-><init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;J)V

    return-object v0
.end method

.method public a(IJJ)V
    .locals 9

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->b:Lcom/google/vr/sdk/widgets/video/deps/cJ;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$5;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$5;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(ILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;J)V
    .locals 11

    move-object v8, p0

    .line 32
    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->b:Lcom/google/vr/sdk/widgets/video/deps/cJ;

    if-eqz v0, :cond_0

    .line 33
    iget-object v9, v8, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a:Landroid/os/Handler;

    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$6;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$6;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;ILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;J)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJ)V
    .locals 16

    move-object/from16 v14, p0

    .line 11
    iget-object v0, v14, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->b:Lcom/google/vr/sdk/widgets/video/deps/cJ;

    if-eqz v0, :cond_0

    .line 12
    iget-object v15, v14, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a:Landroid/os/Handler;

    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object v14, v12

    move-wide/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJ)V

    invoke-virtual {v15, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJ)V
    .locals 20

    move-object/from16 v14, p0

    .line 16
    iget-object v0, v14, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->b:Lcom/google/vr/sdk/widgets/video/deps/cJ;

    if-eqz v0, :cond_0

    .line 17
    iget-object v15, v14, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a:Landroid/os/Handler;

    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$2;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v18, v12

    move-wide/from16 v12, p11

    move-object/from16 v19, v15

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    invoke-direct/range {v0 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$2;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJ)V

    move-object/from16 v1, v18

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 22

    move-object/from16 v14, p0

    .line 26
    iget-object v0, v14, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->b:Lcom/google/vr/sdk/widgets/video/deps/cJ;

    if-eqz v0, :cond_0

    .line 27
    iget-object v15, v14, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a:Landroid/os/Handler;

    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v20, v12

    move-wide/from16 v12, p11

    move-object/from16 v21, v15

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-object/from16 v18, p17

    move/from16 v19, p18

    invoke-direct/range {v0 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$4;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    move-object/from16 v1, v20

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;IJ)V
    .locals 13

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v11, p3

    .line 9
    invoke-virtual/range {v0 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;IJJJ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    invoke-virtual/range {v0 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;IJJJLjava/io/IOException;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    move-object/from16 v17, p9

    move/from16 v18, p10

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    invoke-virtual/range {v0 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJ)V
    .locals 20

    move-object/from16 v14, p0

    .line 21
    iget-object v0, v14, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->b:Lcom/google/vr/sdk/widgets/video/deps/cJ;

    if-eqz v0, :cond_0

    .line 22
    iget-object v15, v14, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a:Landroid/os/Handler;

    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$3;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v18, v12

    move-wide/from16 v12, p11

    move-object/from16 v19, v15

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    invoke-direct/range {v0 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a$3;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cJ$a;Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJ)V

    move-object/from16 v1, v18

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/fy;IJJJ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    invoke-virtual/range {v0 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->b(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJ)V

    return-void
.end method
