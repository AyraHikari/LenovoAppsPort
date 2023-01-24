.class Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mFirsLoading:Z

.field private mIsLoading:Z

.field final synthetic this$0:Lcom/zui/gallery/app/AlbumDataLoader;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/AlbumDataLoader;)V
    .locals 1

    .line 420
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 422
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->mActive:Z

    .line 423
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->mDirty:Z

    const/4 v0, 0x0

    .line 424
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->mIsLoading:Z

    .line 426
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->mFirsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/AlbumDataLoader;Lcom/zui/gallery/app/AlbumDataLoader$1;)V
    .locals 0

    .line 420
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;-><init>(Lcom/zui/gallery/app/AlbumDataLoader;)V

    return-void
.end method

.method private executeDirectly(J)Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;
    .locals 7

    .line 437
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumDataLoader;->access$200(Lcom/zui/gallery/app/AlbumDataLoader;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 441
    :cond_0
    new-instance v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;

    invoke-direct {v0, v1}, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;-><init>(Lcom/zui/gallery/app/AlbumDataLoader$1;)V

    .line 442
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumDataLoader;->access$700(Lcom/zui/gallery/app/AlbumDataLoader;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->version:J

    .line 443
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumDataLoader;->access$800(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->size:I

    .line 444
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumDataLoader;->access$900(Lcom/zui/gallery/app/AlbumDataLoader;)[J

    move-result-object v2

    .line 445
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1900(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v3

    instance-of v3, v3, Lcom/zui/gallery/data/LocalMergeAllAlbum;

    if-eqz v3, :cond_1

    .line 446
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1900(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/LocalMergeAllAlbum;

    invoke-virtual {v3}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->getAllAlbums()[Lcom/zui/gallery/data/MediaSet;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    .line 451
    :cond_1
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1000(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v3

    iget-object v4, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v4}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1100(Lcom/zui/gallery/app/AlbumDataLoader;)I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_3

    .line 452
    rem-int/lit16 v5, v3, 0x3e8

    .line 453
    aget-wide v5, v2, v5

    cmp-long v5, v5, p1

    if-eqz v5, :cond_2

    .line 454
    iput v3, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    const/16 p1, 0x20

    sub-int/2addr v4, v3

    .line 455
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    return-object v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 459
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumDataLoader;->access$700(Lcom/zui/gallery/app/AlbumDataLoader;)J

    move-result-wide v2

    cmp-long p1, v2, p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method private judgeContinuousElement(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 545
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 546
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaObject;

    if-eqz v1, :cond_0

    .line 548
    instance-of v2, v1, Lcom/zui/gallery/data/MediaSet;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 549
    iput-boolean v2, v1, Lcom/zui/gallery/data/MediaObject;->isContinuousCover:Z

    .line 550
    move-object v2, v1

    check-cast v2, Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v2

    iput v2, v1, Lcom/zui/gallery/data/MediaObject;->continuousCount:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateLoading(Z)V
    .locals 1

    .line 430
    iget-boolean v0, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 431
    :cond_0
    iput-boolean p1, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->mIsLoading:Z

    .line 432
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1800(Lcom/zui/gallery/app/AlbumDataLoader;)Landroid/os/Handler;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method convertFromMediaItemToMediaObject(Lcom/zui/gallery/data/MediaSet;Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/data/MediaSet;",
            "Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaObject;",
            ">;"
        }
    .end annotation

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    iget v1, p2, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    iget p2, p2, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    invoke-virtual {p1, v1, p2}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    .line 537
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 538
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaObject;

    .line 539
    check-cast v1, Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized notifyDirty()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 524
    :try_start_0
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->mDirty:Z

    .line 525
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 7

    const/16 v0, 0xa

    .line 464
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 466
    :goto_0
    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->mActive:Z

    if-eqz v2, :cond_8

    .line 467
    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->mActive:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->mDirty:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 468
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1900(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->isLoading()Z

    move-result v2

    if-nez v2, :cond_0

    .line 469
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->updateLoading(Z)V

    .line 471
    :cond_0
    monitor-enter p0

    .line 472
    :try_start_0
    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->mActive:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->mDirty:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 475
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumDataLoader;->access$200(Lcom/zui/gallery/app/AlbumDataLoader;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const-string v2, "AlbumDataAdapter"

    const-string v3, "reload pause"

    .line 476
    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_1
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->mFirsLoading:Z

    .line 481
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 482
    iget-boolean v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->mActive:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumDataLoader;->access$200(Lcom/zui/gallery/app/AlbumDataLoader;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-string v2, "AlbumDataAdapter"

    const-string v3, "reload resume"

    .line 483
    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 488
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->mDirty:Z

    const/4 v1, 0x1

    .line 490
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->updateLoading(Z)V

    .line 491
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1900(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->reload()J

    move-result-wide v2

    .line 496
    invoke-direct {p0, v2, v3}, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->executeDirectly(J)Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_5

    goto :goto_0

    .line 503
    :cond_5
    iget-wide v5, v4, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->version:J

    cmp-long v5, v5, v2

    if-eqz v5, :cond_6

    .line 504
    iget-object v5, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v5}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1900(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v5

    iput v5, v4, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->size:I

    .line 505
    iput-wide v2, v4, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->version:J

    .line 507
    :cond_6
    iget v2, v4, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    if-lez v2, :cond_7

    .line 515
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumDataLoader;->access$1900(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    iget v3, v4, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    iget v5, v4, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    invoke-virtual {v2, v3, v5}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v4, Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 518
    :cond_7
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    new-instance v3, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;

    iget-object v5, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-direct {v3, v5, v4}, Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;-><init>(Lcom/zui/gallery/app/AlbumDataLoader;Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;)V

    invoke-static {v2, v3}, Lcom/zui/gallery/app/AlbumDataLoader;->access$2000(Lcom/zui/gallery/app/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 488
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 520
    :cond_8
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->updateLoading(Z)V

    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 529
    :try_start_0
    iput-boolean v0, p0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->mActive:Z

    .line 530
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
