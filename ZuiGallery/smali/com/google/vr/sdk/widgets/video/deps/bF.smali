.class public final Lcom/google/vr/sdk/widgets/video/deps/bF;
.super Ljava/lang/Object;
.source "MpegAudioReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bz;


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x4


# instance fields
.field private final e:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/ax;

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:J

.field private o:I

.field private p:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bF;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->j:I

    .line 5
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>(I)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 6
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 7
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ax;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/ax;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->f:Lcom/google/vr/sdk/widgets/video/deps/ax;

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->g:Ljava/lang/String;

    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 8

    .line 30
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    .line 31
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v1

    .line 32
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 34
    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    move v3, v6

    goto :goto_1

    :cond_0
    move v3, v5

    .line 35
    :goto_1
    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->m:Z

    if-eqz v4, :cond_1

    aget-byte v4, v0, v1

    const/16 v7, 0xe0

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_1

    move v4, v6

    goto :goto_2

    :cond_1
    move v4, v5

    .line 36
    :goto_2
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->m:Z

    if-eqz v4, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 38
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 39
    iput-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->m:Z

    .line 40
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    aget-byte v0, v0, v1

    aput-byte v0, p1, v6

    const/4 p1, 0x2

    .line 41
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->k:I

    .line 42
    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->j:I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return-void
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 20

    move-object/from16 v0, p0

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v1

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->k:I

    const/4 v3, 0x4

    rsub-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 48
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->k:I

    move-object/from16 v5, p1

    invoke-virtual {v5, v2, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 49
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->k:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->k:I

    if-ge v2, v3, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 53
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->f:Lcom/google/vr/sdk/widgets/video/deps/ax;

    invoke-static {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/ax;->a(ILcom/google/vr/sdk/widgets/video/deps/ax;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 55
    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->k:I

    .line 56
    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->j:I

    return-void

    .line 58
    :cond_1
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->f:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ax;->d:I

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->o:I

    .line 59
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->l:Z

    if-nez v1, :cond_2

    const-wide/32 v5, 0xf4240

    .line 60
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->f:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ax;->h:I

    int-to-long v7, v1

    mul-long/2addr v7, v5

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->f:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ax;->e:I

    int-to-long v5, v1

    div-long/2addr v7, v5

    iput-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->n:J

    .line 61
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->h:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->f:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget-object v10, v1, Lcom/google/vr/sdk/widgets/video/deps/ax;->c:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/16 v13, 0x1000

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->f:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget v14, v1, Lcom/google/vr/sdk/widgets/video/deps/ax;->f:I

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->f:Lcom/google/vr/sdk/widgets/video/deps/ax;

    iget v15, v1, Lcom/google/vr/sdk/widgets/video/deps/ax;->e:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->g:Ljava/lang/String;

    move-object/from16 v19, v1

    invoke-static/range {v9 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v1

    .line 62
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->i:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 63
    iput-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->l:Z

    .line 64
    :cond_2
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 65
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->i:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-interface {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    const/4 v1, 0x2

    .line 66
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bF;->j:I

    return-void
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 7

    .line 68
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->o:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->k:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->i:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v1, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 70
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->k:I

    .line 71
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->o:I

    if-ge p1, v4, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->i:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->p:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    .line 74
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->p:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->n:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->p:J

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->k:I

    .line 76
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->j:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->j:I

    .line 11
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->k:I

    .line 12
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->m:Z

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->p:J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V
    .locals 1

    .line 14
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->a()V

    .line 15
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->h:Ljava/lang/String;

    .line 16
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->i:Lcom/google/vr/sdk/widgets/video/deps/aA;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 2

    .line 20
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    if-lez v0, :cond_3

    .line 21
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bF;->j:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bF;->d(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bF;->c(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    goto :goto_0

    .line 22
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bF;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
