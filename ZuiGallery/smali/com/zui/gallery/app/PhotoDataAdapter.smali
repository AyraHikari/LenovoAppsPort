.class public Lcom/zui/gallery/app/PhotoDataAdapter;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/zui/gallery/app/PhotoPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;,
        Lcom/zui/gallery/app/PhotoDataAdapter$UpdateContent;,
        Lcom/zui/gallery/app/PhotoDataAdapter$GetUpdateInfo;,
        Lcom/zui/gallery/app/PhotoDataAdapter$UpdateInfo;,
        Lcom/zui/gallery/app/PhotoDataAdapter$SourceListener;,
        Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;,
        Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailListener;,
        Lcom/zui/gallery/app/PhotoDataAdapter$FullImageListener;,
        Lcom/zui/gallery/app/PhotoDataAdapter$FullImageJob;,
        Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;,
        Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;,
        Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;
    }
.end annotation


# static fields
.field private static final BIT_FULL_IMAGE:I = 0x2

.field private static final BIT_SCREEN_NAIL:I = 0x1

.field private static final DATA_CACHE_SIZE:I = 0x20

.field private static final IMAGE_CACHE_SIZE:I = 0x15

.field private static final MIN_LOAD_COUNT:I = 0x10

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final MSG_UPDATE_IMAGE_REQUESTS:I = 0x4

.field private static final SCREEN_NAIL_MAX:I = 0xa

.field private static final TAG:Ljava/lang/String; = "PhotoDataAdapter"

.field public static enableBackKey:Z = false

.field private static sImageFetchSeq:[Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mApp:Lcom/zui/gallery/app/GalleryApp;

.field private mBestChoiceFlag:Z

.field private mBestIndex:I

.field private mCameraIndex:I

.field private final mChanges:[J

.field private mContentEnd:I

.field private mContentStart:I

.field private mContinuousShotMode:Z

.field private mCurrentIndex:I

.field private final mData:[Lcom/zui/gallery/data/MediaItem;

.field private mDataListener:Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;

.field private mFocusHintDirection:I

.field private mFocusHintPath:Lcom/zui/gallery/data/Path;

.field private mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/zui/gallery/data/Path;",
            "Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mIsPanorama:Z

.field private mIsStaticCamera:Z

.field private mItemPath:Lcom/zui/gallery/data/Path;

.field private final mMainHandler:Landroid/os/Handler;

.field private mNeedFullImage:Z

.field private final mPaths:[Lcom/zui/gallery/data/Path;

.field private final mPhotoView:Lcom/zui/gallery/ui/PhotoView;

.field private mReloadTask:Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;

.field private mSize:I

.field private final mSource:Lcom/zui/gallery/data/MediaSet;

.field private final mSourceListener:Lcom/zui/gallery/app/PhotoDataAdapter$SourceListener;

.field private mSourceVersion:J

.field private final mThreadPool:Lcom/zui/gallery/util/ThreadPool;

.field private final mTileProvider:Lcom/zui/gallery/ui/TileImageViewAdapter;

.field private final mUploader:Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;

.field private needShowContinueMark:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x2c

    new-array v0, v0, [Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;

    .line 113
    sput-object v0, Lcom/zui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;

    .line 114
    new-instance v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v1, v0, v2

    move v0, v3

    move v1, v0

    :goto_0
    const/16 v4, 0x15

    if-ge v0, v4, :cond_0

    .line 117
    sget-object v4, Lcom/zui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v5, v1, 0x1

    new-instance v6, Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v6, v0, v3}, Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v6, v4, v1

    .line 118
    sget-object v1, Lcom/zui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v4, v5, 0x1

    new-instance v6, Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;

    neg-int v7, v0

    invoke-direct {v6, v7, v3}, Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v6, v1, v5

    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_0

    .line 121
    :cond_0
    sget-object v0, Lcom/zui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v4, v1, 0x1

    new-instance v5, Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;

    const/4 v6, 0x2

    invoke-direct {v5, v2, v6}, Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v5, v0, v1

    .line 122
    sget-object v0, Lcom/zui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v4, 0x1

    new-instance v2, Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v2, v3, v6}, Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v2, v0, v4

    .line 123
    sget-object v0, Lcom/zui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;

    new-instance v2, Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v6}, Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/data/MediaSet;Lcom/zui/gallery/data/Path;IIZZ)V
    .locals 4

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    .line 96
    iput-boolean p4, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->needShowContinueMark:Z

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mBestIndex:I

    .line 126
    new-instance v0, Lcom/zui/gallery/ui/TileImageViewAdapter;

    invoke-direct {v0}, Lcom/zui/gallery/ui/TileImageViewAdapter;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/zui/gallery/ui/TileImageViewAdapter;

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/zui/gallery/data/MediaItem;

    .line 139
    iput-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mData:[Lcom/zui/gallery/data/MediaItem;

    .line 141
    iput p4, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContentStart:I

    .line 142
    iput p4, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    .line 151
    iput p4, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    .line 152
    iput p4, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    const/16 v0, 0x15

    new-array v1, v0, [J

    .line 161
    iput-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mChanges:[J

    new-array v0, v0, [Lcom/zui/gallery/data/Path;

    .line 164
    iput-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mPaths:[Lcom/zui/gallery/data/Path;

    const-wide/16 v0, -0x1

    .line 173
    iput-wide v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSourceVersion:J

    .line 174
    iput p4, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSize:I

    .line 181
    iput p4, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mFocusHintDirection:I

    const/4 v2, 0x0

    .line 182
    iput-object v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mFocusHintPath:Lcom/zui/gallery/data/Path;

    .line 184
    iput-boolean p4, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContinuousShotMode:Z

    .line 185
    iput-boolean p4, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mBestChoiceFlag:Z

    .line 194
    new-instance v3, Lcom/zui/gallery/app/PhotoDataAdapter$SourceListener;

    invoke-direct {v3, p0, v2}, Lcom/zui/gallery/app/PhotoDataAdapter$SourceListener;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/app/PhotoDataAdapter$1;)V

    iput-object v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSourceListener:Lcom/zui/gallery/app/PhotoDataAdapter$SourceListener;

    .line 205
    invoke-static {p3}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/gallery/data/MediaSet;

    iput-object p3, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSource:Lcom/zui/gallery/data/MediaSet;

    .line 206
    invoke-static {p2}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/ui/PhotoView;

    iput-object p2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    .line 212
    iput p5, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 213
    iput p6, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCameraIndex:I

    .line 214
    iput-boolean p7, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mIsPanorama:Z

    .line 215
    iput-boolean p8, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mIsStaticCamera:Z

    .line 216
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    const/4 p2, 0x1

    .line 217
    iput-boolean p2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 218
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/app/GalleryApp;

    iput-object p2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mApp:Lcom/zui/gallery/app/GalleryApp;

    .line 220
    sput-boolean p4, Lcom/zui/gallery/app/PhotoDataAdapter;->enableBackKey:Z

    .line 222
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mChanges:[J

    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 224
    new-instance p2, Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mUploader:Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;

    .line 226
    new-instance p2, Lcom/zui/gallery/app/PhotoDataAdapter$1;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter$1;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 255
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSource:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->needShowContinueMark:Z

    .line 256
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateSlidingWindow()V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/Path;Lcom/zui/gallery/util/Future;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateFullImage(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/util/Future;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/Path;Lcom/zui/gallery/util/Future;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateScreenNail(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/util/Future;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/zui/gallery/app/PhotoDataAdapter;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContentStart:I

    return p0
.end method

.method static synthetic access$1400(Lcom/zui/gallery/app/PhotoDataAdapter;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    return p0
.end method

.method static synthetic access$1402(Lcom/zui/gallery/app/PhotoDataAdapter;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    return p1
.end method

.method static synthetic access$1500(Lcom/zui/gallery/app/PhotoDataAdapter;)[Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mData:[Lcom/zui/gallery/data/MediaItem;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/zui/gallery/app/PhotoDataAdapter;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    return p0
.end method

.method static synthetic access$1602(Lcom/zui/gallery/app/PhotoDataAdapter;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$1700(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/data/Path;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/zui/gallery/data/Path;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/Path;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/zui/gallery/data/Path;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/zui/gallery/app/PhotoDataAdapter;)J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/zui/gallery/app/PhotoDataAdapter;J)J
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/PhotoDataAdapter;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateImageRequests()V

    return-void
.end method

.method static synthetic access$2000(Lcom/zui/gallery/app/PhotoDataAdapter;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSize:I

    return p0
.end method

.method static synthetic access$2002(Lcom/zui/gallery/app/PhotoDataAdapter;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSize:I

    return p1
.end method

.method static synthetic access$2100(Lcom/zui/gallery/app/PhotoDataAdapter;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    return p0
.end method

.method static synthetic access$2102(Lcom/zui/gallery/app/PhotoDataAdapter;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$2200(Lcom/zui/gallery/app/PhotoDataAdapter;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateSlidingWindow()V

    return-void
.end method

.method static synthetic access$2300(Lcom/zui/gallery/app/PhotoDataAdapter;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mBestChoiceFlag:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/zui/gallery/app/PhotoDataAdapter;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mBestChoiceFlag:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/zui/gallery/app/PhotoDataAdapter;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mBestIndex:I

    return p1
.end method

.method static synthetic access$2500(Lcom/zui/gallery/app/PhotoDataAdapter;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateImageCache()V

    return-void
.end method

.method static synthetic access$2600(Lcom/zui/gallery/app/PhotoDataAdapter;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateTileProvider()V

    return-void
.end method

.method static synthetic access$2700(Lcom/zui/gallery/app/PhotoDataAdapter;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->fireDataChange()V

    return-void
.end method

.method static synthetic access$2900(Lcom/zui/gallery/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/ui/PhotoView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSource:Lcom/zui/gallery/data/MediaSet;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/data/Path;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mFocusHintPath:Lcom/zui/gallery/data/Path;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/Path;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mFocusHintPath:Lcom/zui/gallery/data/Path;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/zui/gallery/app/PhotoDataAdapter;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mFocusHintDirection:I

    return p0
.end method

.method static synthetic access$3300(Lcom/zui/gallery/app/PhotoDataAdapter;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCameraIndex:I

    return p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/MediaItem;)Z
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->isTemporaryItem(Lcom/zui/gallery/data/MediaItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/MediaItem;)Lcom/zui/gallery/ui/ScreenNail;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/zui/gallery/data/MediaItem;)Lcom/zui/gallery/ui/ScreenNail;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/app/PhotoDataAdapter;)Lcom/zui/gallery/app/GalleryApp;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mApp:Lcom/zui/gallery/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/app/PhotoDataAdapter;)Landroid/os/Handler;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object p0
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

    .line 1174
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1175
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 1176
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1175
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1178
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1182
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private fireDataChange()V
    .locals 10

    const/4 v0, 0x0

    const/16 v1, -0xa

    move v2, v0

    :goto_0
    const/16 v3, 0xa

    const/4 v4, 0x1

    if-gt v1, v3, :cond_1

    .line 283
    iget v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/zui/gallery/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v5

    .line 284
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v7, v1, 0xa

    aget-wide v8, v3, v7

    cmp-long v8, v8, v5

    if-eqz v8, :cond_0

    .line 285
    aput-wide v5, v3, v7

    move v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_5

    .line 292
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mData:[Lcom/zui/gallery/data/MediaItem;

    iget v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit8 v1, v1, 0x20

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    .line 294
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;

    if-eqz v1, :cond_4

    .line 296
    iget-object v2, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/zui/gallery/ui/ScreenNail;

    if-eqz v2, :cond_4

    .line 298
    iget-object v3, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/zui/gallery/util/Future;

    if-eqz v3, :cond_2

    .line 300
    invoke-interface {v3}, Lcom/zui/gallery/util/Future;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 301
    :cond_2
    instance-of v3, v2, Lcom/zui/gallery/ui/TiledScreenNail;

    if-eqz v3, :cond_4

    .line 302
    check-cast v2, Lcom/zui/gallery/ui/TiledScreenNail;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/TiledScreenNail;->getTexture()Lcom/zui/gallery/glrenderer/TiledTexture;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 303
    invoke-virtual {v2}, Lcom/zui/gallery/glrenderer/TiledTexture;->isReady()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const-string v2, "GallerySpeedDetail"

    const-string v3, "NEED LOAD"

    .line 304
    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    new-instance v3, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;

    invoke-direct {v3, p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/MediaItem;)V

    new-instance v4, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailListener;

    invoke-direct {v4, p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailListener;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/MediaItem;)V

    invoke-virtual {v2, v3, v4}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/zui/gallery/util/Future;

    .line 314
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/gallery/app/PhotoDataAdapter$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/PhotoDataAdapter$2;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_5
    const/16 v1, 0x15

    new-array v2, v1, [I

    new-array v5, v1, [Lcom/zui/gallery/data/Path;

    .line 332
    iget-object v6, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mPaths:[Lcom/zui/gallery/data/Path;

    invoke-static {v6, v0, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v0

    :goto_1
    if-ge v6, v1, :cond_6

    .line 336
    iget-object v7, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mPaths:[Lcom/zui/gallery/data/Path;

    iget v8, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v8, v6

    sub-int/2addr v8, v3

    invoke-direct {p0, v8}, Lcom/zui/gallery/app/PhotoDataAdapter;->getPath(I)Lcom/zui/gallery/data/Path;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    move v3, v0

    :goto_2
    if-ge v3, v1, :cond_b

    .line 341
    iget-object v6, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mPaths:[Lcom/zui/gallery/data/Path;

    aget-object v6, v6, v3

    const v7, 0x7fffffff

    if-nez v6, :cond_7

    .line 343
    aput v7, v2, v3

    goto :goto_5

    :cond_7
    move v8, v0

    :goto_3
    if-ge v8, v1, :cond_9

    .line 350
    aget-object v9, v5, v8

    if-ne v9, v6, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-ge v8, v1, :cond_a

    add-int/lit8 v7, v8, -0xa

    .line 354
    :cond_a
    aput v7, v2, v3

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 357
    :cond_b
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    iget v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    neg-int v3, v1

    iget v5, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSize:I

    sub-int/2addr v5, v4

    sub-int/2addr v5, v1

    invoke-virtual {v0, v2, v3, v5}, Lcom/zui/gallery/ui/PhotoView;->notifyDataChange([III)V

    return-void
.end method

.method private getItem(I)Lcom/zui/gallery/data/MediaItem;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 475
    iget v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSize:I

    if-ge p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 476
    :cond_0
    iget v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 478
    iget v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v1, :cond_2

    iget v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v1, :cond_2

    .line 479
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mData:[Lcom/zui/gallery/data/MediaItem;

    rem-int/lit8 p1, p1, 0x20

    aget-object p1, v0, p1

    return-object p1

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getItemInternal(I)Lcom/zui/gallery/data/MediaItem;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 260
    iget v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSize:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mData:[Lcom/zui/gallery/data/MediaItem;

    rem-int/lit8 p1, p1, 0x20

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getPath(I)Lcom/zui/gallery/data/Path;
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItemInternal(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 276
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    return-object p1
.end method

.method private getVersion(I)J
    .locals 2

    .line 268
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItemInternal(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method private isTemporaryItem(Lcom/zui/gallery/data/MediaItem;)Z
    .locals 6

    .line 1008
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCameraIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 1010
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/data/LocalMediaItem;

    if-nez v0, :cond_1

    return v1

    .line 1011
    :cond_1
    check-cast p1, Lcom/zui/gallery/data/LocalMediaItem;

    .line 1012
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalMediaItem;->getBucketId()I

    move-result v0

    sget v2, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-eq v0, v2, :cond_2

    return v1

    .line 1014
    :cond_2
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalMediaItem;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    return v1

    .line 1015
    :cond_3
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalMediaItem;->getWidth()I

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 1016
    :cond_4
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalMediaItem;->getHeight()I

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 1018
    :cond_5
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalMediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long p1, v2, v4

    if-gtz p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method private newPlaceholderScreenNail(Lcom/zui/gallery/data/MediaItem;)Lcom/zui/gallery/ui/ScreenNail;
    .locals 2

    .line 1025
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getWidth()I

    move-result v0

    .line 1026
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getHeight()I

    move-result p1

    .line 1027
    new-instance v1, Lcom/zui/gallery/ui/TiledScreenNail;

    invoke-direct {v1, v0, p1}, Lcom/zui/gallery/ui/TiledScreenNail;-><init>(II)V

    return-object v1
.end method

.method private startTaskIfNeeded(II)Lcom/zui/gallery/util/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/zui/gallery/util/Future<",
            "*>;"
        }
    .end annotation

    .line 1032
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_6

    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt p1, v0, :cond_0

    goto/16 :goto_1

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->getPath(I)Lcom/zui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;

    if-nez v0, :cond_1

    return-object v1

    .line 1036
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mData:[Lcom/zui/gallery/data/MediaItem;

    rem-int/lit8 p1, p1, 0x20

    aget-object p1, v2, p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 1037
    :goto_0
    invoke-static {v3}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 1038
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v3

    if-ne p2, v2, :cond_3

    .line 1040
    iget-object v5, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/zui/gallery/util/Future;

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_3

    .line 1042
    iget-object p1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/zui/gallery/util/Future;

    return-object p1

    :cond_3
    const/4 v5, 0x2

    if-ne p2, v5, :cond_4

    .line 1043
    iget-object v6, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/zui/gallery/util/Future;

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v6, v6, v3

    if-nez v6, :cond_4

    .line 1045
    iget-object p1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/zui/gallery/util/Future;

    return-object p1

    :cond_4
    if-ne p2, v2, :cond_5

    .line 1048
    iget-wide v6, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v2, v6, v3

    if-eqz v2, :cond_5

    .line 1049
    iput-wide v3, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 1050
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    new-instance v1, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailJob;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/MediaItem;)V

    new-instance v2, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailListener;

    invoke-direct {v2, p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter$ScreenNailListener;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/MediaItem;)V

    invoke-virtual {p2, v1, v2}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/zui/gallery/util/Future;

    .line 1054
    iget-object p1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/zui/gallery/util/Future;

    return-object p1

    :cond_5
    if-ne p2, v5, :cond_6

    .line 1056
    iget-wide v5, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long p2, v5, v3

    if-eqz p2, :cond_6

    .line 1057
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result p2

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_6

    .line 1059
    iput-wide v3, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 1060
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mThreadPool:Lcom/zui/gallery/util/ThreadPool;

    new-instance v1, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageJob;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageJob;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/MediaItem;)V

    new-instance v2, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageListener;

    invoke-direct {v2, p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter$FullImageListener;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/data/MediaItem;)V

    invoke-virtual {p2, v1, v2}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/zui/gallery/util/Future;

    .line 1064
    iget-object p1, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/zui/gallery/util/Future;

    return-object p1

    :cond_6
    :goto_1
    return-object v1
.end method

.method private updateCurrentIndex(I)V
    .locals 2

    .line 485
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 486
    :cond_0
    iput p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 487
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 488
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mData:[Lcom/zui/gallery/data/MediaItem;

    rem-int/lit8 v1, p1, 0x20

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 489
    :cond_1
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/zui/gallery/data/Path;

    .line 491
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateImageCache()V

    .line 492
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateImageRequests()V

    .line 493
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateTileProvider()V

    .line 495
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;

    if-eqz v0, :cond_2

    .line 496
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/zui/gallery/data/Path;

    invoke-interface {v0, p1, v1}, Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/zui/gallery/data/Path;)V

    .line 499
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->fireDataChange()V

    return-void
.end method

.method private updateFullImage(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/util/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/data/Path;",
            "Lcom/zui/gallery/util/Future<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;)V"
        }
    .end annotation

    .line 403
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedDetail"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;

    if-eqz v0, :cond_2

    .line 405
    iget-object v2, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/zui/gallery/util/Future;

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 411
    iput-object v2, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/zui/gallery/util/Future;

    .line 412
    invoke-interface {p2}, Lcom/zui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/BitmapRegionDecoder;

    iput-object p2, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 413
    iget-object p2, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz p2, :cond_1

    .line 414
    iget p2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, p2}, Lcom/zui/gallery/app/PhotoDataAdapter;->getPath(I)Lcom/zui/gallery/data/Path;

    move-result-object p2

    if-ne p1, p2, :cond_1

    .line 415
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateTileProvider(Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;)V

    .line 416
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/PhotoView;->notifyImageChange(I)V

    const/4 p1, 0x1

    .line 418
    sput-boolean p1, Lcom/zui/gallery/app/PhotoDataAdapter;->enableBackKey:Z

    .line 422
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateImageRequests()V

    .line 423
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, v1, p2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 406
    :cond_2
    :goto_0
    invoke-interface {p2}, Lcom/zui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/BitmapRegionDecoder;

    if-eqz p1, :cond_3

    .line 407
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_3
    return-void
.end method

.method private updateImageCache()V
    .locals 9

    .line 1070
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1071
    iget v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    :goto_0
    iget v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v2, :cond_5

    .line 1072
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mData:[Lcom/zui/gallery/data/MediaItem;

    rem-int/lit8 v3, v1, 0x20

    aget-object v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_1

    .line 1074
    :cond_0
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v3

    .line 1075
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 1076
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 1078
    iget v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_2

    .line 1079
    iget-object v3, v4, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/zui/gallery/util/Future;

    if-eqz v3, :cond_1

    .line 1080
    iget-object v3, v4, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/zui/gallery/util/Future;

    invoke-interface {v3}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 1081
    iput-object v5, v4, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/zui/gallery/util/Future;

    .line 1083
    :cond_1
    iput-object v5, v4, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    const-wide/16 v5, -0x1

    .line 1084
    iput-wide v5, v4, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 1086
    :cond_2
    iget-wide v5, v4, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_4

    .line 1089
    iget-object v3, v4, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/zui/gallery/ui/ScreenNail;

    instance-of v3, v3, Lcom/zui/gallery/ui/TiledScreenNail;

    if-eqz v3, :cond_4

    .line 1090
    iget-object v3, v4, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/zui/gallery/ui/ScreenNail;

    check-cast v3, Lcom/zui/gallery/ui/TiledScreenNail;

    .line 1092
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getHeight()I

    move-result v2

    .line 1091
    invoke-virtual {v3, v4, v2}, Lcom/zui/gallery/ui/TiledScreenNail;->updatePlaceholderSize(II)V

    goto :goto_1

    .line 1096
    :cond_3
    new-instance v2, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;

    invoke-direct {v2, v5}, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter$1;)V

    .line 1097
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1102
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/Path;

    .line 1103
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 1104
    iget-object v2, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/zui/gallery/util/Future;

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/zui/gallery/util/Future;

    invoke-interface {v2}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 1105
    :cond_7
    iget-object v2, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/zui/gallery/util/Future;

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/zui/gallery/util/Future;

    invoke-interface {v2}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 1106
    :cond_8
    iget-object v2, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/zui/gallery/ui/ScreenNail;

    if-eqz v2, :cond_6

    iget-object v1, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/zui/gallery/ui/ScreenNail;

    invoke-interface {v1}, Lcom/zui/gallery/ui/ScreenNail;->recycle()V

    goto :goto_2

    .line 1109
    :cond_9
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateScreenNailUploadQueue()V

    return-void
.end method

.method private updateImageRequests()V
    .locals 7

    .line 893
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 895
    :cond_0
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 896
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mData:[Lcom/zui/gallery/data/MediaItem;

    rem-int/lit8 v2, v0, 0x20

    aget-object v1, v1, v2

    if-eqz v1, :cond_7

    .line 897
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/zui/gallery/data/Path;

    if-eq v1, v2, :cond_1

    goto :goto_4

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    .line 904
    :goto_0
    sget-object v4, Lcom/zui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;

    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 905
    aget-object v4, v4, v1

    iget v4, v4, Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    .line 906
    sget-object v5, Lcom/zui/gallery/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/zui/gallery/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 907
    iget-boolean v6, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mNeedFullImage:Z

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v4, v0

    .line 908
    invoke-direct {p0, v4, v5}, Lcom/zui/gallery/app/PhotoDataAdapter;->startTaskIfNeeded(II)Lcom/zui/gallery/util/Future;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 913
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 914
    iget-object v4, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/zui/gallery/util/Future;

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/zui/gallery/util/Future;

    if-eq v4, v3, :cond_6

    .line 915
    iget-object v4, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/zui/gallery/util/Future;

    invoke-interface {v4}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 916
    iput-object v2, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/zui/gallery/util/Future;

    .line 917
    iput-wide v5, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 919
    :cond_6
    iget-object v4, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/zui/gallery/util/Future;

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/zui/gallery/util/Future;

    if-eq v4, v3, :cond_5

    .line 920
    iget-object v4, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/zui/gallery/util/Future;

    invoke-interface {v4}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 921
    iput-object v2, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/zui/gallery/util/Future;

    .line 922
    iput-wide v5, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method private updateScreenNail(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/util/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/data/Path;",
            "Lcom/zui/gallery/util/Future<",
            "Lcom/zui/gallery/ui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    .line 366
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedDetail"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 368
    invoke-interface {p2}, Lcom/zui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/ui/ScreenNail;

    if-eqz v0, :cond_6

    .line 370
    iget-object v3, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/zui/gallery/util/Future;

    if-eq v3, p2, :cond_0

    goto :goto_3

    :cond_0
    const/4 p2, 0x0

    .line 375
    iput-object p2, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/zui/gallery/util/Future;

    .line 378
    iget-object p2, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/zui/gallery/ui/ScreenNail;

    instance-of p2, p2, Lcom/zui/gallery/ui/TiledScreenNail;

    if-eqz p2, :cond_1

    .line 379
    iget-object p2, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/zui/gallery/ui/ScreenNail;

    check-cast p2, Lcom/zui/gallery/ui/TiledScreenNail;

    .line 380
    invoke-virtual {p2, v2}, Lcom/zui/gallery/ui/TiledScreenNail;->combine(Lcom/zui/gallery/ui/ScreenNail;)Lcom/zui/gallery/ui/ScreenNail;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    const/4 p2, 0x1

    .line 384
    iput-boolean p2, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 386
    iput-boolean p2, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 387
    iput-object v2, v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/zui/gallery/ui/ScreenNail;

    :goto_0
    const/16 p2, -0xa

    :goto_1
    const/16 v2, 0xa

    if-gt p2, v2, :cond_5

    .line 391
    iget v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p2

    invoke-direct {p0, v2}, Lcom/zui/gallery/app/PhotoDataAdapter;->getPath(I)Lcom/zui/gallery/data/Path;

    move-result-object v2

    if-ne p1, v2, :cond_4

    if-nez p2, :cond_3

    .line 392
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateTileProvider(Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;)V

    .line 393
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/PhotoView;->notifyImageChange(I)V

    goto :goto_2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 397
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateImageRequests()V

    .line 398
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateScreenNailUploadQueue()V

    .line 399
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, v1, p2}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 371
    invoke-interface {v2}, Lcom/zui/gallery/ui/ScreenNail;->recycle()V

    :cond_7
    return-void
.end method

.method private updateScreenNailUploadQueue()V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mUploader:Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;->clear()V

    const/4 v0, 0x0

    .line 521
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->uploadScreenNail(I)V

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 523
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->uploadScreenNail(I)V

    neg-int v1, v0

    .line 524
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->uploadScreenNail(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSlidingWindow()V
    .locals 6

    .line 866
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0xa

    iget v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v1, v1, -0x15

    const/4 v2, 0x0

    .line 867
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 866
    invoke-static {v0, v2, v1}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result v0

    .line 868
    iget v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v3, v0, 0x15

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 870
    iget v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    if-ne v3, v0, :cond_0

    iget v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    if-ne v3, v1, :cond_0

    return-void

    .line 872
    :cond_0
    iput v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    .line 873
    iput v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    .line 876
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    const/16 v1, 0x10

    sub-int/2addr v0, v1

    iget v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v3, v3, -0x20

    .line 877
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 876
    invoke-static {v0, v2, v3}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result v0

    .line 878
    iget v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v3, v0, 0x20

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 879
    iget v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContentStart:I

    iget v4, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    if-gt v3, v4, :cond_1

    iget v4, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    iget v5, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v4, v5, :cond_1

    sub-int v3, v0, v3

    .line 880
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v1, :cond_5

    .line 881
    :cond_1
    iget v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContentStart:I

    :goto_0
    iget v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v1, v3, :cond_4

    if-lt v1, v0, :cond_2

    if-lt v1, v2, :cond_3

    .line 883
    :cond_2
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mData:[Lcom/zui/gallery/data/MediaItem;

    rem-int/lit8 v4, v1, 0x20

    const/4 v5, 0x0

    aput-object v5, v3, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    :cond_4
    iput v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContentStart:I

    .line 887
    iput v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    .line 888
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    :cond_5
    return-void
.end method

.method private updateTileProvider()V
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->getPath(I)Lcom/zui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/zui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/TileImageViewAdapter;->clear()V

    goto :goto_0

    .line 842
    :cond_0
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateTileProvider(Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;)V

    :goto_0
    return-void
.end method

.method private updateTileProvider(Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;)V
    .locals 4

    .line 847
    iget-object v0, p1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/zui/gallery/ui/ScreenNail;

    .line 848
    iget-object p1, p1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/zui/gallery/ui/TileImageViewAdapter;

    .line 852
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v3

    .line 851
    invoke-virtual {v1, v0, v2, v3}, Lcom/zui/gallery/ui/TileImageViewAdapter;->setScreenNail(Lcom/zui/gallery/ui/ScreenNail;II)V

    .line 853
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/zui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    goto :goto_0

    .line 855
    :cond_0
    invoke-interface {v0}, Lcom/zui/gallery/ui/ScreenNail;->getWidth()I

    move-result p1

    .line 856
    invoke-interface {v0}, Lcom/zui/gallery/ui/ScreenNail;->getHeight()I

    move-result v1

    .line 857
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/zui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/zui/gallery/ui/TileImageViewAdapter;->setScreenNail(Lcom/zui/gallery/ui/ScreenNail;II)V

    goto :goto_0

    .line 860
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/zui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/TileImageViewAdapter;->clear()V

    :goto_0
    return-void
.end method

.method private uploadScreenNail(I)V
    .locals 1

    .line 503
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    .line 504
    iget p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v0, p1, :cond_3

    iget p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v0, p1, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;

    if-nez p1, :cond_2

    return-void

    .line 512
    :cond_2
    iget-object p1, p1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/zui/gallery/ui/ScreenNail;

    .line 513
    instance-of v0, p1, Lcom/zui/gallery/ui/TiledScreenNail;

    if-eqz v0, :cond_3

    .line 514
    check-cast p1, Lcom/zui/gallery/ui/TiledScreenNail;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/TiledScreenNail;->getTexture()Lcom/zui/gallery/glrenderer/TiledTexture;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 515
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mUploader:Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/zui/gallery/glrenderer/TiledTexture;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public cleanSelectedItem()V
    .locals 2

    .line 1564
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1567
    iput-boolean v1, v0, Lcom/zui/gallery/data/MediaItem;->isSelected:Z

    :cond_0
    return-void
.end method

.method public getContinuousCount(I)I
    .locals 1

    .line 1526
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1527
    :cond_0
    iget p1, p1, Lcom/zui/gallery/data/MediaItem;->continuousCount:I

    :goto_0
    return p1
.end method

.method public getCurrentIndex()I
    .locals 1

    .line 780
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/zui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/TileImageViewAdapter;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageRotation(I)I
    .locals 1

    .line 569
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 570
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFullImageRotation()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getImageSize(ILcom/zui/gallery/ui/PhotoView$Size;)V
    .locals 1

    .line 557
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 559
    iput p1, p2, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    .line 560
    iput p1, p2, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    goto :goto_0

    .line 562
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getWidth()I

    move-result v0

    iput v0, p2, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    .line 563
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getHeight()I

    move-result p1

    iput p1, p2, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    :goto_0
    return-void
.end method

.method public getImageWidth()I
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/zui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/TileImageViewAdapter;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/zui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/TileImageViewAdapter;->getLevelCount()I

    move-result v0

    return v0
.end method

.method public getLoadingState(I)I
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/zui/gallery/app/PhotoDataAdapter;->getPath(I)Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 743
    :cond_0
    iget-boolean v1, p1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x2

    return p1

    .line 744
    :cond_1
    iget-object p1, p1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/zui/gallery/ui/ScreenNail;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public getMediaItem(I)Lcom/zui/gallery/data/MediaItem;
    .locals 1

    .line 785
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    .line 786
    iget p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContentStart:I

    if-lt v0, p1, :cond_0

    iget p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v0, p1, :cond_0

    .line 787
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mData:[Lcom/zui/gallery/data/MediaItem;

    rem-int/lit8 v0, v0, 0x20

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMult(I)I
    .locals 2

    .line 702
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 704
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 706
    check-cast p1, Lcom/zui/gallery/data/LocalVideo;

    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalVideo;->getMult()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getScreenNail()Lcom/zui/gallery/ui/ScreenNail;
    .locals 1

    const/4 v0, 0x0

    .line 750
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getScreenNail(I)Lcom/zui/gallery/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method public getScreenNail(I)Lcom/zui/gallery/ui/ScreenNail;
    .locals 4

    .line 535
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    const/4 v1, 0x0

    if-ltz v0, :cond_5

    .line 536
    iget v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSize:I

    if-ge v0, v2, :cond_5

    iget-boolean v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 537
    :cond_0
    iget v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v0, v2, :cond_1

    iget v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 539
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 542
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;

    if-nez v2, :cond_3

    return-object v1

    .line 547
    :cond_3
    iget-object v1, v2, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/zui/gallery/ui/ScreenNail;

    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 548
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/zui/gallery/data/MediaItem;)Lcom/zui/gallery/ui/ScreenNail;

    move-result-object v0

    iput-object v0, v2, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/zui/gallery/ui/ScreenNail;

    if-nez p1, :cond_4

    .line 549
    invoke-direct {p0, v2}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateTileProvider(Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;)V

    .line 552
    :cond_4
    iget-object p1, v2, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/zui/gallery/ui/ScreenNail;

    return-object p1

    :cond_5
    :goto_1
    return-object v1
.end method

.method public getTile(IIII)Landroid/graphics/Bitmap;
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/zui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zui/gallery/ui/TileImageViewAdapter;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public isBestChoice(I)Z
    .locals 1

    .line 1557
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1558
    :cond_0
    iget-boolean p1, p1, Lcom/zui/gallery/data/MediaItem;->isBestChoice:Z

    :goto_0
    return p1
.end method

.method public isCamera(I)Z
    .locals 1

    .line 581
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCameraIndex:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCameraVideoHDR(I)Z
    .locals 2

    .line 586
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 588
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result p1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isContinuousShot(I)Z
    .locals 2

    .line 1516
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    .line 1518
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->needShowContinueMark:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    goto :goto_0

    .line 1520
    :cond_1
    iget-boolean p1, p1, Lcom/zui/gallery/data/MediaItem;->isContinuousCover:Z

    if-ne p1, v0, :cond_2

    move v1, v0

    :cond_2
    :goto_0
    return v1
.end method

.method public isContinuousShotMode()Z
    .locals 1

    .line 824
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContinuousShotMode:Z

    return v0
.end method

.method public isDeletable(I)Z
    .locals 1

    .line 735
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 736
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDepthImage(I)Z
    .locals 2

    .line 608
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->enableDepthEditor()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 610
    instance-of v0, p1, Lcom/zui/gallery/data/LocalMediaItem;

    if-eqz v0, :cond_0

    .line 611
    check-cast p1, Lcom/zui/gallery/data/LocalMediaItem;

    .line 612
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalMediaItem;->isMotoralMediaTypeInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalMediaItem;->isDepthImage()Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 775
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHdrPhoto(I)Z
    .locals 3

    .line 713
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 715
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 717
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 718
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 720
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "UserComment"

    .line 721
    invoke-virtual {v1, p1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "HDR"

    .line 722
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 724
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public isMicoVideoImage(I)Z
    .locals 1

    .line 640
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 641
    instance-of v0, p1, Lcom/zui/gallery/data/LocalMediaItem;

    if-eqz v0, :cond_0

    .line 642
    check-cast p1, Lcom/zui/gallery/data/LocalMediaItem;

    .line 643
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalMediaItem;->isMotoralMediaTypeInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalMediaItem;->isMicroVideo()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPanoAlbum()Z
    .locals 1

    .line 1576
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSource:Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_0

    .line 1577
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isPanoAlbum()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPanoVideo(I)Z
    .locals 1

    .line 682
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->isVideo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    .line 683
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GalleryUtils;->isCapturedBy360Mods(Lcom/zui/gallery/data/MediaItem;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPanorama(I)Z
    .locals 3

    .line 597
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 598
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    instance-of v1, p1, Lcom/zui/gallery/data/LocalImage;

    if-eqz v1, :cond_1

    .line 599
    check-cast p1, Lcom/zui/gallery/data/LocalImage;

    .line 600
    invoke-static {p1}, Lcom/zui/gallery/util/GalleryUtils;->isPanoImage(Lcom/zui/gallery/data/MediaItem;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalImage;->is360ModImage()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalImage;->is360ModVideo()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isSelected(I)Z
    .locals 1

    .line 1543
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1544
    :cond_0
    iget-boolean p1, p1, Lcom/zui/gallery/data/MediaItem;->isSelected:Z

    :goto_0
    return p1
.end method

.method public isSelfAlbum()Z
    .locals 1

    .line 1587
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSource:Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_0

    .line 1588
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isSelfAlbum()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSlowVideo(I)Z
    .locals 1

    .line 691
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 693
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isStaticCamera(I)Z
    .locals 0

    .line 652
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->isCamera(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mIsStaticCamera:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isVideo(I)Z
    .locals 2

    .line 657
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 660
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    const/16 v1, 0x12

    if-eq p1, v1, :cond_0

    const/16 v1, 0x13

    if-eq p1, v1, :cond_0

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public moveTo(I)V
    .locals 0

    .line 530
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateCurrentIndex(I)V

    return-void
.end method

.method public pause(Z)V
    .locals 3

    const-string v0, "GallerySpeedDetail"

    const-string v1, "pause"

    .line 447
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 448
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mIsActive:Z

    .line 450
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v0}, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->terminate()V

    :cond_0
    const/4 v0, 0x0

    .line 454
    iput-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;

    .line 456
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSource:Lcom/zui/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSourceListener:Lcom/zui/gallery/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/MediaSet;->removeContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 458
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;

    .line 459
    iget-object v2, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/zui/gallery/util/Future;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/zui/gallery/util/Future;

    invoke-interface {v2}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 460
    :cond_2
    iget-object v2, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/zui/gallery/util/Future;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/zui/gallery/util/Future;

    invoke-interface {v2}, Lcom/zui/gallery/util/Future;->cancel()V

    :cond_3
    if-eqz p1, :cond_1

    .line 462
    iget-object v2, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/zui/gallery/ui/ScreenNail;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/zui/gallery/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/zui/gallery/ui/ScreenNail;

    invoke-interface {v1}, Lcom/zui/gallery/ui/ScreenNail;->recycle()V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 466
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 468
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mTileProvider:Lcom/zui/gallery/ui/TileImageViewAdapter;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/TileImageViewAdapter;->clear()V

    .line 470
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mUploader:Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;

    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/TiledTexture$Uploader;->clear()V

    .line 471
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->freeResources()V

    return-void
.end method

.method public resume()V
    .locals 2

    const-string v0, "GallerySpeedDetail"

    const-string v1, "resume"

    .line 428
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 429
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mIsActive:Z

    .line 430
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->prepareResources()V

    .line 432
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSource:Lcom/zui/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mSourceListener:Lcom/zui/gallery/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 433
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateImageCache()V

    .line 434
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateImageRequests()V

    .line 436
    new-instance v0, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/zui/gallery/app/PhotoDataAdapter;Lcom/zui/gallery/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;

    .line 437
    invoke-virtual {v0}, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->start()V

    .line 439
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->fireDataChange()V

    return-void
.end method

.method public setBestChoice(ZI)V
    .locals 1

    .line 1550
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    .line 1551
    iput-boolean p1, p2, Lcom/zui/gallery/data/MediaItem;->isBestChoice:Z

    return-void
.end method

.method public setContinuousShotMode(Z)V
    .locals 0

    .line 820
    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mContinuousShotMode:Z

    return-void
.end method

.method public setCurrentPhoto(Lcom/zui/gallery/data/Path;I)V
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/zui/gallery/data/Path;

    if-ne v0, p1, :cond_0

    return-void

    .line 805
    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mItemPath:Lcom/zui/gallery/data/Path;

    .line 806
    iput p2, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 807
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 808
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->updateImageCache()V

    .line 809
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoDataAdapter;->fireDataChange()V

    const/4 p2, 0x0

    .line 812
    invoke-virtual {p0, p2}, Lcom/zui/gallery/app/PhotoDataAdapter;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 813
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p2

    if-eq p2, p1, :cond_1

    .line 814
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mReloadTask:Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/zui/gallery/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    :cond_1
    return-void
.end method

.method public setDataListener(Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mDataListener:Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;

    return-void
.end method

.method public setFocusHintDirection(I)V
    .locals 0

    .line 829
    iput p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mFocusHintDirection:I

    return-void
.end method

.method public setFocusHintPath(Lcom/zui/gallery/data/Path;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mFocusHintPath:Lcom/zui/gallery/data/Path;

    return-void
.end method

.method public setNeedFullImage(Z)V
    .locals 1

    .line 575
    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 576
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setSelected(ZI)V
    .locals 1

    .line 1533
    iget v0, p0, Lcom/zui/gallery/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1535
    iput-boolean p1, p2, Lcom/zui/gallery/data/MediaItem;->isSelected:Z

    :cond_0
    return-void
.end method
