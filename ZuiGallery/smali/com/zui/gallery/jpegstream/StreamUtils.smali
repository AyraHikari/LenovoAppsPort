.class public Lcom/zui/gallery/jpegstream/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToIntArray([I[BLjava/nio/ByteOrder;)Z
    .locals 4

    .line 32
    array-length v0, p1

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    .line 33
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    if-lt v1, v0, :cond_3

    .line 36
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    move p2, v1

    move v0, p2

    .line 37
    :goto_0
    array-length v2, p0

    if-ge p2, v2, :cond_1

    .line 38
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, p0, p2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    move p2, v1

    move v0, p2

    .line 42
    :goto_1
    array-length v2, p0

    if-ge p2, v2, :cond_1

    add-int/lit8 v2, v0, 0x3

    .line 43
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, p0, p2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 47
    :cond_1
    array-length p0, p1

    rem-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 34
    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Output array is too short to hold input"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteToIntArray([B)[I
    .locals 1

    .line 60
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zui/gallery/jpegstream/StreamUtils;->byteToIntArray([BLjava/nio/ByteOrder;)[I

    move-result-object p0

    return-object p0
.end method

.method public static byteToIntArray([BLjava/nio/ByteOrder;)[I
    .locals 1

    .line 51
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    .line 52
    invoke-static {v0, p0, p1}, Lcom/zui/gallery/jpegstream/StreamUtils;->byteToIntArray([I[BLjava/nio/ByteOrder;)Z

    return-object v0
.end method

.method public static pixelSize(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x104

    const/4 v1, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0
.end method
