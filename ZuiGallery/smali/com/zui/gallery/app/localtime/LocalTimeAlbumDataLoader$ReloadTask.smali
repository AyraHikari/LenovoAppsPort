.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;
.super Ljava/lang/Thread;
.source "LocalTimeAlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;
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

.field final synthetic this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)V
    .locals 1

    .line 505
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 507
    iput-boolean p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->mActive:Z

    .line 508
    iput-boolean p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->mDirty:Z

    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->mIsLoading:Z

    .line 512
    iput-boolean p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->mFirsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$1;)V
    .locals 0

    .line 505
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)V

    return-void
.end method

.method private executeDirectly(J)Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;
    .locals 7

    .line 532
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getTimeEntry(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 541
    :cond_1
    new-instance v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;

    invoke-direct {v0, v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$1;)V

    .line 542
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->version:J

    .line 543
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v2

    iput v2, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->size:I

    .line 544
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)[J

    move-result-object v2

    .line 545
    iget-object v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v3

    iget-object v4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v4}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_3

    .line 546
    rem-int/lit16 v5, v3, 0x3e8

    .line 547
    aget-wide v5, v2, v5

    cmp-long v5, v5, p1

    if-eqz v5, :cond_2

    .line 548
    iput v3, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->reloadStart:I

    const/16 p1, 0xc0

    sub-int/2addr v4, v3

    .line 549
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->reloadCount:I

    return-object v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 555
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)J

    move-result-wide v2

    cmp-long p1, v2, p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method private updateLoading(Z)V
    .locals 3

    .line 517
    iget-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 519
    :cond_0
    iput-boolean p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->mIsLoading:Z

    .line 520
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$2100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Landroid/os/Handler;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 521
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GallerySpeedSwitch"

    invoke-virtual {v0, v1, p1}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .locals 3

    monitor-enter p0

    .line 640
    :try_start_0
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedSwitch"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 641
    iput-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->mDirty:Z

    .line 642
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 10

    const/16 v0, 0xa

    .line 560
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 563
    :goto_0
    iget-boolean v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->mActive:Z

    if-eqz v2, :cond_9

    .line 564
    monitor-enter p0

    .line 565
    :try_start_0
    iget-boolean v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->mActive:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->mDirty:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 568
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->updateLoading(Z)V

    .line 570
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-eqz v2, :cond_0

    const-string v2, "LocalTimeAlbumDataLoader"

    const-string v5, "reload pause"

    .line 571
    invoke-static {v2, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_1

    .line 575
    iput-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->mFirsLoading:Z

    .line 578
    :cond_1
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 579
    iget-boolean v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->mActive:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-eqz v2, :cond_2

    const-string v2, "LocalTimeAlbumDataLoader"

    const-string v3, "reload resume"

    .line 580
    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 584
    :cond_3
    iput-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->mDirty:Z

    .line 585
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    .line 588
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->updateLoading(Z)V

    .line 590
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->reload()J

    move-result-wide v5

    .line 601
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    new-instance v7, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;

    iget-object v8, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-direct {v7, v8, v5, v6}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;J)V

    invoke-static {v2, v7}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$2200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;

    if-nez v2, :cond_4

    move v7, v1

    goto :goto_1

    :cond_4
    move v7, v0

    :goto_1
    if-eqz v7, :cond_5

    goto :goto_2

    .line 607
    :cond_5
    monitor-enter p0

    .line 608
    :try_start_1
    iget-wide v8, v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->version:J

    cmp-long v8, v8, v5

    if-eqz v8, :cond_7

    .line 609
    iget-object v8, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v8}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getMediaItemCount()I

    move-result v8

    iput v8, v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->size:I

    .line 610
    iget-object v8, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v8}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    move-result-object v8

    iget-object v9, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v9}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getTimeEntry(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->timeEntries:Ljava/util/List;

    .line 614
    iget-wide v8, v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->version:J

    cmp-long v8, v8, v3

    if-gez v8, :cond_6

    cmp-long v3, v5, v3

    if-lez v3, :cond_6

    iget-boolean v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->mFirsLoading:Z

    if-ne v3, v1, :cond_6

    const/16 v1, 0xc0

    .line 615
    iput v1, v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->reloadCount:I

    .line 618
    :cond_6
    iput-wide v5, v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->version:J

    .line 620
    :cond_7
    iget v1, v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->reloadCount:I

    if-lez v1, :cond_8

    .line 621
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    move-result-object v1

    iget v3, v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->reloadStart:I

    iget v4, v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->reloadCount:I

    invoke-virtual {v1, v3, v4}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 622
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-static {v3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getTimeEntry(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;->timeEntries:Ljava/util/List;

    .line 624
    :cond_8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    new-instance v3, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;

    iget-object v4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-direct {v3, v4, v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;)V

    invoke-static {v1, v3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->access$2200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    :goto_2
    move v1, v7

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 624
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 585
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 636
    :cond_9
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

    .line 646
    :try_start_0
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedSwitch"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 647
    iput-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->mActive:Z

    .line 648
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
