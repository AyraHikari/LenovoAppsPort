.class public Lcom/zui/gallery/cache/TiledTextureCacheRequest;
.super Ljava/lang/Object;
.source "TiledTextureCacheRequest.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Lcom/zui/gallery/glrenderer/TiledTexture;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiledTextureCacheRequest"

.field public static final isLoad:Z = true

.field private static sFreeRequestHead:Lcom/zui/gallery/cache/TiledTextureCacheRequest;

.field private static final sFreeRequestLock:Ljava/lang/Object;

.field private static sService:Lcom/zui/gallery/cache/TiledTextureCacheService;


# instance fields
.field protected mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPath:Lcom/zui/gallery/data/Path;

.field private mTimeModified:J

.field private mType:I

.field private nextFreeRequest:Lcom/zui/gallery/cache/TiledTextureCacheRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->sFreeRequestLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->nextFreeRequest:Lcom/zui/gallery/cache/TiledTextureCacheRequest;

    .line 53
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GalleryCache"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private debugTag()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRequets(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;JILandroid/graphics/Bitmap;)Lcom/zui/gallery/cache/TiledTextureCacheRequest;
    .locals 8

    .line 57
    invoke-static {}, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->obtainRequets()Lcom/zui/gallery/cache/TiledTextureCacheRequest;

    move-result-object v7

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    .line 58
    invoke-direct/range {v0 .. v6}, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->init(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;JILandroid/graphics/Bitmap;)V

    return-object v7
.end method

.method private getService()Lcom/zui/gallery/cache/TiledTextureCacheService;
    .locals 1

    .line 105
    sget-object v0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->sService:Lcom/zui/gallery/cache/TiledTextureCacheService;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getTiledTextureCacheService()Lcom/zui/gallery/cache/TiledTextureCacheService;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->sService:Lcom/zui/gallery/cache/TiledTextureCacheService;

    .line 109
    :cond_0
    sget-object v0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->sService:Lcom/zui/gallery/cache/TiledTextureCacheService;

    return-object v0
.end method

.method private init(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;JILandroid/graphics/Bitmap;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 64
    iput-object p2, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mPath:Lcom/zui/gallery/data/Path;

    .line 65
    iput-object p6, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 66
    iput p5, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mType:I

    .line 67
    iput-wide p3, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mTimeModified:J

    return-void
.end method

.method public static isTextureCached(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;JI)Z
    .locals 1

    .line 91
    sget-object v0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->sService:Lcom/zui/gallery/cache/TiledTextureCacheService;

    if-nez v0, :cond_0

    .line 92
    invoke-interface {p0}, Lcom/zui/gallery/app/GalleryApp;->getTiledTextureCacheService()Lcom/zui/gallery/cache/TiledTextureCacheService;

    move-result-object p0

    sput-object p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->sService:Lcom/zui/gallery/cache/TiledTextureCacheService;

    .line 95
    :cond_0
    sget-object p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->sService:Lcom/zui/gallery/cache/TiledTextureCacheService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zui/gallery/cache/TiledTextureCacheService;->isCached(Lcom/zui/gallery/data/Path;JI)Z

    move-result p0

    return p0
.end method

.method private static obtainRequets()Lcom/zui/gallery/cache/TiledTextureCacheRequest;
    .locals 3

    .line 79
    sget-object v0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->sFreeRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->sFreeRequestHead:Lcom/zui/gallery/cache/TiledTextureCacheRequest;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/zui/gallery/cache/TiledTextureCacheRequest;

    invoke-direct {v1}, Lcom/zui/gallery/cache/TiledTextureCacheRequest;-><init>()V

    monitor-exit v0

    return-object v1

    .line 82
    :cond_0
    iget-object v2, v1, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->nextFreeRequest:Lcom/zui/gallery/cache/TiledTextureCacheRequest;

    sput-object v2, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->sFreeRequestHead:Lcom/zui/gallery/cache/TiledTextureCacheRequest;

    const/4 v2, 0x0

    .line 83
    iput-object v2, v1, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->nextFreeRequest:Lcom/zui/gallery/cache/TiledTextureCacheRequest;

    .line 84
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public isTextureCached()Z
    .locals 5

    .line 101
    invoke-direct {p0}, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->getService()Lcom/zui/gallery/cache/TiledTextureCacheService;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mPath:Lcom/zui/gallery/data/Path;

    iget-wide v2, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mTimeModified:J

    iget v4, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mType:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/cache/TiledTextureCacheService;->isCached(Lcom/zui/gallery/data/Path;JI)Z

    move-result v0

    return v0
.end method

.method public onDecodeOriginal(Lcom/zui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public recycle()V
    .locals 2

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 72
    sget-object v0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->sFreeRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->sFreeRequestHead:Lcom/zui/gallery/cache/TiledTextureCacheRequest;

    iput-object v1, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->nextFreeRequest:Lcom/zui/gallery/cache/TiledTextureCacheRequest;

    .line 74
    sput-object p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->sFreeRequestHead:Lcom/zui/gallery/cache/TiledTextureCacheRequest;

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Lcom/zui/gallery/glrenderer/TiledTexture;
    .locals 9

    .line 121
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GalleryCacheSpeed"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->startTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->getService()Lcom/zui/gallery/cache/TiledTextureCacheService;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mPath:Lcom/zui/gallery/data/Path;

    iget-wide v3, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mTimeModified:J

    iget v5, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mType:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/zui/gallery/cache/TiledTextureCacheService;->getTiledTextureFromTiledTextureCache(Lcom/zui/gallery/data/Path;JI)Lcom/zui/gallery/glrenderer/TiledTexture;

    move-result-object v0

    const-string v2, "-"

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/util/LogDebug;->endTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 128
    :cond_0
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 130
    :cond_1
    new-instance p1, Lcom/zui/gallery/glrenderer/TiledTexture;

    iget-object v0, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Lcom/zui/gallery/glrenderer/TiledTexture;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v3, "putTiledTextureToTiledTextureCache+"

    invoke-virtual {v0, v1, v3}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->getService()Lcom/zui/gallery/cache/TiledTextureCacheService;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mPath:Lcom/zui/gallery/data/Path;

    iget-wide v5, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mTimeModified:J

    iget v7, p0, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->mType:I

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/zui/gallery/cache/TiledTextureCacheService;->putTiledTextureToTiledTextureCache(Lcom/zui/gallery/data/Path;JILcom/zui/gallery/glrenderer/TiledTexture;)V

    .line 136
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->endTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/zui/gallery/cache/TiledTextureCacheRequest;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Lcom/zui/gallery/glrenderer/TiledTexture;

    move-result-object p1

    return-object p1
.end method
