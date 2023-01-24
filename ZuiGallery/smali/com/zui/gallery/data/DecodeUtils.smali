.class public Lcom/zui/gallery/data/DecodeUtils;
.super Ljava/lang/Object;
.source "DecodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/DecodeUtils$DecodeCanceller;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DecodeUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBitmapRegionDecoder(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 0

    .line 231
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "DecodeUtils"

    .line 233
    invoke-static {p1, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createBitmapRegionDecoder(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 0

    .line 241
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestCreateBitmapRegionDecoder: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DecodeUtils"

    invoke-static {p1, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createBitmapRegionDecoder(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 0

    .line 221
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "DecodeUtils"

    .line 223
    invoke-static {p1, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createBitmapRegionDecoder(Lcom/zui/gallery/util/ThreadPool$JobContext;[BIIZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 1

    if-ltz p2, :cond_0

    if-lez p3, :cond_0

    add-int p0, p2, p3

    .line 203
    array-length v0, p1

    if-gt p0, v0, :cond_0

    .line 210
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "DecodeUtils"

    .line 213
    invoke-static {p1, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    .line 204
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 206
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v0

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, p2

    const/4 p2, 0x2

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, p2

    const-string p1, "offset = %s, length = %s, bytes = %s"

    .line 204
    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decode(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p2, :cond_0

    .line 63
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 64
    :cond_0
    new-instance v0, Lcom/zui/gallery/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcom/zui/gallery/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/zui/gallery/util/ThreadPool$CancelListener;)V

    .line 65
    invoke-static {p2}, Lcom/zui/gallery/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    const/4 p0, 0x0

    .line 67
    invoke-static {p1, p0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 66
    invoke-static {p0}, Lcom/zui/gallery/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decode(Lcom/zui/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p4, :cond_0

    .line 85
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 86
    :cond_0
    new-instance v0, Lcom/zui/gallery/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p4}, Lcom/zui/gallery/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/zui/gallery/util/ThreadPool$CancelListener;)V

    .line 87
    invoke-static {p4}, Lcom/zui/gallery/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 89
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 88
    invoke-static {p0}, Lcom/zui/gallery/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decode(Lcom/zui/gallery/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .line 80
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/zui/gallery/data/DecodeUtils;->decode(Lcom/zui/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeBounds(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 72
    :goto_0
    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 73
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 74
    new-instance v0, Lcom/zui/gallery/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcom/zui/gallery/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/zui/gallery/util/ThreadPool$CancelListener;)V

    const/4 p0, 0x0

    .line 75
    invoke-static {p1, p0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 76
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    return-void
.end method

.method public static decodeBounds(Lcom/zui/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 94
    :goto_0
    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 95
    iput-boolean v0, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 96
    new-instance v0, Lcom/zui/gallery/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p4}, Lcom/zui/gallery/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/zui/gallery/util/ThreadPool$CancelListener;)V

    .line 97
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 98
    iput-boolean v1, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    return-void
.end method

.method public static decodeIfBigEnough(Lcom/zui/gallery/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p2, :cond_0

    .line 172
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 173
    :cond_0
    new-instance v0, Lcom/zui/gallery/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcom/zui/gallery/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/zui/gallery/util/ThreadPool$CancelListener;)V

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 176
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 177
    invoke-interface {p0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    return-object v0

    .line 178
    :cond_1
    iget p0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt p0, p3, :cond_3

    iget p0, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge p0, p3, :cond_2

    goto :goto_0

    .line 181
    :cond_2
    iget p0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p0, v0, p3}, Lcom/zui/gallery/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result p0

    iput p0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 183
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 184
    invoke-static {p2}, Lcom/zui/gallery/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 186
    array-length p0, p1

    .line 187
    invoke-static {p1, v1, p0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 186
    invoke-static {p0}, Lcom/zui/gallery/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static decodeThumbnail(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p2, :cond_0

    .line 118
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 119
    :cond_0
    new-instance v0, Lcom/zui/gallery/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcom/zui/gallery/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/zui/gallery/util/ThreadPool$CancelListener;)V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 122
    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 123
    invoke-interface {p0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    .line 125
    :cond_1
    iget p0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 126
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v3, 0x2

    if-ne p4, v3, :cond_2

    int-to-float v4, p3

    .line 131
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 132
    invoke-static {v4}, Lcom/zui/gallery/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v4

    iput v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 137
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v4, p0, v4

    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v5, v2, v5

    mul-int/2addr v4, v5

    const v5, 0x9c400

    if-le v4, v5, :cond_3

    const v4, 0x491c4000    # 640000.0f

    mul-int/2addr p0, v2

    int-to-float p0, p0

    div-float/2addr v4, p0

    float-to-double v4, v4

    .line 139
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float p0, v4

    .line 138
    invoke-static {p0}, Lcom/zui/gallery/common/BitmapUtils;->computeSampleSize(F)I

    move-result p0

    iput p0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_2
    int-to-float v4, p3

    .line 143
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v4, p0

    .line 144
    invoke-static {v4}, Lcom/zui/gallery/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result p0

    iput p0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 147
    iput-boolean p0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 148
    invoke-static {p2}, Lcom/zui/gallery/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 150
    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    int-to-float p1, p3

    if-ne p4, v3, :cond_5

    .line 156
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 157
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_1
    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p2, p1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    cmpg-double p2, p2, v1

    if-gtz p2, :cond_6

    .line 159
    invoke-static {p0, p1, v0}, Lcom/zui/gallery/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 160
    :cond_6
    invoke-static {p0}, Lcom/zui/gallery/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeThumbnail(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 105
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 107
    invoke-static {p0, p1, p2, p3, p4}, Lcom/zui/gallery/data/DecodeUtils;->decodeThumbnail(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v1, v0

    :goto_0
    :try_start_2
    const-string p1, "DecodeUtils"

    .line 109
    invoke-static {p1, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 113
    throw p0
.end method

.method public static decodeUsingPool(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p2, :cond_0

    .line 280
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 281
    :cond_0
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 282
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 283
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 284
    invoke-static {p0, p1, p2}, Lcom/zui/gallery/data/DecodeUtils;->findCachedBitmap(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 286
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/zui/gallery/data/DecodeUtils;->decode(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 287
    iget-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v0, :cond_3

    .line 288
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v1

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/zui/gallery/util/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 289
    iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 293
    iget-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    const-string v0, "DecodeUtils"

    const-string v1, "decode fail with a given bitmap, try decode to a new bitmap"

    .line 295
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 297
    iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 298
    invoke-static {p0, p1, p2}, Lcom/zui/gallery/data/DecodeUtils;->decode(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 293
    :cond_4
    throw v0
.end method

.method public static decodeUsingPool(Lcom/zui/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p4, :cond_0

    .line 253
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 254
    :cond_0
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 255
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 256
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 257
    invoke-static {p0, p1, p2, p3, p4}, Lcom/zui/gallery/data/DecodeUtils;->findCachedBitmap(Lcom/zui/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    iput-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 259
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/zui/gallery/data/DecodeUtils;->decode(Lcom/zui/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    iget-object v1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v0, :cond_3

    .line 261
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v1

    iget-object v3, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/zui/gallery/util/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 262
    iput-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 266
    iget-object v1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    const-string v0, "DecodeUtils"

    const-string v1, "decode fail with a given bitmap, try decode to a new bitmap"

    .line 268
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 270
    iput-object v2, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 271
    invoke-static {p0, p1, p2, p3, p4}, Lcom/zui/gallery/data/DecodeUtils;->decode(Lcom/zui/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 266
    :cond_4
    throw v0
.end method

.method public static ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p0, :cond_1

    .line 194
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static findCachedBitmap(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 310
    invoke-static {p0, p1, p2}, Lcom/zui/gallery/data/DecodeUtils;->decodeBounds(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)V

    .line 311
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object p0

    iget p1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/util/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static findCachedBitmap(Lcom/zui/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 304
    invoke-static {p0, p1, p2, p3, p4}, Lcom/zui/gallery/data/DecodeUtils;->decodeBounds(Lcom/zui/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V

    .line 305
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object p0

    iget p1, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p2, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/util/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .line 59
    sget-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_OPTIONS_IN_MUTABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_0
    return-void
.end method
