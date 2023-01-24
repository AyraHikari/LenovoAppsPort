.class public Lcom/zui/gallery/app/PanoramaMetadataSupport;
.super Ljava/lang/Object;
.source "PanoramaMetadataSupport.java"

# interfaces
.implements Lcom/zui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/FutureListener<",
        "Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallbacksWaiting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGetPanoMetadataTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mMediaObject:Lcom/zui/gallery/data/MediaObject;

.field private mPanoramaMetadata:Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/MediaObject;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mLock:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mMediaObject:Lcom/zui/gallery/data/MediaObject;

    return-void
.end method


# virtual methods
.method public clearCachedValues()V
    .locals 6

    .line 63
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 65
    iput-object v2, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;

    goto :goto_1

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mGetPanoMetadataTask:Lcom/zui/gallery/util/Future;

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mGetPanoMetadataTask:Lcom/zui/gallery/util/Future;

    invoke-interface {v1}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 68
    iget-object v1, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mCallbacksWaiting:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;

    .line 69
    iget-object v4, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mMediaObject:Lcom/zui/gallery/data/MediaObject;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v5}, Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;->panoramaInfoAvailable(Lcom/zui/gallery/data/MediaObject;ZZ)V

    goto :goto_0

    .line 71
    :cond_1
    iput-object v2, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mGetPanoMetadataTask:Lcom/zui/gallery/util/Future;

    .line 72
    iput-object v2, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mCallbacksWaiting:Ljava/util/ArrayList;

    .line 74
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPanoramaSupport(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;)V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;

    if-eqz v1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mMediaObject:Lcom/zui/gallery/data/MediaObject;

    iget-object v1, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;

    iget-boolean v1, v1, Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;->mUsePanoramaViewer:Z

    iget-object v2, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;

    iget-boolean v2, v2, Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;->mIsPanorama360:Z

    invoke-interface {p2, p1, v1, v2}, Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;->panoramaInfoAvailable(Lcom/zui/gallery/data/MediaObject;ZZ)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mCallbacksWaiting:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mCallbacksWaiting:Ljava/util/ArrayList;

    .line 52
    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/data/PanoramaMetadataJob;

    .line 53
    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mMediaObject:Lcom/zui/gallery/data/MediaObject;

    .line 54
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/zui/gallery/data/PanoramaMetadataJob;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 52
    invoke-virtual {v1, v2, p0}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mGetPanoMetadataTask:Lcom/zui/gallery/util/Future;

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mCallbacksWaiting:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onFutureDone(Lcom/zui/gallery/util/Future;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/Future<",
            "Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;",
            ">;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;

    if-nez p1, :cond_0

    .line 83
    sget-object p1, Lcom/zui/gallery/util/LightCycleHelper;->NOT_PANORAMA:Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;

    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mCallbacksWaiting:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;

    .line 86
    iget-object v2, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mMediaObject:Lcom/zui/gallery/data/MediaObject;

    iget-object v3, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;

    iget-boolean v3, v3, Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;->mUsePanoramaViewer:Z

    iget-object v4, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mPanoramaMetadata:Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;

    iget-boolean v4, v4, Lcom/zui/gallery/util/LightCycleHelper$PanoramaMetadata;->mIsPanorama360:Z

    invoke-interface {v1, v2, v3, v4}, Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;->panoramaInfoAvailable(Lcom/zui/gallery/data/MediaObject;ZZ)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mGetPanoMetadataTask:Lcom/zui/gallery/util/Future;

    .line 90
    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaMetadataSupport;->mCallbacksWaiting:Ljava/util/ArrayList;

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
