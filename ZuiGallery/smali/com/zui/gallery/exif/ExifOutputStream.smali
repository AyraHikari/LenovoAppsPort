.class Lcom/zui/gallery/exif/ExifOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ExifOutputStream.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final EXIF_HEADER:I = 0x45786966

.field private static final MAX_EXIF_SIZE:I = 0xffff

.field private static final STATE_FRAME_HEADER:I = 0x1

.field private static final STATE_JPEG_DATA:I = 0x2

.field private static final STATE_SOI:I = 0x0

.field private static final STREAMBUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ExifOutputStream"

.field private static final TAG_SIZE:S = 0xcs

.field private static final TIFF_BIG_ENDIAN:S = 0x4d4ds

.field private static final TIFF_HEADER:S = 0x2as

.field private static final TIFF_HEADER_SIZE:S = 0x8s

.field private static final TIFF_LITTLE_ENDIAN:S = 0x4949s


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mExifData:Lcom/zui/gallery/exif/ExifData;

.field private final mInterface:Lcom/zui/gallery/exif/ExifInterface;

.field private mSingleByteArray:[B

.field private mState:I


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;Lcom/zui/gallery/exif/ExifInterface;)V
    .locals 2

    .line 87
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mState:I

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 82
    iput-object p1, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mSingleByteArray:[B

    const/4 p1, 0x4

    .line 83
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 88
    iput-object p2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mInterface:Lcom/zui/gallery/exif/ExifInterface;

    return-void
.end method

.method private calculateAllOffset()I
    .locals 6

    .line 437
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v0

    const/16 v2, 0x8

    .line 438
    invoke-direct {p0, v0, v2}, Lcom/zui/gallery/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/zui/gallery/exif/IfdData;I)I

    move-result v2

    .line 439
    sget v3, Lcom/zui/gallery/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v3}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lcom/zui/gallery/exif/IfdData;->getTag(S)Lcom/zui/gallery/exif/ExifTag;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zui/gallery/exif/ExifTag;->setValue(I)Z

    .line 441
    iget-object v3, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v3

    .line 442
    invoke-direct {p0, v3, v2}, Lcom/zui/gallery/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/zui/gallery/exif/IfdData;I)I

    move-result v2

    .line 444
    iget-object v4, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 446
    sget v5, Lcom/zui/gallery/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v5}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v5

    invoke-virtual {v3, v5}, Lcom/zui/gallery/exif/IfdData;->getTag(S)Lcom/zui/gallery/exif/ExifTag;

    move-result-object v3

    .line 447
    invoke-virtual {v3, v2}, Lcom/zui/gallery/exif/ExifTag;->setValue(I)Z

    .line 448
    invoke-direct {p0, v4, v2}, Lcom/zui/gallery/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/zui/gallery/exif/IfdData;I)I

    move-result v2

    .line 451
    :cond_0
    iget-object v3, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 453
    sget v4, Lcom/zui/gallery/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v4}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v4

    invoke-virtual {v0, v4}, Lcom/zui/gallery/exif/IfdData;->getTag(S)Lcom/zui/gallery/exif/ExifTag;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/zui/gallery/exif/ExifTag;->setValue(I)Z

    .line 454
    invoke-direct {p0, v3, v2}, Lcom/zui/gallery/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/zui/gallery/exif/IfdData;I)I

    move-result v2

    .line 457
    :cond_1
    iget-object v3, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 459
    invoke-virtual {v0, v2}, Lcom/zui/gallery/exif/IfdData;->setOffsetToNextIfd(I)V

    .line 460
    invoke-direct {p0, v3, v2}, Lcom/zui/gallery/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/zui/gallery/exif/IfdData;I)I

    move-result v2

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v0}, Lcom/zui/gallery/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 465
    sget v0, Lcom/zui/gallery/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v0}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    invoke-virtual {v3, v0}, Lcom/zui/gallery/exif/IfdData;->getTag(S)Lcom/zui/gallery/exif/ExifTag;

    move-result-object v0

    .line 466
    invoke-virtual {v0, v2}, Lcom/zui/gallery/exif/ExifTag;->setValue(I)Z

    .line 467
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v0}, Lcom/zui/gallery/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v2, v0

    goto :goto_1

    .line 468
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v0}, Lcom/zui/gallery/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 469
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v0}, Lcom/zui/gallery/exif/ExifData;->getStripCount()I

    move-result v0

    .line 470
    new-array v0, v0, [J

    .line 471
    :goto_0
    iget-object v4, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v4}, Lcom/zui/gallery/exif/ExifData;->getStripCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    int-to-long v4, v2

    .line 472
    aput-wide v4, v0, v1

    .line 473
    iget-object v4, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v4, v1}, Lcom/zui/gallery/exif/ExifData;->getStrip(I)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    :cond_4
    sget v1, Lcom/zui/gallery/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/zui/gallery/exif/IfdData;->getTag(S)Lcom/zui/gallery/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/gallery/exif/ExifTag;->setValue([J)Z

    :cond_5
    :goto_1
    return v2
.end method

.method private calculateOffsetOfIfd(Lcom/zui/gallery/exif/IfdData;I)I
    .locals 5

    .line 311
    invoke-virtual {p1}, Lcom/zui/gallery/exif/IfdData;->getTagCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 312
    invoke-virtual {p1}, Lcom/zui/gallery/exif/IfdData;->getAllTags()[Lcom/zui/gallery/exif/ExifTag;

    move-result-object p1

    .line 313
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 314
    invoke-virtual {v3}, Lcom/zui/gallery/exif/ExifTag;->getDataSize()I

    move-result v4

    if-le v4, v1, :cond_0

    .line 315
    invoke-virtual {v3, p2}, Lcom/zui/gallery/exif/ExifTag;->setOffset(I)V

    .line 316
    invoke-virtual {v3}, Lcom/zui/gallery/exif/ExifTag;->getDataSize()I

    move-result v3

    add-int/2addr p2, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private createRequiredIfdAndTag()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/zui/gallery/exif/IfdData;

    invoke-direct {v0, v1}, Lcom/zui/gallery/exif/IfdData;-><init>(I)V

    .line 327
    iget-object v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v2, v0}, Lcom/zui/gallery/exif/ExifData;->addIfdData(Lcom/zui/gallery/exif/IfdData;)V

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mInterface:Lcom/zui/gallery/exif/ExifInterface;

    sget v3, Lcom/zui/gallery/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v2, v3}, Lcom/zui/gallery/exif/ExifInterface;->buildUninitializedTag(I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object v2

    const-string v3, "No definition for crucial exif tag: "

    if-eqz v2, :cond_10

    .line 334
    invoke-virtual {v0, v2}, Lcom/zui/gallery/exif/IfdData;->setTag(Lcom/zui/gallery/exif/ExifTag;)Lcom/zui/gallery/exif/ExifTag;

    .line 337
    iget-object v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v2

    if-nez v2, :cond_1

    .line 339
    new-instance v2, Lcom/zui/gallery/exif/IfdData;

    invoke-direct {v2, v4}, Lcom/zui/gallery/exif/IfdData;-><init>(I)V

    .line 340
    iget-object v4, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v4, v2}, Lcom/zui/gallery/exif/ExifData;->addIfdData(Lcom/zui/gallery/exif/IfdData;)V

    .line 344
    :cond_1
    iget-object v4, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 346
    iget-object v4, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mInterface:Lcom/zui/gallery/exif/ExifInterface;

    sget v5, Lcom/zui/gallery/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v4, v5}, Lcom/zui/gallery/exif/ExifInterface;->buildUninitializedTag(I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 351
    invoke-virtual {v0, v4}, Lcom/zui/gallery/exif/IfdData;->setTag(Lcom/zui/gallery/exif/ExifTag;)Lcom/zui/gallery/exif/ExifTag;

    goto :goto_0

    .line 348
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 357
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mInterface:Lcom/zui/gallery/exif/ExifInterface;

    sget v4, Lcom/zui/gallery/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 358
    invoke-virtual {v0, v4}, Lcom/zui/gallery/exif/ExifInterface;->buildUninitializedTag(I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 363
    invoke-virtual {v2, v0}, Lcom/zui/gallery/exif/IfdData;->setTag(Lcom/zui/gallery/exif/ExifTag;)Lcom/zui/gallery/exif/ExifTag;

    goto :goto_1

    .line 360
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v0

    .line 369
    iget-object v4, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v4}, Lcom/zui/gallery/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v0, :cond_6

    .line 372
    new-instance v0, Lcom/zui/gallery/exif/IfdData;

    invoke-direct {v0, v2}, Lcom/zui/gallery/exif/IfdData;-><init>(I)V

    .line 373
    iget-object v1, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/exif/ExifData;->addIfdData(Lcom/zui/gallery/exif/IfdData;)V

    .line 376
    :cond_6
    iget-object v1, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mInterface:Lcom/zui/gallery/exif/ExifInterface;

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 377
    invoke-virtual {v1, v2}, Lcom/zui/gallery/exif/ExifInterface;->buildUninitializedTag(I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 383
    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/IfdData;->setTag(Lcom/zui/gallery/exif/ExifTag;)Lcom/zui/gallery/exif/ExifTag;

    .line 384
    iget-object v1, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mInterface:Lcom/zui/gallery/exif/ExifInterface;

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 385
    invoke-virtual {v1, v2}, Lcom/zui/gallery/exif/ExifInterface;->buildUninitializedTag(I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 391
    iget-object v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v2}, Lcom/zui/gallery/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/zui/gallery/exif/ExifTag;->setValue(I)Z

    .line 392
    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/IfdData;->setTag(Lcom/zui/gallery/exif/ExifTag;)Lcom/zui/gallery/exif/ExifTag;

    .line 395
    sget v1, Lcom/zui/gallery/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/IfdData;->removeTag(S)V

    .line 396
    sget v1, Lcom/zui/gallery/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/IfdData;->removeTag(S)V

    goto/16 :goto_3

    .line 387
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_9
    iget-object v4, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v4}, Lcom/zui/gallery/exif/ExifData;->hasUncompressedStrip()Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez v0, :cond_a

    .line 399
    new-instance v0, Lcom/zui/gallery/exif/IfdData;

    invoke-direct {v0, v2}, Lcom/zui/gallery/exif/IfdData;-><init>(I)V

    .line 400
    iget-object v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v2, v0}, Lcom/zui/gallery/exif/ExifData;->addIfdData(Lcom/zui/gallery/exif/IfdData;)V

    .line 402
    :cond_a
    iget-object v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v2}, Lcom/zui/gallery/exif/ExifData;->getStripCount()I

    move-result v2

    .line 403
    iget-object v4, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mInterface:Lcom/zui/gallery/exif/ExifInterface;

    sget v5, Lcom/zui/gallery/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v4, v5}, Lcom/zui/gallery/exif/ExifInterface;->buildUninitializedTag(I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 408
    iget-object v5, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mInterface:Lcom/zui/gallery/exif/ExifInterface;

    sget v6, Lcom/zui/gallery/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 409
    invoke-virtual {v5, v6}, Lcom/zui/gallery/exif/ExifInterface;->buildUninitializedTag(I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 414
    new-array v2, v2, [J

    .line 415
    :goto_2
    iget-object v3, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v3}, Lcom/zui/gallery/exif/ExifData;->getStripCount()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 416
    iget-object v3, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v3, v1}, Lcom/zui/gallery/exif/ExifData;->getStrip(I)[B

    move-result-object v3

    array-length v3, v3

    int-to-long v6, v3

    aput-wide v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 418
    :cond_b
    invoke-virtual {v5, v2}, Lcom/zui/gallery/exif/ExifTag;->setValue([J)Z

    .line 419
    invoke-virtual {v0, v4}, Lcom/zui/gallery/exif/IfdData;->setTag(Lcom/zui/gallery/exif/ExifTag;)Lcom/zui/gallery/exif/ExifTag;

    .line 420
    invoke-virtual {v0, v5}, Lcom/zui/gallery/exif/IfdData;->setTag(Lcom/zui/gallery/exif/ExifTag;)Lcom/zui/gallery/exif/ExifTag;

    .line 422
    sget v1, Lcom/zui/gallery/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/IfdData;->removeTag(S)V

    .line 423
    sget v1, Lcom/zui/gallery/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 424
    invoke-static {v1}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    .line 423
    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/IfdData;->removeTag(S)V

    goto :goto_3

    .line 411
    :cond_c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-eqz v0, :cond_f

    .line 427
    sget v1, Lcom/zui/gallery/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/IfdData;->removeTag(S)V

    .line 428
    sget v1, Lcom/zui/gallery/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/IfdData;->removeTag(S)V

    .line 429
    sget v1, Lcom/zui/gallery/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/IfdData;->removeTag(S)V

    .line 430
    sget v1, Lcom/zui/gallery/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 431
    invoke-static {v1}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    .line 430
    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/IfdData;->removeTag(S)V

    :cond_f
    :goto_3
    return-void

    .line 331
    :cond_10
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requestByteToBuffer(I[BII)I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr p1, v0

    if-le p4, p1, :cond_0

    move p4, p1

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return p4
.end method

.method private stripNullValueTags(Lcom/zui/gallery/exif/ExifData;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/exif/ExifData;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/exif/ExifTag;

    .line 247
    invoke-virtual {v2}, Lcom/zui/gallery/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/zui/gallery/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-static {v3}, Lcom/zui/gallery/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    invoke-virtual {v2}, Lcom/zui/gallery/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {v2}, Lcom/zui/gallery/exif/ExifTag;->getIfd()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/zui/gallery/exif/ExifData;->removeTag(SI)V

    .line 249
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private writeAllTags(Lcom/zui/gallery/exif/OrderedDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/exif/ExifOutputStream;->writeIfd(Lcom/zui/gallery/exif/IfdData;Lcom/zui/gallery/exif/OrderedDataOutputStream;)V

    .line 267
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/exif/ExifOutputStream;->writeIfd(Lcom/zui/gallery/exif/IfdData;Lcom/zui/gallery/exif/OrderedDataOutputStream;)V

    .line 268
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/exif/ExifOutputStream;->writeIfd(Lcom/zui/gallery/exif/IfdData;Lcom/zui/gallery/exif/OrderedDataOutputStream;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/exif/ExifOutputStream;->writeIfd(Lcom/zui/gallery/exif/IfdData;Lcom/zui/gallery/exif/OrderedDataOutputStream;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/ExifData;->getIfdData(I)Lcom/zui/gallery/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/exif/ExifOutputStream;->writeIfd(Lcom/zui/gallery/exif/IfdData;Lcom/zui/gallery/exif/OrderedDataOutputStream;)V

    :cond_2
    return-void
.end method

.method private writeExifData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-direct {p0, v0}, Lcom/zui/gallery/exif/ExifOutputStream;->stripNullValueTags(Lcom/zui/gallery/exif/ExifData;)Ljava/util/ArrayList;

    move-result-object v0

    .line 218
    invoke-direct {p0}, Lcom/zui/gallery/exif/ExifOutputStream;->createRequiredIfdAndTag()V

    .line 219
    invoke-direct {p0}, Lcom/zui/gallery/exif/ExifOutputStream;->calculateAllOffset()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    const v3, 0xffff

    if-gt v1, v3, :cond_3

    .line 223
    new-instance v3, Lcom/zui/gallery/exif/OrderedDataOutputStream;

    iget-object v4, p0, Lcom/zui/gallery/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v3, v4}, Lcom/zui/gallery/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 224
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    const/16 v4, -0x1f

    .line 225
    invoke-virtual {v3, v4}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->writeShort(S)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    int-to-short v1, v1

    .line 226
    invoke-virtual {v3, v1}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->writeShort(S)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    const v1, 0x45786966

    .line 227
    invoke-virtual {v3, v1}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->writeInt(I)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    const/4 v1, 0x0

    .line 228
    invoke-virtual {v3, v1}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->writeShort(S)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    .line 229
    iget-object v1, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v1}, Lcom/zui/gallery/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v4, :cond_1

    const/16 v1, 0x4d4d

    .line 230
    invoke-virtual {v3, v1}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->writeShort(S)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    goto :goto_0

    :cond_1
    const/16 v1, 0x4949

    .line 232
    invoke-virtual {v3, v1}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->writeShort(S)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v1}, Lcom/zui/gallery/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    const/16 v1, 0x2a

    .line 235
    invoke-virtual {v3, v1}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->writeShort(S)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    .line 236
    invoke-virtual {v3, v2}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->writeInt(I)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    .line 237
    invoke-direct {p0, v3}, Lcom/zui/gallery/exif/ExifOutputStream;->writeAllTags(Lcom/zui/gallery/exif/OrderedDataOutputStream;)V

    .line 238
    invoke-direct {p0, v3}, Lcom/zui/gallery/exif/ExifOutputStream;->writeThumbnail(Lcom/zui/gallery/exif/OrderedDataOutputStream;)V

    .line 239
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/exif/ExifTag;

    .line 240
    iget-object v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/exif/ExifData;->addTag(Lcom/zui/gallery/exif/ExifTag;)Lcom/zui/gallery/exif/ExifTag;

    goto :goto_1

    :cond_2
    return-void

    .line 221
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exif header is too large (>64Kb)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeIfd(Lcom/zui/gallery/exif/IfdData;Lcom/zui/gallery/exif/OrderedDataOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-virtual {p1}, Lcom/zui/gallery/exif/IfdData;->getAllTags()[Lcom/zui/gallery/exif/ExifTag;

    move-result-object v0

    .line 285
    array-length v1, v0

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->writeShort(S)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    .line 286
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 287
    invoke-virtual {v5}, Lcom/zui/gallery/exif/ExifTag;->getTagId()S

    move-result v6

    invoke-virtual {p2, v6}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->writeShort(S)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    .line 288
    invoke-virtual {v5}, Lcom/zui/gallery/exif/ExifTag;->getDataType()S

    move-result v6

    invoke-virtual {p2, v6}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->writeShort(S)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    .line 289
    invoke-virtual {v5}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->writeInt(I)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    .line 293
    invoke-virtual {v5}, Lcom/zui/gallery/exif/ExifTag;->getDataSize()I

    move-result v6

    if-le v6, v4, :cond_0

    .line 294
    invoke-virtual {v5}, Lcom/zui/gallery/exif/ExifTag;->getOffset()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->writeInt(I)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    goto :goto_2

    .line 296
    :cond_0
    invoke-static {v5, p2}, Lcom/zui/gallery/exif/ExifOutputStream;->writeTagValue(Lcom/zui/gallery/exif/ExifTag;Lcom/zui/gallery/exif/OrderedDataOutputStream;)V

    .line 297
    invoke-virtual {v5}, Lcom/zui/gallery/exif/ExifTag;->getDataSize()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_1

    .line 298
    invoke-virtual {p2, v2}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {p1}, Lcom/zui/gallery/exif/IfdData;->getOffsetToNextIfd()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->writeInt(I)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    .line 303
    array-length p1, v0

    :goto_3
    if-ge v2, p1, :cond_4

    aget-object v1, v0, v2

    .line 304
    invoke-virtual {v1}, Lcom/zui/gallery/exif/ExifTag;->getDataSize()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 305
    invoke-static {v1, p2}, Lcom/zui/gallery/exif/ExifOutputStream;->writeTagValue(Lcom/zui/gallery/exif/ExifTag;Lcom/zui/gallery/exif/OrderedDataOutputStream;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method static writeTagValue(Lcom/zui/gallery/exif/ExifTag;Lcom/zui/gallery/exif/OrderedDataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 504
    :pswitch_1
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 505
    invoke-virtual {p0, v1}, Lcom/zui/gallery/exif/ExifTag;->getRational(I)Lcom/zui/gallery/exif/Rational;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->writeRational(Lcom/zui/gallery/exif/Rational;)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    :pswitch_2
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 499
    invoke-virtual {p0, v1}, Lcom/zui/gallery/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->writeInt(I)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 515
    :pswitch_3
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_1

    .line 516
    invoke-virtual {p0, v1}, Lcom/zui/gallery/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->writeShort(S)Lcom/zui/gallery/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 485
    :pswitch_4
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifTag;->getStringByte()[B

    move-result-object v0

    .line 486
    array-length v2, v0

    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result p0

    if-ne v2, p0, :cond_0

    if-eqz v0, :cond_1

    .line 487
    array-length p0, v0

    if-lez p0, :cond_1

    .line 488
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aput-byte v1, v0, p0

    .line 489
    invoke-virtual {p1, v0}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_3

    .line 492
    :cond_0
    invoke-virtual {p1, v0}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->write([B)V

    .line 493
    invoke-virtual {p1, v1}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->write(I)V

    goto :goto_3

    .line 510
    :pswitch_5
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 511
    invoke-virtual {p0, v0}, Lcom/zui/gallery/exif/ExifTag;->getBytes([B)V

    .line 512
    invoke-virtual {p1, v0}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->write([B)V

    :cond_1
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private writeThumbnail(Lcom/zui/gallery/exif/OrderedDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v0}, Lcom/zui/gallery/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v0}, Lcom/zui/gallery/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_1

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v0}, Lcom/zui/gallery/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 259
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v1}, Lcom/zui/gallery/exif/ExifData;->getStripCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/exif/ExifData;->getStrip(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/zui/gallery/exif/OrderedDataOutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected getExifData()Lcom/zui/gallery/exif/ExifData;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    return-object v0
.end method

.method protected setExifData(Lcom/zui/gallery/exif/ExifData;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mExifData:Lcom/zui/gallery/exif/ExifData;

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mSingleByteArray:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 199
    invoke-virtual {p0, v0}, Lcom/zui/gallery/exif/ExifOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/zui/gallery/exif/ExifOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    :goto_0
    iget v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mByteToSkip:I

    const/4 v1, 0x2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mByteToCopy:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mState:I

    if-eq v0, v1, :cond_e

    :cond_0
    if-lez p3, :cond_e

    .line 122
    iget v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mByteToSkip:I

    if-lez v0, :cond_2

    if-le p3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    sub-int/2addr p3, v0

    .line 125
    iget v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mByteToSkip:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mByteToSkip:I

    add-int/2addr p2, v0

    .line 128
    :cond_2
    iget v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mByteToCopy:I

    if-lez v0, :cond_4

    if-le p3, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, p3

    .line 130
    :goto_2
    iget-object v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p3, v0

    .line 132
    iget v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mByteToCopy:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mByteToCopy:I

    add-int/2addr p2, v0

    :cond_4
    if-nez p3, :cond_5

    return-void

    .line 138
    :cond_5
    iget v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    .line 158
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/zui/gallery/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v2

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    .line 162
    iget-object v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v2, v1, :cond_7

    .line 163
    iget-object v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/16 v4, -0x27

    if-ne v2, v4, :cond_7

    .line 165
    iget-object v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 166
    iget-object v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 169
    :cond_7
    iget-object v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ge v2, v0, :cond_8

    return-void

    .line 172
    :cond_8
    iget-object v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 173
    iget-object v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/16 v4, -0x1f

    const v5, 0xffff

    if-ne v2, v4, :cond_9

    .line 175
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mByteToSkip:I

    .line 176
    iput v1, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mState:I

    goto :goto_3

    .line 177
    :cond_9
    invoke-static {v2}, Lcom/zui/gallery/exif/JpegHeader;->isSofMarker(S)Z

    move-result v2

    if-nez v2, :cond_a

    .line 178
    iget-object v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 179
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mByteToCopy:I

    goto :goto_3

    .line 181
    :cond_a
    iget-object v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 182
    iput v1, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mState:I

    .line 184
    :goto_3
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 140
    :cond_b
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/zui/gallery/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 143
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ge v0, v1, :cond_c

    return-void

    .line 146
    :cond_c
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 147
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v4, -0x28

    if-ne v0, v4, :cond_d

    .line 150
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 151
    iput v2, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mState:I

    .line 152
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 153
    invoke-direct {p0}, Lcom/zui/gallery/exif/ExifOutputStream;->writeExifData()V

    goto/16 :goto_0

    .line 148
    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Not a valid jpeg image, cannot write exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    if-lez p3, :cond_f

    .line 188
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_f
    return-void
.end method
