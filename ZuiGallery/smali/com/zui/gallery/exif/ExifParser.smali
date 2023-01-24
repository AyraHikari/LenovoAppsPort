.class Lcom/zui/gallery/exif/ExifParser;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/exif/ExifParser$ExifTagEvent;,
        Lcom/zui/gallery/exif/ExifParser$IfdEvent;,
        Lcom/zui/gallery/exif/ExifParser$ImageEvent;
    }
.end annotation


# static fields
.field protected static final BIG_ENDIAN_TAG:S = 0x4d4ds

.field protected static final DEFAULT_IFD0_OFFSET:I = 0x8

.field public static final EVENT_COMPRESSED_IMAGE:I = 0x3

.field public static final EVENT_END:I = 0x5

.field public static final EVENT_NEW_TAG:I = 0x1

.field public static final EVENT_START_OF_IFD:I = 0x0

.field public static final EVENT_UNCOMPRESSED_STRIP:I = 0x4

.field public static final EVENT_VALUE_OF_REGISTERED_TAG:I = 0x2

.field protected static final EXIF_HEADER:I = 0x45786966

.field protected static final EXIF_HEADER_TAIL:S = 0x0s

.field protected static final LITTLE_ENDIAN_TAG:S = 0x4949s

.field private static final LOGV:Z = false

.field protected static final OFFSET_SIZE:I = 0x2

.field public static final OPTION_IFD_0:I = 0x1

.field public static final OPTION_IFD_1:I = 0x2

.field public static final OPTION_IFD_EXIF:I = 0x4

.field public static final OPTION_IFD_GPS:I = 0x8

.field public static final OPTION_IFD_INTEROPERABILITY:I = 0x10

.field public static final OPTION_THUMBNAIL:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ExifParser"

.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field protected static final TAG_SIZE:I = 0xc

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field protected static final TIFF_HEADER_TAIL:S = 0x2as

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mApp1End:I

.field private mContainExifData:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Lcom/zui/gallery/exif/ExifParser$ImageEvent;

.field private final mInterface:Lcom/zui/gallery/exif/ExifInterface;

.field private mJpegSizeTag:Lcom/zui/gallery/exif/ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private mOffsetToApp1EndFromSOF:I

.field private final mOptions:I

.field private mStripCount:I

.field private mStripSizeTag:Lcom/zui/gallery/exif/ExifTag;

.field private mTag:Lcom/zui/gallery/exif/ExifTag;

.field private mTiffStartPosition:I

.field private final mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    .line 143
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 166
    sget v0, Lcom/zui/gallery/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 167
    invoke-static {v0}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/zui/gallery/exif/ExifParser;->TAG_EXIF_IFD:S

    .line 168
    sget v0, Lcom/zui/gallery/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/zui/gallery/exif/ExifParser;->TAG_GPS_IFD:S

    .line 169
    sget v0, Lcom/zui/gallery/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 170
    invoke-static {v0}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/zui/gallery/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 171
    sget v0, Lcom/zui/gallery/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 172
    invoke-static {v0}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/zui/gallery/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 173
    sget v0, Lcom/zui/gallery/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 174
    invoke-static {v0}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/zui/gallery/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 175
    sget v0, Lcom/zui/gallery/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 176
    invoke-static {v0}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/zui/gallery/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    .line 177
    sget v0, Lcom/zui/gallery/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 178
    invoke-static {v0}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lcom/zui/gallery/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/zui/gallery/exif/ExifInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zui/gallery/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 149
    iput v0, p0, Lcom/zui/gallery/exif/ExifParser;->mIfdStartOffset:I

    .line 150
    iput v0, p0, Lcom/zui/gallery/exif/ExifParser;->mNumOfTagInIfd:I

    .line 158
    iput-boolean v0, p0, Lcom/zui/gallery/exif/ExifParser;->mContainExifData:Z

    .line 160
    iput v0, p0, Lcom/zui/gallery/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 180
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    if-eqz p1, :cond_4

    .line 210
    iput-object p3, p0, Lcom/zui/gallery/exif/ExifParser;->mInterface:Lcom/zui/gallery/exif/ExifInterface;

    .line 211
    invoke-direct {p0, p1}, Lcom/zui/gallery/exif/ExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/zui/gallery/exif/ExifParser;->mContainExifData:Z

    .line 212
    new-instance p3, Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-direct {p3, p1}, Lcom/zui/gallery/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p3, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    .line 213
    iput p2, p0, Lcom/zui/gallery/exif/ExifParser;->mOptions:I

    .line 214
    iget-boolean p1, p0, Lcom/zui/gallery/exif/ExifParser;->mContainExifData:Z

    if-nez p1, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/exif/ExifParser;->parseTiffHeader()V

    .line 219
    iget-object p1, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {p1}, Lcom/zui/gallery/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide p1

    const-wide/32 v1, 0x7fffffff

    cmp-long p3, p1, v1

    if-gtz p3, :cond_3

    long-to-int p3, p1

    .line 223
    iput p3, p0, Lcom/zui/gallery/exif/ExifParser;->mIfd0Position:I

    .line 224
    iput v0, p0, Lcom/zui/gallery/exif/ExifParser;->mIfdType:I

    .line 225
    invoke-direct {p0, v0}, Lcom/zui/gallery/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/zui/gallery/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/zui/gallery/exif/ExifParser;->registerIfd(IJ)V

    const-wide/16 v0, 0x8

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    add-int/lit8 p3, p3, -0x8

    .line 228
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/zui/gallery/exif/ExifParser;->mDataAboveIfd0:[B

    .line 229
    invoke-virtual {p0, p1}, Lcom/zui/gallery/exif/ExifParser;->read([B)I

    :cond_2
    return-void

    .line 221
    :cond_3
    new-instance p3, Lcom/zui/gallery/exif/ExifInvalidFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/zui/gallery/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 205
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Null argument inputStream to ExifParser"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkAllowed(II)Z
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mInterface:Lcom/zui/gallery/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/zui/gallery/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 643
    :cond_0
    invoke-static {p2, p1}, Lcom/zui/gallery/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result p1

    return p1
.end method

.method private checkOffsetOrImageTag(Lcom/zui/gallery/exif/ExifTag;)V
    .locals 5

    .line 588
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 591
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getTagId()S

    move-result v0

    .line 592
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getIfd()I

    move-result v1

    .line 593
    sget-short v2, Lcom/zui/gallery/exif/ExifParser;->TAG_EXIF_IFD:S

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/zui/gallery/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    .line 594
    invoke-direct {p0, v0}, Lcom/zui/gallery/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 595
    invoke-direct {p0, v3}, Lcom/zui/gallery/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 596
    :cond_1
    invoke-virtual {p1, v4}, Lcom/zui/gallery/exif/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/gallery/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 598
    :cond_2
    sget-short v2, Lcom/zui/gallery/exif/ExifParser;->TAG_GPS_IFD:S

    if-ne v0, v2, :cond_3

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-direct {p0, v1, v2}, Lcom/zui/gallery/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    .line 599
    invoke-direct {p0, v0}, Lcom/zui/gallery/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 600
    invoke-virtual {p1, v4}, Lcom/zui/gallery/exif/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/gallery/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 602
    :cond_3
    sget-short v2, Lcom/zui/gallery/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v0, v2, :cond_4

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 603
    invoke-direct {p0, v1, v2}, Lcom/zui/gallery/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 604
    invoke-direct {p0, v3}, Lcom/zui/gallery/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 605
    invoke-virtual {p1, v4}, Lcom/zui/gallery/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v3, v0, v1}, Lcom/zui/gallery/exif/ExifParser;->registerIfd(IJ)V

    goto/16 :goto_2

    .line 607
    :cond_4
    sget-short v2, Lcom/zui/gallery/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v0, v2, :cond_5

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 608
    invoke-direct {p0, v1, v2}, Lcom/zui/gallery/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 609
    invoke-direct {p0}, Lcom/zui/gallery/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 610
    invoke-virtual {p1, v4}, Lcom/zui/gallery/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/exif/ExifParser;->registerCompressedImage(J)V

    goto/16 :goto_2

    .line 612
    :cond_5
    sget-short v2, Lcom/zui/gallery/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v0, v2, :cond_6

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 613
    invoke-direct {p0, v1, v2}, Lcom/zui/gallery/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 614
    invoke-direct {p0}, Lcom/zui/gallery/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 615
    iput-object p1, p0, Lcom/zui/gallery/exif/ExifParser;->mJpegSizeTag:Lcom/zui/gallery/exif/ExifTag;

    goto :goto_2

    .line 617
    :cond_6
    sget-short v2, Lcom/zui/gallery/exif/ExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v0, v2, :cond_9

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v1, v2}, Lcom/zui/gallery/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 618
    invoke-direct {p0}, Lcom/zui/gallery/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 619
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 620
    :goto_0
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-ge v4, v0, :cond_a

    .line 621
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getDataType()S

    move-result v0

    if-ne v0, v3, :cond_7

    .line 622
    invoke-virtual {p1, v4}, Lcom/zui/gallery/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/zui/gallery/exif/ExifParser;->registerUncompressedStrip(IJ)V

    goto :goto_1

    .line 624
    :cond_7
    invoke-virtual {p1, v4}, Lcom/zui/gallery/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/zui/gallery/exif/ExifParser;->registerUncompressedStrip(IJ)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 628
    :cond_8
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/exif/ExifParser$ExifTagEvent;

    invoke-direct {v2, p1, v4}, Lcom/zui/gallery/exif/ExifParser$ExifTagEvent;-><init>(Lcom/zui/gallery/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 631
    :cond_9
    sget-short v2, Lcom/zui/gallery/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v0, v2, :cond_a

    sget v0, Lcom/zui/gallery/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 632
    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/exif/ExifParser;->checkAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 633
    invoke-direct {p0}, Lcom/zui/gallery/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 634
    iput-object p1, p0, Lcom/zui/gallery/exif/ExifParser;->mStripSizeTag:Lcom/zui/gallery/exif/ExifTag;

    :cond_a
    :goto_2
    return-void
.end method

.method private isIfdRequested(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v1, :cond_6

    const/4 v3, 0x4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_0

    return v0

    .line 191
    :cond_0
    iget p1, p0, Lcom/zui/gallery/exif/ExifParser;->mOptions:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 193
    :cond_2
    iget p1, p0, Lcom/zui/gallery/exif/ExifParser;->mOptions:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 189
    :cond_4
    iget p1, p0, Lcom/zui/gallery/exif/ExifParser;->mOptions:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_5

    move v0, v1

    :cond_5
    return v0

    .line 187
    :cond_6
    iget p1, p0, Lcom/zui/gallery/exif/ExifParser;->mOptions:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_7

    move v0, v1

    :cond_7
    return v0

    .line 185
    :cond_8
    iget p1, p0, Lcom/zui/gallery/exif/ExifParser;->mOptions:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_9

    move v0, v1

    :cond_9
    return v0
.end method

.method private isThumbnailRequested()Z
    .locals 1

    .line 199
    iget v0, p0, Lcom/zui/gallery/exif/ExifParser;->mOptions:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 5

    .line 393
    iget v0, p0, Lcom/zui/gallery/exif/ExifParser;->mIfdType:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    return v1

    .line 402
    :cond_0
    invoke-direct {p0, v2}, Lcom/zui/gallery/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    return v0

    .line 399
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    return v0

    .line 395
    :cond_2
    invoke-direct {p0, v3}, Lcom/zui/gallery/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/zui/gallery/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 396
    invoke-direct {p0, v2}, Lcom/zui/gallery/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 397
    invoke-direct {p0, v4}, Lcom/zui/gallery/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v4

    :cond_4
    return v1
.end method

.method protected static parse(Ljava/io/InputStream;ILcom/zui/gallery/exif/ExifInterface;)Lcom/zui/gallery/exif/ExifParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zui/gallery/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 242
    new-instance v0, Lcom/zui/gallery/exif/ExifParser;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/gallery/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/zui/gallery/exif/ExifInterface;)V

    return-object v0
.end method

.method protected static parse(Ljava/io/InputStream;Lcom/zui/gallery/exif/ExifInterface;)Lcom/zui/gallery/exif/ExifParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zui/gallery/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 255
    new-instance v0, Lcom/zui/gallery/exif/ExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/zui/gallery/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/zui/gallery/exif/ExifInterface;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zui/gallery/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/zui/gallery/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const-string v1, "Invalid TIFF header"

    const/16 v2, 0x4949

    if-ne v2, v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d4d

    if-ne v2, v0, :cond_2

    .line 743
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 748
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/zui/gallery/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_1

    return-void

    .line 749
    :cond_1
    new-instance v0, Lcom/zui/gallery/exif/ExifInvalidFormatException;

    invoke-direct {v0, v1}, Lcom/zui/gallery/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_2
    new-instance v0, Lcom/zui/gallery/exif/ExifInvalidFormatException;

    invoke-direct {v0, v1}, Lcom/zui/gallery/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readTag()Lcom/zui/gallery/exif/ExifTag;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zui/gallery/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/zui/gallery/exif/CountedDataInputStream;->readShort()S

    move-result v2

    .line 536
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/zui/gallery/exif/CountedDataInputStream;->readShort()S

    move-result v0

    .line 537
    iget-object v1, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/zui/gallery/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    const-wide/32 v7, 0x7fffffff

    cmp-long v1, v3, v7

    if-gtz v1, :cond_5

    .line 543
    invoke-static {v0}, Lcom/zui/gallery/exif/ExifTag;->isValidType(S)Z

    move-result v1

    const/4 v5, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 544
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "Tag %04x: Invalid data type %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifParser"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/exif/CountedDataInputStream;->skip(J)J

    const/4 v0, 0x0

    return-object v0

    .line 549
    :cond_0
    new-instance v10, Lcom/zui/gallery/exif/ExifTag;

    long-to-int v11, v3

    iget v6, p0, Lcom/zui/gallery/exif/ExifParser;->mIfdType:I

    if-eqz v11, :cond_1

    move v12, v5

    goto :goto_0

    :cond_1
    move v12, v9

    :goto_0
    move-object v1, v10

    move v3, v0

    move v4, v11

    move v5, v6

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/exif/ExifTag;-><init>(SSIIZ)V

    .line 551
    invoke-virtual {v10}, Lcom/zui/gallery/exif/ExifTag;->getDataSize()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_4

    .line 553
    iget-object v1, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/zui/gallery/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-gtz v3, :cond_3

    .line 560
    iget v3, p0, Lcom/zui/gallery/exif/ExifParser;->mIfd0Position:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mDataAboveIfd0:[B

    if-eqz v0, :cond_2

    .line 561
    new-array v3, v11, [B

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x8

    .line 562
    invoke-static {v0, v1, v3, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    invoke-virtual {v10, v3}, Lcom/zui/gallery/exif/ExifTag;->setValue([B)Z

    goto :goto_1

    :cond_2
    long-to-int v0, v1

    .line 566
    invoke-virtual {v10, v0}, Lcom/zui/gallery/exif/ExifTag;->setOffset(I)V

    goto :goto_1

    .line 555
    :cond_3
    new-instance v0, Lcom/zui/gallery/exif/ExifInvalidFormatException;

    const-string v1, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lcom/zui/gallery/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_4
    invoke-virtual {v10}, Lcom/zui/gallery/exif/ExifTag;->hasDefinedCount()Z

    move-result v0

    .line 571
    invoke-virtual {v10, v9}, Lcom/zui/gallery/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 573
    invoke-virtual {p0, v10}, Lcom/zui/gallery/exif/ExifParser;->readFullTagValue(Lcom/zui/gallery/exif/ExifTag;)V

    .line 574
    invoke-virtual {v10, v0}, Lcom/zui/gallery/exif/ExifTag;->setHasDefinedCount(Z)V

    .line 575
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    rsub-int/lit8 v1, v1, 0x4

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/zui/gallery/exif/CountedDataInputStream;->skip(J)J

    .line 577
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/zui/gallery/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v10, v0}, Lcom/zui/gallery/exif/ExifTag;->setOffset(I)V

    :goto_1
    return-object v10

    .line 539
    :cond_5
    new-instance v0, Lcom/zui/gallery/exif/ExifInvalidFormatException;

    const-string v1, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lcom/zui/gallery/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerCompressedImage(J)V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lcom/zui/gallery/exif/ExifParser$ImageEvent;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lcom/zui/gallery/exif/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerIfd(IJ)V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcom/zui/gallery/exif/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lcom/zui/gallery/exif/ExifParser;->isIfdRequested(I)Z

    move-result v1

    invoke-direct {p3, p1, v1}, Lcom/zui/gallery/exif/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcom/zui/gallery/exif/ExifParser$ImageEvent;

    const/4 v1, 0x4

    invoke-direct {p3, v1, p1}, Lcom/zui/gallery/exif/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zui/gallery/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 755
    new-instance v0, Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/zui/gallery/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 756
    invoke-virtual {v0}, Lcom/zui/gallery/exif/CountedDataInputStream;->readShort()S

    move-result p1

    const/16 v1, -0x28

    if-ne p1, v1, :cond_4

    .line 760
    invoke-virtual {v0}, Lcom/zui/gallery/exif/CountedDataInputStream;->readShort()S

    move-result p1

    :goto_0
    const/16 v1, -0x27

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    .line 762
    invoke-static {p1}, Lcom/zui/gallery/exif/JpegHeader;->isSofMarker(S)Z

    move-result v1

    if-nez v1, :cond_3

    .line 763
    invoke-virtual {v0}, Lcom/zui/gallery/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v1

    const/16 v3, -0x1f

    if-ne p1, v3, :cond_0

    const/16 p1, 0x8

    if-lt v1, p1, :cond_0

    .line 770
    invoke-virtual {v0}, Lcom/zui/gallery/exif/CountedDataInputStream;->readInt()I

    move-result p1

    .line 771
    invoke-virtual {v0}, Lcom/zui/gallery/exif/CountedDataInputStream;->readShort()S

    move-result v3

    add-int/lit8 v1, v1, -0x6

    const v4, 0x45786966

    if-ne p1, v4, :cond_0

    if-nez v3, :cond_0

    .line 774
    invoke-virtual {v0}, Lcom/zui/gallery/exif/CountedDataInputStream;->getReadByteCount()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStartPosition:I

    .line 775
    iput v1, p0, Lcom/zui/gallery/exif/ExifParser;->mApp1End:I

    add-int/2addr p1, v1

    .line 776
    iput p1, p0, Lcom/zui/gallery/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    if-lt v1, p1, :cond_2

    add-int/lit8 v1, v1, -0x2

    int-to-long v3, v1

    .line 781
    invoke-virtual {v0, v3, v4}, Lcom/zui/gallery/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    goto :goto_1

    .line 785
    :cond_1
    invoke-virtual {v0}, Lcom/zui/gallery/exif/CountedDataInputStream;->readShort()S

    move-result p1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p1, "ExifParser"

    const-string v0, "Invalid JPEG format."

    .line 782
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    .line 757
    :cond_4
    new-instance p1, Lcom/zui/gallery/exif/ExifInvalidFormatException;

    const-string v0, "Invalid JPEG format"

    invoke-direct {p1, v0}, Lcom/zui/gallery/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private skipTo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/exif/CountedDataInputStream;->skipTo(J)V

    .line 499
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/zui/gallery/exif/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected getCompressedImageSize()I
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mJpegSizeTag:Lcom/zui/gallery/exif/ExifTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 494
    :cond_0
    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected getCurrentIfd()I
    .locals 1

    .line 453
    iget v0, p0, Lcom/zui/gallery/exif/ExifParser;->mIfdType:I

    return v0
.end method

.method protected getOffsetToExifEndFromSOF()I
    .locals 1

    .line 791
    iget v0, p0, Lcom/zui/gallery/exif/ExifParser;->mOffsetToApp1EndFromSOF:I

    return v0
.end method

.method protected getStripCount()I
    .locals 1

    .line 473
    iget v0, p0, Lcom/zui/gallery/exif/ExifParser;->mStripCount:I

    return v0
.end method

.method protected getStripIndex()I
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mImageEvent:Lcom/zui/gallery/exif/ExifParser$ImageEvent;

    iget v0, v0, Lcom/zui/gallery/exif/ExifParser$ImageEvent;->stripIndex:I

    return v0
.end method

.method protected getStripSize()I
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mStripSizeTag:Lcom/zui/gallery/exif/ExifTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 483
    :cond_0
    invoke-virtual {v0, v1}, Lcom/zui/gallery/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected getTag()Lcom/zui/gallery/exif/ExifTag;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTag:Lcom/zui/gallery/exif/ExifTag;

    return-object v0
.end method

.method protected getTagCountInCurrentIfd()I
    .locals 1

    .line 440
    iget v0, p0, Lcom/zui/gallery/exif/ExifParser;->mNumOfTagInIfd:I

    return v0
.end method

.method protected getTiffStartPosition()I
    .locals 1

    .line 795
    iget v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStartPosition:I

    return v0
.end method

.method protected next()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zui/gallery/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 273
    iget-boolean v0, p0, Lcom/zui/gallery/exif/ExifParser;->mContainExifData:Z

    const/4 v1, 0x5

    if-nez v0, :cond_0

    return v1

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/zui/gallery/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    .line 277
    iget v2, p0, Lcom/zui/gallery/exif/ExifParser;->mIfdStartOffset:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    iget v4, p0, Lcom/zui/gallery/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v2, v4

    const/4 v4, 0x1

    if-ge v0, v2, :cond_3

    .line 279
    invoke-direct {p0}, Lcom/zui/gallery/exif/ExifParser;->readTag()Lcom/zui/gallery/exif/ExifTag;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTag:Lcom/zui/gallery/exif/ExifTag;

    if-nez v0, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifParser;->next()I

    move-result v0

    return v0

    .line 283
    :cond_1
    iget-boolean v1, p0, Lcom/zui/gallery/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v1, :cond_2

    .line 284
    invoke-direct {p0, v0}, Lcom/zui/gallery/exif/ExifParser;->checkOffsetOrImageTag(Lcom/zui/gallery/exif/ExifTag;)V

    :cond_2
    return v4

    :cond_3
    const-string v5, "ExifParser"

    if-ne v0, v2, :cond_8

    .line 289
    iget v0, p0, Lcom/zui/gallery/exif/ExifParser;->mIfdType:I

    const-wide/16 v6, 0x0

    if-nez v0, :cond_5

    .line 290
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v8

    .line 291
    invoke-direct {p0, v4}, Lcom/zui/gallery/exif/ExifParser;->isIfdRequested(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/zui/gallery/exif/ExifParser;->isThumbnailRequested()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    cmp-long v0, v8, v6

    if-eqz v0, :cond_8

    .line 293
    invoke-direct {p0, v4, v8, v9}, Lcom/zui/gallery/exif/ExifParser;->registerIfd(IJ)V

    goto :goto_1

    .line 299
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lez v0, :cond_6

    .line 300
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    .line 301
    invoke-virtual {v4}, Lcom/zui/gallery/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_0
    if-ge v0, v2, :cond_7

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid size of link to next IFD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 306
    :cond_7
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_8

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid link to next IFD: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 314
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 315
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 317
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/zui/gallery/exif/ExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    instance-of v4, v2, Lcom/zui/gallery/exif/ExifParser$IfdEvent;

    if-eqz v4, :cond_b

    .line 324
    check-cast v2, Lcom/zui/gallery/exif/ExifParser$IfdEvent;

    iget v4, v2, Lcom/zui/gallery/exif/ExifParser$IfdEvent;->ifd:I

    iput v4, p0, Lcom/zui/gallery/exif/ExifParser;->mIfdType:I

    .line 325
    iget-object v4, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v4}, Lcom/zui/gallery/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v4

    iput v4, p0, Lcom/zui/gallery/exif/ExifParser;->mNumOfTagInIfd:I

    .line 326
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/exif/ExifParser;->mIfdStartOffset:I

    .line 328
    iget v4, p0, Lcom/zui/gallery/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v4, v0

    add-int/2addr v4, v3

    iget v0, p0, Lcom/zui/gallery/exif/ExifParser;->mApp1End:I

    if-le v4, v0, :cond_9

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size of IFD "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/gallery/exif/ExifParser;->mIfdType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 333
    :cond_9
    invoke-direct {p0}, Lcom/zui/gallery/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 334
    iget-boolean v0, v2, Lcom/zui/gallery/exif/ExifParser$IfdEvent;->isRequested:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 337
    :cond_a
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_1

    .line 339
    :cond_b
    instance-of v0, v2, Lcom/zui/gallery/exif/ExifParser$ImageEvent;

    if-eqz v0, :cond_c

    .line 340
    check-cast v2, Lcom/zui/gallery/exif/ExifParser$ImageEvent;

    iput-object v2, p0, Lcom/zui/gallery/exif/ExifParser;->mImageEvent:Lcom/zui/gallery/exif/ExifParser$ImageEvent;

    .line 341
    iget v0, v2, Lcom/zui/gallery/exif/ExifParser$ImageEvent;->type:I

    return v0

    .line 343
    :cond_c
    check-cast v2, Lcom/zui/gallery/exif/ExifParser$ExifTagEvent;

    .line 344
    iget-object v0, v2, Lcom/zui/gallery/exif/ExifParser$ExifTagEvent;->tag:Lcom/zui/gallery/exif/ExifTag;

    iput-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTag:Lcom/zui/gallery/exif/ExifTag;

    .line 345
    invoke-virtual {v0}, Lcom/zui/gallery/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_d

    .line 346
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTag:Lcom/zui/gallery/exif/ExifTag;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/exif/ExifParser;->readFullTagValue(Lcom/zui/gallery/exif/ExifTag;)V

    .line 347
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTag:Lcom/zui/gallery/exif/ExifTag;

    invoke-direct {p0, v0}, Lcom/zui/gallery/exif/ExifParser;->checkOffsetOrImageTag(Lcom/zui/gallery/exif/ExifTag;)V

    .line 349
    :cond_d
    iget-boolean v0, v2, Lcom/zui/gallery/exif/ExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v0, :cond_8

    return v3

    .line 319
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to skip to data at: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", the file may be broken."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    return v1
.end method

.method protected read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/exif/CountedDataInputStream;->read([B)I

    move-result p1

    return p1
.end method

.method protected read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/exif/CountedDataInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method protected readFullTagValue(Lcom/zui/gallery/exif/ExifTag;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 651
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result v0

    .line 652
    iget-object v1, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 653
    iget-object v1, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v2}, Lcom/zui/gallery/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v2

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    .line 655
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 656
    instance-of v1, v0, Lcom/zui/gallery/exif/ExifParser$ImageEvent;

    const-string v2, "ExifParser"

    if-eqz v1, :cond_1

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid thumbnail offset: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 663
    :cond_1
    instance-of v1, v0, Lcom/zui/gallery/exif/ExifParser$IfdEvent;

    const-string v3, " overlaps value for tag: \n"

    if-eqz v1, :cond_2

    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ifd "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/zui/gallery/exif/ExifParser$IfdEvent;

    iget v0, v0, Lcom/zui/gallery/exif/ExifParser$IfdEvent;->ifd:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 666
    :cond_2
    instance-of v1, v0, Lcom/zui/gallery/exif/ExifParser$ExifTagEvent;

    if-eqz v1, :cond_3

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag value for tag: \n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/zui/gallery/exif/ExifParser$ExifTagEvent;

    iget-object v0, v0, Lcom/zui/gallery/exif/ExifParser$ExifTagEvent;->tag:Lcom/zui/gallery/exif/ExifTag;

    .line 668
    invoke-virtual {v0}, Lcom/zui/gallery/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 667
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    .line 672
    invoke-virtual {v1}, Lcom/zui/gallery/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size of tag: \n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " setting count to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {p1, v0}, Lcom/zui/gallery/exif/ExifTag;->forceSetComponentCount(I)V

    .line 680
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 724
    :pswitch_1
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [Lcom/zui/gallery/exif/Rational;

    :goto_2
    if-ge v1, v0, :cond_5

    .line 726
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifParser;->readRational()Lcom/zui/gallery/exif/Rational;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 728
    :cond_5
    invoke-virtual {p1, v2}, Lcom/zui/gallery/exif/ExifTag;->setValue([Lcom/zui/gallery/exif/Rational;)Z

    goto/16 :goto_7

    .line 716
    :pswitch_2
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [I

    :goto_3
    if-ge v1, v0, :cond_6

    .line 718
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifParser;->readLong()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 720
    :cond_6
    invoke-virtual {p1, v2}, Lcom/zui/gallery/exif/ExifTag;->setValue([I)Z

    goto :goto_7

    .line 700
    :pswitch_3
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [Lcom/zui/gallery/exif/Rational;

    :goto_4
    if-ge v1, v0, :cond_7

    .line 702
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifParser;->readUnsignedRational()Lcom/zui/gallery/exif/Rational;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 704
    :cond_7
    invoke-virtual {p1, v2}, Lcom/zui/gallery/exif/ExifTag;->setValue([Lcom/zui/gallery/exif/Rational;)Z

    goto :goto_7

    .line 692
    :pswitch_4
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [J

    :goto_5
    if-ge v1, v0, :cond_8

    .line 694
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 696
    :cond_8
    invoke-virtual {p1, v2}, Lcom/zui/gallery/exif/ExifTag;->setValue([J)Z

    goto :goto_7

    .line 708
    :pswitch_5
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v2, v0, [I

    :goto_6
    if-ge v1, v0, :cond_9

    .line 710
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifParser;->readUnsignedShort()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 712
    :cond_9
    invoke-virtual {p1, v2}, Lcom/zui/gallery/exif/ExifTag;->setValue([I)Z

    goto :goto_7

    .line 689
    :pswitch_6
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/exif/ExifParser;->readString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    goto :goto_7

    .line 683
    :pswitch_7
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 684
    invoke-virtual {p0, v0}, Lcom/zui/gallery/exif/ExifParser;->read([B)I

    .line 685
    invoke-virtual {p1, v0}, Lcom/zui/gallery/exif/ExifTag;->setValue([B)Z

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected readLong()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/zui/gallery/exif/CountedDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method protected readRational()Lcom/zui/gallery/exif/Rational;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifParser;->readLong()I

    move-result v0

    .line 872
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifParser;->readLong()I

    move-result v1

    .line 873
    new-instance v2, Lcom/zui/gallery/exif/Rational;

    int-to-long v3, v0

    int-to-long v0, v1

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/zui/gallery/exif/Rational;-><init>(JJ)V

    return-object v2
.end method

.method protected readString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    sget-object v0, Lcom/zui/gallery/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/exif/ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 828
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/exif/CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 847
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifParser;->readLong()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUnsignedRational()Lcom/zui/gallery/exif/Rational;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 855
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 856
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 857
    new-instance v4, Lcom/zui/gallery/exif/Rational;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/zui/gallery/exif/Rational;-><init>(JJ)V

    return-object v4
.end method

.method protected readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lcom/zui/gallery/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected registerForTagValue(Lcom/zui/gallery/exif/ExifTag;)V
    .locals 4

    .line 514
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/zui/gallery/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/zui/gallery/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/exif/ExifParser$ExifTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/zui/gallery/exif/ExifParser$ExifTagEvent;-><init>(Lcom/zui/gallery/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/zui/gallery/exif/ExifInvalidFormatException;
        }
    .end annotation

    .line 365
    iget v0, p0, Lcom/zui/gallery/exif/ExifParser;->mIfdStartOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/zui/gallery/exif/ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 366
    iget-object v1, p0, Lcom/zui/gallery/exif/ExifParser;->mTiffStream:Lcom/zui/gallery/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lcom/zui/gallery/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-le v1, v0, :cond_0

    return-void

    .line 370
    :cond_0
    iget-boolean v2, p0, Lcom/zui/gallery/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v2, :cond_2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 372
    invoke-direct {p0}, Lcom/zui/gallery/exif/ExifParser;->readTag()Lcom/zui/gallery/exif/ExifTag;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/gallery/exif/ExifParser;->mTag:Lcom/zui/gallery/exif/ExifTag;

    add-int/lit8 v1, v1, 0xc

    if-nez v2, :cond_1

    goto :goto_0

    .line 377
    :cond_1
    invoke-direct {p0, v2}, Lcom/zui/gallery/exif/ExifParser;->checkOffsetOrImageTag(Lcom/zui/gallery/exif/ExifTag;)V

    goto :goto_0

    .line 380
    :cond_2
    invoke-direct {p0, v0}, Lcom/zui/gallery/exif/ExifParser;->skipTo(I)V

    .line 382
    :cond_3
    invoke-virtual {p0}, Lcom/zui/gallery/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 384
    iget v2, p0, Lcom/zui/gallery/exif/ExifParser;->mIfdType:I

    if-nez v2, :cond_5

    const/4 v2, 0x1

    .line 385
    invoke-direct {p0, v2}, Lcom/zui/gallery/exif/ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/zui/gallery/exif/ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_5

    .line 387
    invoke-direct {p0, v2, v0, v1}, Lcom/zui/gallery/exif/ExifParser;->registerIfd(IJ)V

    :cond_5
    return-void
.end method
