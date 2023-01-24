.class final Lcom/google/vr/sdk/widgets/video/deps/bo;
.super Ljava/lang/Object;
.source "VorbisBitArray.java"


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->a:[B

    .line 3
    array-length p1, p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->b:I

    return-void
.end method

.method private e()V
    .locals 2

    .line 34
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:I

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->b:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->d:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 6

    .line 11
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:I

    .line 12
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->d:I

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 13
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->a:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->d:I

    shr-int/2addr v0, v4

    rsub-int/lit8 v4, v1, 0x8

    shr-int v4, v2, v4

    and-int/2addr v0, v4

    :goto_0
    if-ge v1, p1, :cond_0

    .line 15
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->a:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v4, v3

    and-int/2addr v3, v2

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x8

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    rsub-int/lit8 v2, p1, 0x20

    ushr-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    return v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:I

    .line 6
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->d:I

    return-void
.end method

.method public b(I)V
    .locals 3

    .line 20
    div-int/lit8 v0, p1, 0x8

    .line 21
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:I

    .line 22
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->d:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->d:I

    const/4 p1, 0x7

    if-le v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 24
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:I

    add-int/lit8 v2, v2, -0x8

    .line 25
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->d:I

    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->e()V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->d:I

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    return v0
.end method

.method public c()I
    .locals 2

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public c(I)V
    .locals 1

    .line 29
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    .line 30
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->d:I

    .line 31
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bo;->e()V

    return-void
.end method

.method public d()I
    .locals 2

    .line 33
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->b:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bo;->d:I

    sub-int/2addr v0, v1

    return v0
.end method
