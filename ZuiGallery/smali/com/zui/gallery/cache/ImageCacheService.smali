.class public Lcom/zui/gallery/cache/ImageCacheService;
.super Ljava/lang/Object;
.source "ImageCacheService.java"


# static fields
.field private static final BITMAP_CACHE_CAPACITY:I = 0xc8

.field private static final ENABLE_BITMAP_CACHE:Z = false

.field private static final IMAGE_CACHE_FILE:Ljava/lang/String; = "imgcache"

.field private static final IMAGE_CACHE_FILE_BIG:Ljava/lang/String; = "imagecache_big"

.field private static final IMAGE_CACHE_MAX_BYTES:I = 0xc800000

.field private static final IMAGE_CACHE_MAX_ENTRIES:I = 0x1388

.field private static final IMAGE_CACHE_VERSION:I = 0x7

.field private static final TAG:Ljava/lang/String; = "ImageCacheService"

.field private static final VIDEO_FRAME_CACHE_FILE:Ljava/lang/String; = "view_frame_cache"


# instance fields
.field private mBitmapCache:Lcom/zui/gallery/cache/BitmapCache;

.field private mCacheBig:Lcom/zui/gallery/common/BlobCache;

.field private mCacheSmall:Lcom/zui/gallery/common/BlobCache;

.field private mCacheVideoFrame:Lcom/zui/gallery/common/BlobCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "imgcache"

    const/16 v1, 0x1388

    const/high16 v2, 0xc800000

    const/4 v3, 0x7

    .line 63
    invoke-static {p1, v0, v1, v2, v3}, Lcom/zui/gallery/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/zui/gallery/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/cache/ImageCacheService;->mCacheSmall:Lcom/zui/gallery/common/BlobCache;

    const-string v0, "activity"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 72
    new-instance v0, Lcom/zui/gallery/cache/BitmapCache;

    const/high16 v4, 0x6400000

    invoke-direct {v0, v4}, Lcom/zui/gallery/cache/BitmapCache;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/cache/ImageCacheService;->mBitmapCache:Lcom/zui/gallery/cache/BitmapCache;

    const-string v0, "imagecache_big"

    .line 76
    invoke-static {p1, v0, v1, v2, v3}, Lcom/zui/gallery/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/zui/gallery/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/cache/ImageCacheService;->mCacheBig:Lcom/zui/gallery/common/BlobCache;

    const-string/jumbo v0, "view_frame_cache"

    .line 81
    invoke-static {p1, v0, v1, v2, v3}, Lcom/zui/gallery/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/zui/gallery/common/BlobCache;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/cache/ImageCacheService;->mCacheVideoFrame:Lcom/zui/gallery/common/BlobCache;

    return-void
.end method

.method private close()V
    .locals 3

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cache/ImageCacheService;->mCacheSmall:Lcom/zui/gallery/common/BlobCache;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/zui/gallery/cache/ImageCacheService;->mCacheSmall:Lcom/zui/gallery/common/BlobCache;

    invoke-virtual {v0}, Lcom/zui/gallery/common/BlobCache;->close()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/cache/ImageCacheService;->mCacheBig:Lcom/zui/gallery/common/BlobCache;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/zui/gallery/cache/ImageCacheService;->mCacheBig:Lcom/zui/gallery/common/BlobCache;

    invoke-virtual {v0}, Lcom/zui/gallery/common/BlobCache;->close()V

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/cache/ImageCacheService;->mCacheVideoFrame:Lcom/zui/gallery/common/BlobCache;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/zui/gallery/cache/ImageCacheService;->mCacheVideoFrame:Lcom/zui/gallery/common/BlobCache;

    invoke-virtual {v0}, Lcom/zui/gallery/common/BlobCache;->close()V

    .line 217
    :cond_2
    invoke-static {}, Lcom/zui/gallery/util/CacheManager;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImageCacheService"

    const-string v2, "close cache exception "

    .line 219
    invoke-static {v1, v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private getCacheByType(I)Lcom/zui/gallery/common/BlobCache;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 203
    iget-object p1, p0, Lcom/zui/gallery/cache/ImageCacheService;->mCacheBig:Lcom/zui/gallery/common/BlobCache;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/zui/gallery/cache/ImageCacheService;->mCacheVideoFrame:Lcom/zui/gallery/common/BlobCache;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/cache/ImageCacheService;->mCacheSmall:Lcom/zui/gallery/common/BlobCache;

    :goto_0
    return-object p1
.end method

.method private static isSameKey([B[B)Z
    .locals 5

    .line 162
    array-length v0, p0

    .line 163
    array-length v1, p1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 167
    aget-byte v3, p0, v1

    aget-byte v4, p1, v1

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static makeKey(Lcom/zui/gallery/data/Path;JI)[B
    .locals 1

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "+"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-string v0, "ImageCacheService"

    const-string v1, "close cache"

    .line 195
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/zui/gallery/cache/ImageCacheService;->mBitmapCache:Lcom/zui/gallery/cache/BitmapCache;

    invoke-virtual {v0}, Lcom/zui/gallery/cache/BitmapCache;->clear()V

    .line 197
    invoke-direct {p0}, Lcom/zui/gallery/cache/ImageCacheService;->close()V

    return-void
.end method

.method public clearImageData(Lcom/zui/gallery/data/Path;JI)V
    .locals 0

    .line 144
    invoke-static {p1, p2, p3, p4}, Lcom/zui/gallery/cache/ImageCacheService;->makeKey(Lcom/zui/gallery/data/Path;JI)[B

    move-result-object p1

    .line 145
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->crc64Long([B)J

    move-result-wide p1

    .line 146
    invoke-direct {p0, p4}, Lcom/zui/gallery/cache/ImageCacheService;->getCacheByType(I)Lcom/zui/gallery/common/BlobCache;

    move-result-object p3

    .line 147
    monitor-enter p3

    .line 149
    :try_start_0
    invoke-virtual {p3, p1, p2}, Lcom/zui/gallery/common/BlobCache;->clearEntry(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 153
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p3

    return-void

    :goto_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getImageData(Lcom/zui/gallery/data/Path;JILcom/zui/gallery/data/BytesBufferPool$BytesBuffer;)Z
    .locals 2

    .line 99
    invoke-static {p1, p2, p3, p4}, Lcom/zui/gallery/cache/ImageCacheService;->makeKey(Lcom/zui/gallery/data/Path;JI)[B

    move-result-object p1

    .line 100
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->crc64Long([B)J

    move-result-wide p2

    const/4 v0, 0x0

    .line 102
    :try_start_0
    new-instance v1, Lcom/zui/gallery/common/BlobCache$LookupRequest;

    invoke-direct {v1}, Lcom/zui/gallery/common/BlobCache$LookupRequest;-><init>()V

    .line 103
    iput-wide p2, v1, Lcom/zui/gallery/common/BlobCache$LookupRequest;->key:J

    .line 104
    iget-object p2, p5, Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;->data:[B

    iput-object p2, v1, Lcom/zui/gallery/common/BlobCache$LookupRequest;->buffer:[B

    .line 105
    invoke-direct {p0, p4}, Lcom/zui/gallery/cache/ImageCacheService;->getCacheByType(I)Lcom/zui/gallery/common/BlobCache;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 107
    monitor-enter p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :try_start_1
    invoke-virtual {p2, v1}, Lcom/zui/gallery/common/BlobCache;->lookup(Lcom/zui/gallery/common/BlobCache$LookupRequest;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 109
    monitor-exit p2

    return v0

    .line 110
    :cond_0
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :try_start_2
    iget-object p2, v1, Lcom/zui/gallery/common/BlobCache$LookupRequest;->buffer:[B

    invoke-static {p1, p2}, Lcom/zui/gallery/cache/ImageCacheService;->isSameKey([B[B)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 112
    iget-object p2, v1, Lcom/zui/gallery/common/BlobCache$LookupRequest;->buffer:[B

    iput-object p2, p5, Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;->data:[B

    .line 113
    array-length p1, p1

    iput p1, p5, Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;->offset:I

    .line 114
    iget p1, v1, Lcom/zui/gallery/common/BlobCache$LookupRequest;->length:I

    iget p2, p5, Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;->offset:I

    sub-int/2addr p1, p2

    iput p1, p5, Lcom/zui/gallery/data/BytesBufferPool$BytesBuffer;->length:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 110
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_1
    return v0
.end method

.method public getImageFromBitmapCache(Lcom/zui/gallery/data/Path;JI)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public putImageData(Lcom/zui/gallery/data/Path;JI[B)V
    .locals 2

    .line 126
    invoke-static {p1, p2, p3, p4}, Lcom/zui/gallery/cache/ImageCacheService;->makeKey(Lcom/zui/gallery/data/Path;JI)[B

    move-result-object p1

    .line 127
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->crc64Long([B)J

    move-result-wide p2

    .line 128
    array-length v0, p1

    array-length v1, p5

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 130
    invoke-virtual {v0, p5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 131
    invoke-direct {p0, p4}, Lcom/zui/gallery/cache/ImageCacheService;->getCacheByType(I)Lcom/zui/gallery/common/BlobCache;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    monitor-enter p1

    .line 135
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/zui/gallery/common/BlobCache;->insert(J[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 139
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_0
    :goto_2
    return-void
.end method

.method public putImageToBitmapCache(Lcom/zui/gallery/data/Path;JILandroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
