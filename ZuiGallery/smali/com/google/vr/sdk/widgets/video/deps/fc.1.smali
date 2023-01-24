.class public Lcom/google/vr/sdk/widgets/video/deps/fc;
.super Lcom/google/vr/sdk/widgets/video/deps/fd;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fc$a;
    }
.end annotation


# static fields
.field public static final a:I = 0xc3500

.field public static final b:I = 0x2710

.field public static final c:I = 0x61a8

.field public static final d:I = 0x61a8

.field public static final e:F = 0.75f


# instance fields
.field private final i:Lcom/google/vr/sdk/widgets/video/deps/fp;

.field private final j:I

.field private final k:J

.field private final l:J

.field private final m:J

.field private final n:F

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dh;[ILcom/google/vr/sdk/widgets/video/deps/fp;)V
    .locals 12

    const v4, 0xc3500

    const-wide/16 v5, 0x2710

    const-wide/16 v7, 0x61a8

    const-wide/16 v9, 0x61a8

    const/high16 v11, 0x3f400000    # 0.75f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/fc;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dh;[ILcom/google/vr/sdk/widgets/video/deps/fp;IJJJF)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dh;[ILcom/google/vr/sdk/widgets/video/deps/fp;IJJJF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fd;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)V

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->i:Lcom/google/vr/sdk/widgets/video/deps/fp;

    .line 5
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->j:I

    const-wide/16 p1, 0x3e8

    mul-long/2addr p5, p1

    .line 6
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->k:J

    mul-long/2addr p7, p1

    .line 7
    iput-wide p7, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->l:J

    mul-long/2addr p9, p1

    .line 8
    iput-wide p9, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->m:J

    .line 9
    iput p11, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->n:F

    const-wide/high16 p1, -0x8000000000000000L

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fc;->b(J)I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->o:I

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->p:I

    return-void
.end method

.method private b(J)I
    .locals 6

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->i:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 49
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->j:I

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    long-to-float v0, v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->n:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    .line 51
    :goto_1
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->g:I

    if-ge v2, v4, :cond_4

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, p1, v4

    if-eqz v4, :cond_1

    .line 52
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fc;->b(IJ)Z

    move-result v4

    if-nez v4, :cond_3

    .line 53
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/fc;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v3

    .line 54
    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    int-to-long v3, v3

    cmp-long v3, v3, v0

    if-gtz v3, :cond_2

    return v2

    :cond_2
    move v3, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v3
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->o:I

    return v0
.end method

.method public a(JLjava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/dv;",
            ">;)I"
        }
    .end annotation

    .line 31
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 33
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 34
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/dv;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/dv;->g:J

    sub-long/2addr v2, p1

    .line 35
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->m:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    return v0

    .line 37
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/fc;->b(J)I

    move-result v2

    .line 38
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/fc;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 40
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/dv;

    .line 41
    iget-object v4, v3, Lcom/google/vr/sdk/widgets/video/deps/dv;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 42
    iget-wide v5, v3, Lcom/google/vr/sdk/widgets/video/deps/dv;->f:J

    sub-long/2addr v5, p1

    .line 43
    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->m:J

    cmp-long v3, v5, v7

    if-ltz v3, :cond_2

    iget v3, v4, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    iget v5, v2, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    if-ge v3, v5, :cond_2

    iget v3, v4, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    iget v3, v4, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    const/16 v6, 0x2d0

    if-ge v3, v6, :cond_2

    iget v3, v4, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    if-eq v3, v5, :cond_2

    iget v3, v4, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    const/16 v5, 0x500

    if-ge v3, v5, :cond_2

    iget v3, v4, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget v4, v2, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    if-ge v3, v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public a(J)V
    .locals 5

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 14
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->o:I

    .line 15
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fc;->b(J)I

    move-result v3

    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->o:I

    if-ne v3, v2, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fc;->b(IJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 19
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/fc;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    .line 20
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->o:I

    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fc;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v1

    .line 21
    iget v3, v1, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    if-le v3, v4, :cond_1

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->k:J

    cmp-long v3, p1, v3

    if-gez v3, :cond_1

    .line 22
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->o:I

    goto :goto_0

    .line 23
    :cond_1
    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    if-ge v1, v0, :cond_2

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->l:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_2

    .line 24
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->o:I

    .line 25
    :cond_2
    :goto_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->o:I

    if-eq p1, v2, :cond_3

    const/4 p1, 0x3

    .line 26
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->p:I

    :cond_3
    return-void
.end method

.method public b()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->p:I

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
