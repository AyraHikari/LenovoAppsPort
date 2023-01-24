.class public final Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;
.super Ljava/lang/Object;
.source "SphericalMetadataMP4.java"


# static fields
.field private static final ATOM_SIZE_64_BITS:J = 0x1L

.field private static final METADATA_ATOM:Ljava/lang/String; = "uuid"

.field private static final METADATA_ATOM_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final METADATA_PATH:[Ljava/lang/String;

.field private static final MIN_ATOM_SIZE:J = 0x8L

.field private static final SPHERICAL_UUID:[B

.field private static final TAG:Ljava/lang/String; = "SphericalMetadataMP4"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "moov"

    const-string/jumbo v1, "trak"

    .line 87
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->METADATA_PATH:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 88
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->SPHERICAL_UUID:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x34t
        -0x7et
        0x63t
        -0x8t
        0x55t
        0x4at
        -0x6dt
        -0x78t
        0x14t
        0x58t
        0x7at
        0x2t
        0x52t
        0x1ft
        -0x23t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToInt([BI)J
    .locals 5

    if-eqz p0, :cond_1

    .line 75
    array-length v0, p0

    if-ne v0, p1, :cond_1

    const/16 v0, 0x8

    if-gt p1, v0, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    .line 79
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p1, -0x1

    sub-int/2addr v4, v1

    mul-int/2addr v4, v0

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-long p0, v2

    return-wide p0

    .line 76
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid byte array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static bytesToString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 84
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 86
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid charset."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null byte array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extract(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "SphericalMetadataMP4"

    if-nez p0, :cond_0

    const-string p0, "Failed to extract metadata string from mp4: no stream!"

    .line 3
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v2, 0x0

    const-wide/32 v3, 0x7fffffff

    .line 5
    :try_start_0
    invoke-static {p0, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->extract(Ljava/io/InputStream;IJ)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v2, "Failed to extract metadata string from mp4."

    .line 7
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static extract(Ljava/io/InputStream;IJ)Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    .line 9
    sget-object v4, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->METADATA_PATH:[Ljava/lang/String;

    array-length v4, v4

    if-gt v1, v4, :cond_12

    const/4 v4, 0x0

    :cond_0
    int-to-long v5, v4

    cmp-long v5, v5, v2

    if-ltz v5, :cond_1

    if-nez v1, :cond_2

    :cond_1
    const/4 v5, 0x4

    .line 13
    invoke-static {v0, v5}, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v6

    add-int/lit8 v4, v4, 0x4

    const-string v7, "Unexpected end of stream."

    if-nez v6, :cond_4

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const/16 v5, 0x45

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_4
    invoke-static {v6, v5}, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->bytesToInt([BI)J

    move-result-wide v8

    const-wide/16 v10, 0x8

    cmp-long v6, v8, v10

    const-string v12, "Invalid atom size: "

    const/16 v13, 0x27

    const-wide/16 v14, 0x1

    if-gez v6, :cond_6

    cmp-long v6, v8, v14

    if-nez v6, :cond_5

    goto :goto_0

    .line 21
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_6
    :goto_0
    invoke-static {v0, v5}, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v6

    add-int/lit8 v4, v4, 0x4

    if-eqz v6, :cond_11

    const-string v13, "UTF-8"

    .line 26
    invoke-static {v6, v13}, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->bytesToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 27
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v14, v5, :cond_10

    sub-long v14, v8, v10

    const-wide/16 v17, 0x1

    cmp-long v5, v8, v17

    if-nez v5, :cond_9

    const/16 v5, 0x8

    .line 31
    invoke-static {v0, v5}, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v8

    add-int/lit8 v4, v4, 0x8

    if-eqz v8, :cond_8

    .line 35
    invoke-static {v8, v5}, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->bytesToInt([BI)J

    move-result-wide v8

    const-wide/16 v14, 0x10

    sub-long v14, v8, v14

    cmp-long v5, v8, v10

    if-ltz v5, :cond_7

    goto :goto_1

    .line 38
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_9
    :goto_1
    sget-object v5, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->METADATA_PATH:[Ljava/lang/String;

    array-length v7, v5

    const-wide/16 v16, 0x0

    if-eq v1, v7, :cond_b

    aget-object v5, v5, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    add-int/lit8 v5, v1, 0x1

    sub-long/2addr v8, v10

    .line 40
    invoke-static {v0, v5, v8, v9}, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->extract(Ljava/io/InputStream;IJ)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    return-object v5

    :cond_a
    int-to-long v4, v4

    add-long/2addr v4, v14

    long-to-int v4, v4

    move-wide/from16 v14, v16

    goto :goto_3

    .line 45
    :cond_b
    sget-object v5, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->METADATA_PATH:[Ljava/lang/String;

    array-length v5, v5

    if-ne v1, v5, :cond_f

    const-string/jumbo v5, "uuid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 46
    sget-object v5, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->SPHERICAL_UUID:[B

    array-length v5, v5

    invoke-static {v0, v5}, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v5

    .line 47
    sget-object v6, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->SPHERICAL_UUID:[B

    array-length v7, v6

    add-int/2addr v4, v7

    .line 48
    array-length v7, v6

    int-to-long v7, v7

    sub-long/2addr v14, v7

    if-eqz v5, :cond_e

    .line 51
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_f

    long-to-int v1, v14

    .line 52
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 53
    invoke-static {v0, v13}, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->bytesToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, "Located spherical metadata:\n"

    .line 56
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    const-string v2, "SphericalMetadataMP4"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 55
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error retrieving metadata xml."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse UUID."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_3
    cmp-long v5, v14, v16

    if-lez v5, :cond_0

    .line 59
    invoke-virtual {v0, v14, v15}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long v7, v5, v16

    if-lez v7, :cond_f

    sub-long/2addr v14, v5

    int-to-long v7, v4

    add-long/2addr v7, v5

    long-to-int v4, v7

    goto :goto_3

    .line 28
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid atom name."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_11
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Search depth exceeds expectations."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readBytes(Ljava/io/InputStream;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    sub-int v2, p1, v1

    .line 69
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method
