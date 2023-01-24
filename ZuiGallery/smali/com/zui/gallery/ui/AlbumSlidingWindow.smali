.class public Lcom/zui/gallery/ui/AlbumSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcom/zui/gallery/app/AlbumDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;,
        Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;,
        Lcom/zui/gallery/ui/AlbumSlidingWindow$PanoSupportListener;,
        Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;,
        Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;
    }
.end annotation


# static fields
.field private static final JOB_LIMIT:I = 0x2

.field private static final MSG_UPDATE_CONTINUSOUS_SHOTS_LABEL_ENTRY:I = 0x1

.field private static final MSG_UPDATE_DURATION_ENTRY:I = 0x3

.field private static final MSG_UPDATE_ENTRY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AlbumSlidingWindow"


# instance fields
.field private final DELAY_TIME:I

.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mApp:Lcom/zui/gallery/app/GalleryApp;

.field private mContentEnd:I

.field private mContentStart:I

.field private final mContinusousLabelUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

.field private final mData:[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

.field private final mDurationUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

.field private final mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private final mLabelMaker:Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;

.field private mListener:Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;

.field private mSize:I

.field private final mSource:Lcom/zui/gallery/app/AlbumDataLoader;

.field private final mThreadPool:Lcom/zui/gallery/util/JobLimiter;

.field private final mTileUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

.field private needContinuesCover:Z


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/app/AlbumDataLoader;ILcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;)V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    .line 61
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->DELAY_TIME:I

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    .line 102
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 104
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 105
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 109
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 110
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 137
    invoke-virtual {p2, p0}, Lcom/zui/gallery/app/AlbumDataLoader;->setDataListener(Lcom/zui/gallery/app/AlbumDataLoader$DataListener;)V

    .line 138
    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/zui/gallery/app/AlbumDataLoader;

    .line 139
    new-array p3, p3, [Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    iput-object p3, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    .line 140
    invoke-virtual {p2}, Lcom/zui/gallery/app/AlbumDataLoader;->size()I

    move-result p3

    iput p3, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mSize:I

    .line 141
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object p3

    check-cast p3, Lcom/zui/gallery/app/GalleryApp;

    iput-object p3, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mApp:Lcom/zui/gallery/app/GalleryApp;

    .line 143
    new-instance p3, Lcom/zui/gallery/ui/AlbumSlidingWindow$1;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow$1;-><init>(Lcom/zui/gallery/ui/AlbumSlidingWindow;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p3, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

    .line 157
    new-instance p3, Lcom/zui/gallery/util/JobLimiter;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p3, v0, v1}, Lcom/zui/gallery/util/JobLimiter;-><init>(Lcom/zui/gallery/util/ThreadPool;I)V

    iput-object p3, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mThreadPool:Lcom/zui/gallery/util/JobLimiter;

    .line 158
    new-instance p3, Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/zui/gallery/glrenderer/TextureUploader;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p3, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mTileUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    .line 159
    new-instance p3, Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/zui/gallery/glrenderer/TextureUploader;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p3, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContinusousLabelUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    .line 161
    new-instance p3, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p4}, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;-><init>(Landroid/content/Context;Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;)V

    iput-object p3, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mLabelMaker:Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;

    .line 168
    new-instance p3, Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/zui/gallery/glrenderer/TextureUploader;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p3, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mDurationUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    .line 171
    invoke-virtual {p2}, Lcom/zui/gallery/app/AlbumDataLoader;->isCameraAlbum()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->needContinuesCover:Z

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/AlbumSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/ui/AlbumSlidingWindow;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    return p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mDurationUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/app/AlbumDataLoader;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/zui/gallery/app/AlbumDataLoader;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/util/JobLimiter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mThreadPool:Lcom/zui/gallery/util/JobLimiter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/ui/SynchronizedHandler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mTileUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/AlbumSlidingWindow;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return p0
.end method

.method static synthetic access$606(Lcom/zui/gallery/ui/AlbumSlidingWindow;)I
    .locals 1

    .line 42
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/AlbumSlidingWindow;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$800(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/ui/AlbumSlidingWindow;)Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mLabelMaker:Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;

    return-object p0
.end method

.method private cancelNonactiveImages()V
    .locals 3

    .line 318
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 321
    iget v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    .line 322
    iget v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelSlotImage(I)V
    .locals 2

    .line 327
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    .line 330
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/BitmapLoader;->cancelLoad()V

    .line 333
    :cond_1
    iget-object v0, p1, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->cancelLoad()V

    :cond_2
    :goto_0
    return-void
.end method

.method private freeSlotContent(I)V
    .locals 1

    const/4 v0, 0x1

    .line 337
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->freeSlotContent(IZ)V

    return-void
.end method

.method private freeSlotContent(IZ)V
    .locals 2

    .line 341
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    .line 342
    array-length v0, p2

    rem-int/2addr p1, v0

    .line 343
    aget-object v0, p2, p1

    if-eqz v0, :cond_3

    .line 347
    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 348
    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/BitmapLoader;->recycle()V

    .line 349
    :cond_0
    iget-object v1, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v1}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    .line 351
    :cond_1
    iget-object v1, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->recycle()V

    .line 352
    :cond_2
    iget-object v1, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    :cond_3
    const/4 v0, 0x0

    .line 354
    aput-object v0, p2, p1

    return-void
.end method

.method private isVideoType(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private prepareSlotContent(I)V
    .locals 11

    .line 358
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v1, v0

    rem-int v1, p1, v1

    .line 359
    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    new-instance v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    invoke-direct {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;-><init>()V

    .line 365
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/zui/gallery/app/AlbumDataLoader;->get(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v2

    .line 366
    iget-object v3, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    .line 367
    iput-object v2, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    const/4 v4, 0x1

    if-nez v2, :cond_1

    move v5, v4

    goto :goto_1

    .line 369
    :cond_1
    iget-object v5, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v5

    :goto_1
    iput v5, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/4 v5, 0x0

    if-nez v2, :cond_2

    move-object v6, v5

    goto :goto_2

    .line 370
    :cond_2
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v6

    :goto_2
    iput-object v6, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    const/4 v6, 0x0

    if-nez v2, :cond_3

    move v7, v6

    goto :goto_3

    .line 371
    :cond_3
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getRotation()I

    move-result v7

    :goto_3
    iput v7, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    if-eqz v2, :cond_4

    .line 372
    iget-boolean v7, v2, Lcom/zui/gallery/data/MediaItem;->isContinuousCover:Z

    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_4

    :cond_4
    move v7, v6

    :goto_4
    iput-boolean v7, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->isContinuousCover:Z

    .line 374
    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    if-eqz v7, :cond_7

    if-eqz v3, :cond_7

    .line 375
    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v7

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_7

    .line 376
    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 377
    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zui/gallery/ui/BitmapLoader;->recycle()V

    .line 378
    :cond_5
    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v7, :cond_6

    .line 379
    iget-object v7, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v7}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    .line 380
    :cond_6
    invoke-static {v0, v5}, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$002(Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;Lcom/zui/gallery/ui/BitmapLoader;)Lcom/zui/gallery/ui/BitmapLoader;

    .line 381
    iput-object v5, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 382
    iput-object v5, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/zui/gallery/glrenderer/Texture;

    .line 386
    :cond_7
    iget-object v5, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    if-eqz v5, :cond_b

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v5

    if-eqz v5, :cond_8

    if-nez v3, :cond_b

    .line 387
    :cond_8
    new-instance v3, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;

    iget-object v5, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    iget-boolean v7, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->isContinuousCover:Z

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->needContinuesCover:Z

    if-eqz v7, :cond_9

    goto :goto_5

    :cond_9
    move v4, v6

    :goto_5
    invoke-direct {v3, p0, p1, v5, v4}, Lcom/zui/gallery/ui/AlbumSlidingWindow$ThumbnailLoader;-><init>(Lcom/zui/gallery/ui/AlbumSlidingWindow;ILcom/zui/gallery/data/MediaItem;Z)V

    invoke-static {v0, v3}, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$002(Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;Lcom/zui/gallery/ui/BitmapLoader;)Lcom/zui/gallery/ui/BitmapLoader;

    .line 389
    iget-boolean v3, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->isContinuousCover:Z

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->needContinuesCover:Z

    if-eqz v3, :cond_b

    if-eqz v2, :cond_a

    .line 390
    iget-boolean v3, v2, Lcom/zui/gallery/data/MediaItem;->isContinuousCover:Z

    if-eqz v3, :cond_a

    iget v6, v2, Lcom/zui/gallery/data/MediaItem;->continuousCount:I

    :cond_a
    iput v6, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->continuousCount:I

    .line 393
    :cond_b
    iget v3, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    invoke-direct {p0, v3}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->isVideoType(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 394
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AlbumDataLoader;->isWeixinAlbum()Z

    move-result v3

    if-nez v3, :cond_c

    .line 395
    move-object v3, v2

    check-cast v3, Lcom/zui/gallery/data/LocalVideo;

    iget v3, v3, Lcom/zui/gallery/data/LocalVideo;->durationInSec:I

    .line 396
    new-instance v4, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;

    invoke-direct {v4, p0, p1, v3}, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;-><init>(Lcom/zui/gallery/ui/AlbumSlidingWindow;II)V

    iput-object v4, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;

    :cond_c
    if-eqz v2, :cond_d

    .line 401
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object p1

    const-string v3, "image/gif"

    .line 402
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->isGif:Z

    .line 404
    iget-boolean p1, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->isGif:Z

    if-nez p1, :cond_d

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 405
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".gif"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->isGif:Z

    .line 410
    :cond_d
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    aput-object v0, p1, v1

    return-void
.end method

.method private requestNonactiveImages()V
    .locals 3

    .line 288
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 291
    iget v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    .line 292
    iget v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private requestSlotImage(I)Z
    .locals 3

    .line 298
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v0

    rem-int/2addr p1, v2

    aget-object p1, v0, p1

    .line 301
    iget-object v0, p1, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    if-nez v0, :cond_1

    return v1

    .line 309
    :cond_1
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/BitmapLoader;->startLoad()V

    .line 311
    iget-object v0, p1, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p1, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow$VideoDurationLoader;->startLoad()V

    .line 314
    :cond_2
    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/BitmapLoader;->isRequestInProgress()Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method private setContentWindow(II)V
    .locals 2

    .line 191
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ne p2, v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v0, :cond_1

    .line 194
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    .line 195
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 196
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/AlbumDataLoader;->setActiveWindow(II)V

    return-void

    .line 200
    :cond_1
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_6

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt v0, p2, :cond_2

    goto :goto_4

    :cond_2
    :goto_0
    if-ge v0, p1, :cond_3

    .line 210
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_3
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    move v1, p2

    :goto_1
    if-ge v1, v0, :cond_4

    .line 213
    invoke-direct {p0, v1}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/AlbumDataLoader;->setActiveWindow(II)V

    .line 216
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    move v1, p1

    :goto_2
    if-ge v1, v0, :cond_5

    .line 217
    invoke-direct {p0, v1}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 219
    :cond_5
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_3
    if-ge v0, p2, :cond_8

    .line 220
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 201
    :cond_6
    :goto_4
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_5
    if-ge v0, v1, :cond_7

    .line 202
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 204
    :cond_7
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mSource:Lcom/zui/gallery/app/AlbumDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/AlbumDataLoader;->setActiveWindow(II)V

    move v0, p1

    :goto_6
    if-ge v0, p2, :cond_8

    .line 206
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 223
    :cond_8
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    .line 224
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    return-void
.end method

.method private updateAllImageRequests()V
    .locals 3

    const/4 v0, 0x0

    .line 414
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 415
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    :goto_0
    if-ge v0, v1, :cond_1

    .line 416
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    iget v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_1
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    if-nez v0, :cond_2

    .line 420
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    goto :goto_1

    .line 422
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->cancelNonactiveImages()V

    :goto_1
    return-void
.end method

.method private updateTextureUploadQueue()V
    .locals 5

    .line 257
    iget-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mTileUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->clear()V

    .line 260
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mDurationUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->clear()V

    .line 261
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContinusousLabelUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->clear()V

    .line 263
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    :goto_0
    if-ge v0, v1, :cond_3

    .line 264
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v3, v2

    rem-int v3, v0, v3

    aget-object v2, v2, v3

    .line 265
    iget-object v3, v2, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v3, :cond_1

    .line 266
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mTileUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    iget-object v4, v2, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v3, v4}, Lcom/zui/gallery/glrenderer/TextureUploader;->addFgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    .line 268
    :cond_1
    iget-object v3, v2, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v3, :cond_2

    .line 269
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mDurationUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    iget-object v2, v2, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v3, v2}, Lcom/zui/gallery/glrenderer/TextureUploader;->addFgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_3
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 277
    iget v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    .line 278
    iget v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private uploadBgTextureInSlot(I)V
    .locals 2

    .line 248
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    .line 250
    iget-object v0, p1, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mTileUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    iget-object p1, p1, Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/glrenderer/TextureUploader;->addBgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 3

    const-string v0, "AlbumSlidingWindow"

    const-string v1, "AlbumPageSlidingWindow destory"

    .line 653
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 654
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 655
    iget v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge v1, v2, :cond_0

    .line 656
    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->freeSlotContent(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;
    .locals 2

    .line 179
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    .line 183
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isActiveSlot(I)Z
    .locals 1

    .line 187
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onContentChanged(I)V
    .locals 1

    .line 623
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 624
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 625
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 626
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 627
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 628
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;

    invoke-interface {p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 2

    .line 608
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mSize:I

    if-eq v0, p1, :cond_2

    .line 609
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mSize:I

    .line 610
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_0

    .line 611
    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;->onSizeChanged(I)V

    .line 612
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mSize:I

    if-le v0, v1, :cond_1

    .line 613
    iput v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 614
    :cond_1
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mSize:I

    if-le v0, v1, :cond_2

    .line 615
    iput v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 618
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mLabelMaker:Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->setLabelWidth(I)V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 643
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 644
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mTileUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->clear()V

    .line 645
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContinusousLabelUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->clear()V

    .line 646
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->freeResources()V

    return-void
.end method

.method public resume()V
    .locals 2

    const/4 v0, 0x1

    .line 634
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 635
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->prepareResources()V

    .line 636
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentStart:I

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 637
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    return-void
.end method

.method public setActiveWindow(II)V
    .locals 3

    if-gt p1, p2, :cond_1

    sub-int v0, p2, p1

    .line 228
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v1

    if-gt v0, v2, :cond_1

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mSize:I

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 235
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr p1, p2

    .line 237
    div-int/lit8 p1, p1, 0x2

    array-length p2, v1

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    array-length p2, v1

    sub-int/2addr v0, p2

    const/4 p2, 0x0

    .line 238
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 237
    invoke-static {p1, p2, v0}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result p1

    .line 239
    array-length p2, v1

    add-int/2addr p2, p1

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->setContentWindow(II)V

    .line 241
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->updateTextureUploadQueue()V

    .line 242
    iget-boolean p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz p1, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setListener(Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSlidingWindow;->mListener:Lcom/zui/gallery/ui/AlbumSlidingWindow$Listener;

    return-void
.end method
