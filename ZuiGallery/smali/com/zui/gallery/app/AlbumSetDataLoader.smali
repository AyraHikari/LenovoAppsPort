.class public Lcom/zui/gallery/app/AlbumSetDataLoader;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;,
        Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateContent;,
        Lcom/zui/gallery/app/AlbumSetDataLoader$GetUpdateInfo;,
        Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;,
        Lcom/zui/gallery/app/AlbumSetDataLoader$MySourceListener;,
        Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;
    }
.end annotation


# static fields
.field private static final INDEX_NONE:I = -0x1

.field private static final MIN_LOAD_COUNT:I = 0x4

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AlbumSetDataAdapter"


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mAlbumEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/AlbumSetCategoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContentEnd:I

.field private mContentStart:I

.field private final mCoverItem:[Lcom/zui/gallery/data/MediaItem;

.field private final mCoverItem2:[Lcom/zui/gallery/data/MediaItem;

.field private final mCoverItem3:[Lcom/zui/gallery/data/MediaItem;

.field private final mData:[Lcom/zui/gallery/data/MediaSet;

.field private mDataListener:Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;

.field private final mItemVersion:[J

.field private mLoadingListener:Lcom/zui/gallery/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mReloadTask:Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;

.field private final mSetVersion:[J

.field private mSize:I

.field private final mSource:Lcom/zui/gallery/data/MediaSet;

.field private final mSourceListener:Lcom/zui/gallery/app/AlbumSetDataLoader$MySourceListener;

.field private mSourceVersion:J

.field private final mTotalCount:[I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaSet;I)V
    .locals 5

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActiveStart:I

    .line 72
    iput v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActiveEnd:I

    .line 74
    iput v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mContentStart:I

    .line 75
    iput v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mContentEnd:I

    const-wide/16 v0, -0x1

    .line 78
    iput-wide v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSourceVersion:J

    .line 87
    new-instance v2, Lcom/zui/gallery/app/AlbumSetDataLoader$MySourceListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zui/gallery/app/AlbumSetDataLoader$MySourceListener;-><init>(Lcom/zui/gallery/app/AlbumSetDataLoader;Lcom/zui/gallery/app/AlbumSetDataLoader$1;)V

    iput-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSourceListener:Lcom/zui/gallery/app/AlbumSetDataLoader$MySourceListener;

    .line 89
    iput-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mAlbumEntryList:Ljava/util/List;

    .line 93
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v2

    const-string v3, "GallerySpeedSwitch"

    const-string v4, "+"

    invoke-virtual {v2, v3, v4}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 95
    invoke-static {p2}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/data/MediaSet;

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSource:Lcom/zui/gallery/data/MediaSet;

    .line 96
    new-array p2, p3, [Lcom/zui/gallery/data/MediaItem;

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mCoverItem:[Lcom/zui/gallery/data/MediaItem;

    .line 97
    new-array p2, p3, [Lcom/zui/gallery/data/MediaItem;

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mCoverItem2:[Lcom/zui/gallery/data/MediaItem;

    .line 98
    new-array p2, p3, [Lcom/zui/gallery/data/MediaItem;

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mCoverItem3:[Lcom/zui/gallery/data/MediaItem;

    .line 99
    new-array p2, p3, [Lcom/zui/gallery/data/MediaSet;

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mData:[Lcom/zui/gallery/data/MediaSet;

    .line 100
    new-array p2, p3, [I

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mTotalCount:[I

    .line 101
    new-array p2, p3, [J

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mItemVersion:[J

    .line 102
    new-array p3, p3, [J

    iput-object p3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSetVersion:[J

    .line 103
    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 104
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSetVersion:[J

    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 105
    new-instance p2, Lcom/zui/gallery/app/AlbumSetDataLoader$1;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader$1;-><init>(Lcom/zui/gallery/app/AlbumSetDataLoader;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    .line 123
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, v3, p2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/LoadingListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mLoadingListener:Lcom/zui/gallery/app/LoadingListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/app/AlbumSetDataLoader;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSize:I

    return p0
.end method

.method static synthetic access$1002(Lcom/zui/gallery/app/AlbumSetDataLoader;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSize:I

    return p1
.end method

.method static synthetic access$1100(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mDataListener:Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/zui/gallery/app/AlbumSetDataLoader;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/zui/gallery/app/AlbumSetDataLoader;J)J
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/zui/gallery/app/AlbumSetDataLoader;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mAlbumEntryList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/zui/gallery/app/AlbumSetDataLoader;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mAlbumEntryList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/zui/gallery/app/AlbumSetDataLoader;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActiveEnd:I

    return p0
.end method

.method static synthetic access$1402(Lcom/zui/gallery/app/AlbumSetDataLoader;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$1500(Lcom/zui/gallery/app/AlbumSetDataLoader;)[Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mCoverItem:[Lcom/zui/gallery/data/MediaItem;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/zui/gallery/app/AlbumSetDataLoader;)[J
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mItemVersion:[J

    return-object p0
.end method

.method static synthetic access$1700(Lcom/zui/gallery/app/AlbumSetDataLoader;)[Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mData:[Lcom/zui/gallery/data/MediaSet;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/zui/gallery/app/AlbumSetDataLoader;)[Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mCoverItem2:[Lcom/zui/gallery/data/MediaItem;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/zui/gallery/app/AlbumSetDataLoader;)[Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mCoverItem3:[Lcom/zui/gallery/data/MediaItem;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/zui/gallery/app/AlbumSetDataLoader;)[I
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mTotalCount:[I

    return-object p0
.end method

.method static synthetic access$2100(Lcom/zui/gallery/app/AlbumSetDataLoader;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActiveStart:I

    return p0
.end method

.method static synthetic access$2200(Lcom/zui/gallery/app/AlbumSetDataLoader;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/zui/gallery/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mReloadTask:Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/AlbumSetDataLoader;)[J
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSetVersion:[J

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/AlbumSetDataLoader;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mContentStart:I

    return p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/AlbumSetDataLoader;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mContentEnd:I

    return p0
.end method

.method static synthetic access$602(Lcom/zui/gallery/app/AlbumSetDataLoader;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mContentEnd:I

    return p1
.end method

.method static synthetic access$800(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSource:Lcom/zui/gallery/data/MediaSet;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/app/AlbumSetDataLoader;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method private assertIsActive(I)V
    .locals 3

    .line 149
    iget v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActiveStart:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x2

    iget v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActiveEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "%s not in (%s, %s)"

    .line 150
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearSlot(I)V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mData:[Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 215
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mCoverItem:[Lcom/zui/gallery/data/MediaItem;

    aput-object v1, v0, p1

    .line 216
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mCoverItem2:[Lcom/zui/gallery/data/MediaItem;

    aput-object v1, v0, p1

    .line 217
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mCoverItem3:[Lcom/zui/gallery/data/MediaItem;

    aput-object v1, v0, p1

    .line 218
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mTotalCount:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 219
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mItemVersion:[J

    const-wide/16 v1, -0x1

    aput-wide v1, v0, p1

    .line 220
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSetVersion:[J

    aput-wide v1, v0, p1

    return-void
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 425
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 426
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 427
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 426
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x0

    .line 429
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "AlbumSetDataAdapter"

    const-string v2, "executeAndWait exception "

    .line 433
    invoke-static {v1, v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    return-object p1
.end method

.method private setContentWindow(II)V
    .locals 5

    .line 225
    iget v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mContentStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mContentEnd:I

    if-ne p2, v0, :cond_0

    return-void

    .line 227
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

    .line 228
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mCoverItem:[Lcom/zui/gallery/data/MediaItem;

    array-length v0, v0

    .line 230
    iget v1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mContentStart:I

    .line 231
    iget v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mContentEnd:I

    .line 233
    iput p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mContentStart:I

    .line 234
    iput p2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mContentEnd:I

    if-ge p1, v3, :cond_3

    if-lt v1, p2, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    if-ge v1, p1, :cond_2

    .line 242
    rem-int v4, v1, v0

    invoke-direct {p0, v4}, Lcom/zui/gallery/app/AlbumSetDataLoader;->clearSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge p2, v3, :cond_4

    .line 245
    rem-int p1, p2, v0

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->clearSlot(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v1, v3, :cond_4

    .line 238
    rem-int p1, v1, v0

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->clearSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 248
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mReloadTask:Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;

    if-eqz p1, :cond_5

    .line 249
    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->notifyDirty()V

    .line 251
    :cond_5
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, v2, p2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public findSet(Lcom/zui/gallery/data/Path;)I
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mData:[Lcom/zui/gallery/data/MediaSet;

    array-length v0, v0

    .line 204
    iget v1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mContentStart:I

    :goto_0
    iget v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mContentEnd:I

    if-ge v1, v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mData:[Lcom/zui/gallery/data/MediaSet;

    rem-int v3, v1, v0

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v2

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getActiveStart()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActiveStart:I

    return v0
.end method

.method public getCoverItem(I)Lcom/zui/gallery/data/MediaItem;
    .locals 2

    .line 161
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->assertIsActive(I)V

    .line 162
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mCoverItem:[Lcom/zui/gallery/data/MediaItem;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getCoverItem2(I)Lcom/zui/gallery/data/MediaItem;
    .locals 2

    .line 166
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->assertIsActive(I)V

    .line 167
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mCoverItem2:[Lcom/zui/gallery/data/MediaItem;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getCoverItem3(I)Lcom/zui/gallery/data/MediaItem;
    .locals 2

    .line 171
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->assertIsActive(I)V

    .line 172
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mCoverItem3:[Lcom/zui/gallery/data/MediaItem;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getMediaSet(I)Lcom/zui/gallery/data/MediaSet;
    .locals 2

    .line 156
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->assertIsActive(I)V

    .line 157
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mData:[Lcom/zui/gallery/data/MediaSet;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTotalCount(I)I
    .locals 2

    .line 184
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->assertIsActive(I)V

    .line 185
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mTotalCount:[I

    array-length v1, v0

    rem-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method

.method public isActive(I)Z
    .locals 1

    .line 193
    iget v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAlbumAll()Z
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSource:Lcom/zui/gallery/data/MediaSet;

    instance-of v1, v0, Lcom/zui/gallery/data/LocalAlbumSet;

    if-eqz v1, :cond_0

    .line 177
    check-cast v0, Lcom/zui/gallery/data/LocalAlbumSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalAlbumSet;->isAlbumAll()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOnlySystemGallery()Z
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mAlbumEntryList:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mAlbumEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mAlbumEntryList:Ljava/util/List;

    .line 282
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    invoke-virtual {v0}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    move-result-object v0

    sget-object v3, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->SYSTEM:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public pause()V
    .locals 3

    .line 127
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedSwitch"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mReloadTask:Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->terminate()V

    :cond_0
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mReloadTask:Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;

    .line 136
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSource:Lcom/zui/gallery/data/MediaSet;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSourceListener:Lcom/zui/gallery/app/AlbumSetDataLoader$MySourceListener;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/data/MediaSet;->removeContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 137
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 3

    .line 141
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedSwitch"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSource:Lcom/zui/gallery/data/MediaSet;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSourceListener:Lcom/zui/gallery/app/AlbumSetDataLoader$MySourceListener;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 143
    new-instance v0, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;-><init>(Lcom/zui/gallery/app/AlbumSetDataLoader;Lcom/zui/gallery/app/AlbumSetDataLoader$1;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mReloadTask:Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;

    .line 144
    invoke-virtual {v0}, Lcom/zui/gallery/app/AlbumSetDataLoader$ReloadTask;->start()V

    .line 145
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setActiveWindow(II)V
    .locals 5

    .line 255
    iget v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActiveStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActiveEnd:I

    if-ne p2, v0, :cond_0

    return-void

    .line 257
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

    .line 259
    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mCoverItem:[Lcom/zui/gallery/data/MediaItem;

    array-length v3, v3

    if-gt v1, v3, :cond_1

    iget v1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSize:I

    if-gt p2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 262
    iput p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActiveStart:I

    .line 263
    iput p2, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mActiveEnd:I

    .line 265
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mCoverItem:[Lcom/zui/gallery/data/MediaItem;

    array-length v1, v1

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    add-int v3, p1, p2

    .line 270
    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSize:I

    sub-int/2addr v4, v1

    .line 271
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 270
    invoke-static {v3, v0, v4}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result v0

    add-int/2addr v1, v0

    .line 272
    iget v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSize:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 273
    iget v3, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mContentStart:I

    if-gt v3, p1, :cond_3

    iget p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mContentEnd:I

    if-lt p1, p2, :cond_3

    sub-int p1, v0, v3

    .line 274
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 p2, 0x4

    if-le p1, p2, :cond_4

    .line 275
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/app/AlbumSetDataLoader;->setContentWindow(II)V

    .line 277
    :cond_4
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, v2, p2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLoadingListener(Lcom/zui/gallery/app/LoadingListener;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mLoadingListener:Lcom/zui/gallery/app/LoadingListener;

    return-void
.end method

.method public setModelListener(Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mDataListener:Lcom/zui/gallery/app/AlbumSetDataLoader$DataListener;

    return-void
.end method

.method public size()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/zui/gallery/app/AlbumSetDataLoader;->mSize:I

    return v0
.end method
