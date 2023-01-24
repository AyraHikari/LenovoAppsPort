.class public Lcom/zui/gallery/app/GalleryAppImpl;
.super Landroid/app/Application;
.source "GalleryAppImpl.java"

# interfaces
.implements Lcom/zui/gallery/app/GalleryApp;


# static fields
.field private static final DOWNLOAD_CAPACITY:J = 0x4000000L

.field private static final DOWNLOAD_FOLDER:Ljava/lang/String; = "download"

.field public static final SETTINGS_KEY_LATEST_TASK_ID:Ljava/lang/String; = "latest_task_id"

.field private static final TAG:Ljava/lang/String; = "GalleryApp"

.field public static mApp:Lcom/zui/gallery/app/GalleryAppImpl;


# instance fields
.field private mActualBrightness:I

.field private mCloudManager:Lcom/zui/gallery/cloud/CloudManager;

.field private mCurrentBrightness:I

.field private mDataManager:Lcom/zui/gallery/data/DataManager;

.field private mDownloadCache:Lcom/zui/gallery/data/DownloadCache;

.field private mImageCacheService:Lcom/zui/gallery/cache/ImageCacheService;

.field private mLock:Ljava/lang/Object;

.field private mMainHandler:Landroid/os/Handler;

.field private mNeedDismissKeyguard:Z

.field protected mNeedHighLightScreen:Z

.field private mOptimizationAlbum:Lcom/zui/gallery/app/OptimizationAlbum;

.field private mResetBrightnessOnGoing:Z

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field protected mTaskIdForHighLight:I

.field private mThreadPool:Lcom/zui/gallery/util/ThreadPool;

.field private mTiledTextureCacheService:Lcom/zui/gallery/cache/TiledTextureCacheService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mCurrentBrightness:I

    .line 82
    iput v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mActualBrightness:I

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 198
    sget-object v0, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    return-object v0
.end method

.method private initGalleryUncaughtExceptionHandler()V
    .locals 2

    .line 176
    invoke-static {}, Lcom/zui/gallery/common/GalleryUncaughtExceptionHandler;->getInstance()Lcom/zui/gallery/common/GalleryUncaughtExceptionHandler;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryAppImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/common/GalleryUncaughtExceptionHandler;->init(Landroid/content/Context;)V

    return-void
.end method

.method private initializeAsyncTask()V
    .locals 1

    .line 187
    :try_start_0
    const-class v0, Landroid/os/AsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private queryExtSDCardPath()Ljava/lang/String;
    .locals 9

    const-string v0, "GalleryApp"

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 311
    :try_start_0
    iget-object v4, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 312
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 313
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    .line 314
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "mounted"

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 317
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-gt v4, v6, :cond_1

    .line 318
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "getPath"

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v7, [Ljava/lang/Object;

    .line 319
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 324
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryExtSDCardPath path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " internalPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    .line 327
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v3, v4

    goto :goto_1

    :cond_2
    const-string v4, "externalSDCard path equal internalPath"

    .line 330
    invoke-static {v0, v4}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 338
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    :cond_3
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query ext sdcard spend time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method


# virtual methods
.method public closeImageCacheService()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mImageCacheService:Lcom/zui/gallery/cache/ImageCacheService;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mImageCacheService:Lcom/zui/gallery/cache/ImageCacheService;

    invoke-virtual {v1}, Lcom/zui/gallery/cache/ImageCacheService;->clear()V

    const/4 v1, 0x0

    .line 234
    iput-object v1, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mImageCacheService:Lcom/zui/gallery/cache/ImageCacheService;

    .line 236
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getCloudManager()Lcom/zui/gallery/cloud/CloudManager;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mCloudManager:Lcom/zui/gallery/cloud/CloudManager;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lcom/zui/gallery/cloud/CloudManager;

    invoke-direct {v0, p0}, Lcom/zui/gallery/cloud/CloudManager;-><init>(Lcom/zui/gallery/app/GalleryApp;)V

    iput-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mCloudManager:Lcom/zui/gallery/cloud/CloudManager;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mCloudManager:Lcom/zui/gallery/cloud/CloudManager;

    return-object v0
.end method

.method public declared-synchronized getDataManager()Lcom/zui/gallery/data/DataManager;
    .locals 1

    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mDataManager:Lcom/zui/gallery/data/DataManager;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/zui/gallery/data/DataManager;

    invoke-direct {v0, p0}, Lcom/zui/gallery/data/DataManager;-><init>(Lcom/zui/gallery/app/GalleryApp;)V

    iput-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mDataManager:Lcom/zui/gallery/data/DataManager;

    .line 205
    invoke-virtual {v0}, Lcom/zui/gallery/data/DataManager;->initializeSourceMap()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mDataManager:Lcom/zui/gallery/data/DataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadCache()Lcom/zui/gallery/data/DownloadCache;
    .locals 4

    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mDownloadCache:Lcom/zui/gallery/data/DownloadCache;

    if-nez v0, :cond_2

    .line 260
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryAppImpl;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 265
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    new-instance v1, Lcom/zui/gallery/data/DownloadCache;

    const-wide/32 v2, 0x4000000

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/zui/gallery/data/DownloadCache;-><init>(Lcom/zui/gallery/app/GalleryApp;Ljava/io/File;J)V

    iput-object v1, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mDownloadCache:Lcom/zui/gallery/data/DownloadCache;

    goto :goto_0

    .line 266
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mDownloadCache:Lcom/zui/gallery/data/DownloadCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExtSDCardPath()Ljava/lang/String;
    .locals 1

    .line 281
    invoke-direct {p0}, Lcom/zui/gallery/app/GalleryAppImpl;->queryExtSDCardPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageCacheService()Lcom/zui/gallery/cache/ImageCacheService;
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mImageCacheService:Lcom/zui/gallery/cache/ImageCacheService;

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Lcom/zui/gallery/cache/ImageCacheService;

    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zui/gallery/cache/ImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mImageCacheService:Lcom/zui/gallery/cache/ImageCacheService;

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mImageCacheService:Lcom/zui/gallery/cache/ImageCacheService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 226
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOptimizationAlbum()Lcom/zui/gallery/app/OptimizationAlbum;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mOptimizationAlbum:Lcom/zui/gallery/app/OptimizationAlbum;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lcom/zui/gallery/app/OptimizationAlbum;

    invoke-direct {v0}, Lcom/zui/gallery/app/OptimizationAlbum;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mOptimizationAlbum:Lcom/zui/gallery/app/OptimizationAlbum;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mOptimizationAlbum:Lcom/zui/gallery/app/OptimizationAlbum;

    return-object v0
.end method

.method public declared-synchronized getThreadPool()Lcom/zui/gallery/util/ThreadPool;
    .locals 1

    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/zui/gallery/util/ThreadPool;

    invoke-direct {v0}, Lcom/zui/gallery/util/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTiledTextureCacheService()Lcom/zui/gallery/cache/TiledTextureCacheService;
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mTiledTextureCacheService:Lcom/zui/gallery/cache/TiledTextureCacheService;

    if-nez v1, :cond_0

    .line 243
    new-instance v1, Lcom/zui/gallery/cache/TiledTextureCacheService;

    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zui/gallery/cache/TiledTextureCacheService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mTiledTextureCacheService:Lcom/zui/gallery/cache/TiledTextureCacheService;

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mTiledTextureCacheService:Lcom/zui/gallery/cache/TiledTextureCacheService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isExternalCameraBucketID(I)Z
    .locals 2

    .line 286
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryAppImpl;->getExtSDCardPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DCIM/Camera"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isNeedDismissKeyguard()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mNeedDismissKeyguard:Z

    return v0
.end method

.method public onCreate()V
    .locals 8

    .line 93
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 94
    sput-object p0, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    .line 95
    invoke-static {p0}, Lrx_activity_result2/RxActivityResult;->register(Landroid/app/Application;)V

    .line 96
    invoke-static {p0}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->init(Landroid/content/Context;)V

    .line 100
    invoke-direct {p0}, Lcom/zui/gallery/app/GalleryAppImpl;->initializeAsyncTask()V

    .line 101
    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->initialize(Landroid/content/Context;)V

    .line 102
    invoke-static {p0}, Lcom/zui/gallery/picasasource/PicasaSource;->initialize(Landroid/content/Context;)V

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryAppImpl;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mMainHandler:Landroid/os/Handler;

    const-string/jumbo v0, "storage"

    .line 104
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/GalleryAppImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/zui/gallery/app/GalleryAppImpl;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 107
    invoke-static {p0}, Lcom/zui/gallery/util/ApplicationProxy;->init(Landroid/app/Application;)V

    .line 115
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "assets:/meishe20.lic"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/meicam/sdk/NvsStreamingContext;->init(Landroid/content/Context;Ljava/lang/String;I)Lcom/meicam/sdk/NvsStreamingContext;

    .line 117
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->init(Landroid/content/Context;Ljava/lang/String;I)Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    .line 127
    invoke-static {}, Lcom/zui/gallery/filtershow/meishefilter/FileUtils;->initStickerDir()V

    .line 131
    invoke-static {p0}, Lcom/zui/gallery/util/GroupUtils;->getCustomGroupsById(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: getCustomGroupsById: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GalleryApp"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_5

    .line 138
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v5, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/AlbumBean;

    .line 139
    invoke-virtual {v5}, Lcom/zui/gallery/data/AlbumBean;->getAlubmName()Ljava/lang/String;

    move-result-object v6

    .line 140
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 141
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object v5, v6

    goto :goto_0

    .line 148
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate:   \u91cd\u590d    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    albumDuplicate:  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate:   \u4e0d\u91cd\u590d  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   albumNoDuplicate:  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/AlbumBean;

    .line 152
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryAppImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zui/gallery/data/AlbumBean;->getId()I

    move-result v1

    int-to-long v5, v1

    invoke-static {v3, v5, v6}, Lcom/zui/gallery/util/GroupUtils;->deleteGroupById(Landroid/content/ContentResolver;J)V

    goto :goto_2

    .line 154
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/AlbumBean;

    .line 155
    invoke-virtual {v1}, Lcom/zui/gallery/data/AlbumBean;->getAlubmName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/gallery/util/GroupUtils;->isGroupFolderExist(Ljava/lang/String;)Z

    move-result v3

    .line 156
    invoke-virtual {v1}, Lcom/zui/gallery/data/AlbumBean;->getAlubmName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/gallery/util/GroupUtils;->isGroupFolderDirectory(Ljava/lang/String;)Z

    move-result v4

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate: getAlubmName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/zui/gallery/data/AlbumBean;->getAlubmName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " groupFolderExist:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "   groupFolderDirectory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    .line 159
    :cond_4
    invoke-virtual {v1}, Lcom/zui/gallery/data/AlbumBean;->getAlubmName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lcom/zui/gallery/data/AlbumBean;->getAlubmName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Favorite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: getAlubmName: -=-=-=-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/zui/gallery/data/AlbumBean;->getAlubmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/zui/gallery/util/GroupUtils;->isGroupFolderExist()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryAppImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zui/gallery/data/AlbumBean;->getId()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v3, v4, v5}, Lcom/zui/gallery/util/GroupUtils;->deleteGroupById(Landroid/content/ContentResolver;J)V

    goto/16 :goto_3

    :cond_5
    return-void
.end method
