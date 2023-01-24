.class Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private volatile mIsLoading:Z

.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/AlbumSetDataLoader;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 440
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    .line 441
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    const/4 p1, 0x0

    .line 442
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/AlbumSetDataLoader;Lcom/zui/gallery/app/AlbumSetDataLoader$1;)V
    .locals 0

    .line 439
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;-><init>(Lcom/zui/gallery/app/AlbumSetDataLoader;)V

    return-void
.end method

.method private updateLoading(Z)V
    .locals 2

    .line 445
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 447
    :cond_0
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    .line 448
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$2200(Lcom/zui/gallery/app/AlbumSetDataLoader;)Landroid/os/Handler;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 449
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object p1

    const-string v0, "GallerySpeedSwitch"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .locals 3

    monitor-enter p0

    .line 505
    :try_start_0
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedSwitch"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 506
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 507
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 8

    const/16 v0, 0xa

    .line 454
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 455
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedSwitch"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 457
    :goto_0
    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    if-eqz v2, :cond_7

    .line 458
    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 459
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$800(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->isLoading()Z

    move-result v2

    if-nez v2, :cond_0

    .line 460
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 462
    :cond_0
    monitor-enter p0

    .line 463
    :try_start_0
    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 464
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v2

    const-string v3, "GallerySpeedSwitch"

    const-string/jumbo v4, "waitWithoutInterrupt"

    invoke-virtual {v2, v3, v4}, Landroid/util/LogDebug;->endTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 466
    monitor-exit p0

    goto :goto_0

    .line 468
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    const/4 v1, 0x1

    .line 470
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 472
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$800(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->reload()J

    move-result-wide v2

    .line 473
    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    new-instance v5, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;

    iget-object v6, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-direct {v5, v6, v2, v3}, Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;-><init>(Lcom/zui/gallery/app/AlbumSetDataLoader;J)V

    invoke-static {v4, v5}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$2300(Lcom/zui/gallery/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;

    if-nez v4, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    if-eqz v5, :cond_3

    goto :goto_2

    .line 477
    :cond_3
    iget-wide v6, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->version:J

    cmp-long v6, v6, v2

    const/4 v7, -0x1

    if-eqz v6, :cond_4

    .line 478
    iput-wide v2, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->version:J

    .line 479
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$800(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v2

    iput v2, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->size:I

    .line 484
    iget v2, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget v3, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->size:I

    if-lt v2, v3, :cond_4

    .line 485
    iput v7, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->index:I

    .line 488
    :cond_4
    iget v2, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->index:I

    if-eq v2, v7, :cond_6

    .line 489
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$800(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    iget v3, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->index:I

    invoke-virtual {v2, v3}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    iput-object v2, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/zui/gallery/data/MediaSet;

    .line 490
    iget-object v2, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/zui/gallery/data/MediaSet;

    if-nez v2, :cond_5

    goto :goto_2

    .line 492
    :cond_5
    iget-object v2, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object v2

    iput-object v2, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->cover:Lcom/zui/gallery/data/MediaItem;

    .line 493
    iget-object v2, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/data/MediaSet;->getCoverMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v1

    iput-object v1, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->cover2:Lcom/zui/gallery/data/MediaItem;

    .line 494
    iget-object v1, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/zui/gallery/data/MediaSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaSet;->getCoverMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v1

    iput-object v1, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->cover3:Lcom/zui/gallery/data/MediaItem;

    .line 495
    iget-object v1, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getTotalMediaItemCount()I

    move-result v1

    iput v1, v4, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;->totalCount:I

    .line 498
    :cond_6
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    new-instance v2, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumSetDataLoader;

    invoke-direct {v2, v3, v4}, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;-><init>(Lcom/zui/gallery/app/AlbumSetDataLoader;Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;)V

    invoke-static {v1, v2}, Lcom/zui/gallery/app/AlbumSetDataLoader;->access$2300(Lcom/zui/gallery/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    :goto_2
    move v1, v5

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 468
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 500
    :cond_7
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 501
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedSwitch"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 3

    monitor-enter p0

    .line 511
    :try_start_0
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedSwitch"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 512
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    .line 513
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
