.class public Lcom/zui/gallery/app/AlbumDataLoader;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;,
        Lcom/zui/gallery/app/AlbumDataLoader$UpdateContent;,
        Lcom/zui/gallery/app/AlbumDataLoader$GetUpdateInfo;,
        Lcom/zui/gallery/app/AlbumDataLoader$UpdateInfo;,
        Lcom/zui/gallery/app/AlbumDataLoader$MySourceListener;,
        Lcom/zui/gallery/app/AlbumDataLoader$DataListener;
    }
.end annotation


# static fields
.field private static final DATA_CACHE_SIZE:I = 0x3e8

.field private static final GL_ANIMATION_STATUS_IDLE_RUNNING:I = 0x2

.field private static final GL_ANIMATION_STATUS_NONE:I = 0x0

.field private static final GL_ANIMATION_STATUS_WAIT_DONE:I = 0x1

.field private static MAX_LOAD_COUNT:I = 0x40

.field private static final MAX_LOAD_COUNT_LEVEL0:I = 0x20

.field private static final MAX_LOAD_COUNT_LEVEL1:I = 0x40

.field private static MIN_LOAD_COUNT:I = 0x20

.field private static final MIN_LOAD_COUNT_LEVEL0:I = 0xc

.field private static final MIN_LOAD_COUNT_LEVEL1:I = 0x20

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AlbumDataAdapter"


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/zui/gallery/data/MediaItem;

.field private mDataListener:Lcom/zui/gallery/app/AlbumDataLoader$DataListener;

.field private mFailedVersion:J

.field private mGlAnimationStatus:I

.field private final mItemVersion:[J

.field private mLoadingListener:Lcom/zui/gallery/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mReloadTask:Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;

.field private final mSetVersion:[J

.field private mSize:I

.field private final mSource:Lcom/zui/gallery/data/MediaSet;

.field private mSourceListener:Lcom/zui/gallery/app/AlbumDataLoader$MySourceListener;

.field private mSourceVersion:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaSet;)V
    .locals 5

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mActiveStart:I

    .line 75
    iput v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mActiveEnd:I

    .line 77
    iput v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mContentStart:I

    .line 78
    iput v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mContentEnd:I

    const-wide/16 v1, -0x1

    .line 81
    iput-wide v1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSourceVersion:J

    .line 84
    iput v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSize:I

    .line 87
    new-instance v3, Lcom/zui/gallery/app/AlbumDataLoader$MySourceListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/zui/gallery/app/AlbumDataLoader$MySourceListener;-><init>(Lcom/zui/gallery/app/AlbumDataLoader;Lcom/zui/gallery/app/AlbumDataLoader$1;)V

    iput-object v3, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSourceListener:Lcom/zui/gallery/app/AlbumDataLoader$MySourceListener;

    .line 92
    iput-wide v1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mFailedVersion:J

    .line 261
    iput v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mGlAnimationStatus:I

    .line 95
    iput-object p2, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSource:Lcom/zui/gallery/data/MediaSet;

    const/16 p2, 0x3e8

    new-array v0, p2, [Lcom/zui/gallery/data/MediaItem;

    .line 97
    iput-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mData:[Lcom/zui/gallery/data/MediaItem;

    new-array v0, p2, [J

    .line 98
    iput-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mItemVersion:[J

    new-array p2, p2, [J

    .line 99
    iput-object p2, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSetVersion:[J

    .line 100
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 101
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSetVersion:[J

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 103
    new-instance p2, Lcom/zui/gallery/app/AlbumDataLoader$1;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/zui/gallery/app/AlbumDataLoader$1;-><init>(Lcom/zui/gallery/app/AlbumDataLoader;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/app/LoadingListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mLoadingListener:Lcom/zui/gallery/app/LoadingListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/app/AlbumDataLoader;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mContentStart:I

    return p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/app/AlbumDataLoader;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mContentEnd:I

    return p0
.end method

.method static synthetic access$1102(Lcom/zui/gallery/app/AlbumDataLoader;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mContentEnd:I

    return p1
.end method

.method static synthetic access$1200()I
    .locals 1

    .line 42
    sget v0, Lcom/zui/gallery/app/AlbumDataLoader;->MAX_LOAD_COUNT:I

    return v0
.end method

.method static synthetic access$1300(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/app/AlbumDataLoader$DataListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mDataListener:Lcom/zui/gallery/app/AlbumDataLoader$DataListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/zui/gallery/app/AlbumDataLoader;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mActiveEnd:I

    return p0
.end method

.method static synthetic access$1402(Lcom/zui/gallery/app/AlbumDataLoader;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$1500(Lcom/zui/gallery/app/AlbumDataLoader;)[J
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mItemVersion:[J

    return-object p0
.end method

.method static synthetic access$1600(Lcom/zui/gallery/app/AlbumDataLoader;)[Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mData:[Lcom/zui/gallery/data/MediaItem;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/zui/gallery/app/AlbumDataLoader;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mActiveStart:I

    return p0
.end method

.method static synthetic access$1800(Lcom/zui/gallery/app/AlbumDataLoader;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSource:Lcom/zui/gallery/data/MediaSet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/AlbumDataLoader;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mFailedVersion:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/zui/gallery/app/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Lcom/zui/gallery/app/AlbumDataLoader;J)J
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mFailedVersion:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/AlbumDataLoader;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mGlAnimationStatus:I

    return p0
.end method

.method static synthetic access$402(Lcom/zui/gallery/app/AlbumDataLoader;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mGlAnimationStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/AlbumDataLoader;)Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mReloadTask:Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/app/AlbumDataLoader;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/zui/gallery/app/AlbumDataLoader;J)J
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/zui/gallery/app/AlbumDataLoader;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSize:I

    return p0
.end method

.method static synthetic access$802(Lcom/zui/gallery/app/AlbumDataLoader;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSize:I

    return p1
.end method

.method static synthetic access$900(Lcom/zui/gallery/app/AlbumDataLoader;)[J
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSetVersion:[J

    return-object p0
.end method

.method private clearSlot(I)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mData:[Lcom/zui/gallery/data/MediaItem;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 199
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mItemVersion:[J

    const-wide/16 v1, -0x1

    aput-wide v1, v0, p1

    .line 200
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSetVersion:[J

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

    .line 301
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 302
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 303
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 302
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 309
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private setContentWindow(II)V
    .locals 4

    .line 204
    iget v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mContentStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mContentEnd:I

    if-ne p2, v0, :cond_0

    return-void

    .line 205
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

    .line 207
    iget v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mContentEnd:I

    .line 208
    iget v1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mContentStart:I

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iput p1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mContentStart:I

    .line 213
    iput p2, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mContentEnd:I

    .line 214
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v0, :cond_3

    if-lt v1, p2, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    if-ge v1, p1, :cond_2

    .line 223
    rem-int/lit16 v2, v1, 0x3e8

    invoke-direct {p0, v2}, Lcom/zui/gallery/app/AlbumDataLoader;->clearSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge p2, v0, :cond_4

    .line 226
    rem-int/lit16 p1, p2, 0x3e8

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumDataLoader;->clearSlot(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v1, v0, :cond_4

    .line 219
    rem-int/lit16 p1, v1, 0x3e8

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumDataLoader;->clearSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 229
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mReloadTask:Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->notifyDirty()V

    .line 230
    :cond_5
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object p1

    const-string p2, "GalleryCache"

    const-string v0, "-"

    invoke-virtual {p1, p2, v0}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 214
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public findItem(Lcom/zui/gallery/data/Path;)I
    .locals 3

    .line 188
    iget v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mContentStart:I

    :goto_0
    iget v1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mContentEnd:I

    if-ge v0, v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mData:[Lcom/zui/gallery/data/MediaItem;

    rem-int/lit16 v2, v0, 0x3e8

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 190
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
    .locals 2

    .line 146
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/AlbumDataLoader;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSource:Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaItem;

    return-object p1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mData:[Lcom/zui/gallery/data/MediaItem;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getActiveStart()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mActiveStart:I

    return v0
.end method

.method public getMediaItem(I)Lcom/zui/gallery/data/MediaItem;
    .locals 2

    .line 167
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/AlbumDataLoader;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSource:Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaItem;

    return-object p1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mData:[Lcom/zui/gallery/data/MediaItem;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isActive(I)Z
    .locals 1

    .line 178
    iget v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCameraAlbum()Z
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSource:Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_0

    .line 564
    instance-of v0, v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPanoAlbum()Z
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSource:Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isPanoAlbum()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWeixinAlbum()Z
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSource:Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v0

    sget v2, Lcom/zui/gallery/util/MediaSetUtils;->WEIXIN_VIDEO_ID:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public pause()V
    .locals 3

    .line 134
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedSwitch"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mReloadTask:Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->terminate()V

    :cond_0
    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mReloadTask:Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;

    .line 141
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSource:Lcom/zui/gallery/data/MediaSet;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSourceListener:Lcom/zui/gallery/app/AlbumDataLoader$MySourceListener;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/data/MediaSet;->removeContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 142
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 3

    .line 126
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedSwitch"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSource:Lcom/zui/gallery/data/MediaSet;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSourceListener:Lcom/zui/gallery/app/AlbumDataLoader$MySourceListener;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 128
    new-instance v0, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;-><init>(Lcom/zui/gallery/app/AlbumDataLoader;Lcom/zui/gallery/app/AlbumDataLoader$1;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mReloadTask:Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;

    .line 129
    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->start()V

    .line 130
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setActiveWindow(II)V
    .locals 5

    .line 234
    iget v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mActiveStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mActiveEnd:I

    if-ne p2, v0, :cond_0

    return-void

    .line 235
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

    .line 237
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mData:[Lcom/zui/gallery/data/MediaItem;

    array-length v3, v3

    if-gt v1, v3, :cond_1

    iget v1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSize:I

    if-gt p2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 240
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mData:[Lcom/zui/gallery/data/MediaItem;

    array-length v1, v1

    .line 241
    iput p1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mActiveStart:I

    .line 242
    iput p2, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mActiveEnd:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    add-int v3, p1, p2

    .line 247
    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSize:I

    sub-int/2addr v4, v1

    .line 248
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 247
    invoke-static {v3, v0, v4}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result v0

    add-int/2addr v1, v0

    .line 249
    iget v3, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSize:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 250
    iget v3, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mContentStart:I

    if-gt v3, p1, :cond_3

    iget p1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mContentEnd:I

    if-lt p1, p2, :cond_3

    sub-int p1, v0, v3

    .line 251
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sget p2, Lcom/zui/gallery/app/AlbumDataLoader;->MIN_LOAD_COUNT:I

    if-le p1, p2, :cond_4

    .line 252
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/app/AlbumDataLoader;->setContentWindow(II)V

    .line 254
    :cond_4
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, v2, p2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDataListener(Lcom/zui/gallery/app/AlbumDataLoader$DataListener;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mDataListener:Lcom/zui/gallery/app/AlbumDataLoader$DataListener;

    return-void
.end method

.method public setGlAnimating(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 266
    iput p1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mGlAnimationStatus:I

    return-void

    .line 270
    :cond_0
    iget p1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mGlAnimationStatus:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 271
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mReloadTask:Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumDataLoader$ReloadTask;->notifyDirty()V

    :cond_1
    const/4 p1, 0x0

    .line 274
    iput p1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mGlAnimationStatus:I

    return-void
.end method

.method public setLoadingListener(Lcom/zui/gallery/app/LoadingListener;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mLoadingListener:Lcom/zui/gallery/app/LoadingListener;

    return-void
.end method

.method public size()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/zui/gallery/app/AlbumDataLoader;->mSize:I

    return v0
.end method
