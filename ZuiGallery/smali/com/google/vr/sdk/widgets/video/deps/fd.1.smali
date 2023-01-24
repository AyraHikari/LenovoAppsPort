.class public abstract Lcom/google/vr/sdk/widgets/video/deps/fd;
.super Ljava/lang/Object;
.source "BaseTrackSelection.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fd$a;
    }
.end annotation


# instance fields
.field private final a:[Lcom/google/vr/sdk/widgets/video/deps/m;

.field private final b:[J

.field private c:I

.field protected final f:Lcom/google/vr/sdk/widgets/video/deps/dh;

.field protected final g:I

.field protected final h:[I


# direct methods
.method public varargs constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dh;[I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 3
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dh;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->f:Lcom/google/vr/sdk/widgets/video/deps/dh;

    .line 4
    array-length v0, p2

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->g:I

    .line 5
    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/m;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->a:[Lcom/google/vr/sdk/widgets/video/deps/m;

    move v0, v1

    .line 6
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->a:[Lcom/google/vr/sdk/widgets/video/deps/m;

    aget v3, p2, v0

    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->a:[Lcom/google/vr/sdk/widgets/video/deps/m;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fd$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/fd$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fd$1;)V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 10
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->g:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->h:[I

    .line 11
    :goto_2
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->g:I

    if-ge v1, p2, :cond_2

    .line 12
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->h:[I

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->a:[Lcom/google/vr/sdk/widgets/video/deps/m;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 14
    :cond_2
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->b:[J

    return-void
.end method


# virtual methods
.method public a(JLjava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/dv;",
            ">;)I"
        }
    .end annotation

    .line 32
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/vr/sdk/widgets/video/deps/m;)I
    .locals 2

    const/4 v0, 0x0

    .line 20
    :goto_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->g:I

    if-ge v0, v1, :cond_1

    .line 21
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->a:[Lcom/google/vr/sdk/widgets/video/deps/m;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final a(I)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->a:[Lcom/google/vr/sdk/widgets/video/deps/m;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final a(IJ)Z
    .locals 7

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 34
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fd;->b(IJ)Z

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 35
    :goto_0
    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->g:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    if-nez v2, :cond_1

    if-eq v4, p1, :cond_0

    .line 36
    invoke-virtual {p0, v4, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fd;->b(IJ)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v6

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return v3

    .line 40
    :cond_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->b:[J

    aget-wide v3, v2, p1

    add-long/2addr v0, p2

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, v2, p1

    return v6
.end method

.method public final b(I)I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->h:[I

    aget p1, v0, p1

    return p1
.end method

.method protected final b(IJ)Z
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->b:[J

    aget-wide v0, v0, p1

    cmp-long p1, v0, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(I)I
    .locals 2

    const/4 v0, 0x0

    .line 25
    :goto_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->g:I

    if-ge v0, v1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->h:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final d()Lcom/google/vr/sdk/widgets/video/deps/dh;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->f:Lcom/google/vr/sdk/widgets/video/deps/dh;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->h:[I

    array-length v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fd;

    .line 51
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->f:Lcom/google/vr/sdk/widgets/video/deps/dh;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fd;->f:Lcom/google/vr/sdk/widgets/video/deps/dh;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->h:[I

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/fd;->h:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final f()Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->a:[Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/fd;->a()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final g()I
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->h:[I

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/fd;->a()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 43
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->c:I

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->f:Lcom/google/vr/sdk/widgets/video/deps/dh;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->h:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->c:I

    .line 45
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fd;->c:I

    return v0
.end method
