.class final Lcom/google/vr/sdk/widgets/video/deps/bm;
.super Lcom/google/vr/sdk/widgets/video/deps/bn;
.source "OpusReader.java"


# static fields
.field private static final a:I = 0xf00

.field private static final b:I = 0xbb80

.field private static final c:I

.field private static final d:[B


# instance fields
.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Opus"

    .line 48
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/bm;->c:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 49
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/bm;->d:[B

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bn;-><init>()V

    return-void
.end method

.method private a([B)J
    .locals 6

    const/4 v0, 0x0

    .line 31
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    .line 37
    aget-byte p1, p1, v3

    and-int/lit8 v2, p1, 0x3f

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    const/4 p1, 0x3

    shr-int/2addr v0, p1

    and-int/lit8 v1, v0, 0x3

    const/16 v4, 0x10

    if-lt v0, v4, :cond_2

    const/16 p1, 0x9c4

    shl-int/2addr p1, v1

    goto :goto_1

    :cond_2
    const/16 v4, 0xc

    const/16 v5, 0x2710

    if-lt v0, v4, :cond_3

    and-int/lit8 p1, v1, 0x1

    shl-int p1, v5, p1

    goto :goto_1

    :cond_3
    if-ne v1, p1, :cond_4

    const p1, 0xea60

    goto :goto_1

    :cond_4
    shl-int p1, v5, v1

    :goto_1
    mul-int/2addr v2, p1

    int-to-long v0, v2

    return-wide v0
.end method

.method private a(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    int-to-long v0, p2

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xbb80

    .line 27
    div-long/2addr v0, v2

    const/16 p2, 0x8

    .line 28
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 29
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/bm;->d:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    return v3

    .line 4
    :cond_0
    array-length v0, v1

    new-array v0, v0, [B

    .line 5
    array-length v1, v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 6
    sget-object p0, Lcom/google/vr/sdk/widgets/video/deps/bm;->d:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bn;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bm;->e:Z

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/gA;JLcom/google/vr/sdk/widgets/video/deps/bn$a;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 12
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bm;->e:Z

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 13
    iget-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result p1

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/16 p2, 0x9

    .line 14
    aget-byte p2, p1, p2

    and-int/lit16 v5, p2, 0xff

    const/16 p2, 0xb

    .line 15
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    const/16 v0, 0xa

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p2, v0

    .line 16
    new-instance v7, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-direct {p0, v7, p2}, Lcom/google/vr/sdk/widgets/video/deps/bm;->a(Ljava/util/List;I)V

    const/16 p1, 0xf00

    .line 19
    invoke-direct {p0, v7, p1}, Lcom/google/vr/sdk/widgets/video/deps/bm;->a(Ljava/util/List;I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const v6, 0xbb80

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v1, "audio/opus"

    .line 20
    invoke-static/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p1

    iput-object p1, p4, Lcom/google/vr/sdk/widgets/video/deps/bn$a;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 21
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bm;->e:Z

    return p3

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p2

    sget p4, Lcom/google/vr/sdk/widgets/video/deps/bm;->c:I

    const/4 v0, 0x0

    if-ne p2, p4, :cond_1

    goto :goto_0

    :cond_1
    move p3, v0

    .line 24
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return p3
.end method

.method protected b(Lcom/google/vr/sdk/widgets/video/deps/gA;)J
    .locals 2

    .line 11
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bm;->a([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bm;->b(J)J

    move-result-wide v0

    return-wide v0
.end method
