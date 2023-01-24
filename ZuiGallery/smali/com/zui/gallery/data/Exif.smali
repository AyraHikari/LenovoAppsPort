.class public Lcom/zui/gallery/data/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryExif"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExif([B)Lcom/zui/gallery/exif/ExifInterface;
    .locals 3

    .line 58
    new-instance v0, Lcom/zui/gallery/exif/ExifInterface;

    invoke-direct {v0}, Lcom/zui/gallery/exif/ExifInterface;-><init>()V

    .line 60
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/zui/gallery/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "GalleryExif"

    const-string v2, "Failed to read EXIF data"

    .line 62
    invoke-static {v1, v2, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public static getOrientation(Lcom/zui/gallery/exif/ExifInterface;)I
    .locals 1

    .line 71
    sget v0, Lcom/zui/gallery/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p0, v0}, Lcom/zui/gallery/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 75
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->shortValue()S

    move-result p0

    invoke-static {p0}, Lcom/zui/gallery/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result p0

    return p0
.end method

.method public static getOrientation(Ljava/io/InputStream;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 37
    :cond_0
    new-instance v1, Lcom/zui/gallery/exif/ExifInterface;

    invoke-direct {v1}, Lcom/zui/gallery/exif/ExifInterface;-><init>()V

    .line 39
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/zui/gallery/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 40
    sget p0, Lcom/zui/gallery/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v1, p0}, Lcom/zui/gallery/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 44
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->shortValue()S

    move-result p0

    invoke-static {p0}, Lcom/zui/gallery/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "GalleryExif"

    const-string v2, "Failed to read EXIF orientation"

    .line 47
    invoke-static {v1, v2, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static getOrientation([B)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/zui/gallery/data/Exif;->getExif([B)Lcom/zui/gallery/exif/ExifInterface;

    move-result-object p0

    .line 87
    invoke-static {p0}, Lcom/zui/gallery/data/Exif;->getOrientation(Lcom/zui/gallery/exif/ExifInterface;)I

    move-result p0

    return p0
.end method
