.class public final Lcom/google/vr/sdk/widgets/video/deps/de;
.super Lcom/google/vr/sdk/widgets/video/deps/z;
.source "SinglePeriodTimeline.java"


# static fields
.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:Z

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/de;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JJJJJJZZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/z;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/de;->c:J

    .line 7
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/de;->d:J

    .line 8
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/de;->e:J

    .line 9
    iput-wide p7, p0, Lcom/google/vr/sdk/widgets/video/deps/de;->f:J

    .line 10
    iput-wide p9, p0, Lcom/google/vr/sdk/widgets/video/deps/de;->g:J

    .line 11
    iput-wide p11, p0, Lcom/google/vr/sdk/widgets/video/deps/de;->h:J

    .line 12
    iput-boolean p13, p0, Lcom/google/vr/sdk/widgets/video/deps/de;->i:Z

    .line 13
    iput-boolean p14, p0, Lcom/google/vr/sdk/widgets/video/deps/de;->j:Z

    return-void
.end method

.method public constructor <init>(JJJJZZ)V
    .locals 15

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v13, p9

    move/from16 v14, p10

    .line 3
    invoke-direct/range {v0 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/de;-><init>(JJJJJJZZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 11

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v9, p3

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/de;-><init>(JJJJZZ)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    .line 28
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/de;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Z)Lcom/google/vr/sdk/widgets/video/deps/z$a;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 25
    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(III)I

    if-eqz p3, :cond_0

    .line 26
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/de;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v3, 0x0

    .line 27
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/de;->e:J

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/de;->g:J

    neg-long v6, v0

    move-object v0, p2

    move-object v1, v2

    invoke-virtual/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->a(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object p1

    return-object p1
.end method

.method public a(ILcom/google/vr/sdk/widgets/video/deps/z$b;ZJ)Lcom/google/vr/sdk/widgets/video/deps/z$b;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    .line 16
    invoke-static {v3, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(III)I

    if-eqz p3, :cond_0

    .line 17
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/de;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v3, v1

    .line 18
    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/de;->h:J

    .line 19
    iget-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/de;->j:Z

    if-eqz v4, :cond_1

    add-long v1, v1, p4

    .line 21
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/de;->f:J

    cmp-long v4, v1, v4

    if-lez v4, :cond_1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :cond_1
    move-wide v10, v1

    .line 23
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/de;->c:J

    iget-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/de;->d:J

    iget-boolean v8, v0, Lcom/google/vr/sdk/widgets/video/deps/de;->i:Z

    iget-boolean v9, v0, Lcom/google/vr/sdk/widgets/video/deps/de;->j:Z

    iget-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/de;->f:J

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/de;->g:J

    move-wide/from16 v16, v1

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/z$b;->a(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/vr/sdk/widgets/video/deps/z$b;

    move-result-object v1

    return-object v1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
