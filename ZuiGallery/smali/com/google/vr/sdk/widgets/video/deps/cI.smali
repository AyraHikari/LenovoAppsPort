.class abstract Lcom/google/vr/sdk/widgets/video/deps/cI;
.super Lcom/google/vr/sdk/widgets/video/deps/z;
.source "AbstractConcatenatedTimeline.java"


# instance fields
.field private final b:I

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/dd;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/z;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cI;->c:Lcom/google/vr/sdk/widgets/video/deps/dd;

    .line 3
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/dd;->a()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cI;->b:I

    return-void
.end method

.method private a(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 87
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cI;->c:Lcom/google/vr/sdk/widgets/video/deps/dd;

    invoke-interface {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/dd;->a(I)I

    move-result p1

    goto :goto_0

    .line 88
    :cond_0
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cI;->b:I

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private b(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 90
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cI;->c:Lcom/google/vr/sdk/widgets/video/deps/dd;

    invoke-interface {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/dd;->b(I)I

    move-result p1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method


# virtual methods
.method protected abstract a(I)I
.end method

.method public a(IIZ)I
    .locals 5

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cI;->b(I)I

    move-result v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->e(I)I

    move-result v1

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->c(I)Lcom/google/vr/sdk/widgets/video/deps/z;

    move-result-object v2

    sub-int/2addr p1, v1

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p2

    .line 9
    :goto_0
    invoke-virtual {v2, p1, v4, p3}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(IIZ)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    add-int/2addr v1, p1

    return v1

    .line 12
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/cI;->a(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v2, :cond_2

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cI;->c(I)Lcom/google/vr/sdk/widgets/video/deps/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-direct {p0, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/cI;->a(IZ)I

    move-result p1

    goto :goto_1

    :cond_2
    if-eq p1, v2, :cond_3

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cI;->e(I)I

    move-result p2

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cI;->c(I)Lcom/google/vr/sdk/widgets/video/deps/z;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/z;->b(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_3
    if-ne p2, v3, :cond_4

    .line 20
    invoke-virtual {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/cI;->b(Z)I

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 3

    .line 75
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 77
    :cond_0
    check-cast p1, Landroid/util/Pair;

    .line 78
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 79
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 80
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->b(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 83
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->c(I)Lcom/google/vr/sdk/widgets/video/deps/z;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->d(I)I

    move-result v0

    add-int v1, v0, p1

    :goto_0
    return v1
.end method

.method public a(Z)I
    .locals 3

    .line 40
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cI;->b:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cI;->c:Lcom/google/vr/sdk/widgets/video/deps/dd;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/dd;->b()I

    move-result v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 43
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->c(I)Lcom/google/vr/sdk/widgets/video/deps/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cI;->b(IZ)I

    move-result v0

    if-ne v0, v1, :cond_2

    return v1

    .line 47
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->e(I)I

    move-result v1

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->c(I)Lcom/google/vr/sdk/widgets/video/deps/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public final a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Z)Lcom/google/vr/sdk/widgets/video/deps/z$a;
    .locals 4

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cI;->a(I)I

    move-result v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->e(I)I

    move-result v1

    .line 69
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->d(I)I

    move-result v2

    .line 70
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->c(I)Lcom/google/vr/sdk/widgets/video/deps/z;

    move-result-object v3

    sub-int/2addr p1, v2

    invoke-virtual {v3, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;Z)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 71
    iget p1, p2, Lcom/google/vr/sdk/widgets/video/deps/z$a;->c:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/google/vr/sdk/widgets/video/deps/z$a;->c:I

    if-eqz p3, :cond_0

    .line 73
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->f(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p2, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b:Ljava/lang/Object;

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p2, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final a(ILcom/google/vr/sdk/widgets/video/deps/z$b;ZJ)Lcom/google/vr/sdk/widgets/video/deps/z$b;
    .locals 9

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cI;->b(I)I

    move-result v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->e(I)I

    move-result v1

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->d(I)I

    move-result v2

    .line 63
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->c(I)Lcom/google/vr/sdk/widgets/video/deps/z;

    move-result-object v3

    sub-int v4, p1, v1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$b;ZJ)Lcom/google/vr/sdk/widgets/video/deps/z$b;

    .line 64
    iget p1, p2, Lcom/google/vr/sdk/widgets/video/deps/z$b;->f:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/vr/sdk/widgets/video/deps/z$b;->f:I

    .line 65
    iget p1, p2, Lcom/google/vr/sdk/widgets/video/deps/z$b;->g:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/vr/sdk/widgets/video/deps/z$b;->g:I

    return-object p2
.end method

.method protected abstract b(I)I
.end method

.method public b(IIZ)I
    .locals 5

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cI;->b(I)I

    move-result v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->e(I)I

    move-result v1

    .line 24
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->c(I)Lcom/google/vr/sdk/widgets/video/deps/z;

    move-result-object v2

    sub-int/2addr p1, v1

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p2

    .line 26
    :goto_0
    invoke-virtual {v2, p1, v4, p3}, Lcom/google/vr/sdk/widgets/video/deps/z;->b(IIZ)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    add-int/2addr v1, p1

    return v1

    .line 29
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/cI;->b(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v2, :cond_2

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cI;->c(I)Lcom/google/vr/sdk/widgets/video/deps/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    invoke-direct {p0, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/cI;->b(IZ)I

    move-result p1

    goto :goto_1

    :cond_2
    if-eq p1, v2, :cond_3

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cI;->e(I)I

    move-result p2

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cI;->c(I)Lcom/google/vr/sdk/widgets/video/deps/z;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_3
    if-ne p2, v3, :cond_4

    .line 38
    invoke-virtual {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/cI;->a(Z)I

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method protected abstract b(Ljava/lang/Object;)I
.end method

.method public b(Z)I
    .locals 3

    .line 50
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cI;->b:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cI;->c:Lcom/google/vr/sdk/widgets/video/deps/dd;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/dd;->c()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 53
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->c(I)Lcom/google/vr/sdk/widgets/video/deps/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cI;->a(IZ)I

    move-result v0

    if-ne v0, v1, :cond_2

    return v1

    .line 57
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->e(I)I

    move-result v1

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cI;->c(I)Lcom/google/vr/sdk/widgets/video/deps/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->b(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method protected abstract c(I)Lcom/google/vr/sdk/widgets/video/deps/z;
.end method

.method protected abstract d(I)I
.end method

.method protected abstract e(I)I
.end method

.method protected abstract f(I)Ljava/lang/Object;
.end method
