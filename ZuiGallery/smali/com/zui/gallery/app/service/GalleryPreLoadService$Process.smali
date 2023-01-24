.class Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;
.super Ljava/lang/Object;
.source "GalleryPreLoadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/service/GalleryPreLoadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Process"
.end annotation


# instance fields
.field private bigData:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/zui/gallery/data/LocalMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private distributeThreadPool:Ljava/util/concurrent/ExecutorService;

.field private jc:Lcom/zui/gallery/util/ThreadPool$JobContext;

.field private loadDataTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private newTaskData:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private obj:Ljava/lang/Object;

.field private paused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private smallData:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/zui/gallery/data/LocalMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

.field private threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/service/GalleryPreLoadService;)V
    .locals 1

    .line 191
    iput-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 182
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 183
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->loadDataTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 189
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->obj:Ljava/lang/Object;

    .line 192
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->smallData:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 193
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->bigData:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 194
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->newTaskData:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 195
    invoke-direct {p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->getJobContext()Lcom/zui/gallery/util/ThreadPool$JobContext;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->stop()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Z
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->checkStop()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->checkNeedPause()V

    return-void
.end method

.method static synthetic access$1200(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;[Lcom/zui/gallery/data/BucketHelper$BucketEntry;)Ljava/util/List;
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->priorityBucketEntry([Lcom/zui/gallery/data/BucketHelper$BucketEntry;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;Landroid/database/Cursor;Z)Lcom/zui/gallery/data/LocalMediaItem;
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->buildMediaItem(Landroid/database/Cursor;Z)Lcom/zui/gallery/data/LocalMediaItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->smallData:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->bigData:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->loadDataTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;Landroid/net/Uri;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->addNewTask(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->newTaskData:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->pause()V

    return-void
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->resume()V

    return-void
.end method

.method static synthetic access$800(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Lcom/zui/gallery/util/ThreadPool$JobContext;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->jc:Lcom/zui/gallery/util/ThreadPool$JobContext;

    return-object p0
.end method

.method private declared-synchronized addNewTask(Landroid/net/Uri;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "GalleryPreLoadService"

    const-string v1, "add new task"

    .line 330
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->newTaskData:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 335
    iget-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "GalleryPreLoadService"

    const-string v1, "current task is running but pasued need resume"

    .line 336
    invoke-static {p1, v1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 338
    iget-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->obj:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 339
    :try_start_1
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 340
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_0
    const-string p1, "GalleryPreLoadService"

    const-string/jumbo v0, "task is running"

    .line 342
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_1
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->startTask(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 348
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private buildMediaItem(Landroid/database/Cursor;Z)Lcom/zui/gallery/data/LocalMediaItem;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 418
    invoke-static {v0}, Lcom/zui/gallery/data/LocalImage;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object v1

    goto :goto_0

    .line 420
    :cond_0
    invoke-static {v0}, Lcom/zui/gallery/data/LocalVideo;->getItemPath(I)Lcom/zui/gallery/data/Path;

    move-result-object v1

    .line 422
    :goto_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lcom/zui/gallery/data/Path;->getObject()Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 424
    invoke-virtual {v0}, Lcom/zui/gallery/data/Path;->getObject()Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/LocalMediaItem;

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    const-string p2, "kugoubug"

    const-string v1, "5"

    .line 427
    invoke-static {p2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance p2, Lcom/zui/gallery/data/LocalImage;

    iget-object v1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-static {v1}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$500(Lcom/zui/gallery/app/service/GalleryPreLoadService;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/zui/gallery/data/LocalImage;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_1

    .line 430
    :cond_2
    new-instance p2, Lcom/zui/gallery/data/LocalVideo;

    iget-object v1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-static {v1}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$500(Lcom/zui/gallery/app/service/GalleryPreLoadService;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/zui/gallery/data/LocalVideo;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    :goto_1
    move-object p1, p2

    :goto_2
    return-object p1
.end method

.method private checkNeedPause()V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->obj:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "GalleryPreLoadService"

    const-string/jumbo v2, "thread need pause"

    .line 444
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "GalleryPreLoadService"

    const-string/jumbo v2, "thread pause interrupted"

    .line 447
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "GalleryPreLoadService"

    const-string/jumbo v2, "thread pause resume "

    .line 451
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private checkStop()Z
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private circularShiftRight([Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    .line 384
    aget-object v0, p1, p3

    :goto_0
    if-le p3, p2, :cond_0

    add-int/lit8 v1, p3, -0x1

    .line 386
    aget-object v1, p1, v1

    aput-object v1, p1, p3

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 388
    :cond_0
    aput-object v0, p1, p2

    return-void
.end method

.method private findBucket([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I
    .locals 3

    .line 376
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 377
    aget-object v2, p1, v1

    iget v2, v2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v2, p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private declared-synchronized getJobContext()Lcom/zui/gallery/util/ThreadPool$JobContext;
    .locals 1

    monitor-enter p0

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->jc:Lcom/zui/gallery/util/ThreadPool$JobContext;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$1;-><init>(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V

    iput-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->jc:Lcom/zui/gallery/util/ThreadPool$JobContext;

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->jc:Lcom/zui/gallery/util/ThreadPool$JobContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initDataSource()V
    .locals 3

    const-string v0, "GalleryPreLoadService"

    const-string/jumbo v1, "start init dataSource"

    .line 199
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-static {v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$500(Lcom/zui/gallery/app/service/GalleryPreLoadService;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-static {v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$500(Lcom/zui/gallery/app/service/GalleryPreLoadService;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    const/16 v1, 0xa

    .line 202
    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v1}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v1

    .line 204
    sget v2, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->reload()J

    :cond_0
    return-void
.end method

.method private loadMediaItem()Ljava/lang/Runnable;
    .locals 1

    .line 456
    new-instance v0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$2;-><init>(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V

    return-object v0
.end method

.method private newTask()Ljava/lang/Runnable;
    .locals 1

    .line 599
    new-instance v0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$4;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$4;-><init>(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V

    return-object v0
.end method

.method private parserMeditItem(I)Ljava/lang/Runnable;
    .locals 1

    .line 566
    new-instance v0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$3;

    invoke-direct {v0, p0, p1}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$3;-><init>(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;I)V

    return-object v0
.end method

.method private pause()V
    .locals 3

    const-string v0, "GalleryPreLoadService"

    const-string v1, "pause task"

    .line 301
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_0
    return-void
.end method

.method private priorityBucketEntry([Lcom/zui/gallery/data/BucketHelper$BucketEntry;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/zui/gallery/data/BucketHelper$BucketEntry;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/BucketHelper$BucketEntry;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-direct {p0, p1, v1}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->findBucket([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 362
    invoke-direct {p0, p1, v3, v1}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->circularShiftRight([Ljava/lang/Object;II)V

    const/4 v3, 0x1

    .line 364
    :cond_0
    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    invoke-direct {p0, p1, v1}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->findBucket([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v1

    if-eq v1, v2, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 366
    invoke-direct {p0, p1, v3, v1}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->circularShiftRight([Ljava/lang/Object;II)V

    move v3, v4

    .line 368
    :cond_1
    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    invoke-direct {p0, p1, v1}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->findBucket([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 370
    invoke-direct {p0, p1, v3, v1}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->circularShiftRight([Ljava/lang/Object;II)V

    :cond_2
    return-object v0
.end method

.method private resume()V
    .locals 6

    const-string v0, "GalleryPreLoadService"

    const-string v1, "resume task"

    .line 308
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 311
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->obj:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-object v2, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 313
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->smallData:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    .line 316
    iget-object v2, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->bigData:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    const-string v3, "GalleryPreLoadService"

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "smalldata size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bigdata size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 318
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-static {v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$700(Lcom/zui/gallery/app/service/GalleryPreLoadService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-direct {p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->stop()V

    .line 322
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->startTask(Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 313
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 325
    :cond_0
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->startTask(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized start()V
    .locals 4

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "GalleryPreLoadService"

    const-string v3, "current is running but pasued need resume"

    .line 245
    invoke-static {v0, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 247
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->obj:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 248
    :try_start_1
    iget-object v1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->loadDataTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-static {v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$700(Lcom/zui/gallery/app/service/GalleryPreLoadService;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GalleryPreLoadService"

    const-string/jumbo v3, "start loadDataTask"

    .line 252
    invoke-static {v0, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->loadDataTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 254
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->loadMediaItem()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_1
    const-string v0, "GalleryPreLoadService"

    const-string/jumbo v1, "task is running"

    .line 256
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :cond_2
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->startTask(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 262
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startTask(Z)V
    .locals 4

    const/4 v0, 0x4

    .line 215
    :try_start_0
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->threadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    .line 216
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->distributeThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 218
    iget-object v1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 219
    iget-object v1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 221
    iget-object v1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->obj:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :try_start_1
    iget-object v3, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 223
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :try_start_2
    iget-object v1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->threadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->parserMeditItem(I)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 227
    iget-object v1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-static {v1}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$600(Lcom/zui/gallery/app/service/GalleryPreLoadService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->parserMeditItem(I)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->distributeThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->newTask()Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    if-eqz p1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-static {p1}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$700(Lcom/zui/gallery/app/service/GalleryPreLoadService;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->initDataSource()V

    .line 234
    iget-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->loadDataTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 235
    iget-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->loadMediaItem()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 223
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "GalleryPreLoadService"

    const-string/jumbo v1, "startTask exception "

    .line 238
    invoke-static {v0, v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->loadDataTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->loadDataTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->obj:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 278
    :try_start_1
    iget-object v1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 279
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :try_start_2
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->smallData:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->smallData:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->bigData:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_4

    .line 285
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->bigData:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 287
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->newTaskData:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_5

    .line 288
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->newTaskData:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 290
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->threadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_6

    .line 291
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 293
    :cond_6
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->distributeThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_7

    .line 294
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->distributeThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 296
    :cond_7
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-virtual {v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->closeImageCacheService()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 298
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 279
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
