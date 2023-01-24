.class final Lcom/google/vr/sdk/widgets/video/deps/bg;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/bg$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x11940

.field public static final b:I = 0x186a0

.field private static final c:I = 0x7530

.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3


# instance fields
.field private final h:Lcom/google/vr/sdk/widgets/video/deps/bk;

.field private final i:J

.field private final j:J

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/bn;

.field private l:I

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:J


# direct methods
.method public constructor <init>(JJLcom/google/vr/sdk/widgets/video/deps/bn;IJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bk;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/bk;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 4
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->k:Lcom/google/vr/sdk/widgets/video/deps/bn;

    .line 5
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->i:J

    .line 6
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->j:J

    int-to-long p5, p6

    sub-long/2addr p3, p1

    cmp-long p1, p5, p3

    if-nez p1, :cond_1

    .line 8
    iput-wide p7, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->m:J

    const/4 p1, 0x3

    .line 9
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->l:I

    goto :goto_1

    .line 10
    :cond_1
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->l:I

    :goto_1
    return-void
.end method

.method private a(JJJ)J
    .locals 4

    .line 72
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->j:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->i:J

    sub-long/2addr v0, v2

    mul-long/2addr p3, v0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->m:J

    div-long/2addr p3, v0

    sub-long/2addr p3, p5

    add-long/2addr p1, p3

    cmp-long p3, p1, v2

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, p1

    .line 75
    :goto_0
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->j:J

    cmp-long p3, v2, p1

    if-ltz p3, :cond_1

    const-wide/16 p3, 0x1

    sub-long v2, p1, p3

    :cond_1
    return-wide v2
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/bg;)J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->i:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/bg;JJJ)J
    .locals 0

    .line 111
    invoke-direct/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/bg;->a(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/bg;)Lcom/google/vr/sdk/widgets/video/deps/bn;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->k:Lcom/google/vr/sdk/widgets/video/deps/bn;

    return-object p0
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/bg;)J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->m:J

    return-wide v0
.end method


# virtual methods
.method public a(J)J
    .locals 4

    .line 31
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->l:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    goto :goto_2

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->k:Lcom/google/vr/sdk/widgets/video/deps/bn;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bn;->b(J)J

    move-result-wide v2

    :goto_2
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->o:J

    .line 33
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->l:I

    .line 34
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bg;->b()V

    .line 35
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->o:J

    return-wide p1
.end method

.method public a(JLcom/google/vr/sdk/widgets/video/deps/at;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 42
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->p:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->q:J

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x2

    if-nez v0, :cond_0

    .line 43
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->r:J

    add-long/2addr p1, v1

    neg-long p1, p1

    return-wide p1

    .line 44
    :cond_0
    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v3

    .line 45
    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->q:J

    invoke-virtual {p0, p3, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/bg;->a(Lcom/google/vr/sdk/widgets/video/deps/at;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->p:J

    cmp-long p3, p1, v3

    if-eqz p3, :cond_1

    return-wide p1

    .line 47
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No ogg page can be found."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    const/4 v5, 0x0

    invoke-virtual {v0, p3, v5}, Lcom/google/vr/sdk/widgets/video/deps/bk;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Z)Z

    .line 50
    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/bk;->g:J

    sub-long/2addr p1, v5

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/bk;->l:I

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget v5, v5, Lcom/google/vr/sdk/widgets/video/deps/bk;->m:I

    add-int/2addr v0, v5

    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-ltz v5, :cond_4

    const-wide/32 v6, 0x11940

    cmp-long v6, p1, v6

    if-lez v6, :cond_3

    goto :goto_0

    .line 70
    :cond_3
    invoke-interface {p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    .line 71
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget-wide p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bk;->g:J

    add-long/2addr p1, v1

    neg-long p1, p1

    return-wide p1

    :cond_4
    :goto_0
    const-wide/32 v6, 0x186a0

    if-gez v5, :cond_5

    .line 55
    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->q:J

    .line 56
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/bk;->g:J

    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->s:J

    goto :goto_1

    .line 57
    :cond_5
    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v3

    int-to-long v8, v0

    add-long/2addr v3, v8

    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->p:J

    .line 58
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/bk;->g:J

    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->r:J

    .line 59
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->q:J

    iget-wide v10, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->p:J

    sub-long/2addr v3, v10

    add-long/2addr v3, v8

    cmp-long v3, v3, v6

    if-gez v3, :cond_6

    .line 60
    invoke-interface {p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    .line 61
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->r:J

    add-long/2addr p1, v1

    neg-long p1, p1

    return-wide p1

    .line 62
    :cond_6
    :goto_1
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->q:J

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->p:J

    sub-long/2addr v1, v3

    cmp-long v1, v1, v6

    if-gez v1, :cond_7

    .line 63
    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->q:J

    return-wide v3

    :cond_7
    if-gtz v5, :cond_8

    const/4 v1, 0x2

    goto :goto_2

    :cond_8
    const/4 v1, 0x1

    :goto_2
    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 66
    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->q:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->p:J

    sub-long/2addr v0, v4

    mul-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->s:J

    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->r:J

    sub-long/2addr v0, v6

    div-long/2addr p1, v0

    add-long/2addr v2, p1

    .line 67
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 68
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->q:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/at;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 12
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->l:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 22
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->o:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    const-wide/16 v6, 0x2

    if-nez v5, :cond_2

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/bg;->a(JLcom/google/vr/sdk/widgets/video/deps/at;)J

    move-result-wide v0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_3

    return-wide v0

    .line 27
    :cond_3
    iget-wide v10, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->o:J

    add-long/2addr v0, v6

    neg-long v12, v0

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/bg;->a(Lcom/google/vr/sdk/widgets/video/deps/at;JJ)J

    move-result-wide v3

    .line 28
    :goto_0
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->l:I

    add-long/2addr v3, v6

    neg-long v0, v3

    return-wide v0

    .line 14
    :cond_4
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->n:J

    .line 15
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->l:I

    .line 16
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->j:J

    const-wide/32 v5, 0xff1b

    sub-long/2addr v0, v5

    cmp-long v3, v0, v3

    if-lez v3, :cond_5

    return-wide v0

    .line 19
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bg;->c(Lcom/google/vr/sdk/widgets/video/deps/at;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->m:J

    .line 20
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->l:I

    .line 21
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->n:J

    return-wide v0
.end method

.method a(Lcom/google/vr/sdk/widgets/video/deps/at;JJ)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/bk;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Z)Z

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bk;->g:J

    cmp-long v0, v2, p2

    if-gez v0, :cond_0

    .line 103
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget p4, p4, Lcom/google/vr/sdk/widgets/video/deps/bk;->l:I

    iget-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget p5, p5, Lcom/google/vr/sdk/widgets/video/deps/bk;->m:I

    add-int/2addr p4, p5

    invoke-interface {p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    .line 104
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget-wide p4, p4, Lcom/google/vr/sdk/widgets/video/deps/bk;->g:J

    .line 105
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/bk;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Z)Z

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->a()V

    return-wide p4
.end method

.method public a()Lcom/google/vr/sdk/widgets/video/deps/bg$a;
    .locals 4

    .line 36
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bg$a;

    invoke-direct {v0, p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bg$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bg;Lcom/google/vr/sdk/widgets/video/deps/bg$1;)V

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method a(Lcom/google/vr/sdk/widgets/video/deps/at;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, 0x3

    add-long/2addr p2, v0

    .line 81
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->j:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    const/16 v0, 0x800

    new-array v1, v0, [B

    .line 84
    :goto_0
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    cmp-long v2, v2, p2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 85
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v4

    sub-long v4, p2, v4

    long-to-int v0, v4

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v3

    .line 88
    :cond_0
    invoke-interface {p1, v1, v3, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/at;->b([BIIZ)Z

    :goto_1
    add-int/lit8 v2, v0, -0x3

    if-ge v3, v2, :cond_2

    .line 90
    aget-byte v2, v1, v3

    const/16 v4, 0x4f

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, v3, 0x1

    aget-byte v2, v1, v2

    const/16 v4, 0x67

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, v3, 0x2

    aget-byte v2, v1, v2

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, v3, 0x3

    aget-byte v2, v1, v2

    const/16 v4, 0x53

    if-ne v2, v4, :cond_1

    .line 91
    invoke-interface {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 94
    :cond_2
    invoke-interface {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->i:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->p:J

    .line 38
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->j:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->q:J

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->r:J

    .line 40
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->m:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->s:J

    return-void
.end method

.method b(Lcom/google/vr/sdk/widgets/video/deps/at;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 78
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->j:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bg;->a(Lcom/google/vr/sdk/widgets/video/deps/at;J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method c(Lcom/google/vr/sdk/widgets/video/deps/at;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bg;->b(Lcom/google/vr/sdk/widgets/video/deps/at;)V

    .line 96
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bk;->a()V

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/bk;->f:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->j:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/bk;->a(Lcom/google/vr/sdk/widgets/video/deps/at;Z)Z

    .line 99
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/bk;->l:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/bk;->m:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bg;->h:Lcom/google/vr/sdk/widgets/video/deps/bk;

    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/bk;->g:J

    return-wide v0
.end method

.method public synthetic c()Lcom/google/vr/sdk/widgets/video/deps/az;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bg;->a()Lcom/google/vr/sdk/widgets/video/deps/bg$a;

    move-result-object v0

    return-object v0
.end method
