.class public abstract Lcom/zui/gallery/cache/ImageCacheRequest;
.super Ljava/lang/Object;
.source "ImageCacheRequest.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "ImageCacheRequest"


# instance fields
.field protected mApplication:Lcom/zui/gallery/app/GalleryApp;

.field protected mForceReload:Z

.field private mPath:Lcom/zui/gallery/data/Path;

.field private mTargetSize:I

.field private mTimeModified:J

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;JII)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mForceReload:Z

    .line 52
    iput-object p1, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 53
    iput-object p2, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mPath:Lcom/zui/gallery/data/Path;

    .line 54
    iput p5, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mType:I

    .line 55
    iput p6, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mTargetSize:I

    .line 56
    iput-wide p3, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mTimeModified:J

    return-void
.end method

.method private debugTag()Ljava/lang/String;
    .locals 4

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mTimeModified:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget v1, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "THUMB"

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "MICROTHUMB"

    goto :goto_0

    :cond_1
    const-string v1, "?"

    .line 66
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isFaceDetecDone(I)Z
    .locals 8

    .line 257
    iget-object v0, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mPath:Lcom/zui/gallery/data/Path;

    iget-wide v1, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mTimeModified:J

    invoke-static {v0, v1, v2, p1}, Lcom/zui/gallery/cache/ImageCacheService;->makeKey(Lcom/zui/gallery/data/Path;JI)[B

    move-result-object p1

    .line 258
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->crc64Long([B)J

    move-result-wide v0

    .line 259
    iget-object p1, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/zui/gallery/database/GalleryContract$FaceDetect;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/zui/gallery/database/GalleryContract$FaceDetect;->PROJECTIONS:[Ljava/lang/String;

    const/4 p1, 0x1

    new-array v6, p1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    const-string v5, "image_item_key=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 261
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    .line 264
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_0
    throw p1

    :cond_1
    move p1, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 264
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "thumbnail need face detect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageCacheRequest"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private queryFromCache(Lcom/zui/gallery/cache/ImageCacheService;Lcom/zui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 8

    .line 287
    iget-object v0, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mPath:Lcom/zui/gallery/data/Path;

    iget-wide v1, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mTimeModified:J

    invoke-virtual {p1, v0, v1, v2, p3}, Lcom/zui/gallery/cache/ImageCacheService;->getImageFromBitmapCache(Lcom/zui/gallery/data/Path;JI)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 292
    :cond_0
    invoke-static {}, Lcom/zui/gallery/data/MediaItem;->getBytesBufferPool()Lcom/zui/gallery/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/BytesBufferPool;->get()Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;

    move-result-object v0

    .line 294
    :try_start_0
    iget-object v2, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mPath:Lcom/zui/gallery/data/Path;

    iget-wide v3, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mTimeModified:J

    move-object v1, p1

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/cache/ImageCacheService;->getImageData(Lcom/zui/gallery/data/Path;JILcom/zui/gallery/data/BytesBufferPool$BytesBuffer;)Z

    move-result v1

    .line 295
    invoke-interface {p2}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 319
    invoke-static {}, Lcom/zui/gallery/data/MediaItem;->getBytesBufferPool()Lcom/zui/gallery/data/BytesBufferPool;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/data/BytesBufferPool;->recycle(Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;)V

    return-object v3

    :cond_1
    if-eqz v1, :cond_6

    .line 298
    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 299
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x2

    if-eq p3, v2, :cond_3

    const/4 v2, 0x3

    if-ne p3, v2, :cond_2

    goto :goto_0

    .line 304
    :cond_2
    iget-object v2, v0, Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v3, v0, Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v4, v0, Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {p2, v2, v3, v4, v1}, Lcom/zui/gallery/decode/DecodeUtils;->decodeUsingPool(Lcom/zui/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 301
    :cond_3
    :goto_0
    iget-object v2, v0, Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v3, v0, Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v4, v0, Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {p2, v2, v3, v4, v1}, Lcom/zui/gallery/decode/DecodeUtils;->decodeUsingPool(Lcom/zui/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_4

    .line 307
    invoke-interface {p2}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "ImageCacheRequest"

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode cached failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/zui/gallery/cache/ImageCacheRequest;->debugTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v1, :cond_5

    .line 312
    iget-object v3, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mPath:Lcom/zui/gallery/data/Path;

    iget-wide v4, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mTimeModified:J

    move-object v2, p1

    move v6, p3

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/cache/ImageCacheService;->putImageToBitmapCache(Lcom/zui/gallery/data/Path;JILandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :cond_5
    invoke-static {}, Lcom/zui/gallery/data/MediaItem;->getBytesBufferPool()Lcom/zui/gallery/data/BytesBufferPool;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/data/BytesBufferPool;->recycle(Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;)V

    return-object v1

    :cond_6
    invoke-static {}, Lcom/zui/gallery/data/MediaItem;->getBytesBufferPool()Lcom/zui/gallery/data/BytesBufferPool;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/data/BytesBufferPool;->recycle(Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;)V

    return-object v3

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/zui/gallery/data/MediaItem;->getBytesBufferPool()Lcom/zui/gallery/data/BytesBufferPool;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/zui/gallery/data/BytesBufferPool;->recycle(Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;)V

    .line 320
    throw p1
.end method

.method private updateFaceDetect(I)V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mPath:Lcom/zui/gallery/data/Path;

    iget-wide v1, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mTimeModified:J

    invoke-static {v0, v1, v2, p1}, Lcom/zui/gallery/cache/ImageCacheService;->makeKey(Lcom/zui/gallery/data/Path;JI)[B

    move-result-object p1

    .line 277
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->crc64Long([B)J

    move-result-wide v0

    .line 278
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 279
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image_item_key"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zui/gallery/database/GalleryContract$FaceDetect;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getTimeModified()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mTimeModified:J

    return-wide v0
.end method

.method public abstract onDecodeOriginal(Lcom/zui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 8

    .line 75
    iget-object v0, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getImageCacheService()Lcom/zui/gallery/cache/ImageCacheService;

    move-result-object v1

    .line 78
    iget-boolean v0, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mForceReload:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 79
    iget v0, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mType:I

    invoke-direct {p0, v1, p1, v0}, Lcom/zui/gallery/cache/ImageCacheRequest;->queryFromCache(Lcom/zui/gallery/cache/ImageCacheService;Lcom/zui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v2

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    .line 93
    :cond_2
    iget v0, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mType:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v0, v5, :cond_7

    .line 94
    invoke-direct {p0, v1, p1, v4}, Lcom/zui/gallery/cache/ImageCacheRequest;->queryFromCache(Lcom/zui/gallery/cache/ImageCacheService;Lcom/zui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    return-object v2

    :cond_4
    if-eqz v0, :cond_7

    .line 102
    iget v6, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mTargetSize:I

    invoke-static {v0, v6, v3}, Lcom/zui/gallery/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v0, :cond_5

    .line 105
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    return-object v2

    :cond_6
    if-eqz v0, :cond_7

    return-object v0

    .line 116
    :cond_7
    iget v0, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mType:I

    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/cache/ImageCacheRequest;->onDecodeOriginal(Lcom/zui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v0, :cond_8

    .line 119
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    return-object v2

    :cond_9
    if-nez v0, :cond_a

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decode orig failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/zui/gallery/cache/ImageCacheRequest;->debugTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageCacheRequest"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 129
    :cond_a
    iget v6, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mType:I

    const/4 v7, 0x1

    if-eq v6, v4, :cond_e

    if-ne v6, v5, :cond_b

    goto :goto_0

    :cond_b
    if-ne v6, v7, :cond_c

    goto :goto_1

    :cond_c
    const/4 v3, 0x4

    if-ne v6, v3, :cond_d

    goto :goto_1

    :cond_d
    const/4 v3, 0x5

    if-ne v6, v3, :cond_10

    .line 150
    iget v3, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mTargetSize:I

    sget v4, Lcom/zui/gallery/data/MediaItem;->PANO_THUMBNAIL_HEIGHT:I

    invoke-static {v0, v3, v4, v7}, Lcom/zui/gallery/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 130
    :cond_e
    :goto_0
    iget v4, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mTargetSize:I

    invoke-static {v0, v4, v7}, Lcom/zui/gallery/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 133
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_10

    .line 134
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v4, v5, :cond_10

    .line 135
    :cond_f
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 136
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v3

    .line 153
    :cond_10
    :goto_1
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_12

    if-eqz v0, :cond_11

    .line 155
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_11
    return-object v2

    :cond_12
    if-nez v0, :cond_13

    return-object v2

    .line 163
    :cond_13
    iget v3, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mType:I

    if-ne v3, v7, :cond_14

    const/16 v3, 0x64

    .line 164
    invoke-static {v0, v3}, Lcom/zui/gallery/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v3

    goto :goto_2

    .line 166
    :cond_14
    invoke-static {v0}, Lcom/zui/gallery/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    :goto_2
    move-object v6, v3

    .line 168
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 169
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2

    .line 172
    :cond_15
    iget-object v2, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mPath:Lcom/zui/gallery/data/Path;

    iget-wide v3, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mTimeModified:J

    iget v5, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mType:I

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/cache/ImageCacheService;->putImageData(Lcom/zui/gallery/data/Path;JI[B)V

    return-object v0
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;Z)Landroid/graphics/Bitmap;
    .locals 11

    .line 180
    iget-object p2, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getImageCacheService()Lcom/zui/gallery/cache/ImageCacheService;

    move-result-object v0

    .line 183
    iget-boolean p2, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mForceReload:Z

    const/4 v6, 0x2

    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 184
    iget p2, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mType:I

    invoke-direct {p0, v0, p1, p2}, Lcom/zui/gallery/cache/ImageCacheRequest;->queryFromCache(Lcom/zui/gallery/cache/ImageCacheService;Lcom/zui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 185
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    .line 189
    iget v2, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mType:I

    if-ne v2, v6, :cond_1

    invoke-direct {p0, v2}, Lcom/zui/gallery/cache/ImageCacheRequest;->isFaceDetecDone(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    return-object p2

    .line 197
    :cond_2
    :goto_0
    iget p2, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mType:I

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/cache/ImageCacheRequest;->onDecodeOriginal(Lcom/zui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 199
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    const-string v2, "ImageCacheRequest"

    if-nez p2, :cond_4

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "decode orig failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/zui/gallery/cache/ImageCacheRequest;->debugTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 207
    :cond_4
    iget v3, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mType:I

    const/4 v4, 0x1

    if-eq v3, v6, :cond_6

    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    goto :goto_1

    .line 233
    :cond_5
    iget v2, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mTargetSize:I

    invoke-static {p2, v2, v4}, Lcom/zui/gallery/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_3

    .line 210
    :cond_6
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 211
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v3, v5, :cond_8

    .line 213
    :cond_7
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    invoke-virtual {p2, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 214
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    move-object p2, v3

    :cond_8
    const-wide v7, 0x14f847c8c18L

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v3, v9, v7

    if-gez v3, :cond_9

    .line 221
    invoke-static {p2}, Lcom/zui/gallery/common/BitmapUtils;->getFaceRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_2

    :cond_9
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_a

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "face rect "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget v2, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mTargetSize:I

    invoke-static {p2, v2, v3, v4}, Lcom/zui/gallery/common/BitmapUtils;->resizeAndFaceCropCenter(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_3

    :cond_a
    const-string v3, "not fount face"

    .line 228
    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget v2, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mTargetSize:I

    invoke-static {p2, v2, v4}, Lcom/zui/gallery/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 236
    :goto_3
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v1

    .line 239
    :cond_b
    invoke-static {p2}, Lcom/zui/gallery/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    .line 240
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_c

    return-object v1

    .line 243
    :cond_c
    iget-object v1, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mPath:Lcom/zui/gallery/data/Path;

    iget-wide v2, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mTimeModified:J

    iget v4, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mType:I

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/cache/ImageCacheService;->putImageData(Lcom/zui/gallery/data/Path;JI[B)V

    .line 244
    iget p1, p0, Lcom/zui/gallery/cache/ImageCacheRequest;->mType:I

    if-ne p1, v6, :cond_d

    .line 245
    invoke-direct {p0, p1}, Lcom/zui/gallery/cache/ImageCacheRequest;->updateFaceDetect(I)V

    :cond_d
    return-object p2
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/zui/gallery/cache/ImageCacheRequest;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
