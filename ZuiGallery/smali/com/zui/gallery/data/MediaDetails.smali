.class public Lcom/zui/gallery/data/MediaDetails;
.super Ljava/lang/Object;
.source "MediaDetails.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/MediaDetails$FlashState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DISPLAY_MODEL_FOR_HOUDINI:Ljava/lang/String; = "Moto Z\u00b2 Play"

.field private static final DISPLAY_MODEL_FOR_MONTANAN_CMCC:Ljava/lang/String; = "Moto G5S"

.field private static final DISPLAY_MODEL_FOR_MONTANAN_CN:Ljava/lang/String; = "Moto \u9752\u67da"

.field public static final INDEX_APERTURE:I = 0x69

.field public static final INDEX_DATETIME:I = 0x3

.field public static final INDEX_DESCRIPTION:I = 0x2

.field public static final INDEX_DURATION:I = 0x8

.field public static final INDEX_EXPOSURE_TIME:I = 0x6b

.field public static final INDEX_FLASH:I = 0x66

.field public static final INDEX_FOCAL_LENGTH:I = 0x67

.field public static final INDEX_HEIGHT:I = 0x6

.field public static final INDEX_ISO:I = 0x6c

.field public static final INDEX_LOCATION:I = 0x4

.field public static final INDEX_MAKE:I = 0x64

.field public static final INDEX_MIMETYPE:I = 0x9

.field public static final INDEX_MODEL:I = 0x65

.field public static final INDEX_ORIENTATION:I = 0x7

.field public static final INDEX_PATH:I = 0xc8

.field public static final INDEX_SHUTTER_SPEED:I = 0x6a

.field public static final INDEX_SIZE:I = 0xa

.field public static final INDEX_TITLE:I = 0x1

.field public static final INDEX_WHITE_BALANCE:I = 0x68

.field public static final INDEX_WIDTH:I = 0x5

.field private static final PLATFORM_MODEL_HOUDINI:Ljava/lang/String; = "XT1710-"

.field private static final PLATFORM_MODEL_MONTANAN_CN:Ljava/lang/String; = "XT1799-2"

.field private static final PLATFORM_MODEL_MONTANAN_MONTANAN_CMCC:Ljava/lang/String; = "XT1799-1"

.field private static final TAG:Ljava/lang/String; = "MediaDetails"


# instance fields
.field private mDetails:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUnits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    return-void
.end method

.method public static extractExifInfo(Lcom/zui/gallery/data/MediaDetails;Ljava/lang/String;)V
    .locals 12

    const-string v0, "MediaDetails"

    .line 147
    new-instance v1, Lcom/zui/gallery/exif/ExifInterface;

    invoke-direct {v1}, Lcom/zui/gallery/exif/ExifInterface;-><init>()V

    const/4 v2, 0x0

    .line 152
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/zui/gallery/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 154
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v4, "FNumber"

    .line 155
    invoke-virtual {v3, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "GPSLatitude"

    .line 156
    invoke-virtual {v3, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "GPSLongitude"

    .line 157
    invoke-virtual {v3, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UserComment"

    .line 158
    invoke-virtual {v3, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Model"

    .line 159
    invoke-virtual {v3, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 160
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pic from exif LATITUDE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " LONGITUDE "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " hdr "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " model "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    .line 161
    invoke-virtual {p0, v4}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v5, :cond_0

    new-array v5, v6, [F

    .line 163
    invoke-virtual {v3, v5}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v3

    if-eqz v3, :cond_0

    aget v3, v5, v7

    float-to-double v8, v3

    const/4 v3, 0x1

    aget v10, v5, v3

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Lcom/zui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v8

    if-eqz v8, :cond_0

    new-array v8, v6, [D

    .line 164
    aget v9, v5, v7

    float-to-double v9, v9

    aput-wide v9, v8, v7

    aget v5, v5, v3

    float-to-double v9, v5

    aput-wide v9, v8, v3

    invoke-virtual {p0, v4, v8}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 167
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 168
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "."

    .line 169
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v6

    if-ge v4, v3, :cond_1

    .line 171
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 175
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAG_APERTURE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read exif from file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v3

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find file to read exif: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :goto_0
    sget p1, Lcom/zui/gallery/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v1, p1}, Lcom/zui/gallery/exif/ExifInterface;->getTag(I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object p1

    const/16 v0, 0x66

    invoke-static {p0, p1, v0}, Lcom/zui/gallery/data/MediaDetails;->setExifData(Lcom/zui/gallery/data/MediaDetails;Lcom/zui/gallery/exif/ExifTag;I)V

    .line 201
    sget p1, Lcom/zui/gallery/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-virtual {v1, p1}, Lcom/zui/gallery/exif/ExifInterface;->getTag(I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcom/zui/gallery/data/MediaDetails;->setExifData(Lcom/zui/gallery/data/MediaDetails;Lcom/zui/gallery/exif/ExifTag;I)V

    .line 203
    sget p1, Lcom/zui/gallery/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {v1, p1}, Lcom/zui/gallery/exif/ExifInterface;->getTag(I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lcom/zui/gallery/data/MediaDetails;->setExifData(Lcom/zui/gallery/data/MediaDetails;Lcom/zui/gallery/exif/ExifTag;I)V

    .line 205
    sget p1, Lcom/zui/gallery/exif/ExifInterface;->TAG_MAKE:I

    invoke-virtual {v1, p1}, Lcom/zui/gallery/exif/ExifInterface;->getTag(I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object p1

    const/16 v0, 0x64

    invoke-static {p0, p1, v0}, Lcom/zui/gallery/data/MediaDetails;->setExifData(Lcom/zui/gallery/data/MediaDetails;Lcom/zui/gallery/exif/ExifTag;I)V

    .line 211
    sget p1, Lcom/zui/gallery/exif/ExifInterface;->TAG_MODEL:I

    invoke-virtual {v1, p1}, Lcom/zui/gallery/exif/ExifInterface;->getTag(I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object p1

    const/16 v0, 0x65

    invoke-static {p0, p1, v0}, Lcom/zui/gallery/data/MediaDetails;->setExifData(Lcom/zui/gallery/data/MediaDetails;Lcom/zui/gallery/exif/ExifTag;I)V

    .line 215
    sget p1, Lcom/zui/gallery/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    invoke-virtual {v1, p1}, Lcom/zui/gallery/exif/ExifInterface;->getTag(I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object p1

    const/16 v0, 0x69

    invoke-static {p0, p1, v0}, Lcom/zui/gallery/data/MediaDetails;->setExifData(Lcom/zui/gallery/data/MediaDetails;Lcom/zui/gallery/exif/ExifTag;I)V

    if-eqz v2, :cond_2

    .line 218
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 219
    invoke-virtual {p0, v0, v2}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 222
    :cond_2
    sget p1, Lcom/zui/gallery/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual {v1, p1}, Lcom/zui/gallery/exif/ExifInterface;->getTag(I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object p1

    const/16 v0, 0x6c

    invoke-static {p0, p1, v0}, Lcom/zui/gallery/data/MediaDetails;->setExifData(Lcom/zui/gallery/data/MediaDetails;Lcom/zui/gallery/exif/ExifTag;I)V

    .line 224
    sget p1, Lcom/zui/gallery/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    invoke-virtual {v1, p1}, Lcom/zui/gallery/exif/ExifInterface;->getTag(I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object p1

    const/16 v0, 0x68

    invoke-static {p0, p1, v0}, Lcom/zui/gallery/data/MediaDetails;->setExifData(Lcom/zui/gallery/data/MediaDetails;Lcom/zui/gallery/exif/ExifTag;I)V

    .line 226
    sget p1, Lcom/zui/gallery/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {v1, p1}, Lcom/zui/gallery/exif/ExifInterface;->getTag(I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object p1

    const/16 v0, 0x6b

    invoke-static {p0, p1, v0}, Lcom/zui/gallery/data/MediaDetails;->setExifData(Lcom/zui/gallery/data/MediaDetails;Lcom/zui/gallery/exif/ExifTag;I)V

    .line 228
    sget p1, Lcom/zui/gallery/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {v1, p1}, Lcom/zui/gallery/exif/ExifInterface;->getTag(I)Lcom/zui/gallery/exif/ExifTag;

    move-result-object p1

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    .line 231
    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/exif/ExifTag;->getValueAsRational(J)Lcom/zui/gallery/exif/Rational;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/exif/Rational;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/16 v0, 0x67

    .line 230
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const p1, 0x7f1002a4

    .line 232
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/data/MediaDetails;->setUnit(II)V

    :cond_3
    return-void
.end method

.method private static setExifData(Lcom/zui/gallery/data/MediaDetails;Lcom/zui/gallery/exif/ExifTag;I)V
    .locals 4

    if-eqz p1, :cond_6

    .line 119
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x5

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 125
    :cond_1
    invoke-virtual {p1, v2, v3}, Lcom/zui/gallery/exif/ExifTag;->forceGetValueAsLong(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 121
    :cond_2
    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/zui/gallery/exif/ExifTag;->getValueAsRational(J)Lcom/zui/gallery/exif/Rational;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/exif/Rational;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/16 v1, 0x6c

    if-ne p2, v1, :cond_3

    const-string v1, "0"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    const/16 v1, 0x6b

    if-ne p2, v1, :cond_4

    .line 132
    invoke-virtual {p1, v2, v3}, Lcom/zui/gallery/exif/ExifTag;->getValueAsRational(J)Lcom/zui/gallery/exif/Rational;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/exif/Rational;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "0/1000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    const/16 p1, 0x66

    if-ne p2, p1, :cond_5

    .line 137
    new-instance p1, Lcom/zui/gallery/data/MediaDetails$FlashState;

    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/zui/gallery/data/MediaDetails$FlashState;-><init>(I)V

    .line 139
    invoke-virtual {p0, p2, p1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_2

    .line 141
    :cond_5
    invoke-virtual {p0, p2, v0}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public addDetail(ILjava/lang/Object;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/zui/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getDetail(I)Ljava/lang/Object;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/zui/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getUnit(I)I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/zui/gallery/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public hasUnit(I)Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/zui/gallery/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/zui/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setUnit(II)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/zui/gallery/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/zui/gallery/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
