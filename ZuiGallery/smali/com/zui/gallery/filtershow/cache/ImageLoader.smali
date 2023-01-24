.class public final Lcom/zui/gallery/filtershow/cache/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static final BITMAP_LOAD_BACKOUT_ATTEMPTS:I = 0x5

.field public static final DEFAULT_COMPRESS_QUALITY:I = 0x5f

.field private static final GB:I = 0x40000000

.field public static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field private static final KB:I = 0x400

.field private static final LOGTAG:Ljava/lang/String; = "ImageLoader"

.field private static final MB:I = 0x100000

.field public static final ORI_FLIP_HOR:I = 0x2

.field public static final ORI_FLIP_VERT:I = 0x4

.field public static final ORI_NORMAL:I = 0x1

.field public static final ORI_ROTATE_180:I = 0x3

.field public static final ORI_ROTATE_270:I = 0x8

.field public static final ORI_ROTATE_90:I = 0x6

.field public static final ORI_TRANSPOSE:I = 0x5

.field public static final ORI_TRANSVERSE:I = 0x7

.field private static final OVERDRAW_ZOOM:F = 1.2f

.field private static mLocalPathFromUri:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytes2kb(J)Ljava/lang/String;
    .locals 6

    .line 488
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/32 v1, 0x40000000

    .line 489
    div-long v1, p0, v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 490
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GB"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v1, 0x100000

    .line 492
    div-long v1, p0, v1

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 493
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MB"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/16 v1, 0x400

    .line 495
    div-long v1, p0, v1

    cmp-long v3, v1, v3

    if-ltz v3, :cond_2

    .line 496
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "KB"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 498
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeResourceWithBackouts(Landroid/content/res/Resources;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 6

    .line 739
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 740
    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v3, v0

    move v4, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 747
    :try_start_0
    invoke-static {p0, p2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v3

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 756
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 757
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object v3, v0

    goto :goto_0

    .line 753
    :cond_1
    throw v3

    :cond_2
    return-object v3
.end method

.method public static getExif(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/gallery/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 826
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getLocalPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 828
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 829
    invoke-static {v0}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/jpeg"

    .line 830
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 834
    :cond_0
    :try_start_0
    new-instance v0, Lcom/zui/gallery/exif/ExifInterface;

    invoke-direct {v0}, Lcom/zui/gallery/exif/ExifInterface;-><init>()V

    .line 835
    invoke-virtual {v0, p0}, Lcom/zui/gallery/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0}, Lcom/zui/gallery/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "ImageLoader"

    const-string v1, "Failed to read EXIF tags"

    .line 839
    invoke-static {v0, v1, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object p1
.end method

.method public static getLocalPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const-string v0, "_data"

    const/4 v1, 0x0

    .line 110
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    .line 122
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    .line 115
    :cond_1
    :try_start_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 116
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 117
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/zui/gallery/filtershow/cache/ImageLoader;->mLocalPathFromUri:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    .line 122
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 119
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 122
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_2
    :goto_1
    sget-object p0, Lcom/zui/gallery/filtershow/cache/ImageLoader;->mLocalPathFromUri:Ljava/lang/String;

    return-object p0

    :goto_2
    if-eqz v1, :cond_3

    .line 122
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_3
    throw p1
.end method

.method public static getMetadataOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 10

    const-string v0, "Failed to close InputStream"

    const-string v1, "ImageLoader"

    if-eqz p1, :cond_9

    if-eqz p0, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 140
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "orientation"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    .line 143
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    .line 144
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p1, 0x5a

    if-eq p0, p1, :cond_2

    const/16 p1, 0xb4

    if-eq p0, p1, :cond_1

    const/16 p1, 0x10e

    if-eq p0, p1, :cond_0

    .line 163
    invoke-static {v4}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v3

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-static {v4}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return p0

    :cond_1
    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    const/4 p0, 0x6

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 164
    throw p0

    :catch_0
    move-object v4, v2

    .line 163
    :catch_1
    :cond_3
    invoke-static {v4}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 165
    new-instance v4, Lcom/zui/gallery/exif/ExifInterface;

    invoke-direct {v4}, Lcom/zui/gallery/exif/ExifInterface;-><init>()V

    :try_start_2
    const-string v5, "file"

    .line 169
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 170
    invoke-static {p1}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const-string v5, "image/jpeg"

    .line 171
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v3

    .line 174
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 175
    invoke-virtual {v4, p0}, Lcom/zui/gallery/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    goto :goto_2

    .line 177
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 178
    invoke-virtual {v4, v2}, Lcom/zui/gallery/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 180
    :goto_2
    invoke-static {v4}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->parseExif(Lcom/zui/gallery/exif/ExifInterface;)I

    move-result p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_6

    .line 186
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 189
    invoke-static {v1, v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    return p0

    :catchall_2
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p0

    :try_start_4
    const-string p1, "Failed to read EXIF orientation"

    .line 182
    invoke-static {v1, p1, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_7

    .line 186
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 189
    invoke-static {v1, v0, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_4
    return v3

    :goto_5
    if-eqz v2, :cond_8

    .line 186
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 189
    invoke-static {v1, v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    :cond_8
    :goto_6
    throw p0

    .line 134
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad argument to getOrientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMetadataRotation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 0

    .line 221
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getMetadataOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x6

    if-eq p0, p1, :cond_1

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0
.end method

.method public static getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 87
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 90
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getScaleOneImageForPreset(Landroid/content/Context;Lcom/zui/gallery/filtershow/cache/BitmapCache;Landroid/net/Uri;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    .line 654
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 655
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    if-eqz p4, :cond_1

    .line 657
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr p4, v2

    float-to-int p4, p4

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ifFilterImageScaled is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/gallery/util/GroupUtils;->ifFilterImageScaled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wangcanscale"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-gt v2, p4, :cond_0

    invoke-static {}, Lcom/zui/gallery/util/DeviceTypeUtils;->isP8Device()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/zui/gallery/util/GroupUtils;->ifFilterImageScaled(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 662
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 667
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 670
    :cond_1
    invoke-static {p0, p1, p2, v0, p3}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadRegionBitmap(Landroid/content/Context;Lcom/zui/gallery/filtershow/cache/BitmapCache;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getXmpObject(Landroid/content/Context;)Lcom/adobe/xmp/XMPMeta;
    .locals 3

    const/4 v0, 0x0

    .line 766
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 767
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 766
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 768
    :try_start_1
    invoke-static {p0}, Lcom/zui/gallery/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 774
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 777
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_1

    .line 774
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 777
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 779
    :cond_1
    :goto_2
    throw v0

    :catch_2
    move-object p0, v0

    :catch_3
    if-eqz p0, :cond_2

    .line 774
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 777
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    return-object v0
.end method

.method public static loadBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11

    const-string v0, " && height is "

    const-string v1, " && width is "

    const-string v2, "ImageLoader"

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    const/4 v3, 0x0

    .line 408
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 409
    :try_start_1
    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "inSampleSize == "

    const/4 v7, 0x1

    const-string/jumbo v8, "wangcantestt"

    if-le v5, v7, :cond_3

    .line 411
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " \uff0c\u5148\u52a0\u8f7d\u539f\u56fe\uff0c\u7136\u540e\u518d\u5bf9bitmap\u8fdb\u884c\u538b\u7f29"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 412
    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 413
    invoke-static {v4, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 414
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_0

    .line 415
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u539f\u59cb\u7684bitmap size is "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v9

    int-to-long v9, v9

    invoke-static {v9, v10}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->bytes2kb(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/zui/gallery/util/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 417
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    .line 446
    invoke-static {v4}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v3

    .line 418
    :cond_1
    :try_start_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {p0, v6}, Lcom/zui/gallery/util/GroupUtils;->setOriginBitmapWidth(Landroid/content/Context;I)V

    .line 419
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {p0, v6}, Lcom/zui/gallery/util/GroupUtils;->setOriginBitmapHeight(Landroid/content/Context;I)V

    .line 421
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    div-int/2addr p0, v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    invoke-static {p2, p0, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 422
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u538b\u7f29\u540e\u7684bitmap size is "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->bytes2kb(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 446
    invoke-static {v4}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :cond_2
    :goto_0
    invoke-static {v4}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v3

    .line 425
    :cond_3
    :try_start_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \uff0cinSampleSize < 1\uff0c\u76f4\u63a5\u52a0\u8f7d."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-static {v4, v3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 427
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u76f4\u63a5\u52a0\u8f7d\u540e\u7684bitmap is  == "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 446
    invoke-static {v4}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v4, v3

    .line 443
    :goto_1
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ignore this exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception p0

    move-object v4, v3

    .line 440
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FileNotFoundException for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 446
    :goto_3
    invoke-static {v4}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v3

    :goto_4
    invoke-static {v3}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 447
    throw p0

    .line 404
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad argument to loadBitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5

    .line 453
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 457
    :try_start_0
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->decrptFile(Ljava/lang/String;)[B

    move-result-object p1

    .line 458
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    .line 460
    iput v3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 461
    array-length v4, p1

    invoke-static {p1, v3, v4, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 462
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/gallery/util/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 463
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-static {p0, p2}, Lcom/zui/gallery/util/GroupUtils;->setOriginBitmapWidth(Landroid/content/Context;I)V

    .line 464
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-static {p0, p2}, Lcom/zui/gallery/util/GroupUtils;->setOriginBitmapHeight(Landroid/content/Context;I)V

    .line 465
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 466
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    div-int/2addr p0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    div-int/2addr p2, v1

    invoke-static {p1, p0, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 469
    :cond_1
    array-length p0, p1

    invoke-static {p1, v3, p0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ignore this exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageLoader"

    invoke-static {p1, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 454
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad argument to loadBitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadBitmapBounds(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Rect;
    .locals 5

    .line 359
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 360
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inSampleSize 111 is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wangcaninSampleSize"

    invoke-static {v4, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static {p0, p1, v0}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Load picture...111 time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v1

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "wangcanrealtime"

    invoke-static {p1, p0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance p0, Landroid/graphics/Rect;

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static loadBitmapBounds(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 2

    .line 371
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 372
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 374
    invoke-static {p0, p1, v0}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 376
    new-instance p0, Landroid/graphics/Rect;

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static loadBitmapWithBackouts(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 12

    const-string/jumbo v0, "wangcanspe"

    const/4 v1, 0x1

    if-gtz p2, :cond_0

    move p2, v1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    :goto_0
    if-eqz v1, :cond_3

    .line 687
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 689
    invoke-static {p0}, Lcom/zui/gallery/util/GroupUtils;->getOriginBitmapWidth(Landroid/content/Context;)I

    move-result v4

    .line 690
    invoke-static {p0}, Lcom/zui/gallery/util/GroupUtils;->getOriginBitmapHeight(Landroid/content/Context;)I

    move-result v8

    .line 691
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v9

    invoke-virtual {v9, v4, v8}, Lcom/zui/gallery/util/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 693
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bmap from pool is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_1

    .line 695
    invoke-static {p0, p1, p2}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadDownsampledBitmap(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 697
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 698
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Load picture...loadDownsampledBitmap time is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v8, v6

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v4

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x5

    if-ge v5, v6, :cond_2

    .line 706
    invoke-static {}, Ljava/lang/System;->gc()V

    mul-int/lit8 p2, p2, 0x2

    move-object v4, v2

    goto :goto_0

    .line 703
    :cond_2
    throw v4

    :cond_3
    return-object v4
.end method

.method public static loadConstrainedBitmap(Landroid/net/Uri;Landroid/content/Context;ILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 3

    if-lez p2, :cond_7

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 520
    invoke-static {p1, p0}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadBitmapBounds(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 522
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 524
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p3

    .line 525
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x0

    if-lez p3, :cond_6

    if-gtz v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p4, :cond_2

    .line 535
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_0

    .line 537
    :cond_2
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-le p4, p2, :cond_3

    ushr-int/lit8 p4, p4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-lez v2, :cond_6

    .line 548
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    div-int/2addr p2, v2

    if-gtz p2, :cond_4

    goto :goto_2

    .line 551
    :cond_4
    invoke-static {p1}, Lcom/zui/gallery/widget/WidgetUtils;->isPad(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_5

    const/4 p2, 0x4

    if-lt v2, p2, :cond_5

    const/4 v2, 0x3

    .line 555
    :cond_5
    invoke-static {p1, p0, v2}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadDownsampledBitmap(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    return-object v1

    .line 517
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad argument to getScaledBitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadConstrainedBitmap(Ljava/lang/String;Landroid/content/Context;ILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 3

    if-lez p2, :cond_6

    .line 561
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    .line 564
    invoke-static {p1, p0}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadBitmapBounds(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 566
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 568
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p3

    .line 569
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x0

    if-lez p3, :cond_5

    if-gtz v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p4, :cond_2

    .line 577
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_0

    .line 579
    :cond_2
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-le p4, p2, :cond_3

    ushr-int/lit8 p4, p4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-lez v2, :cond_5

    .line 588
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    div-int/2addr p2, v2

    if-gtz p2, :cond_4

    goto :goto_2

    .line 591
    :cond_4
    invoke-static {p1, p0, v2}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadDownsampledBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    return-object v1

    .line 562
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad argument to getScaledBitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadDownsampledBitmap(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 383
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 384
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 385
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 386
    invoke-static {p0, p1, v0}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadDownsampledBitmap(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 391
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 392
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 393
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 394
    invoke-static {p0, p1, v0}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadOrientedBitmapWithBackouts(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 6

    .line 719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 720
    invoke-static {p0, p1, p2}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadBitmapWithBackouts(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 722
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load picture...loadtime is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " && bitmap is "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangcanspe"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 726
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmap.size is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->bytes2kb(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getMetadataOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p0

    .line 728
    invoke-static {p2, p0}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->orientBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadOrientedConstrainedBitmap(Landroid/net/Uri;Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 609
    invoke-static {p0, p1, p2, p4, v0}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadConstrainedBitmap(Landroid/net/Uri;Landroid/content/Context;ILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 611
    invoke-static {p0, p3}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->orientBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 612
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, p2, :cond_1

    .line 614
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_0

    .line 616
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    move-object p0, p1

    :cond_1
    return-object p0
.end method

.method public static loadOrientedConstrainedBitmap(Ljava/lang/String;Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 636
    invoke-static {p0, p1, p2, p4, v0}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadConstrainedBitmap(Ljava/lang/String;Landroid/content/Context;ILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 638
    invoke-static {p0, p3}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->orientBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 639
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, p2, :cond_1

    .line 641
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_0

    .line 643
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    move-object p0, p1

    :cond_1
    return-object p0
.end method

.method public static loadRegionBitmap(Landroid/content/Context;Lcom/zui/gallery/filtershow/cache/BitmapCache;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 10

    const-string v0, "FileNotFoundException for "

    const-string v1, "ImageLoader"

    .line 298
    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    if-nez p2, :cond_1

    const-string p0, "kk"

    const-string p1, "loadRegionBitmap uri == null"

    .line 306
    invoke-static {p0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    const/4 v2, 0x0

    .line 311
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 312
    :try_start_1
    invoke-static {p0, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v4

    .line 313
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v7

    invoke-direct {v5, v2, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 314
    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :try_start_2
    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    .line 316
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 321
    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 322
    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 323
    iget v5, v7, Landroid/graphics/Rect;->left:I

    iput v5, p4, Landroid/graphics/Rect;->left:I

    .line 324
    iget v5, v7, Landroid/graphics/Rect;->top:I

    iput v5, p4, Landroid/graphics/Rect;->top:I

    .line 332
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 333
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/16 v9, 0x9

    .line 332
    invoke-virtual {p1, v5, v8, v9}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 334
    iput-object v5, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 335
    invoke-virtual {v4, v7, p3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 336
    invoke-virtual {v4}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    if-eq p3, v5, :cond_3

    .line 338
    invoke-virtual {p1, v5}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->cache(Landroid/graphics/Bitmap;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    :cond_3
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object p3

    :catch_0
    move-exception p1

    move p2, v2

    move v2, v6

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, p0

    goto/16 :goto_4

    :catch_1
    move-exception p1

    move p2, v2

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_4

    :catch_4
    move-exception p1

    move p2, v2

    move-object p0, v3

    .line 346
    :goto_0
    :try_start_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exc, image decoded "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bounds: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " - "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "x"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " exc: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_5
    move-exception p1

    move-object p0, v3

    .line 344
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_6
    move-exception p1

    move-object p0, v3

    .line 342
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 350
    :goto_3
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v3

    :goto_4
    invoke-static {v3}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 351
    throw p1
.end method

.method public static orientBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    .line 239
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 240
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 241
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    const/4 v2, 0x7

    if-ne p1, v2, :cond_1

    :cond_0
    move v8, v1

    move v1, v0

    move v0, v8

    :cond_1
    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x40000000    # 2.0f

    packed-switch p1, :pswitch_data_0

    return-object p0

    :pswitch_0
    int-to-float p1, v0

    div-float/2addr p1, v7

    int-to-float v0, v1

    div-float/2addr v0, v7

    .line 258
    invoke-virtual {v5, v2, p1, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    :pswitch_1
    int-to-float p1, v0

    div-float/2addr p1, v7

    int-to-float v0, v1

    div-float/2addr v0, v7

    .line 271
    invoke-virtual {v5, v2, p1, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 272
    invoke-virtual {v5, v4, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    :pswitch_2
    int-to-float p1, v0

    div-float/2addr p1, v7

    int-to-float v0, v1

    div-float/2addr v0, v7

    .line 252
    invoke-virtual {v5, v3, p1, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    :pswitch_3
    int-to-float p1, v0

    div-float/2addr p1, v7

    int-to-float v0, v1

    div-float/2addr v0, v7

    .line 267
    invoke-virtual {v5, v3, p1, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 268
    invoke-virtual {v5, v4, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 264
    :pswitch_4
    invoke-virtual {v5, v4, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    :pswitch_5
    const/high16 p1, 0x43340000    # 180.0f

    int-to-float v0, v0

    div-float/2addr v0, v7

    int-to-float v1, v1

    div-float/2addr v1, v7

    .line 255
    invoke-virtual {v5, p1, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    .line 261
    :pswitch_6
    invoke-virtual {v5, v6, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 279
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 280
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 279
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 281
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseExif(Lcom/zui/gallery/exif/ExifInterface;)I
    .locals 1

    .line 196
    sget v0, Lcom/zui/gallery/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p0, v0}, Lcom/zui/gallery/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    return p0

    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static queryLightCycle360(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 790
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 791
    invoke-static {v1}, Lcom/zui/gallery/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    .line 821
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v0

    :cond_0
    :try_start_1
    const-string v2, "http://ns.google.com/photos/1.0/panorama/"

    const-string v3, "GPano:CroppedAreaImageWidthPixels"

    const-string v4, "GPano:FullPanoWidthPixels"

    .line 799
    invoke-interface {p0, v2, v3}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    .line 821
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v0

    .line 802
    :cond_1
    :try_start_2
    invoke-interface {p0, v2, v4}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_2

    .line 821
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v0

    .line 806
    :cond_2
    :try_start_3
    invoke-interface {p0, v2, v3}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 807
    invoke-interface {p0, v2, v4}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz v3, :cond_3

    if-eqz p0, :cond_3

    .line 812
    invoke-virtual {v3, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 821
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return p0

    :cond_3
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception p0

    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 822
    throw p0

    .line 821
    :catch_0
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v0

    :catch_1
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v0
.end method
