.class public Lcom/zui/gallery/data/DownloadCache$TaskProxy;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskProxy"
.end annotation


# instance fields
.field private mEntry:Lcom/zui/gallery/data/DownloadCache$Entry;

.field private mIsCancelled:Z

.field private mTask:Lcom/zui/gallery/data/DownloadCache$DownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lcom/zui/gallery/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/data/DownloadCache$TaskProxy;)Lcom/zui/gallery/data/DownloadCache$DownloadTask;
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/zui/gallery/data/DownloadCache$TaskProxy;->mTask:Lcom/zui/gallery/data/DownloadCache$DownloadTask;

    return-object p0
.end method

.method static synthetic access$302(Lcom/zui/gallery/data/DownloadCache$TaskProxy;Lcom/zui/gallery/data/DownloadCache$DownloadTask;)Lcom/zui/gallery/data/DownloadCache$DownloadTask;
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/zui/gallery/data/DownloadCache$TaskProxy;->mTask:Lcom/zui/gallery/data/DownloadCache$DownloadTask;

    return-object p1
.end method

.method static synthetic access$702(Lcom/zui/gallery/data/DownloadCache$TaskProxy;Z)Z
    .locals 0

    .line 338
    iput-boolean p1, p0, Lcom/zui/gallery/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized get(Lcom/zui/gallery/util/ThreadPool$JobContext;)Lcom/zui/gallery/data/DownloadCache$Entry;
    .locals 3

    monitor-enter p0

    .line 350
    :try_start_0
    new-instance v0, Lcom/zui/gallery/data/DownloadCache$TaskProxy$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/data/DownloadCache$TaskProxy$1;-><init>(Lcom/zui/gallery/data/DownloadCache$TaskProxy;)V

    invoke-interface {p1, v0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/zui/gallery/util/ThreadPool$CancelListener;)V

    .line 360
    :goto_0
    iget-boolean v0, p0, Lcom/zui/gallery/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/data/DownloadCache$TaskProxy;->mEntry:Lcom/zui/gallery/data/DownloadCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 362
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "DownloadCache"

    const-string v2, "ignore interrupt"

    .line 364
    invoke-static {v1, v2, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 367
    invoke-interface {p1, v0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/zui/gallery/util/ThreadPool$CancelListener;)V

    .line 368
    iget-object p1, p0, Lcom/zui/gallery/data/DownloadCache$TaskProxy;->mEntry:Lcom/zui/gallery/data/DownloadCache$Entry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setResult(Lcom/zui/gallery/data/DownloadCache$Entry;)V
    .locals 1

    monitor-enter p0

    .line 344
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/data/DownloadCache$TaskProxy;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 345
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/zui/gallery/data/DownloadCache$TaskProxy;->mEntry:Lcom/zui/gallery/data/DownloadCache$Entry;

    .line 346
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
