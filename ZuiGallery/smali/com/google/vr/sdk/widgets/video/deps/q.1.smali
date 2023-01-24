.class final Lcom/google/vr/sdk/widgets/video/deps/q;
.super Ljava/lang/Object;
.source "MediaPeriodInfoSequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/q$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/z$b;

.field private c:Lcom/google/vr/sdk/widgets/video/deps/z;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/z$a;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/z$b;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/z$b;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->b:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    return-void
.end method

.method private a(IIIJ)Lcom/google/vr/sdk/widgets/video/deps/q$a;
    .locals 15

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 89
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    move/from16 v4, p1

    invoke-direct {v3, v4, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;-><init>(III)V

    const-wide/high16 v4, -0x8000000000000000L

    .line 90
    invoke-direct {p0, v3, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;J)Z

    move-result v11

    .line 91
    invoke-direct {p0, v3, v11}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Z)Z

    move-result v12

    .line 92
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->c:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget v5, v3, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object v4

    iget v5, v3, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->c:I

    iget v6, v3, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->d:I

    .line 93
    invoke-virtual {v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b(II)J

    move-result-wide v9

    .line 94
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b(I)I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 95
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->f()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v4, v1

    .line 96
    new-instance v14, Lcom/google/vr/sdk/widgets/video/deps/q$a;

    const-wide/high16 v6, -0x8000000000000000L

    const/4 v13, 0x0

    move-object v1, v14

    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move-wide/from16 v7, p4

    invoke-direct/range {v1 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/q$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJJJZZLcom/google/vr/sdk/widgets/video/deps/q$1;)V

    return-object v14
.end method

.method private a(IJJ)Lcom/google/vr/sdk/widgets/video/deps/q$a;
    .locals 15

    move-object v0, p0

    move-wide/from16 v5, p4

    .line 97
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    move/from16 v1, p1

    invoke-direct {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;-><init>(I)V

    .line 98
    invoke-direct {p0, v2, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;J)Z

    move-result v11

    .line 99
    invoke-direct {p0, v2, v11}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Z)Z

    move-result v12

    .line 100
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->c:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget v3, v2, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v1, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v5, v3

    if-nez v1, :cond_0

    .line 101
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b()J

    move-result-wide v3

    move-wide v9, v3

    goto :goto_0

    :cond_0
    move-wide v9, v5

    .line 102
    :goto_0
    new-instance v14, Lcom/google/vr/sdk/widgets/video/deps/q$a;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    move-object v1, v14

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/q$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJJJZZLcom/google/vr/sdk/widgets/video/deps/q$1;)V

    return-object v14
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJ)Lcom/google/vr/sdk/widgets/video/deps/q$a;
    .locals 6

    .line 80
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->c:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 81
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    iget p5, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->c:I

    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->d:I

    invoke-virtual {p4, p5, v0}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->a(II)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 84
    :cond_0
    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->c:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->d:I

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(IIIJ)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object p1

    return-object p1

    .line 85
    :cond_1
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {p2, p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b(J)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    const-wide/high16 p2, -0x8000000000000000L

    goto :goto_0

    .line 87
    :cond_2
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {p3, p2}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->a(I)J

    move-result-wide p2

    :goto_0
    move-wide v4, p2

    .line 88
    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(IJJ)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/q$a;Lcom/google/vr/sdk/widgets/video/deps/cW$b;)Lcom/google/vr/sdk/widgets/video/deps/q$a;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 71
    iget-wide v3, v1, Lcom/google/vr/sdk/widgets/video/deps/q$a;->b:J

    .line 72
    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/q$a;->c:J

    .line 73
    invoke-direct {p0, v2, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;J)Z

    move-result v11

    .line 74
    invoke-direct {p0, v2, v11}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Z)Z

    move-result v12

    .line 75
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->c:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget v8, v2, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v7, v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->a()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    iget v8, v2, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->c:I

    iget v9, v2, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->d:I

    invoke-virtual {v7, v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b(II)J

    move-result-wide v7

    :goto_0
    move-wide v9, v7

    goto :goto_1

    :cond_0
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v7, v5, v7

    if-nez v7, :cond_1

    .line 78
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v7}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b()J

    move-result-wide v7

    goto :goto_0

    :cond_1
    move-wide v9, v5

    .line 79
    :goto_1
    new-instance v14, Lcom/google/vr/sdk/widgets/video/deps/q$a;

    iget-wide v7, v1, Lcom/google/vr/sdk/widgets/video/deps/q$a;->d:J

    const/4 v13, 0x0

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/q$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJJJZZLcom/google/vr/sdk/widgets/video/deps/q$1;)V

    return-object v14
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;J)Z
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->c:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->e()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-int/2addr v0, v1

    .line 107
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->a()Z

    move-result v2

    .line 108
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->a(I)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-nez v2, :cond_1

    cmp-long p1, p2, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    return v1

    .line 110
    :cond_2
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->d(I)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    return v4

    :cond_3
    if-eqz v2, :cond_4

    .line 113
    iget p3, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->c:I

    if-ne p3, v0, :cond_4

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->d:I

    add-int/lit8 p3, p2, -0x1

    if-ne p1, p3, :cond_4

    move p1, v1

    goto :goto_1

    :cond_4
    move p1, v4

    :goto_1
    if-nez p1, :cond_6

    if-nez v2, :cond_5

    .line 114
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b(I)I

    move-result p1

    if-ne p1, p2, :cond_5

    goto :goto_2

    :cond_5
    move v1, v4

    :cond_6
    :goto_2
    return v1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Z)Z
    .locals 7

    .line 115
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->c:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object v0

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->c:I

    .line 116
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->c:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->b:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    invoke-virtual {v1, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$b;)Lcom/google/vr/sdk/widgets/video/deps/z$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->e:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->c:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->b:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->d:I

    iget-boolean v6, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->e:Z

    .line 117
    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/z;->b(ILcom/google/vr/sdk/widgets/video/deps/z$a;Lcom/google/vr/sdk/widgets/video/deps/z$b;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(IJ)Lcom/google/vr/sdk/widgets/video/deps/cW$b;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->c:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 62
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->a(J)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    .line 64
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;-><init>(I)V

    return-object p2

    .line 65
    :cond_0
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {p3, p2}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b(I)I

    move-result p3

    .line 66
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;-><init>(III)V

    return-object v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/k$b;)Lcom/google/vr/sdk/widgets/video/deps/q$a;
    .locals 6

    .line 11
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/k$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/k$b;->c:J

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/k$b;->b:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJ)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/q$a;)Lcom/google/vr/sdk/widgets/video/deps/q$a;
    .locals 1

    .line 67
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Lcom/google/vr/sdk/widgets/video/deps/q$a;Lcom/google/vr/sdk/widgets/video/deps/cW$b;)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/q$a;I)Lcom/google/vr/sdk/widgets/video/deps/q$a;
    .locals 1

    .line 68
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    .line 69
    invoke-virtual {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->a(I)Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    move-result-object p2

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Lcom/google/vr/sdk/widgets/video/deps/q$a;Lcom/google/vr/sdk/widgets/video/deps/cW$b;)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/q$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/q$a;
    .locals 15

    move-object v6, p0

    move-object/from16 v0, p1

    .line 12
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->f:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 13
    iget-object v7, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->c:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget v8, v1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-object v9, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    iget-object v10, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->b:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    iget v11, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->d:I

    iget-boolean v12, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->e:Z

    invoke-virtual/range {v7 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Lcom/google/vr/sdk/widgets/video/deps/z$b;IZ)I

    move-result v1

    if-ne v1, v2, :cond_0

    return-object v3

    .line 16
    :cond_0
    iget-object v2, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->c:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v4, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v2, v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object v2

    iget v10, v2, Lcom/google/vr/sdk/widgets/video/deps/z$a;->c:I

    .line 17
    iget-object v2, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->c:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v4, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->b:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    invoke-virtual {v2, v10, v4}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$b;)Lcom/google/vr/sdk/widgets/video/deps/z$b;

    move-result-object v2

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/z$b;->f:I

    const-wide/16 v4, 0x0

    if-ne v2, v1, :cond_2

    .line 18
    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->e:J

    add-long v0, p2, v0

    sub-long v0, v0, p4

    .line 19
    iget-object v7, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->c:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v8, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->b:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    iget-object v9, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 21
    invoke-virtual/range {v7 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(Lcom/google/vr/sdk/widgets/video/deps/z$b;Lcom/google/vr/sdk/widgets/video/deps/z$a;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    .line 24
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 25
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v4, v2

    .line 28
    :cond_2
    invoke-virtual {p0, v1, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(IJ)Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    move-result-object v1

    move-object v0, p0

    move-wide v2, v4

    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;JJ)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object v0

    return-object v0

    .line 30
    :cond_3
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    .line 31
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->a()Z

    move-result v4

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v4, :cond_8

    .line 32
    iget v4, v1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->c:I

    .line 33
    iget-object v5, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->c:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget v9, v1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-object v10, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v5, v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 34
    iget-object v5, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->d(I)I

    move-result v5

    if-ne v5, v2, :cond_4

    return-object v3

    .line 37
    :cond_4
    iget v9, v1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->d:I

    add-int/lit8 v9, v9, 0x1

    if-ge v9, v5, :cond_6

    .line 39
    iget-object v2, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v2, v4, v9}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->a(II)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 40
    :cond_5
    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->d:J

    move-object v0, p0

    move v2, v4

    move v3, v9

    move-wide v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(IIIJ)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object v3

    :goto_0
    return-object v3

    .line 42
    :cond_6
    iget-object v3, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->d:J

    .line 43
    invoke-virtual {v3, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b(J)I

    move-result v3

    if-ne v3, v2, :cond_7

    move-wide v4, v7

    goto :goto_1

    .line 45
    :cond_7
    iget-object v2, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->a(I)J

    move-result-wide v2

    move-wide v4, v2

    .line 46
    :goto_1
    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->d:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(IJJ)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object v0

    return-object v0

    .line 47
    :cond_8
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->c:J

    cmp-long v2, v4, v7

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    .line 48
    iget-object v2, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    iget-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->c:J

    .line 49
    invoke-virtual {v2, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->a(J)I

    move-result v2

    .line 50
    iget-object v5, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v5, v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->a(II)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_2

    .line 51
    :cond_9
    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    const/4 v3, 0x0

    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/q$a;->c:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(IIIJ)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object v3

    :goto_2
    return-object v3

    .line 53
    :cond_a
    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->e()I

    move-result v0

    if-eqz v0, :cond_c

    .line 54
    iget-object v2, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    add-int/lit8 v5, v0, -0x1

    .line 55
    invoke-virtual {v2, v5}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->a(I)J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-nez v0, :cond_c

    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 56
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->c(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 57
    invoke-virtual {v0, v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->a(II)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    .line 59
    :cond_b
    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b()J

    move-result-wide v7

    .line 60
    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    const/4 v3, 0x0

    move-object v0, p0

    move v2, v5

    move-wide v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(IIIJ)Lcom/google/vr/sdk/widgets/video/deps/q$a;

    move-result-object v0

    return-object v0

    :cond_c
    :goto_3
    return-object v3
.end method

.method public a(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->d:I

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/z;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->c:Lcom/google/vr/sdk/widgets/video/deps/z;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/q;->e:Z

    return-void
.end method
