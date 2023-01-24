.class Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;
.super Ljava/lang/Thread;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoDataAdapter;
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

.field final synthetic this$0:Lcom/zui/gallery/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/PhotoDataAdapter;)V
    .locals 1

    .line 1299
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 1300
    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    .line 1301
    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    const/4 v0, 0x0

    .line 1302
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    .line 1305
    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->mFirsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/app/PhotoDataAdapter$1;)V
    .locals 0

    .line 1299
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter;)V

    return-void
.end method

.method private executeDirectly()Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;
    .locals 3

    .line 1316
    new-instance v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter$1;)V

    .line 1317
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1900(Lcom/zui/gallery/app/PhotoDataAdapter;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->version:J

    const/4 v1, 0x1

    .line 1318
    iput-boolean v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    .line 1319
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1700(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/data/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/zui/gallery/data/Path;

    .line 1320
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1600(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1321
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1300(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    .line 1322
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1400(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    .line 1323
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2000(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->size:I

    return-object v0
.end method

.method private findCurrentMediaItem(Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;)Lcom/zui/gallery/data/MediaItem;
    .locals 2

    .line 1458
    iget-object v0, p1, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1459
    iget v1, p1, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    iget p1, p1, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int/2addr v1, p1

    if-ltz v1, :cond_1

    .line 1460
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaItem;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private findIndexOfPathInCache(Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;Lcom/zui/gallery/data/Path;)I
    .locals 4

    .line 1478
    iget-object v0, p1, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1479
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1480
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/MediaObject;

    if-eqz v3, :cond_0

    .line 1481
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaObject;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 1482
    iget p1, p1, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    add-int/2addr v2, p1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private findIndexOfTarget(Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;)I
    .locals 2

    .line 1464
    iget-object v0, p1, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/zui/gallery/data/Path;

    if-nez v0, :cond_0

    iget p1, p1, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    return p1

    .line 1465
    :cond_0
    iget-object v0, p1, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1469
    iget-object v0, p1, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/zui/gallery/data/Path;

    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->findIndexOfPathInCache(Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;Lcom/zui/gallery/data/Path;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return v0

    .line 1474
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$3000(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    iget-object v1, p1, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/zui/gallery/data/Path;

    iget p1, p1, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/data/MediaSet;->getIndexOfItem(Lcom/zui/gallery/data/Path;I)I

    move-result p1

    return p1
.end method

.method private updateLoading(Z)V
    .locals 1

    .line 1310
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1311
    :cond_0
    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->mIsLoading:Z

    .line 1312
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$900(Lcom/zui/gallery/app/PhotoDataAdapter;)Landroid/os/Handler;

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
.method convertMediaItemFromMediaObject(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaObject;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 1500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1501
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1502
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/MediaObject;

    .line 1503
    instance-of v3, v2, Lcom/zui/gallery/data/MediaItem;

    if-eqz v3, :cond_0

    .line 1504
    check-cast v2, Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1506
    :cond_0
    check-cast v2, Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method convertMediaObjectFromMediaItem(Lcom/zui/gallery/data/MediaSet;Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/data/MediaSet;",
            "Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaObject;",
            ">;"
        }
    .end annotation

    .line 1489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1490
    iget v1, p2, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget v2, p2, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    iget v3, p2, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    .line 1491
    iget v1, p2, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget v2, p2, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    iget p2, p2, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int/2addr v2, p2

    invoke-virtual {p1, v1, v2}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    .line 1492
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 1493
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaObject;

    .line 1494
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

    .line 1448
    :try_start_0
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 1449
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    .line 1332
    :goto_0
    iget-boolean v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    if-eqz v3, :cond_e

    .line 1333
    monitor-enter p0

    .line 1334
    :try_start_0
    iget-boolean v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    .line 1337
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 1340
    :cond_0
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->mFirsLoading:Z

    .line 1341
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 1347
    monitor-exit p0

    goto :goto_0

    .line 1349
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->mDirty:Z

    .line 1353
    iget-boolean v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->mFirsLoading:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 1354
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->executeDirectly()Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;

    move-result-object v3

    goto :goto_1

    .line 1356
    :cond_2
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    new-instance v5, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;

    iget-object v6, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-direct {v5, v6, v4}, Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/app/PhotoDataAdapter$1;)V

    invoke-static {v3, v5}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2900(Lcom/zui/gallery/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;

    .line 1360
    :goto_1
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 1361
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$3000(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->reload()J

    move-result-wide v5

    .line 1362
    iget-object v7, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v7}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$3000(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v7

    instance-of v7, v7, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    if-eqz v7, :cond_4

    .line 1364
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v2}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$3000(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    sget-object v7, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    invoke-virtual {v2, v7}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getTimeEntry(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    .line 1372
    :cond_4
    iget-wide v7, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->version:J

    cmp-long v5, v7, v5

    const/4 v6, -0x1

    if-eqz v5, :cond_5

    .line 1373
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v5, v6}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2402(Lcom/zui/gallery/app/PhotoDataAdapter;I)I

    .line 1374
    iput-boolean v1, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    .line 1375
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$3000(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v5

    iput v5, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->size:I

    .line 1378
    :cond_5
    iget-boolean v5, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    if-nez v5, :cond_6

    goto :goto_0

    .line 1388
    :cond_6
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$3000(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v5

    iget v7, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    iget v8, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    iget v9, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int/2addr v8, v9

    invoke-virtual {v5, v7, v8}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1390
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1600(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v5

    iput v5, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1391
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$1700(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/data/Path;

    move-result-object v5

    iput-object v5, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/zui/gallery/data/Path;

    .line 1397
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$3100(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/data/Path;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1398
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$3100(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/data/Path;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->findIndexOfPathInCache(Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;Lcom/zui/gallery/data/Path;)I

    move-result v5

    .line 1399
    iget-object v7, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v7, v4}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$3102(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/Path;

    goto :goto_2

    :cond_7
    move v5, v6

    :goto_2
    if-ne v5, v6, :cond_9

    .line 1404
    invoke-direct {p0, v3}, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->findCurrentMediaItem(Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1405
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v4

    iget-object v5, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/zui/gallery/data/Path;

    if-ne v4, v5, :cond_8

    .line 1406
    iget v5, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    goto :goto_3

    .line 1408
    :cond_8
    invoke-direct {p0, v3}, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->findIndexOfTarget(Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;)I

    move-result v5

    :cond_9
    :goto_3
    if-ne v5, v6, :cond_b

    .line 1420
    iget v5, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1421
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v4}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$3200(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v4

    .line 1422
    iget-object v6, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$3300(Lcom/zui/gallery/app/PhotoDataAdapter;)I

    move-result v6

    add-int/2addr v6, v1

    if-ne v5, v6, :cond_a

    move v4, v0

    :cond_a
    if-ne v4, v1, :cond_b

    if-lez v5, :cond_b

    add-int/lit8 v5, v5, -0x1

    .line 1436
    :cond_b
    iput v5, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1438
    iget v4, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    iget v5, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->size:I

    if-lt v4, v5, :cond_d

    .line 1439
    iget v4, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->size:I

    if-lez v4, :cond_c

    iget v4, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->size:I

    sub-int/2addr v4, v1

    goto :goto_4

    :cond_c
    move v4, v0

    :goto_4
    iput v4, v3, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1442
    :cond_d
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    new-instance v5, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;

    iget-object v6, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-direct {v5, v6, v3}, Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;)V

    invoke-static {v4, v5}, Lcom/zui/gallery/app/PhotoDataAdapter;->access$2900(Lcom/zui/gallery/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 1349
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1444
    :cond_e
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedDetail"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1453
    :try_start_0
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->mActive:Z

    .line 1454
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1455
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
