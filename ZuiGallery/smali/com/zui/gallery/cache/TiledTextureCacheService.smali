.class public Lcom/zui/gallery/cache/TiledTextureCacheService;
.super Ljava/lang/Object;
.source "TiledTextureCacheService.java"


# static fields
.field public static final DEF_TEXURE_STATUS_GETTING_BMP:I = 0x1

.field public static final DEF_TEXURE_STATUS_GETTING_TEXTURE:I = 0x2

.field public static final DEF_TEXURE_STATUS_HAS_GOT:I = 0x3

.field public static final DEF_TEXURE_STATUS_NEED_CACHE:I = 0x4

.field public static final DEF_TEXURE_STATUS_NONE:I = 0x0

.field private static final ENABLE_BITMAP_CACHE:Z = true

.field private static final IMAGE_CACHE_FILE:Ljava/lang/String; = "tiledtexture"

.field private static final IMAGE_CACHE_MAX_BYTES:I = 0xc800000

.field private static final IMAGE_CACHE_MAX_ENTRIES:I = 0x1388

.field private static final IMAGE_CACHE_VERSION:I = 0x7

.field private static final TAG:Ljava/lang/String; = "TileTexureCacheService"

.field public static sInstance:Lcom/zui/gallery/cache/TiledTextureCacheService;


# instance fields
.field private mBitmapCache:Lcom/zui/gallery/cache/TiledTextureCache;

.field private mCache:Lcom/zui/gallery/common/BlobCache;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "tiledtexture"

    const/16 v1, 0x1388

    const/high16 v2, 0xc800000

    const/4 v3, 0x7

    .line 61
    invoke-static {p1, v0, v1, v2, v3}, Lcom/zui/gallery/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/zui/gallery/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/cache/TiledTextureCacheService;->mCache:Lcom/zui/gallery/common/BlobCache;

    const-string v0, "activity"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p1

    const/high16 v0, 0x100000

    mul-int/2addr p1, v0

    .line 67
    div-int/lit8 p1, p1, 0x4

    .line 68
    new-instance v0, Lcom/zui/gallery/cache/TiledTextureCache;

    invoke-direct {v0, p1}, Lcom/zui/gallery/cache/TiledTextureCache;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/cache/TiledTextureCacheService;->mBitmapCache:Lcom/zui/gallery/cache/TiledTextureCache;

    .line 69
    sput-object p0, Lcom/zui/gallery/cache/TiledTextureCacheService;->sInstance:Lcom/zui/gallery/cache/TiledTextureCacheService;

    return-void
.end method

.method public static clearCache()V
    .locals 1

    .line 73
    sget-object v0, Lcom/zui/gallery/cache/TiledTextureCacheService;->sInstance:Lcom/zui/gallery/cache/TiledTextureCacheService;

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/cache/TiledTextureCacheService;->clear()V

    return-void
.end method

.method private static isSameKey([B[B)Z
    .locals 5

    .line 103
    array-length v0, p0

    .line 104
    array-length v1, p1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 108
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

.method private static makeKey(Lcom/zui/gallery/data/Path;JI)[B
    .locals 1

    .line 98
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
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/zui/gallery/cache/TiledTextureCacheService;->mBitmapCache:Lcom/zui/gallery/cache/TiledTextureCache;

    invoke-virtual {v0}, Lcom/zui/gallery/cache/TiledTextureCache;->clear()V

    return-void
.end method

.method public clearTiledTexture(J)V
    .locals 3

    .line 157
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cacheKey ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/cache/TiledTextureCacheService;->mBitmapCache:Lcom/zui/gallery/cache/TiledTextureCache;

    invoke-virtual {v2, p1, p2}, Lcom/zui/gallery/cache/TiledTextureCache;->getTexture(J)Lcom/zui/gallery/glrenderer/TiledTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GalleryCache"

    invoke-virtual {v0, v2, v1}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/zui/gallery/cache/TiledTextureCacheService;->mBitmapCache:Lcom/zui/gallery/cache/TiledTextureCache;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/cache/TiledTextureCache;->removeTiledTexture(J)V

    return-void
.end method

.method public clearTiledTextureData(Lcom/zui/gallery/data/Path;I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 85
    invoke-static {p1, v0, v1, p2}, Lcom/zui/gallery/cache/TiledTextureCacheService;->makeKey(Lcom/zui/gallery/data/Path;JI)[B

    move-result-object p1

    .line 86
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->crc64Long([B)J

    move-result-wide p1

    .line 87
    iget-object v0, p0, Lcom/zui/gallery/cache/TiledTextureCacheService;->mCache:Lcom/zui/gallery/common/BlobCache;

    .line 88
    monitor-enter v0

    .line 90
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/common/BlobCache;->clearEntry(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 94
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getTiledTexture(J)Lcom/zui/gallery/glrenderer/TiledTexture;
    .locals 3

    .line 152
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cacheKey ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/cache/TiledTextureCacheService;->mBitmapCache:Lcom/zui/gallery/cache/TiledTextureCache;

    invoke-virtual {v2, p1, p2}, Lcom/zui/gallery/cache/TiledTextureCache;->getTexture(J)Lcom/zui/gallery/glrenderer/TiledTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GalleryCache"

    invoke-virtual {v0, v2, v1}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/zui/gallery/cache/TiledTextureCacheService;->mBitmapCache:Lcom/zui/gallery/cache/TiledTextureCache;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/cache/TiledTextureCache;->getTexture(J)Lcom/zui/gallery/glrenderer/TiledTexture;

    move-result-object p1

    return-object p1
.end method

.method public getTiledTextureFromTiledTextureCache(Lcom/zui/gallery/data/Path;JI)Lcom/zui/gallery/glrenderer/TiledTexture;
    .locals 0

    .line 116
    invoke-static {p1, p2, p3, p4}, Lcom/zui/gallery/cache/TiledTextureCacheService;->makeKey(Lcom/zui/gallery/data/Path;JI)[B

    move-result-object p1

    .line 117
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->crc64Long([B)J

    move-result-wide p1

    .line 118
    iget-object p3, p0, Lcom/zui/gallery/cache/TiledTextureCacheService;->mBitmapCache:Lcom/zui/gallery/cache/TiledTextureCache;

    invoke-virtual {p3, p1, p2}, Lcom/zui/gallery/cache/TiledTextureCache;->getTexture(J)Lcom/zui/gallery/glrenderer/TiledTexture;

    move-result-object p1

    return-object p1
.end method

.method public getcacheKey(Lcom/zui/gallery/data/Path;JI)J
    .locals 0

    .line 162
    invoke-static {p1, p2, p3, p4}, Lcom/zui/gallery/cache/TiledTextureCacheService;->makeKey(Lcom/zui/gallery/data/Path;JI)[B

    move-result-object p1

    .line 163
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->crc64Long([B)J

    move-result-wide p1

    return-wide p1
.end method

.method public hasTiledTexture(J)Z
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/zui/gallery/cache/TiledTextureCacheService;->mBitmapCache:Lcom/zui/gallery/cache/TiledTextureCache;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/cache/TiledTextureCache;->getTexture(J)Lcom/zui/gallery/glrenderer/TiledTexture;

    move-result-object v0

    const-string v1, " cacheKey ="

    const-string v2, "GalleryCache"

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " not cached!"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 147
    :cond_0
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " cached!!!"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public isCached(Lcom/zui/gallery/data/Path;JI)Z
    .locals 0

    .line 81
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zui/gallery/cache/TiledTextureCacheService;->getTiledTextureFromTiledTextureCache(Lcom/zui/gallery/data/Path;JI)Lcom/zui/gallery/glrenderer/TiledTexture;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public putTiledTextureToTiledTextureCache(Lcom/zui/gallery/data/Path;JILcom/zui/gallery/glrenderer/TiledTexture;)V
    .locals 0

    .line 122
    invoke-static {p1, p2, p3, p4}, Lcom/zui/gallery/cache/TiledTextureCacheService;->makeKey(Lcom/zui/gallery/data/Path;JI)[B

    move-result-object p1

    .line 123
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->crc64Long([B)J

    move-result-wide p1

    .line 124
    iget-object p3, p0, Lcom/zui/gallery/cache/TiledTextureCacheService;->mBitmapCache:Lcom/zui/gallery/cache/TiledTextureCache;

    invoke-virtual {p3, p1, p2, p5}, Lcom/zui/gallery/cache/TiledTextureCache;->putTiledTexture(JLcom/zui/gallery/glrenderer/TiledTexture;)V

    return-void
.end method
