.class public final Lcom/google/vr/sdk/widgets/video/deps/bE;
.super Ljava/lang/Object;
.source "LatmReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bz;


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final e:I = 0x400

.field private static final f:I = 0x56

.field private static final g:I = 0xe0


# instance fields
.field private A:J

.field private B:I

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/gz;

.field private k:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private l:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:J

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Z

.field private y:J

.field private z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->h:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gz;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;-><init>([B)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a(I)V

    .line 133
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a([B)V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->s:Z

    .line 44
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bE;->b(Lcom/google/vr/sdk/widgets/video/deps/gz;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->s:Z

    if-nez v0, :cond_1

    return-void

    .line 47
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->u:I

    if-nez v0, :cond_4

    .line 48
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->v:I

    if-nez v0, :cond_3

    .line 50
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bE;->e(Lcom/google/vr/sdk/widgets/video/deps/gz;)I

    move-result v0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bE;->a(Lcom/google/vr/sdk/widgets/video/deps/gz;I)V

    .line 52
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->x:Z

    if-eqz v0, :cond_2

    .line 53
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->y:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    :cond_2
    return-void

    .line 49
    :cond_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>()V

    throw p1

    .line 55
    :cond_4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>()V

    throw p1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gz;I)V
    .locals 8

    .line 123
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    shr-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    mul-int/lit8 v1, p2, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a([BII)V

    .line 127
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 128
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->k:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-interface {p1, v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 129
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->k:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->r:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    .line 130
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->r:J

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->A:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->r:J

    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/gz;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 57
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v3

    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->t:I

    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    .line 58
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->u:I

    if-nez v3, :cond_9

    .line 60
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->t:I

    if-ne v3, v2, :cond_1

    .line 61
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/bE;->f(Lcom/google/vr/sdk/widgets/video/deps/gz;)J

    .line 62
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->e()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x6

    .line 64
    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v3

    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->v:I

    const/4 v3, 0x4

    .line 65
    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v3

    const/4 v5, 0x3

    .line 66
    invoke-virtual {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v5

    if-nez v3, :cond_7

    if-nez v5, :cond_7

    .line 69
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->t:I

    const/16 v5, 0x8

    if-nez v3, :cond_2

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b()I

    move-result v3

    .line 71
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/bE;->d(Lcom/google/vr/sdk/widgets/video/deps/gz;)I

    move-result v6

    .line 72
    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a(I)V

    add-int/lit8 v3, v6, 0x7

    .line 73
    div-int/2addr v3, v5

    new-array v3, v3, [B

    .line 74
    invoke-virtual {v1, v3, v4, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a([BII)V

    .line 75
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->m:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->B:I

    iget v13, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->z:I

    .line 76
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->h:Ljava/lang/String;

    const-string v8, "audio/mp4a-latm"

    move-object/from16 v17, v3

    .line 77
    invoke-static/range {v7 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v3

    .line 78
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->l:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/m;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 79
    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->l:Lcom/google/vr/sdk/widgets/video/deps/m;

    const-wide/32 v6, 0x3d090000

    .line 80
    iget v4, v3, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    int-to-long v8, v4

    div-long/2addr v6, v8

    iput-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->A:J

    .line 81
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->k:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    goto :goto_1

    .line 83
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/bE;->f(Lcom/google/vr/sdk/widgets/video/deps/gz;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 84
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/bE;->d(Lcom/google/vr/sdk/widgets/video/deps/gz;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 85
    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 86
    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/bE;->c(Lcom/google/vr/sdk/widgets/video/deps/gz;)V

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->e()Z

    move-result v3

    iput-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->x:Z

    const-wide/16 v6, 0x0

    .line 88
    iput-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->y:J

    if-eqz v3, :cond_5

    .line 90
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->t:I

    if-ne v3, v2, :cond_4

    .line 91
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/bE;->f(Lcom/google/vr/sdk/widgets/video/deps/gz;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->y:J

    goto :goto_2

    .line 92
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->e()Z

    move-result v2

    .line 93
    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->y:J

    shl-long/2addr v3, v5

    invoke-virtual {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bE;->y:J

    if-nez v2, :cond_4

    .line 95
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 97
    invoke-virtual {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    :cond_6
    return-void

    .line 68
    :cond_7
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>()V

    throw v1

    .line 63
    :cond_8
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>()V

    throw v1

    .line 99
    :cond_9
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>()V

    throw v1
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/gz;)V
    .locals 4

    const/4 v0, 0x3

    .line 101
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->w:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x6

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    if-eq v1, v3, :cond_0

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    .line 105
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    .line 103
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    :goto_0
    return-void
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/gz;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a()I

    move-result v0

    const/4 v1, 0x1

    .line 112
    invoke-static {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gp;->a(Lcom/google/vr/sdk/widgets/video/deps/gz;Z)Landroid/util/Pair;

    move-result-object v1

    .line 113
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->z:I

    .line 114
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->B:I

    .line 115
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private e(Lcom/google/vr/sdk/widgets/video/deps/gz;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 117
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->w:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x8

    .line 118
    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    return v0

    .line 122
    :cond_1
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/r;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/r;-><init>()V

    throw p1
.end method

.method private static f(Lcom/google/vr/sdk/widgets/video/deps/gz;)J
    .locals 2

    const/4 v0, 0x2

    .line 135
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    .line 136
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->n:I

    .line 7
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->s:Z

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->r:J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V
    .locals 2

    .line 9
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->a()V

    .line 10
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->k:Lcom/google/vr/sdk/widgets/video/deps/aA;

    .line 11
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->m:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/r;
        }
    .end annotation

    .line 15
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    if-lez v0, :cond_7

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->n:I

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->p:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->o:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/gz;->a:[B

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->o:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 33
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->o:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->o:I

    .line 34
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->p:I

    if-ne v1, v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a(I)V

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->j:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bE;->a(Lcom/google/vr/sdk/widgets/video/deps/gz;)V

    .line 37
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->n:I

    goto :goto_0

    .line 25
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->q:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->p:I

    .line 26
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    array-length v2, v2

    if-le v0, v2, :cond_3

    .line 27
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->p:I

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bE;->a(I)V

    .line 28
    :cond_3
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->o:I

    .line 29
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->n:I

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_5

    .line 21
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->q:I

    .line 22
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->n:I

    goto :goto_0

    :cond_5
    if-eq v0, v1, :cond_0

    .line 24
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->n:I

    goto :goto_0

    .line 17
    :cond_6
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 18
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bE;->n:I

    goto :goto_0

    :cond_7
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
