.class abstract Lcom/google/vr/sdk/widgets/video/deps/bn;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/bn$b;,
        Lcom/google/vr/sdk/widgets/video/deps/bn$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3


# instance fields
.field private final e:Lcom/google/vr/sdk/widgets/video/deps/bj;

.field private f:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private g:Lcom/google/vr/sdk/widgets/video/deps/au;

.field private h:Lcom/google/vr/sdk/widgets/video/deps/bl;

.field private i:J

.field private j:J

.field private k:J

.field private l:I

.field private m:I

.field private n:Lcom/google/vr/sdk/widgets/video/deps/bn$a;

.field private o:J

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bj;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/bj;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->e:Lcom/google/vr/sdk/widgets/video/deps/bj;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/at;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 32
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->e:Lcom/google/vr/sdk/widgets/video/deps/bj;

    invoke-virtual {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/bj;->a(Lcom/google/vr/sdk/widgets/video/deps/at;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x3

    .line 33
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->l:I

    const/4 p1, -0x1

    return p1

    .line 35
    :cond_1
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->j:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->o:J

    .line 36
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->e:Lcom/google/vr/sdk/widgets/video/deps/bj;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/bj;->c()Lcom/google/vr/sdk/widgets/video/deps/gA;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->j:J

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->n:Lcom/google/vr/sdk/widgets/video/deps/bn$a;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;JLcom/google/vr/sdk/widgets/video/deps/bn$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->j:J

    goto :goto_0

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->n:Lcom/google/vr/sdk/widgets/video/deps/bn$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/bn$a;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->m:I

    .line 40
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->q:Z

    if-nez v1, :cond_3

    .line 41
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->f:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->n:Lcom/google/vr/sdk/widgets/video/deps/bn$a;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bn$a;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 42
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->q:Z

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->n:Lcom/google/vr/sdk/widgets/video/deps/bn$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/bn$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bl;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 44
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->n:Lcom/google/vr/sdk/widgets/video/deps/bn$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bn$a;->b:Lcom/google/vr/sdk/widgets/video/deps/bl;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->h:Lcom/google/vr/sdk/widgets/video/deps/bl;

    goto :goto_1

    .line 45
    :cond_4
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    .line 46
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bn$b;

    invoke-direct {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/bn$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bn$1;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->h:Lcom/google/vr/sdk/widgets/video/deps/bl;

    goto :goto_1

    .line 47
    :cond_5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->e:Lcom/google/vr/sdk/widgets/video/deps/bj;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bj;->b()Lcom/google/vr/sdk/widgets/video/deps/bk;

    move-result-object v0

    .line 48
    new-instance v11, Lcom/google/vr/sdk/widgets/video/deps/bg;

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->j:J

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/at;->d()J

    move-result-wide v5

    iget p1, v0, Lcom/google/vr/sdk/widgets/video/deps/bk;->l:I

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bk;->m:I

    add-int v8, p1, v2

    iget-wide v9, v0, Lcom/google/vr/sdk/widgets/video/deps/bk;->g:J

    move-object v2, v11

    move-object v7, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/bg;-><init>(JJLcom/google/vr/sdk/widgets/video/deps/bn;IJ)V

    iput-object v11, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->h:Lcom/google/vr/sdk/widgets/video/deps/bl;

    .line 49
    :goto_1
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->n:Lcom/google/vr/sdk/widgets/video/deps/bn$a;

    const/4 p1, 0x2

    .line 50
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->l:I

    .line 51
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->e:Lcom/google/vr/sdk/widgets/video/deps/bj;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/bj;->d()V

    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 53
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->h:Lcom/google/vr/sdk/widgets/video/deps/bl;

    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/bl;->a(Lcom/google/vr/sdk/widgets/video/deps/at;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    if-ltz v6, :cond_0

    move-object/from16 v6, p2

    .line 55
    iput-wide v2, v6, Lcom/google/vr/sdk/widgets/video/deps/ay;->a:J

    return v7

    :cond_0
    const-wide/16 v8, -0x1

    cmp-long v6, v2, v8

    if-gez v6, :cond_1

    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    neg-long v2, v2

    .line 58
    invoke-virtual {v0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/bn;->c(J)V

    .line 59
    :cond_1
    iget-boolean v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->p:Z

    if-nez v2, :cond_2

    .line 60
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->h:Lcom/google/vr/sdk/widgets/video/deps/bl;

    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/bl;->c()Lcom/google/vr/sdk/widgets/video/deps/az;

    move-result-object v2

    .line 61
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->g:Lcom/google/vr/sdk/widgets/video/deps/au;

    invoke-interface {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(Lcom/google/vr/sdk/widgets/video/deps/az;)V

    .line 62
    iput-boolean v7, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->p:Z

    .line 63
    :cond_2
    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->o:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->e:Lcom/google/vr/sdk/widgets/video/deps/bj;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/bj;->a(Lcom/google/vr/sdk/widgets/video/deps/at;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    .line 74
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->l:I

    const/4 v1, -0x1

    return v1

    .line 64
    :cond_4
    :goto_0
    iput-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->o:J

    .line 65
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->e:Lcom/google/vr/sdk/widgets/video/deps/bj;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/bj;->c()Lcom/google/vr/sdk/widgets/video/deps/gA;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bn;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)J

    move-result-wide v2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_5

    .line 67
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->k:J

    add-long v6, v4, v2

    iget-wide v10, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->i:J

    cmp-long v6, v6, v10

    if-ltz v6, :cond_5

    .line 68
    invoke-virtual {v0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a(J)J

    move-result-wide v11

    .line 69
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->f:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v5

    invoke-interface {v4, v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 70
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->f:Lcom/google/vr/sdk/widgets/video/deps/aA;

    const/4 v13, 0x1

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    .line 71
    iput-wide v8, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->i:J

    .line 72
    :cond_5
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->k:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/bn;->k:J

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method final a(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 23
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->l:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bn;->b(Lcom/google/vr/sdk/widgets/video/deps/at;Lcom/google/vr/sdk/widgets/video/deps/ay;)I

    move-result p1

    return p1

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 25
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->j:J

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/at;->b(I)V

    .line 26
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->l:I

    const/4 p1, 0x0

    return p1

    .line 24
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a(Lcom/google/vr/sdk/widgets/video/deps/at;)I

    move-result p1

    return p1
.end method

.method protected a(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    .line 77
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->m:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method final a(JJ)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->e:Lcom/google/vr/sdk/widgets/video/deps/bj;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/bj;->a()V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 18
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->p:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a(Z)V

    goto :goto_0

    .line 19
    :cond_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->l:I

    if-eqz p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->h:Lcom/google/vr/sdk/widgets/video/deps/bl;

    invoke-interface {p1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/bl;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->i:J

    const/4 p1, 0x2

    .line 21
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->l:I

    :cond_1
    :goto_0
    return-void
.end method

.method a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/aA;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->g:Lcom/google/vr/sdk/widgets/video/deps/au;

    .line 5
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->f:Lcom/google/vr/sdk/widgets/video/deps/aA;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a(Z)V

    return-void
.end method

.method protected a(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bn$a;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/bn$a;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->n:Lcom/google/vr/sdk/widgets/video/deps/bn$a;

    .line 10
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->j:J

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->l:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->l:I

    :goto_0
    const-wide/16 v2, -0x1

    .line 13
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->i:J

    .line 14
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->k:J

    return-void
.end method

.method protected abstract a(Lcom/google/vr/sdk/widgets/video/deps/gA;JLcom/google/vr/sdk/widgets/video/deps/bn$a;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method protected b(J)J
    .locals 2

    .line 78
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->m:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method protected abstract b(Lcom/google/vr/sdk/widgets/video/deps/gA;)J
.end method

.method protected c(J)V
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bn;->k:J

    return-void
.end method
