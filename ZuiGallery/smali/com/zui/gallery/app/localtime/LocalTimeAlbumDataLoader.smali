.class public Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;
.super Ljava/lang/Object;
.source "LocalTimeAlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;,
        Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateContent;,
        Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$GetUpdateInfo;,
        Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;,
        Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$MySourceListener;,
        Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$LocalTimeAlbumLoadingListener;,
        Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$DataListener;
    }
.end annotation


# static fields
.field private static final DATA_CACHE_SIZE:I = 0x3e8

.field private static final GL_ANIMATION_STATUS_IDLE_RUNNING:I = 0x2

.field private static final GL_ANIMATION_STATUS_NONE:I = 0x0

.field private static final GL_ANIMATION_STATUS_WAIT_DONE:I = 0x1

.field private static final MAX_LOAD_COUNT:I = 0xc0

.field private static final MAX_LOAD_COUNT_LEVEL0:I = 0xc0

.field private static final MAX_LOAD_COUNT_LEVEL1:I = 0xc0

.field private static final MIN_LOAD_COUNT:I = 0xc0

.field private static final MIN_LOAD_COUNT_LEVEL0:I = 0xc

.field private static final MIN_LOAD_COUNT_LEVEL1:I = 0xc0

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LocalTimeAlbumDataLoader"


# instance fields
.field private LOCAL:Ljava/util/Locale;

.field private mActiveEnd:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mCoverItem:[Lcom/zui/gallery/data/MediaItem;

.field private final mData:[Lcom/zui/gallery/data/MediaItem;

.field private mDataListener:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$DataListener;

.field private mFailedVersion:J

.field private volatile mGlAnimationStatus:I

.field private final mItemVersion:[J

.field private mLoadingListener:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$LocalTimeAlbumLoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mReloadTask:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;

.field private final mSetVersion:[J

.field private mSize:I

.field private final mSource:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

.field private mSourceListener:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$MySourceListener;

.field private mSourceVersion:J

.field private mTimeEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mTotalCount:[I

.field private volatile mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

.field private volatile somethingHasChanged:Z


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaSet;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)V
    .locals 5

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mActiveStart:I

    .line 91
    iput v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mActiveEnd:I

    .line 93
    iput v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mContentStart:I

    .line 94
    iput v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mContentEnd:I

    const-wide/16 v1, -0x1

    .line 97
    iput-wide v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSourceVersion:J

    .line 100
    iput v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSize:I

    .line 103
    new-instance v3, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$MySourceListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$MySourceListener;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$1;)V

    iput-object v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSourceListener:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$MySourceListener;

    .line 108
    iput-wide v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mFailedVersion:J

    .line 114
    iput-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->somethingHasChanged:Z

    .line 312
    iput v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mGlAnimationStatus:I

    .line 119
    check-cast p2, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    iput-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSource:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    const/16 p2, 0x3e8

    new-array v0, p2, [Lcom/zui/gallery/data/MediaItem;

    .line 121
    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mData:[Lcom/zui/gallery/data/MediaItem;

    new-array v0, p2, [J

    .line 122
    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mItemVersion:[J

    new-array v3, p2, [J

    .line 123
    iput-object v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSetVersion:[J

    new-array v3, p2, [Lcom/zui/gallery/data/MediaItem;

    .line 124
    iput-object v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mCoverItem:[Lcom/zui/gallery/data/MediaItem;

    new-array p2, p2, [I

    .line 125
    iput-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mTotalCount:[I

    .line 126
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 127
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSetVersion:[J

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 129
    new-instance p2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$1;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$1;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    .line 163
    iput-object p3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    .line 164
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->LOCAL:Ljava/util/Locale;

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$LocalTimeAlbumLoadingListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mLoadingListener:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$LocalTimeAlbumLoadingListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSize:I

    return p0
.end method

.method static synthetic access$1002(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSize:I

    return p1
.end method

.method static synthetic access$1100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)[J
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSetVersion:[J

    return-object p0
.end method

.method static synthetic access$1200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mContentStart:I

    return p0
.end method

.method static synthetic access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mContentEnd:I

    return p0
.end method

.method static synthetic access$1302(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mContentEnd:I

    return p1
.end method

.method static synthetic access$1400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->somethingHasChanged:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->somethingHasChanged:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mTimeEntries:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mTimeEntries:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$DataListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mDataListener:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$DataListener;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mActiveEnd:I

    return p0
.end method

.method static synthetic access$1702(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$1800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)[J
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mItemVersion:[J

    return-object p0
.end method

.method static synthetic access$1900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)[Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mData:[Lcom/zui/gallery/data/MediaItem;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mFailedVersion:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mActiveStart:I

    return p0
.end method

.method static synthetic access$202(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;J)J
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mFailedVersion:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mGlAnimationStatus:I

    return p0
.end method

.method static synthetic access$402(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mGlAnimationStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mReloadTask:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSource:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;J)J
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSourceVersion:J

    return-wide p1
.end method

.method private clearSlot(I)V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mData:[Lcom/zui/gallery/data/MediaItem;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 248
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mItemVersion:[J

    const-wide/16 v1, -0x1

    aput-wide v1, v0, p1

    .line 249
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSetVersion:[J

    aput-wide v1, v0, p1

    return-void
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 359
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 360
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 359
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 362
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 366
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private setContentWindow(II)V
    .locals 4

    .line 253
    iget v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mContentStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mContentEnd:I

    if-ne p2, v0, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GalleryCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+ start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mContentEnd:I

    .line 257
    iget v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mContentStart:I

    .line 260
    monitor-enter p0

    .line 261
    :try_start_0
    iput p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mContentStart:I

    .line 262
    iput p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mContentEnd:I

    .line 263
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v0, :cond_3

    if-lt v1, p2, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    if-ge v1, p1, :cond_2

    .line 272
    rem-int/lit16 v2, v1, 0x3e8

    invoke-direct {p0, v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->clearSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge p2, v0, :cond_4

    .line 275
    rem-int/lit16 p1, p2, 0x3e8

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->clearSlot(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v1, v0, :cond_4

    .line 268
    rem-int/lit16 p1, v1, 0x3e8

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->clearSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 278
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mReloadTask:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;

    if-eqz p1, :cond_5

    .line 279
    invoke-virtual {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->notifyDirty()V

    .line 280
    :cond_5
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object p1

    const-string p2, "GalleryCache"

    const-string v0, "-"

    invoke-virtual {p1, p2, v0}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 263
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public findItem(Lcom/zui/gallery/data/Path;)I
    .locals 3

    .line 237
    iget v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mContentStart:I

    :goto_0
    iget v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mContentEnd:I

    if-ge v0, v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mData:[Lcom/zui/gallery/data/MediaItem;

    rem-int/lit16 v2, v0, 0x3e8

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaObject;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public get(I)Lcom/zui/gallery/data/MediaItem;
    .locals 3

    .line 191
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSource:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaItem;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :goto_0
    return-object v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mData:[Lcom/zui/gallery/data/MediaItem;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getActiveStart()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mActiveStart:I

    return v0
.end method

.method public getAll(IILcom/zui/gallery/ui/SelectionManager;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/zui/gallery/ui/SelectionManager;",
            ")",
            "Ljava/util/Set<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation

    .line 208
    :try_start_0
    iget-object p3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSource:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    invoke-virtual {p3, p1, p2}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 209
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 210
    new-instance p2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashSet;-><init>(I)V

    .line 211
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/gallery/data/MediaItem;

    .line 212
    invoke-virtual {p3}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object p2

    :catch_0
    move-exception p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCover(I)Lcom/zui/gallery/data/MediaItem;
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mCoverItem:[Lcom/zui/gallery/data/MediaItem;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTotalCount(I)I
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mTotalCount:[I

    array-length v1, v0

    rem-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method

.method public getViewModel()Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    return-object v0
.end method

.method public isActive(I)Z
    .locals 1

    .line 227
    iget v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public pause()V
    .locals 3

    .line 183
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedSwitch"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mReloadTask:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->terminate()V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mReloadTask:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;

    .line 186
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSource:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSourceListener:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$MySourceListener;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->removeContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 187
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetGLAnimatingStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 315
    iput v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mGlAnimationStatus:I

    return-void
.end method

.method public resume()V
    .locals 3

    .line 168
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedSwitch"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 171
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->LOCAL:Ljava/util/Locale;

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    .line 172
    iput-boolean v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->somethingHasChanged:Z

    .line 173
    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->LOCAL:Ljava/util/Locale;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSource:Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSourceListener:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$MySourceListener;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 177
    new-instance v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$1;)V

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mReloadTask:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;

    .line 178
    invoke-virtual {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->start()V

    .line 179
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setActiveWindow(II)V
    .locals 5

    .line 284
    iget v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mActiveStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mActiveEnd:I

    if-ne p2, v0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+ start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GalleryCache"

    invoke-virtual {v0, v2, v1}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-gt p1, p2, :cond_1

    sub-int v1, p2, p1

    .line 287
    iget-object v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mData:[Lcom/zui/gallery/data/MediaItem;

    array-length v3, v3

    if-gt v1, v3, :cond_1

    iget v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSize:I

    if-gt p2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 290
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mData:[Lcom/zui/gallery/data/MediaItem;

    array-length v1, v1

    .line 291
    iput p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mActiveStart:I

    .line 292
    iput p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mActiveEnd:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    add-int v3, p1, p2

    .line 298
    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSize:I

    sub-int/2addr v4, v1

    .line 299
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 298
    invoke-static {v3, v0, v4}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result v0

    add-int/2addr v1, v0

    .line 300
    iget v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSize:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 301
    iget v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mContentStart:I

    if-gt v3, p1, :cond_3

    iget p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mContentEnd:I

    if-lt p1, p2, :cond_3

    sub-int p1, v0, v3

    .line 302
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 p2, 0xc0

    if-le p1, p2, :cond_4

    .line 303
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->setContentWindow(II)V

    .line 305
    :cond_4
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, v2, p2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDataListener(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$DataListener;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mDataListener:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$DataListener;

    return-void
.end method

.method public setGlAnimating(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 321
    iput p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mGlAnimationStatus:I

    return-void

    .line 325
    :cond_0
    iget p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mGlAnimationStatus:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 326
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mReloadTask:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;

    if-eqz p1, :cond_1

    .line 327
    invoke-virtual {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->notifyDirty()V

    :cond_1
    const/4 p1, 0x0

    .line 329
    iput p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mGlAnimationStatus:I

    return-void
.end method

.method public setLoadingListener(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$LocalTimeAlbumLoadingListener;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mLoadingListener:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$LocalTimeAlbumLoadingListener;

    return-void
.end method

.method public size()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSize:I

    return v0
.end method

.method public updateLocalTimeAlbumViewModel(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 664
    iput-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->somethingHasChanged:Z

    .line 665
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    const-wide/16 v0, -0x1

    .line 666
    iput-wide v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mSourceVersion:J

    .line 667
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->mReloadTask:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;

    if-eqz p1, :cond_1

    .line 668
    invoke-virtual {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$ReloadTask;->notifyDirty()V

    :cond_1
    :goto_0
    return-void
.end method
