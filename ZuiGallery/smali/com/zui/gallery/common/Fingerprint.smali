.class public Lcom/zui/gallery/common/Fingerprint;
.super Ljava/lang/Object;
.source "Fingerprint.java"


# static fields
.field private static final DIGESTER:Ljava/security/MessageDigest;

.field private static final DIGEST_MD5:Ljava/lang/String; = "md5"

.field private static final FINGERPRINT_BYTE_LENGTH:I

.field private static final STREAM_ID_CS_01_LENGTH:I

.field private static final STREAM_ID_CS_PREFIX:Ljava/lang/String; = "cs_01_"


# instance fields
.field private final mMd5Digest:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "md5"

    .line 51
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/common/Fingerprint;->DIGESTER:Ljava/security/MessageDigest;

    .line 52
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    sput v0, Lcom/zui/gallery/common/Fingerprint;->FINGERPRINT_BYTE_LENGTH:I

    const/4 v1, 0x6

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 53
    sput v1, Lcom/zui/gallery/common/Fingerprint;->STREAM_ID_CS_01_LENGTH:I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 68
    array-length v0, p1

    sget v1, Lcom/zui/gallery/common/Fingerprint;->FINGERPRINT_BYTE_LENGTH:I

    if-ne v0, v1, :cond_0

    .line 71
    iput-object p1, p0, Lcom/zui/gallery/common/Fingerprint;->mMd5Digest:[B

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private static appendHexFingerprint(Ljava/lang/StringBuilder;[B)V
    .locals 3

    const/4 v0, 0x0

    .line 181
    :goto_0
    sget v1, Lcom/zui/gallery/common/Fingerprint;->FINGERPRINT_BYTE_LENGTH:I

    if-ge v0, v1, :cond_0

    .line 182
    aget-byte v1, p1, v0

    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v1, v1, 0xf

    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static extractFingerprint(Ljava/util/List;)Lcom/zui/gallery/common/Fingerprint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zui/gallery/common/Fingerprint;"
        }
    .end annotation

    .line 129
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "cs_01_"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-static {v0}, Lcom/zui/gallery/common/Fingerprint;->fromStreamId(Ljava/lang/String;)Lcom/zui/gallery/common/Fingerprint;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromInputStream(Ljava/io/InputStream;[J)Lcom/zui/gallery/common/Fingerprint;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 86
    :try_start_0
    new-instance v1, Ljava/security/DigestInputStream;

    sget-object v2, Lcom/zui/gallery/common/Fingerprint;->DIGESTER:Ljava/security/MessageDigest;

    invoke-direct {v1, p0, v2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0x2000

    :try_start_1
    new-array p0, p0, [B

    const-wide/16 v2, 0x0

    .line 90
    :goto_0
    invoke-virtual {v1, p0}, Ljava/security/DigestInputStream;->read([B)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v0, :cond_1

    .line 95
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V

    if-eqz p1, :cond_0

    .line 97
    array-length p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    aput-wide v2, p1, p0

    .line 98
    :cond_0
    new-instance p0, Lcom/zui/gallery/common/Fingerprint;

    invoke-virtual {v1}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/common/Fingerprint;-><init>([B)V

    return-object p0

    :cond_1
    int-to-long v4, v0

    add-long/2addr v2, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    .line 96
    :cond_2
    throw p0
.end method

.method public static fromStreamId(Ljava/lang/String;)Lcom/zui/gallery/common/Fingerprint;
    .locals 5

    if-eqz p0, :cond_1

    const-string v0, "cs_01_"

    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/zui/gallery/common/Fingerprint;->STREAM_ID_CS_01_LENGTH:I

    if-ne v0, v1, :cond_1

    .line 112
    sget v0, Lcom/zui/gallery/common/Fingerprint;->FINGERPRINT_BYTE_LENGTH:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 114
    :goto_0
    sget v3, Lcom/zui/gallery/common/Fingerprint;->STREAM_ID_CS_01_LENGTH:I

    if-ge v2, v3, :cond_0

    .line 116
    invoke-static {p0, v2}, Lcom/zui/gallery/common/Fingerprint;->toDigit(Ljava/lang/String;I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v2, 0x1

    invoke-static {p0, v4}, Lcom/zui/gallery/common/Fingerprint;->toDigit(Ljava/lang/String;I)I

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 117
    aput-byte v3, v0, v1

    add-int/lit8 v2, v2, 0x2

    move v1, v4

    goto :goto_0

    .line 119
    :cond_0
    new-instance p0, Lcom/zui/gallery/common/Fingerprint;

    invoke-direct {p0, v0}, Lcom/zui/gallery/common/Fingerprint;-><init>([B)V

    return-object p0

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad streamId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toDigit(Ljava/lang/String;I)I
    .locals 2

    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 175
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal hex digit in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 156
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/common/Fingerprint;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 157
    :cond_1
    check-cast p1, Lcom/zui/gallery/common/Fingerprint;

    .line 158
    iget-object v0, p0, Lcom/zui/gallery/common/Fingerprint;->mMd5Digest:[B

    iget-object p1, p1, Lcom/zui/gallery/common/Fingerprint;->mMd5Digest:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public equals([B)Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/zui/gallery/common/Fingerprint;->mMd5Digest:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getBytes()[B
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/zui/gallery/common/Fingerprint;->mMd5Digest:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/zui/gallery/common/Fingerprint;->mMd5Digest:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toStreamId()Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cs_01_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/zui/gallery/common/Fingerprint;->mMd5Digest:[B

    invoke-static {v0, v1}, Lcom/zui/gallery/common/Fingerprint;->appendHexFingerprint(Ljava/lang/StringBuilder;[B)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
