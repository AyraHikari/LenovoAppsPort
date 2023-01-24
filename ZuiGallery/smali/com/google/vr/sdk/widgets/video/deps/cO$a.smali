.class final Lcom/google/vr/sdk/widgets/video/deps/cO$a;
.super Lcom/google/vr/sdk/widgets/video/deps/cI;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final b:[Lcom/google/vr/sdk/widgets/video/deps/z;

.field private final c:[I

.field private final d:[I

.field private final e:Z


# direct methods
.method public constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/z;ZLcom/google/vr/sdk/widgets/video/deps/dd;)V
    .locals 9

    .line 1
    invoke-direct {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/cI;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dd;)V

    .line 2
    array-length p3, p1

    new-array p3, p3, [I

    .line 3
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v4, v1

    move v5, v4

    .line 6
    :goto_0
    array-length v6, p1

    if-ge v4, v6, :cond_1

    .line 7
    aget-object v6, p1, v4

    .line 8
    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/z;->c()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v2, v7

    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v2, v7

    if-gtz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v1

    :goto_1
    const-string v8, "ConcatenatingMediaSource children contain too many periods"

    .line 9
    invoke-static {v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(ZLjava/lang/Object;)V

    long-to-int v7, v2

    .line 10
    aput v7, p3, v4

    .line 11
    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/z;->b()I

    move-result v6

    add-int/2addr v5, v6

    .line 12
    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->b:[Lcom/google/vr/sdk/widgets/video/deps/z;

    .line 15
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->c:[I

    .line 16
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->d:[I

    .line 17
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->e:Z

    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->c:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a([IIZZ)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public a(IIZ)I
    .locals 2

    .line 21
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    const/4 p2, 0x2

    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->e:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-super {p0, p1, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cI;->a(IIZ)I

    move-result p1

    return p1
.end method

.method public a(Z)I
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->e:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cI;->a(Z)I

    move-result p1

    return p1
.end method

.method public b()I
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->d:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method protected b(I)I
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->d:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a([IIZZ)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public b(IIZ)I
    .locals 2

    .line 24
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    const/4 p2, 0x2

    .line 26
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->e:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-super {p0, p1, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cI;->b(IIZ)I

    move-result p1

    return p1
.end method

.method protected b(Ljava/lang/Object;)I
    .locals 1

    .line 31
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 33
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public b(Z)I
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->e:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cI;->b(Z)I

    move-result p1

    return p1
.end method

.method public c()I
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->c:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method protected c(I)Lcom/google/vr/sdk/widgets/video/deps/z;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->b:[Lcom/google/vr/sdk/widgets/video/deps/z;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected d(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->c:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    :goto_0
    return p1
.end method

.method protected e(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cO$a;->d:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    :goto_0
    return p1
.end method

.method protected f(I)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
