.class public Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;
.super Ljava/lang/Object;
.source "LocalTimeAlbumSlidingWindow.java"

# interfaces
.implements Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;,
        Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;,
        Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;,
        Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$PanoSupportListener;,
        Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;,
        Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;,
        Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;
    }
.end annotation


# static fields
.field private static final JOB_LIMIT:I = 0x8

.field private static final MSG_UPDATE_CONTINUSOUS_LABEL_ENTRY:I = 0x2

.field private static final MSG_UPDATE_DURATION_ENTRY:I = 0x3

.field private static final MSG_UPDATE_ENTRY:I = 0x0

.field private static final MSG_UPDATE_LABEL_ENTRY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalTimeAlbumSlidingWindow"


# instance fields
.field private LabeEntryCache:I

.field private mActiveEnd:I

.field private mActiveLabelEnd:I

.field private mActiveLabelStart:I

.field private volatile mActiveRequestCount:I

.field private mActiveStart:I

.field private mApp:Lcom/zui/gallery/app/GalleryApp;

.field private mContentEnd:I

.field private mContentStart:I

.field private volatile mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

.field private final mDurationUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

.field private final mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

.field private volatile mIsActive:Z

.field private mLabelMaker:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

.field private mLabelSize:I

.field private mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

.field private mListener:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;

.field private mNormalContentEnt:I

.field private mNormalContentStart:I

.field private final mNormalData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

.field private mSize:I

.field private final mSmallData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

.field private final mSource:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

.field private final mThreadPool:Lcom/zui/gallery/util/JobLimiter;

.field private final mTileUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

.field private volatile mTimeEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeLabelEntryData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

.field private final mTimeLabelUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

.field private mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

.field private onChange:Z


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;II)V
    .locals 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentStart:I

    .line 147
    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    .line 149
    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveStart:I

    .line 151
    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveEnd:I

    .line 153
    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mNormalContentStart:I

    .line 155
    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mNormalContentEnt:I

    .line 159
    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveRequestCount:I

    .line 161
    iput-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mIsActive:Z

    const/4 v0, -0x1

    .line 175
    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelStart:I

    .line 177
    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelEnd:I

    const/16 v0, 0x16d

    .line 181
    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->LabeEntryCache:I

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->onChange:Z

    .line 211
    invoke-virtual {p2, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->setDataListener(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$DataListener;)V

    .line 212
    iput-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSource:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    .line 214
    new-array p4, p4, [Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    iput-object p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mNormalData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    .line 215
    new-array p4, p5, [Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    iput-object p4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSmallData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    .line 217
    invoke-virtual {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->size()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSize:I

    .line 218
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/app/GalleryApp;

    iput-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mApp:Lcom/zui/gallery/app/GalleryApp;

    .line 220
    iput-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    .line 221
    new-instance p2, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4, p3}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;-><init>(Landroid/content/Context;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;)V

    iput-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mLabelMaker:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    .line 222
    iget p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->LabeEntryCache:I

    new-array p2, p2, [Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    iput-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelEntryData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    .line 224
    new-instance p2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$1;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$1;-><init>(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

    .line 239
    new-instance p2, Lcom/zui/gallery/util/JobLimiter;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object p3

    const/16 p4, 0x8

    invoke-direct {p2, p3, p4}, Lcom/zui/gallery/util/JobLimiter;-><init>(Lcom/zui/gallery/util/ThreadPool;I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mThreadPool:Lcom/zui/gallery/util/JobLimiter;

    .line 240
    new-instance p2, Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/zui/gallery/glrenderer/TextureUploader;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTileUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    .line 241
    new-instance p2, Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/zui/gallery/glrenderer/TextureUploader;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    .line 242
    new-instance p2, Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zui/gallery/glrenderer/TextureUploader;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mDurationUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    return-void
.end method

.method static synthetic access$1000(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$1100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mListener:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mLabelMaker:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveEnd:I

    return p0
.end method

.method static synthetic access$1500(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mDurationUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelEntryData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/util/JobLimiter;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mThreadPool:Lcom/zui/gallery/util/JobLimiter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/ui/SynchronizedHandler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mNormalData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSmallData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->isActiveViewModel(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTileUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveRequestCount:I

    return p0
.end method

.method static synthetic access$906(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;)I
    .locals 1

    .line 48
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method private cancelNonactiveImages()V
    .locals 3

    .line 630
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 633
    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->cancelSlotImage(I)V

    .line 634
    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->cancelSlotImage(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelSlotImage(I)V
    .locals 2

    .line 639
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    array-length v1, v1

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    if-nez p1, :cond_1

    return-void

    .line 643
    :cond_1
    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 644
    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/BitmapLoader;->cancelLoad()V

    .line 645
    :cond_2
    iget-object v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;

    if-eqz v0, :cond_3

    .line 646
    iget-object p1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->cancelLoad()V

    :cond_3
    :goto_0
    return-void
.end method

.method private freeSlotContent(I)V
    .locals 1

    const/4 v0, 0x1

    .line 651
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->freeSlotContent(IZ)V

    return-void
.end method

.method private freeSlotContent(IZ)V
    .locals 2

    .line 655
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    .line 656
    array-length v0, p2

    rem-int/2addr p1, v0

    .line 657
    aget-object v0, p2, p1

    if-eqz v0, :cond_3

    .line 661
    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 662
    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/BitmapLoader;->recycle()V

    .line 663
    :cond_0
    iget-object v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v1, :cond_1

    .line 664
    iget-object v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v1}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    .line 665
    :cond_1
    iget-object v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;

    if-eqz v1, :cond_2

    .line 666
    iget-object v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->recycle()V

    .line 668
    :cond_2
    iget-object v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v1, :cond_3

    .line 669
    iget-object v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    :cond_3
    const/4 v0, 0x0

    .line 672
    aput-object v0, p2, p1

    return-void
.end method

.method private freeTimeLabelContent(I)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelEntryData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    array-length v1, v0

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 401
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->isTimeLabelContentChange(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 402
    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->access$000(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 403
    invoke-static {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->access$000(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->recycle()V

    .line 405
    :cond_0
    iget-object v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v1}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    .line 408
    :cond_1
    iget-object v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->countTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v1, :cond_2

    .line 409
    iget-object v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->countTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelEntryData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_3
    return-void
.end method

.method private isActiveViewModel(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Z
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isTimeLabelContentChange(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;I)Z
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt p2, v0, :cond_0

    return v1

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeEntries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    if-eqz p2, :cond_2

    .line 437
    iget-object v0, p2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    iget-object v2, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    iget-boolean v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->needLoadCount:Z

    if-eqz v0, :cond_1

    iget p2, p2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    iget p1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->totalCount:I

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    move v1, p1

    :cond_2
    :goto_0
    return v1
.end method

.method private prepareSlotContent(I)V
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    array-length v0, v0

    rem-int v0, p1, v0

    .line 685
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    new-instance v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    invoke-direct {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;-><init>()V

    .line 691
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->updateAlbumEntry(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;I)V

    .line 692
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    aput-object v1, p1, v0

    return-void
.end method

.method private prepareTimeLabelContent(I)V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelEntryData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    array-length v1, v0

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    invoke-direct {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;-><init>()V

    .line 420
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->updateTimeLabelEntry(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;I)V

    .line 421
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelEntryData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    array-length v2, v1

    rem-int/2addr p1, v2

    aput-object v0, v1, p1

    :cond_0
    return-void
.end method

.method private requestNonactiveImages()V
    .locals 3

    .line 564
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 567
    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->requestSlotImage(I)Z

    .line 568
    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->requestSlotImage(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private requestSlotImage(I)Z
    .locals 3

    .line 574
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentStart:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_4

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    array-length v2, v2

    rem-int/2addr p1, v2

    aget-object p1, v0, p1

    if-nez p1, :cond_1

    return v1

    .line 580
    :cond_1
    iget-object v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    if-nez v0, :cond_2

    return v1

    .line 620
    :cond_2
    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/BitmapLoader;->startLoad()V

    .line 622
    iget-object v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;

    if-eqz v0, :cond_3

    .line 623
    iget-object v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->startLoad()V

    .line 626
    :cond_3
    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/BitmapLoader;->isRequestInProgress()Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method private setContentLabel(II)V
    .locals 3

    .line 372
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->onChange:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelEnd:I

    if-ne p2, v0, :cond_0

    return-void

    .line 376
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->onChange:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelEnd:I

    if-le p2, v0, :cond_2

    .line 378
    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelStart:I

    if-ltz v2, :cond_2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 383
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelEnd:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->prepareTimeLabelContent(I)V

    .line 384
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelStart:I

    .line 385
    iput-boolean v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->onChange:Z

    return-void

    :cond_3
    move v0, p1

    :goto_2
    if-gt v0, p2, :cond_4

    .line 389
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->prepareTimeLabelContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 392
    :cond_4
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelStart:I

    .line 393
    iput p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelEnd:I

    .line 394
    iput-boolean v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->onChange:Z

    return-void
.end method

.method private setContentWindow(II)V
    .locals 2

    .line 281
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    if-ne p2, v0, :cond_0

    return-void

    .line 283
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mIsActive:Z

    if-nez v0, :cond_1

    .line 284
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentStart:I

    .line 285
    iput p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    .line 286
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSource:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->setActiveWindow(II)V

    return-void

    .line 290
    :cond_1
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_6

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentStart:I

    if-lt v0, p2, :cond_2

    goto :goto_4

    :cond_2
    :goto_0
    if-ge v0, p1, :cond_3

    .line 300
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_3
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    move v1, p2

    :goto_1
    if-ge v1, v0, :cond_4

    .line 303
    invoke-direct {p0, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 305
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSource:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->setActiveWindow(II)V

    .line 306
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentStart:I

    move v1, p1

    :goto_2
    if-ge v1, v0, :cond_5

    .line 307
    invoke-direct {p0, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 309
    :cond_5
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    :goto_3
    if-ge v0, p2, :cond_8

    .line 310
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 291
    :cond_6
    :goto_4
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentStart:I

    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    :goto_5
    if-ge v0, v1, :cond_7

    .line 292
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 294
    :cond_7
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSource:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->setActiveWindow(II)V

    move v0, p1

    :goto_6
    if-ge v0, p2, :cond_8

    .line 296
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 314
    :cond_8
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentStart:I

    .line 315
    iput p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    return-void
.end method

.method private updateAlbumEntry(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;I)V
    .locals 11

    if-nez p1, :cond_0

    .line 750
    new-instance v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    invoke-direct {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 752
    :goto_0
    iget-object v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    .line 753
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSource:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-virtual {v1, p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->get(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 757
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->isGif:Z

    .line 759
    iget-boolean v2, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->isGif:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 760
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->isGif:Z

    .line 764
    :cond_1
    iput-object v1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_1

    .line 765
    :cond_2
    iget-object v3, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v3

    :goto_1
    iput v3, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/4 v3, 0x0

    if-nez v1, :cond_3

    move-object v4, v3

    goto :goto_2

    .line 766
    :cond_3
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v4

    :goto_2
    iput-object v4, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    const/4 v4, 0x0

    if-nez v1, :cond_4

    move v5, v4

    goto :goto_3

    .line 767
    :cond_4
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getRotation()I

    move-result v5

    :goto_3
    iput v5, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->rotation:I

    .line 769
    iget-object v5, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    if-eqz v5, :cond_7

    if-eqz v0, :cond_7

    .line 770
    iget-object v5, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_7

    .line 771
    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 772
    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/ui/BitmapLoader;->recycle()V

    .line 773
    :cond_5
    iget-object v5, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v5, :cond_6

    .line 774
    iget-object v5, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v5}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    .line 775
    :cond_6
    invoke-static {p1, v3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->access$102(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;Lcom/zui/gallery/ui/BitmapLoader;)Lcom/zui/gallery/ui/BitmapLoader;

    .line 776
    iput-object v3, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 777
    iput-object v3, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->content:Lcom/zui/gallery/glrenderer/Texture;

    :cond_7
    if-eqz v1, :cond_8

    .line 781
    iget-boolean v3, v1, Lcom/zui/gallery/data/MediaItem;->isContinuousCover:Z

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    move v2, v4

    :goto_4
    iput-boolean v2, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->isContinuousCover:Z

    .line 782
    iget-object v2, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    if-eqz v2, :cond_c

    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v2

    if-eqz v2, :cond_9

    if-nez v0, :cond_c

    .line 783
    :cond_9
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-eqz v0, :cond_b

    sget-object v2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v0, v2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v0, 0x3

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v0, 0x2

    :goto_6
    move v9, v0

    .line 785
    new-instance v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;

    iget-object v8, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->item:Lcom/zui/gallery/data/MediaItem;

    iget-boolean v10, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->isContinuousCover:Z

    move-object v5, v0

    move-object v6, p0

    move v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$ThumbnailLoader;-><init>(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;ILcom/zui/gallery/data/MediaItem;IZ)V

    invoke-static {p1, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->access$102(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;Lcom/zui/gallery/ui/BitmapLoader;)Lcom/zui/gallery/ui/BitmapLoader;

    .line 790
    :cond_c
    iget-boolean v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->isContinuousCover:Z

    if-eqz v0, :cond_f

    if-eqz v1, :cond_d

    .line 791
    iget v4, v1, Lcom/zui/gallery/data/MediaItem;->continuousCount:I

    :cond_d
    iput v4, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->continuousCount:I

    if-eqz v1, :cond_e

    .line 792
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    goto :goto_7

    :cond_e
    iget-object v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    :goto_7
    iput-object v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->path:Lcom/zui/gallery/data/Path;

    .line 796
    :cond_f
    iget v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_10

    iget v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_10

    iget v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_10

    iget v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_10

    iget v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/16 v2, 0xb

    if-eq v0, v2, :cond_10

    iget v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/16 v2, 0x13

    if-eq v0, v2, :cond_10

    iget v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/16 v2, 0x12

    if-eq v0, v2, :cond_10

    iget v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_11

    .line 804
    :cond_10
    check-cast v1, Lcom/zui/gallery/data/LocalVideo;

    iget v0, v1, Lcom/zui/gallery/data/LocalVideo;->durationInSec:I

    .line 805
    new-instance v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;

    invoke-direct {v1, p0, p2, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;-><init>(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;II)V

    iput-object v1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;

    .line 807
    :cond_11
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    array-length v1, v1

    rem-int/2addr p2, v1

    aput-object p1, v0, p2

    return-void
.end method

.method private declared-synchronized updateAllImageRequests()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 811
    :try_start_0
    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveRequestCount:I

    .line 812
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveStart:I

    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveEnd:I

    :goto_0
    if-ge v0, v1, :cond_1

    .line 813
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->requestSlotImage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 814
    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveRequestCount:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 816
    :cond_1
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveRequestCount:I

    if-nez v0, :cond_2

    .line 817
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->requestNonactiveImages()V

    goto :goto_1

    .line 819
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->cancelNonactiveImages()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateAllLabelRequest()V
    .locals 3

    .line 824
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelStart:I

    :goto_0
    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelEnd:I

    if-gt v0, v1, :cond_1

    .line 826
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelEntryData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelEntryData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    array-length v2, v2

    rem-int v2, v0, v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 829
    invoke-static {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->access$000(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->startLoad(Z)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateTextureUploadQueue()V
    .locals 5

    .line 532
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTileUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->clear()V

    .line 535
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mDurationUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->clear()V

    .line 537
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveStart:I

    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveEnd:I

    :goto_0
    if-ge v0, v1, :cond_3

    .line 538
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    array-length v3, v3

    rem-int v3, v0, v3

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 540
    iget-object v3, v2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v3, :cond_1

    .line 541
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTileUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    iget-object v4, v2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v3, v4}, Lcom/zui/gallery/glrenderer/TextureUploader;->addFgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    .line 543
    :cond_1
    iget-object v3, v2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v3, :cond_2

    .line 544
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mDurationUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    iget-object v2, v2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v3, v2}, Lcom/zui/gallery/glrenderer/TextureUploader;->addFgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    :cond_3
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 553
    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    .line 554
    iget v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveStart:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private updateTimeLabelEntry(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;I)V
    .locals 8

    .line 445
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeEntries:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeEntries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    .line 450
    iput-object v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->timeEntry:Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    .line 452
    iget v5, v0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    const/4 v1, 0x0

    .line 454
    iput v1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->cacheFlag:I

    .line 455
    iput v1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->cacheStatus:I

    .line 457
    iget-object v1, v0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    .line 458
    iget-object v0, v0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->latlong:Ljava/lang/String;

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 460
    iput-object v4, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->title:Ljava/lang/String;

    .line 461
    iput v5, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->totalCount:I

    .line 462
    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->access$000(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 463
    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->access$000(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->recycle()V

    const/4 v0, 0x0

    .line 464
    invoke-static {p1, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->access$002(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;)Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;

    .line 465
    iput-object v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 466
    iput-object v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->countTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 468
    :cond_1
    new-instance v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeLabelLoader;-><init>(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;ILjava/lang/String;IILcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)V

    invoke-static {p1, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->access$002(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;)Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;

    .line 469
    invoke-static {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->access$000(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeBitmapLoader;->startLoad(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateTimeLabelTextureUploadQueue()V
    .locals 3

    .line 518
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->clear()V

    .line 522
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelStart:I

    :goto_0
    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelEnd:I

    if-gt v0, v1, :cond_2

    .line 523
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelEntryData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    array-length v2, v1

    rem-int v2, v0, v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 525
    iget-object v2, v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v2, :cond_1

    .line 526
    iget-object v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    iget-object v1, v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/glrenderer/TextureUploader;->addFgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateTimeLabelTextureUploadQueue(I)V
    .locals 2

    .line 489
    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 491
    :cond_0
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelStart:I

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelEnd:I

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    if-le p1, v0, :cond_2

    .line 498
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelEnd:I

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_4

    .line 502
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelEntryData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    if-eqz p1, :cond_3

    .line 504
    iget-object v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v0, :cond_3

    .line 505
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    iget-object p1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/glrenderer/TextureUploader;->addFgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    :cond_3
    return-void

    .line 509
    :cond_4
    iget p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelStart:I

    :goto_0
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelEnd:I

    if-gt p1, v0, :cond_6

    .line 510
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelEntryData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    array-length v1, v0

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    .line 512
    iget-object v1, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v1, :cond_5

    .line 513
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    iget-object v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->addFgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method private uploadBgTextureInSlot(I)V
    .locals 2

    .line 474
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_2

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    array-length v1, v1

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    return-void

    .line 477
    :cond_0
    iget-object v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTileUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    iget-object v1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/glrenderer/TextureUploader;->addBgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    .line 483
    :cond_1
    iget-object v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mDurationUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    iget-object p1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/glrenderer/TextureUploader;->addBgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 6

    .line 885
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mNormalData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 886
    array-length v0, v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 888
    iget-object v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mNormalData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    aget-object v4, v4, v3

    if-eqz v4, :cond_3

    .line 890
    invoke-static {v4}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 891
    invoke-static {v4}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/ui/BitmapLoader;->recycle()V

    .line 892
    :cond_0
    iget-object v5, v4, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v5, :cond_1

    .line 893
    iget-object v5, v4, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v5}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    .line 894
    :cond_1
    iget-object v5, v4, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;

    if-eqz v5, :cond_2

    .line 895
    iget-object v5, v4, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;

    invoke-virtual {v5}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->recycle()V

    .line 897
    :cond_2
    iget-object v5, v4, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v5, :cond_3

    .line 898
    iget-object v4, v4, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v4}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    .line 901
    :cond_3
    iget-object v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mNormalData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    aput-object v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 904
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSmallData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    if-eqz v0, :cond_9

    .line 905
    array-length v0, v0

    :goto_1
    if-ge v2, v0, :cond_9

    .line 907
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSmallData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    aget-object v3, v3, v2

    if-eqz v3, :cond_8

    .line 909
    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 910
    invoke-static {v3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->access$100(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;)Lcom/zui/gallery/ui/BitmapLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/ui/BitmapLoader;->recycle()V

    .line 911
    :cond_5
    iget-object v4, v3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v4, :cond_6

    .line 912
    iget-object v4, v3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v4}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    .line 913
    :cond_6
    iget-object v4, v3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;

    if-eqz v4, :cond_7

    .line 914
    iget-object v4, v3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->videoDurationLoader:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;

    invoke-virtual {v4}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$LocalTimeVideoDurationLoader;->recycle()V

    .line 916
    :cond_7
    iget-object v4, v3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v4, :cond_8

    .line 917
    iget-object v3, v3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;->durationTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v3}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    .line 920
    :cond_8
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSmallData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    aput-object v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method public get(I)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;
    .locals 2

    .line 257
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    array-length v1, v1

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTimeLabel(I)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;
    .locals 2

    .line 270
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->isActiveLabelIndex(I)Z

    .line 273
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelEntryData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isActiveLabelIndex(I)Z
    .locals 1

    .line 277
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveLabelEnd:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isActiveSlot(I)Z
    .locals 1

    .line 266
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onChangeLabel()V
    .locals 3

    const-string v0, "LocalTimeAlbumSlidingWindow"

    const-string v1, "onChangeLabel"

    .line 862
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeEntries:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 868
    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->freeTimeLabelContent(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_2

    .line 871
    invoke-direct {p0, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->prepareTimeLabelContent(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onContentChanged(I)V
    .locals 1

    .line 840
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 841
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->freeSlotContent(I)V

    .line 842
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->prepareSlotContent(I)V

    .line 843
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->updateAllImageRequests()V

    .line 844
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mListener:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->isActiveSlot(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 845
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mListener:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;

    invoke-interface {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public onSizeChanged(ILjava/util/List;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;",
            "Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_9

    if-nez p3, :cond_0

    goto/16 :goto_5

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p3, :cond_2

    .line 706
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentStart:I

    iget v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge v0, v3, :cond_1

    .line 707
    invoke-direct {p0, v0, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->freeSlotContent(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 711
    :cond_1
    iput v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    iput v2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentStart:I

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 713
    :goto_1
    iput-object p3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-eqz p3, :cond_4

    .line 714
    sget-object v3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne p3, v3, :cond_3

    goto :goto_2

    .line 717
    :cond_3
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSmallData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    iput-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    goto :goto_3

    .line 715
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mNormalData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    iput-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    .line 719
    :goto_3
    iget v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSize:I

    if-ne v3, p1, :cond_5

    iget-object v3, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeEntries:Ljava/util/List;

    if-ne v3, p2, :cond_5

    if-eqz v0, :cond_9

    .line 720
    :cond_5
    iput-boolean v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->onChange:Z

    .line 721
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSize:I

    .line 722
    iput-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeEntries:Ljava/util/List;

    .line 723
    iget p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mLabelSize:I

    .line 724
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mLabelSize:I

    :goto_4
    if-ge v2, p1, :cond_6

    .line 726
    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->freeTimeLabelContent(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 738
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mListener:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;

    if-eqz p1, :cond_7

    .line 739
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSize:I

    invoke-interface {p1, v0, p2, p3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;->onSizeChanged(ILjava/util/List;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)V

    .line 740
    :cond_7
    iget p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    iget p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSize:I

    if-le p1, p2, :cond_8

    .line 741
    iput p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    .line 742
    :cond_8
    iget p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveEnd:I

    iget p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSize:I

    if-le p1, p2, :cond_9

    .line 743
    iput p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveEnd:I

    :cond_9
    :goto_5
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 0

    .line 342
    iget-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mLabelMaker:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->setLabelWidth(I)V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 876
    iput-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mIsActive:Z

    .line 877
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTileUploader:Lcom/zui/gallery/glrenderer/TextureUploader;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextureUploader;->clear()V

    .line 878
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->freeResources()V

    return-void
.end method

.method public resume()V
    .locals 2

    const/4 v0, 0x1

    .line 851
    iput-boolean v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mIsActive:Z

    .line 852
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->prepareResources()V

    .line 853
    invoke-virtual {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->onChangeLabel()V

    .line 854
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentStart:I

    iget v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 855
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 857
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->updateAllLabelRequest()V

    .line 858
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->updateAllImageRequests()V

    return-void
.end method

.method public setActiveLabel(II)V
    .locals 2

    if-gt p1, p2, :cond_1

    sub-int v0, p2, p1

    .line 362
    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mTimeLabelEntryData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;

    array-length v1, v1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mLabelSize:I

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->setContentLabel(II)V

    .line 367
    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->updateTimeLabelTextureUploadQueue(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 6

    const-string v0, " mSize "

    const-string v1, " mData.length "

    const-string v2, " end: "

    const-string/jumbo v3, "siezeBug"

    if-gt p1, p2, :cond_2

    sub-int v4, p2, p1

    .line 319
    iget-object v5, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    array-length v5, v5

    if-gt v4, v5, :cond_2

    iget v4, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSize:I

    if-le p2, v4, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start222222222: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    array-length v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSize:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    .line 328
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveStart:I

    .line 329
    iput p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr p1, p2

    .line 331
    div-int/lit8 p1, p1, 0x2

    array-length p2, v0

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSize:I

    array-length v1, v0

    sub-int/2addr p2, v1

    const/4 v1, 0x0

    .line 332
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 331
    invoke-static {p1, v1, p2}, Lcom/zui/gallery/common/Utils;->clamp(III)I

    move-result p1

    .line 333
    array-length p2, v0

    add-int/2addr p2, p1

    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSize:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->setContentWindow(II)V

    .line 335
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->updateTextureUploadQueue()V

    .line 336
    iget-boolean p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mIsActive:Z

    if-eqz p1, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->updateAllImageRequests()V

    :cond_1
    return-void

    .line 321
    :cond_2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start111111111: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mData:[Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$AlbumEntry;

    array-length p1, p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mSize:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLabelSpec(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;)V
    .locals 1

    .line 245
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mLabelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    .line 246
    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mLabelMaker:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->setLabelSpec(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;)V

    .line 248
    invoke-direct {p0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->updateAllLabelRequest()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow;->mListener:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$Listener;

    return-void
.end method
