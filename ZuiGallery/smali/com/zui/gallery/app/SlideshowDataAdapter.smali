.class public Lcom/zui/gallery/app/SlideshowDataAdapter;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcom/zui/gallery/app/SlideshowPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/SlideshowDataAdapter$SourceListener;,
        Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;,
        Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;
    }
.end annotation


# static fields
.field private static final IMAGE_QUEUE_CAPACITY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SlideshowDataAdapter"


# instance fields
.field private mDataReady:Z

.field private mDataVersion:J

.field private final mImageQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/zui/gallery/app/SlideshowPage$Slide;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialPath:Lcom/zui/gallery/data/Path;

.field private mIsActive:Z

.field private mLoadIndex:I

.field private final mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNeedReset:Z

.field private mNextOutput:I

.field private mReloadTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mSource:Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;

.field private final mSourceListener:Lcom/zui/gallery/app/SlideshowDataAdapter$SourceListener;

.field private final mThreadPool:Lcom/zui/gallery/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/GalleryContext;Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;ILcom/zui/gallery/data/Path;)V
    .locals 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mLoadIndex:I

    .line 52
    iput v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mNextOutput:I

    .line 53
    iput-boolean v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mIsActive:Z

    .line 58
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    const-wide/16 v1, -0x1

    .line 63
    iput-wide v1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mDataVersion:J

    .line 64
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Lcom/zui/gallery/app/SlideshowDataAdapter$SourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/app/SlideshowDataAdapter$SourceListener;-><init>(Lcom/zui/gallery/app/SlideshowDataAdapter;Lcom/zui/gallery/app/SlideshowDataAdapter$1;)V

    iput-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mSourceListener:Lcom/zui/gallery/app/SlideshowDataAdapter$SourceListener;

    .line 70
    iput-object p2, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mSource:Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;

    .line 71
    iput-object p4, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mInitialPath:Lcom/zui/gallery/data/Path;

    .line 72
    iput p3, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mLoadIndex:I

    .line 73
    iput p3, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mNextOutput:I

    .line 74
    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryContext;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/SlideshowDataAdapter;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mIsActive:Z

    return p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/SlideshowDataAdapter;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mDataReady:Z

    return p0
.end method

.method static synthetic access$202(Lcom/zui/gallery/app/SlideshowDataAdapter;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mDataReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/SlideshowDataAdapter;)Ljava/util/LinkedList;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/SlideshowDataAdapter;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mNeedReset:Z

    return p0
.end method

.method static synthetic access$402(Lcom/zui/gallery/app/SlideshowDataAdapter;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mNeedReset:Z

    return p1
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/SlideshowDataAdapter;)Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/zui/gallery/app/SlideshowDataAdapter;->loadItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/SlideshowDataAdapter;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mLoadIndex:I

    return p0
.end method

.method static synthetic access$602(Lcom/zui/gallery/app/SlideshowDataAdapter;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mLoadIndex:I

    return p1
.end method

.method static synthetic access$604(Lcom/zui/gallery/app/SlideshowDataAdapter;)I
    .locals 1

    .line 35
    iget v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mLoadIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mLoadIndex:I

    return v0
.end method

.method static synthetic access$700(Lcom/zui/gallery/app/SlideshowDataAdapter;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mNextOutput:I

    return p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/app/SlideshowDataAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/app/SlideshowDataAdapter;)Lcom/zui/gallery/app/SlideshowPage$Slide;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/zui/gallery/app/SlideshowDataAdapter;->innerNextBitmap()Lcom/zui/gallery/app/SlideshowPage$Slide;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized innerNextBitmap()Lcom/zui/gallery/app/SlideshowPage$Slide;
    .locals 1

    monitor-enter p0

    .line 160
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mDataReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 162
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    :catch_0
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 168
    :cond_1
    :try_start_3
    iget v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mNextOutput:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mNextOutput:I

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 170
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/SlideshowPage$Slide;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadItem()Lcom/zui/gallery/data/MediaItem;
    .locals 7

    .line 78
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mSource:Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;

    invoke-interface {v0}, Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;->reload()J

    move-result-wide v3

    .line 80
    iget-wide v5, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mDataVersion:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    .line 81
    iput-wide v3, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mDataVersion:J

    .line 82
    iput-boolean v1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mNeedReset:Z

    return-object v2

    .line 86
    :cond_0
    iget v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mLoadIndex:I

    .line 87
    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mInitialPath:Lcom/zui/gallery/data/Path;

    if-eqz v1, :cond_1

    .line 88
    iget-object v3, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mSource:Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;

    invoke-interface {v3, v1, v0}, Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;->findItemIndex(Lcom/zui/gallery/data/Path;I)I

    move-result v0

    .line 89
    iput-object v2, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mInitialPath:Lcom/zui/gallery/data/Path;

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mSource:Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;

    invoke-interface {v1, v0}, Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public nextSlide(Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/FutureListener<",
            "Lcom/zui/gallery/app/SlideshowPage$Slide;",
            ">;)",
            "Lcom/zui/gallery/util/Future<",
            "Lcom/zui/gallery/app/SlideshowPage$Slide;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    new-instance v1, Lcom/zui/gallery/app/SlideshowDataAdapter$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/SlideshowDataAdapter$1;-><init>(Lcom/zui/gallery/app/SlideshowDataAdapter;)V

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .locals 2

    .line 186
    monitor-enter p0

    const/4 v0, 0x0

    .line 187
    :try_start_0
    iput-boolean v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mIsActive:Z

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 189
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mSource:Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;

    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mSourceListener:Lcom/zui/gallery/app/SlideshowDataAdapter$SourceListener;

    invoke-interface {v0, v1}, Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;->removeContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 191
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mReloadTask:Lcom/zui/gallery/util/Future;

    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 192
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mReloadTask:Lcom/zui/gallery/util/Future;

    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->waitDone()V

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mReloadTask:Lcom/zui/gallery/util/Future;

    return-void

    :catchall_0
    move-exception v0

    .line 189
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 198
    :try_start_0
    iput-boolean v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mIsActive:Z

    .line 199
    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mSource:Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;

    iget-object v2, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mSourceListener:Lcom/zui/gallery/app/SlideshowDataAdapter$SourceListener;

    invoke-interface {v1, v2}, Lcom/zui/gallery/app/SlideshowDataAdapter$SlideshowSource;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 200
    iget-object v1, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    iput-boolean v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mDataReady:Z

    .line 202
    iget-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    new-instance v1, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zui/gallery/app/SlideshowDataAdapter$ReloadTask;-><init>(Lcom/zui/gallery/app/SlideshowDataAdapter;Lcom/zui/gallery/app/SlideshowDataAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/SlideshowDataAdapter;->mReloadTask:Lcom/zui/gallery/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
