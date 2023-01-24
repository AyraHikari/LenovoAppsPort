.class public final Lcom/google/vr/sdk/widgets/video/deps/A;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/A$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x100

.field private static final b:I = 0x600

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 82
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/A;->c:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 83
    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/vr/sdk/widgets/video/deps/A;->d:[I

    new-array v0, v0, [I

    .line 84
    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/A;->e:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 85
    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/A;->f:[I

    const/16 v0, 0x13

    new-array v1, v0, [I

    .line 86
    fill-array-data v1, :array_4

    sput-object v1, Lcom/google/vr/sdk/widgets/video/deps/A;->g:[I

    new-array v0, v0, [I

    .line 87
    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/A;->h:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    :array_1
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    :array_2
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_4
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_5
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    const/16 v0, 0x600

    return v0
.end method

.method private static a(II)I
    .locals 4

    .line 71
    div-int/lit8 v0, p1, 0x2

    if-ltz p0, :cond_3

    .line 72
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/A;->d:[I

    array-length v2, v1

    if-ge p0, v2, :cond_3

    if-ltz p1, :cond_3

    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/A;->h:[I

    array-length v3, v2

    if-lt v0, v3, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    aget p0, v1, p0

    const v1, 0xac44

    if-ne p0, v1, :cond_1

    .line 76
    aget p0, v2, v0

    rem-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x2

    return p0

    .line 77
    :cond_1
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/A;->g:[I

    aget p1, p1, v0

    const/16 v0, 0x7d00

    if-ne p0, v0, :cond_2

    mul-int/lit8 p1, p1, 0x6

    return p1

    :cond_2
    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 67
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    const/4 v1, 0x6

    shr-int/2addr v0, v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/A;->c:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x30

    shr-int/lit8 p0, p0, 0x4

    aget v1, v0, p0

    :goto_0
    mul-int/lit16 v1, v1, 0x100

    return v1
.end method

.method public static a([B)I
    .locals 2

    .line 61
    array-length v0, p0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x4

    .line 63
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xc0

    shr-int/lit8 v1, v1, 0x6

    .line 64
    aget-byte p0, p0, v0

    and-int/lit8 p0, p0, 0x3f

    .line 65
    invoke-static {v1, p0}, Lcom/google/vr/sdk/widgets/video/deps/A;->a(II)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/gz;)Lcom/google/vr/sdk/widgets/video/deps/A$a;
    .locals 14

    .line 22
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b()I

    move-result v0

    const/16 v1, 0x28

    .line 23
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    const/4 v1, 0x5

    .line 24
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a(I)V

    const/4 v0, -0x1

    const/4 v4, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 30
    invoke-virtual {p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v0

    .line 31
    invoke-virtual {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    const/16 v1, 0xb

    .line 32
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v1

    add-int/2addr v1, v3

    mul-int/2addr v1, v6

    .line 33
    invoke-virtual {p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 35
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/A;->e:[I

    invoke-virtual {p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v3

    aget v2, v2, v3

    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v3

    .line 38
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/A;->c:[I

    aget v4, v4, v3

    .line 39
    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/A;->d:[I

    aget v2, v3, v2

    :goto_1
    mul-int/lit16 v4, v4, 0x100

    .line 41
    invoke-virtual {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v3

    const-string v5, "audio/eac3"

    move v8, v0

    move v11, v1

    move v10, v2

    move v12, v4

    :goto_2
    move-object v7, v5

    goto :goto_3

    :cond_2
    const/16 v1, 0x20

    .line 44
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 45
    invoke-virtual {p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v1

    .line 46
    invoke-virtual {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v2

    .line 47
    invoke-static {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/A;->a(II)I

    move-result v2

    const/16 v4, 0x8

    .line 48
    invoke-virtual {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 49
    invoke-virtual {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/gz;->c(I)I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_3

    if-eq v4, v3, :cond_3

    .line 51
    invoke-virtual {p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    :cond_3
    and-int/lit8 v3, v4, 0x4

    if-eqz v3, :cond_4

    .line 53
    invoke-virtual {p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    :cond_4
    if-ne v4, v6, :cond_5

    .line 55
    invoke-virtual {p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/gz;->b(I)V

    .line 56
    :cond_5
    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/A;->d:[I

    aget v1, v3, v1

    const/16 v3, 0x600

    const-string v5, "audio/ac3"

    move v8, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move v3, v4

    goto :goto_2

    .line 58
    :goto_3
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gz;->e()Z

    move-result p0

    .line 59
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/A;->f:[I

    aget v0, v0, v3

    add-int v9, v0, p0

    .line 60
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/A$a;

    const/4 v13, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/A$a;-><init>(Ljava/lang/String;IIIIILcom/google/vr/sdk/widgets/video/deps/A$1;)V

    return-object p0
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 2
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/A;->d:[I

    aget v8, v1, v0

    .line 3
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    .line 4
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/A;->f:[I

    and-int/lit8 v2, v0, 0x38

    shr-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    move v7, v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v3, "audio/ac3"

    move-object v2, p1

    move-object/from16 v10, p3

    move-object v12, p2

    .line 7
    invoke-static/range {v2 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/vr/sdk/widgets/video/deps/gA;Ljava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 15

    const/4 v0, 0x2

    move-object v1, p0

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 9
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v2

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v2, v2, 0x6

    .line 10
    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/A;->d:[I

    aget v10, v3, v2

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v2

    .line 12
    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/A;->f:[I

    and-int/lit8 v4, v2, 0xe

    shr-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v2

    and-int/lit8 v2, v2, 0x1e

    shr-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x2

    :cond_1
    move v9, v3

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string v5, "audio/eac3"

    move-object/from16 v4, p1

    move-object/from16 v12, p3

    move-object/from16 v14, p2

    .line 21
    invoke-static/range {v4 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    return-object v0
.end method
