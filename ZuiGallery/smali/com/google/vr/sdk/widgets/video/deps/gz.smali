.class public final Lcom/google/vr/sdk/widgets/video/deps/gz;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# instance fields
.field public a:[B

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 2
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->a:[B

    .line 6
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->d:I

    return-void
.end method

.method private g()V
    .locals 2

    .line 88
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->d:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

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
.method public a()I
    .locals 2

    .line 15
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->d:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(I)V
    .locals 1

    .line 19
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    .line 20
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    .line 21
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->g()V

    return-void
.end method

.method public a([B)V
    .locals 1

    .line 8
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a([BI)V

    return-void
.end method

.method public a([BI)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->a:[B

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    .line 12
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    .line 13
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->d:I

    return-void
.end method

.method public a([BII)V
    .locals 7

    shr-int/lit8 v0, p3, 0x3

    add-int/2addr v0, p2

    :goto_0
    const/16 v1, 0xff

    const/16 v2, 0x8

    if-ge p2, v0, :cond_0

    .line 55
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->a:[B

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    aget-byte v4, v3, v4

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    shl-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 56
    aget-byte v4, p1, p2

    aget-byte v3, v3, v5

    and-int/2addr v1, v3

    sub-int/2addr v2, v6

    shr-int/2addr v1, v2

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p3, 0x7

    if-nez p2, :cond_1

    return-void

    .line 61
    :cond_1
    aget-byte p3, p1, v0

    shr-int v3, v1, p2

    and-int/2addr p3, v3

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    .line 62
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    add-int v3, p3, p2

    if-le v3, v2, :cond_2

    .line 63
    aget-byte v3, p1, v0

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->a:[B

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    aget-byte v4, v4, v5

    and-int/2addr v4, v1

    shl-int/2addr v4, p3

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    sub-int/2addr p3, v2

    .line 64
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    .line 65
    :cond_2
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    .line 66
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->a:[B

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    aget-byte v3, v3, v4

    and-int/2addr v1, v3

    rsub-int/lit8 v3, p3, 0x8

    shr-int/2addr v1, v3

    .line 67
    aget-byte v3, p1, v0

    rsub-int/lit8 p2, p2, 0x8

    shl-int p2, v1, p2

    int-to-byte p2, p2

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    if-ne p3, v2, :cond_3

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    add-int/lit8 v4, v4, 0x1

    .line 70
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    .line 71
    :cond_3
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->g()V

    return-void
.end method

.method public b()I
    .locals 2

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public b(I)V
    .locals 3

    .line 28
    div-int/lit8 v0, p1, 0x8

    .line 29
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    .line 30
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    const/4 p1, 0x7

    if-le v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 32
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    add-int/lit8 v2, v2, -0x8

    .line 33
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->g()V

    return-void
.end method

.method public b([BII)V
    .locals 2

    .line 79
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 80
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    .line 82
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->g()V

    return-void
.end method

.method public c()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 18
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    return v0
.end method

.method public c(I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 42
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    move v1, v0

    .line 43
    :goto_0
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    add-int/lit8 v2, v2, -0x8

    .line 44
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    .line 45
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->a:[B

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_0

    .line 46
    :cond_1
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->a:[B

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v1, v4

    const/4 v4, -0x1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v4, p1

    and-int/2addr p1, v1

    if-ne v2, v3, :cond_2

    .line 49
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    add-int/lit8 v5, v5, 0x1

    .line 50
    iput v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    .line 51
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->g()V

    return p1
.end method

.method public d()V
    .locals 2

    .line 23
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    .line 25
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->g()V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 84
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 85
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    .line 86
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->g()V

    return-void
.end method

.method public e()Z
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    const/16 v2, 0x80

    shr-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->d()V

    return v0
.end method

.method public f()V
    .locals 1

    .line 73
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->c:I

    .line 76
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gz;->b:I

    .line 77
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->g()V

    return-void
.end method
