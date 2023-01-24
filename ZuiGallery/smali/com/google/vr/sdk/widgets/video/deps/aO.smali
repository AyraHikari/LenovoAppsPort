.class final Lcom/google/vr/sdk/widgets/video/deps/aO;
.super Ljava/lang/Object;
.source "VbriSeeker.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/aN$b;


# instance fields
.field private final a:[J

.field private final b:[J

.field private final c:J


# direct methods
.method private constructor <init>([J[JJ)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/aO;->a:[J

    .line 37
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/aO;->b:[J

    .line 38
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/aO;->c:J

    return-void
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/ax;Lcom/google/vr/sdk/widgets/video/deps/gA;JJ)Lcom/google/vr/sdk/widgets/video/deps/aO;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    const/16 v4, 0xa

    .line 1
    invoke-virtual {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v4

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    return-object v5

    .line 5
    :cond_0
    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/ax;->e:I

    int-to-long v7, v4

    const-wide/32 v9, 0xf4240

    const/16 v4, 0x7d00

    if-lt v6, v4, :cond_1

    const/16 v4, 0x480

    goto :goto_0

    :cond_1
    const/16 v4, 0x240

    :goto_0
    int-to-long v11, v4

    mul-long/2addr v9, v11

    int-to-long v11, v6

    .line 8
    invoke-static/range {v7 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide v6

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v4

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v8

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v9

    const/4 v10, 0x2

    .line 12
    invoke-virtual {v1, v10}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 13
    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ax;->d:I

    int-to-long v11, v0

    add-long v11, p2, v11

    add-int/lit8 v0, v4, 0x1

    .line 14
    new-array v13, v0, [J

    .line 15
    new-array v14, v0, [J

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    .line 16
    aput-wide v15, v13, v17

    .line 17
    aput-wide v11, v14, v17

    const/4 v15, 0x1

    move v5, v15

    :goto_1
    if-ge v5, v0, :cond_7

    if-eq v9, v15, :cond_5

    if-eq v9, v10, :cond_4

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    const/4 v10, 0x4

    if-eq v9, v10, :cond_2

    const/4 v10, 0x0

    return-object v10

    :cond_2
    const/4 v10, 0x0

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v16

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->m()I

    move-result v16

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v16

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v16

    :goto_2
    mul-int v10, v16, v8

    move/from16 p2, v0

    int-to-long v0, v10

    add-long/2addr v11, v0

    int-to-long v0, v5

    mul-long/2addr v0, v6

    move v10, v8

    move/from16 v16, v9

    int-to-long v8, v4

    .line 30
    div-long/2addr v0, v8

    aput-wide v0, v13, v5

    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_6

    move-wide v0, v11

    goto :goto_3

    .line 32
    :cond_6
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_3
    aput-wide v0, v14, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move/from16 v0, p2

    move v8, v10

    move/from16 v9, v16

    const/4 v10, 0x2

    goto :goto_1

    .line 34
    :cond_7
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aO;

    invoke-direct {v0, v13, v14, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/aO;-><init>([J[JJ)V

    return-object v0
.end method


# virtual methods
.method public a(J)J
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aO;->a:[J

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aO;->b:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aO;->c:J

    return-wide v0
.end method

.method public b(J)J
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/aO;->b:[J

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/aO;->a:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method
