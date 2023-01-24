.class public final Lcom/google/vr/sdk/widgets/video/deps/J;
.super Ljava/lang/Object;
.source "DtsUtil.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 21
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/vr/sdk/widgets/video/deps/J;->a:[I

    new-array v0, v0, [I

    .line 22
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/J;->b:[I

    const/16 v0, 0x1d

    new-array v0, v0, [I

    .line 23
    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/J;->c:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)I
    .locals 2

    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v1, v0, 0x4

    .line 16
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x5

    .line 17
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xfc

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static a([B)I
    .locals 2

    const/4 v0, 0x4

    .line 13
    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x6

    const/4 v1, 0x5

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xfc

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static a([BLjava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 15

    .line 1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gz;

    move-object v1, p0

    invoke-direct {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/gz;-><init>([B)V

    const/16 v1, 0x3c

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v1

    .line 4
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/J;->a:[I

    aget v1, v2, v1

    const/4 v2, 0x4

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v2

    .line 6
    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/J;->b:[I

    aget v10, v3, v2

    const/4 v2, 0x5

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v2

    .line 8
    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/J;->c:[I

    array-length v4, v3

    const/4 v5, 0x2

    if-lt v2, v4, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    .line 9
    :cond_0
    aget v2, v3, v2

    mul-int/lit16 v2, v2, 0x3e8

    div-int/2addr v2, v5

    :goto_0
    move v7, v2

    const/16 v2, 0xa

    .line 10
    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 11
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int v9, v1, v0

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string v5, "audio/vnd.dts"

    move-object/from16 v4, p1

    move-object/from16 v12, p3

    move-object/from16 v14, p2

    .line 12
    invoke-static/range {v4 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    return-object v0
.end method

.method public static b([B)I
    .locals 2

    const/4 v0, 0x5

    .line 19
    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x2

    shl-int/lit8 v0, v0, 0xc

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    const/4 v1, 0x7

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xf0

    shr-int/lit8 p0, p0, 0x4

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
