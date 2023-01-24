.class Lcom/zui/gallery/exif/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifData"

.field private static final USER_COMMENT_ASCII:[B

.field private static final USER_COMMENT_JIS:[B

.field private static final USER_COMMENT_UNICODE:[B


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Lcom/zui/gallery/exif/IfdData;

.field private mStripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mThumbnail:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 37
    fill-array-data v1, :array_0

    sput-object v1, Lcom/zui/gallery/exif/ExifData;->USER_COMMENT_ASCII:[B

    new-array v1, v0, [B

    .line 40
    fill-array-data v1, :array_1

    sput-object v1, Lcom/zui/gallery/exif/ExifData;->USER_COMMENT_JIS:[B

    new-array v0, v0, [B

    .line 43
    fill-array-data v0, :array_2

    sput-object v0, Lcom/zui/gallery/exif/ExifData;->USER_COMMENT_UNICODE:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zui/gallery/exif/IfdData;

    .line 47
    iput-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mIfdDatas:[Lcom/zui/gallery/exif/IfdData;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, Lcom/zui/gallery/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method protected addIfdData(Lcom/zui/gallery/exif/IfdData;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mIfdDatas:[Lcom/zui/gallery/exif/IfdData;

    invoke-virtual {p1}, Lcom/zui/gallery/exif/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method protected addTag(Lcom/zui/gallery/exif/ExifTag;)Lcom/zui/gallery/exif/ExifTag;
    .locals 1

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getIfd()I

    move-result v0

    .line 172
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/exif/ExifData;->addTag(Lcom/zui/gallery/exif/ExifTag;I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected addTag(Lcom/zui/gallery/exif/ExifTag;I)Lcom/zui/gallery/exif/ExifTag;
    .locals 1

    if-eqz p1, :cond_0

    .line 182
    invoke-static {p2}, Lcom/zui/gallery/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0, p2}, Lcom/zui/gallery/exif/ExifData;->getOrCreateIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object p2

    .line 184
    invoke-virtual {p2, p1}, Lcom/zui/gallery/exif/IfdData;->setTag(Lcom/zui/gallery/exif/ExifTag;)Lcom/zui/gallery/exif/ExifTag;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected clearThumbnailAndStrips()V
    .locals 1

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mThumbnail:[B

    .line 191
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 325
    :cond_1
    instance-of v2, p1, Lcom/zui/gallery/exif/ExifData;

    if-eqz v2, :cond_7

    .line 326
    check-cast p1, Lcom/zui/gallery/exif/ExifData;

    .line 327
    iget-object v2, p1, Lcom/zui/gallery/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v3, p0, Lcom/zui/gallery/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lcom/zui/gallery/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 328
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lcom/zui/gallery/exif/ExifData;->mThumbnail:[B

    iget-object v3, p0, Lcom/zui/gallery/exif/ExifData;->mThumbnail:[B

    .line 329
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    .line 332
    :goto_0
    iget-object v3, p0, Lcom/zui/gallery/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 333
    iget-object v3, p1, Lcom/zui/gallery/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p0, Lcom/zui/gallery/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_6

    .line 338
    invoke-virtual {p1, v2}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v3

    .line 339
    invoke-virtual {p0, v2}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v4

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_5

    .line 340
    invoke-virtual {v3, v4}, Lcom/zui/gallery/exif/IfdData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method protected getAllTags()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/gallery/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    iget-object v1, p0, Lcom/zui/gallery/exif/ExifData;->mIfdDatas:[Lcom/zui/gallery/exif/IfdData;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    .line 260
    invoke-virtual {v5}, Lcom/zui/gallery/exif/IfdData;->getAllTags()[Lcom/zui/gallery/exif/ExifTag;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 262
    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 263
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method protected getAllTagsForIfd(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/zui/gallery/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mIfdDatas:[Lcom/zui/gallery/exif/IfdData;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 283
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/exif/IfdData;->getAllTags()[Lcom/zui/gallery/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 287
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 289
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method

.method protected getAllTagsForTagId(S)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List<",
            "Lcom/zui/gallery/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    iget-object v1, p0, Lcom/zui/gallery/exif/ExifData;->mIfdDatas:[Lcom/zui/gallery/exif/IfdData;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 305
    invoke-virtual {v4, p1}, Lcom/zui/gallery/exif/IfdData;->getTag(S)Lcom/zui/gallery/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 307
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    return-object v0
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getCompressedThumbnail()[B
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mThumbnail:[B

    return-object v0
.end method

.method protected getIfdData(I)Lcom/zui/gallery/exif/IfdData;
    .locals 1

    .line 129
    invoke-static {p1}, Lcom/zui/gallery/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mIfdDatas:[Lcom/zui/gallery/exif/IfdData;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getOrCreateIfdData(I)Lcom/zui/gallery/exif/IfdData;
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mIfdDatas:[Lcom/zui/gallery/exif/IfdData;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/zui/gallery/exif/IfdData;

    invoke-direct {v0, p1}, Lcom/zui/gallery/exif/IfdData;-><init>(I)V

    .line 151
    iget-object v1, p0, Lcom/zui/gallery/exif/ExifData;->mIfdDatas:[Lcom/zui/gallery/exif/IfdData;

    aput-object v0, v1, p1

    :cond_0
    return-object v0
.end method

.method protected getStrip(I)[B
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method protected getStripCount()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getTag(SI)Lcom/zui/gallery/exif/ExifTag;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mIfdDatas:[Lcom/zui/gallery/exif/IfdData;

    aget-object p2, v0, p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p2, p1}, Lcom/zui/gallery/exif/IfdData;->getTag(S)Lcom/zui/gallery/exif/ExifTag;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected getUserComment()Ljava/lang/String;
    .locals 6

    .line 218
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mIfdDatas:[Lcom/zui/gallery/exif/IfdData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 222
    :cond_0
    sget v3, Lcom/zui/gallery/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-static {v3}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lcom/zui/gallery/exif/IfdData;->getTag(S)Lcom/zui/gallery/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    .line 226
    :cond_1
    invoke-virtual {v0}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    return-object v2

    .line 230
    :cond_2
    invoke-virtual {v0}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result v3

    new-array v5, v3, [B

    .line 231
    invoke-virtual {v0, v5}, Lcom/zui/gallery/exif/ExifTag;->getBytes([B)V

    new-array v0, v4, [B

    .line 234
    invoke-static {v5, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    :try_start_0
    sget-object v1, Lcom/zui/gallery/exif/ExifData;->USER_COMMENT_ASCII:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 238
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v4

    const-string v1, "US-ASCII"

    invoke-direct {v0, v5, v4, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    .line 239
    :cond_3
    sget-object v1, Lcom/zui/gallery/exif/ExifData;->USER_COMMENT_JIS:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v4

    const-string v1, "EUC-JP"

    invoke-direct {v0, v5, v4, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    .line 241
    :cond_4
    sget-object v1, Lcom/zui/gallery/exif/ExifData;->USER_COMMENT_UNICODE:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v4

    const-string v1, "UTF-16"

    invoke-direct {v0, v5, v4, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_5
    return-object v2

    :catch_0
    const-string v0, "ExifData"

    const-string v1, "Failed to decode the user comment"

    .line 247
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method protected hasCompressedThumbnail()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mThumbnail:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hasUncompressedStrip()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected removeTag(SI)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mIfdDatas:[Lcom/zui/gallery/exif/IfdData;

    aget-object p2, v0, p2

    if-nez p2, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual {p2, p1}, Lcom/zui/gallery/exif/IfdData;->removeTag(S)V

    return-void
.end method

.method protected removeThumbnailData()V
    .locals 3

    .line 198
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifData;->clearThumbnailAndStrips()V

    .line 199
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mIfdDatas:[Lcom/zui/gallery/exif/IfdData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method protected setCompressedThumbnail([B)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/zui/gallery/exif/ExifData;->mThumbnail:[B

    return-void
.end method

.method protected setStripBytes(I[B)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/zui/gallery/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
