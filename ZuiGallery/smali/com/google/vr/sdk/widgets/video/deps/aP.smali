.class final Lcom/google/vr/sdk/widgets/video/deps/aP;
.super Ljava/lang/Object;
.source "XingSeeker.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/aN$b;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:[J

.field private final e:J

.field private final f:I


# direct methods
.method private constructor <init>(JJJ)V
    .locals 11

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    .line 17
    invoke-direct/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/aP;-><init>(JJJ[JJI)V

    return-void
.end method

.method private constructor <init>(JJJ[JJI)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->a:J

    .line 21
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->b:J

    .line 22
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->c:J

    .line 23
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->d:[J

    .line 24
    iput-wide p8, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->e:J

    .line 25
    iput p10, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->f:I

    return-void
.end method

.method private a(I)J
    .locals 4

    .line 59
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->b:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/ax;Lcom/google/vr/sdk/widgets/video/deps/gA;JJ)Lcom/google/vr/sdk/widgets/video/deps/aP;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ax;->h:I

    .line 2
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/ax;->e:I

    .line 3
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/ax;->d:I

    int-to-long v3, v3

    add-long v6, p2, v3

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v3

    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    int-to-long v8, v4

    int-to-long v10, v1

    const-wide/32 v12, 0xf4240

    mul-long/2addr v10, v12

    int-to-long v12, v2

    .line 7
    invoke-static/range {v8 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v8

    const/4 v1, 0x6

    and-int/lit8 v2, v3, 0x6

    if-eq v2, v1, :cond_1

    .line 9
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aP;

    move-object v5, v0

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/aP;-><init>(JJJ)V

    return-object v0

    .line 10
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v1

    int-to-long v13, v1

    move-object/from16 v1, p1

    .line 11
    invoke-virtual {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    const/16 v2, 0x63

    new-array v12, v2, [J

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v4

    int-to-long v4, v4

    aput-wide v4, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_2
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/aP;

    iget v15, v0, Lcom/google/vr/sdk/widgets/video/deps/ax;->d:I

    move-object v5, v1

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/aP;-><init>(JJJ[JJI)V

    return-object v1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(J)J
    .locals 11

    .line 47
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/aP;->a()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->a:J

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_3

    :cond_0
    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    sub-long/2addr p1, v3

    long-to-double p1, p1

    mul-double/2addr p1, v5

    .line 49
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->e:J

    long-to-double v3, v3

    div-double/2addr p1, v3

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->d:[J

    double-to-long v3, p1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 51
    invoke-static {v0, v3, v4, v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a([JJZZ)I

    move-result v0

    add-int/2addr v0, v6

    .line 52
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/aP;->a(I)J

    move-result-wide v3

    if-nez v0, :cond_1

    move-wide v7, v1

    goto :goto_0

    .line 53
    :cond_1
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->d:[J

    add-int/lit8 v7, v0, -0x1

    aget-wide v7, v5, v7

    :goto_0
    const/16 v5, 0x63

    if-ne v0, v5, :cond_2

    const-wide/16 v9, 0x100

    goto :goto_1

    .line 54
    :cond_2
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->d:[J

    aget-wide v9, v5, v0

    :goto_1
    add-int/2addr v0, v6

    .line 55
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/aP;->a(I)J

    move-result-wide v5

    cmp-long v0, v9, v7

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    sub-long/2addr v5, v3

    long-to-double v0, v5

    long-to-double v5, v7

    sub-double/2addr p1, v5

    mul-double/2addr v0, p1

    sub-long/2addr v9, v7

    long-to-double p1, v9

    div-double/2addr v0, p1

    double-to-long v1, v0

    :goto_2
    add-long/2addr v3, v1

    return-wide v3

    :cond_4
    :goto_3
    return-wide v1
.end method

.method public a()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->d:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->b:J

    return-wide v0
.end method

.method public b(J)J
    .locals 7

    .line 28
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/aP;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->a:J

    return-wide p1

    :cond_0
    long-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    .line 30
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->b:J

    long-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x43800000    # 256.0f

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    cmpl-float p2, p1, p2

    if-ltz p2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    float-to-int p2, p1

    if-nez p2, :cond_3

    goto :goto_0

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->d:[J

    add-int/lit8 v1, p2, -0x1

    aget-wide v0, v0, v1

    long-to-float v0, v0

    :goto_0
    const/16 v1, 0x63

    if-ge p2, v1, :cond_4

    .line 40
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->d:[J

    aget-wide v1, v1, p2

    long-to-float v2, v1

    :cond_4
    sub-float/2addr v2, v0

    int-to-float p2, p2

    sub-float/2addr p1, p2

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    :goto_1
    const-wide/high16 p1, 0x3f70000000000000L    # 0.00390625

    float-to-double v0, v0

    mul-double/2addr v0, p1

    .line 43
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->e:J

    long-to-double p1, p1

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->a:J

    add-long/2addr p1, v0

    .line 44
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->c:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x1

    if-eqz v4, :cond_5

    sub-long/2addr v2, v5

    goto :goto_2

    .line 45
    :cond_5
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->f:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/aP;->e:J

    add-long/2addr v0, v2

    sub-long v2, v0, v5

    .line 46
    :goto_2
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method
