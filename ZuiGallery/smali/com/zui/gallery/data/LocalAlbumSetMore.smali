.class public Lcom/zui/gallery/data/LocalAlbumSetMore;
.super Lcom/zui/gallery/data/MediaSet;
.source "LocalAlbumSetMore.java"

# interfaces
.implements Lcom/zui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/LocalAlbumSetMore$SyncLoader;,
        Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/gallery/data/MediaSet;",
        "Lcom/zui/gallery/util/FutureListener<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTINUE_FOLDER_STRING:Ljava/lang/String; = "DCIM/Camera/Continuous_IMG"

.field private static final PANORAMA_FOLDER_STRING:Ljava/lang/String; = "DCIM/Camera/Panorama"

.field public static final PATH_ALL:Lcom/zui/gallery/data/Path;

.field public static final PATH_ALL_IMAGE_MORE:Lcom/zui/gallery/data/Path;

.field public static final PATH_ALL_MORE:Lcom/zui/gallery/data/Path;

.field public static final PATH_ALL_VIDEO_MORE:Lcom/zui/gallery/data/Path;

.field public static final PATH_CAMERA:Lcom/zui/gallery/data/Path;

.field public static final PATH_CAMERA_IMAGE:Lcom/zui/gallery/data/Path;

.field public static final PATH_CAMERA_VIDEO:Lcom/zui/gallery/data/Path;

.field public static final PATH_CONTINUOUS_ALL:Lcom/zui/gallery/data/Path;

.field public static final PATH_IMAGE:Lcom/zui/gallery/data/Path;

.field public static final PATH_IMAGE_DIR:Lcom/zui/gallery/data/Path;

.field public static final PATH_IMAGE_MORE:Lcom/zui/gallery/data/Path;

.field public static final PATH_VIDEO:Lcom/zui/gallery/data/Path;

.field public static final PATH_VIDEO_DIR:Lcom/zui/gallery/data/Path;

.field public static final PATH_VIDEO_MORE:Lcom/zui/gallery/data/Path;

.field private static final TAG:Ljava/lang/String; = "LocalAlbumSetMore"

.field public static final mWatchUris:[Landroid/net/Uri;

.field public static maxOtherAlbumCount:I


# instance fields
.field private volatile isGetContent:Z

.field private volatile isHaveCameraRoll:Z

.field private volatile isHaveFavorite:Z

.field private mAlbumEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/AlbumSetCategoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private mLoadBuffer:[Ljava/lang/Object;

.field private mLoadTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

.field private mSyncTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "/local/all"

    .line 65
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_ALL:Lcom/zui/gallery/data/Path;

    const-string v0, "/local/image"

    .line 66
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    const-string v0, "/local/video"

    .line 67
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    const-string v0, "/local/image/all/more"

    .line 68
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v1

    sput-object v1, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_IMAGE_MORE:Lcom/zui/gallery/data/Path;

    const-string v1, "/local/video/all/more"

    .line 70
    invoke-static {v1}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_VIDEO_MORE:Lcom/zui/gallery/data/Path;

    const-string v2, "/local/continuous/all"

    .line 72
    invoke-static {v2}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_CONTINUOUS_ALL:Lcom/zui/gallery/data/Path;

    const-string v2, "/local/all/more"

    .line 74
    invoke-static {v2}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_ALL_MORE:Lcom/zui/gallery/data/Path;

    const-string v2, "/local/image/dir"

    .line 77
    invoke-static {v2}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_IMAGE_DIR:Lcom/zui/gallery/data/Path;

    const-string v2, "/local/video/dir"

    .line 78
    invoke-static {v2}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_VIDEO_DIR:Lcom/zui/gallery/data/Path;

    .line 81
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_ALL_IMAGE_MORE:Lcom/zui/gallery/data/Path;

    .line 83
    invoke-static {v1}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_ALL_VIDEO_MORE:Lcom/zui/gallery/data/Path;

    const-string v0, "/local/camera"

    .line 85
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_CAMERA:Lcom/zui/gallery/data/Path;

    const-string v0, "/local/camera/image"

    .line 86
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_CAMERA_IMAGE:Lcom/zui/gallery/data/Path;

    const-string v0, "/local/camera/video"

    .line 87
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_CAMERA_VIDEO:Lcom/zui/gallery/data/Path;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/Uri;

    .line 91
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/zui/gallery/database/GalleryContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/zui/gallery/database/GalleryContract$Whites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mWatchUris:[Landroid/net/Uri;

    .line 125
    sput v2, Lcom/zui/gallery/data/LocalAlbumSetMore;->maxOtherAlbumCount:I

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V
    .locals 2

    .line 127
    invoke-static {}, Lcom/zui/gallery/data/LocalAlbumSetMore;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    .line 128
    iput-object p2, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 129
    new-instance p1, Landroid/os/Handler;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mHandler:Landroid/os/Handler;

    .line 130
    new-instance p1, Lcom/zui/gallery/data/ChangeNotifier;

    sget-object v0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mWatchUris:[Landroid/net/Uri;

    invoke-direct {p1, p0, v0, p2}, Lcom/zui/gallery/data/ChangeNotifier;-><init>(Lcom/zui/gallery/data/MediaSet;[Landroid/net/Uri;Lcom/zui/gallery/app/GalleryApp;)V

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    .line 131
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100249

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mName:Ljava/lang/String;

    const/4 p1, 0x6

    .line 134
    iput p1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mType:I

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/data/LocalAlbumSetMore;)Lcom/zui/gallery/app/GalleryApp;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/data/LocalAlbumSetMore;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mType:I

    return p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/data/LocalAlbumSetMore;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->isGetContent:Z

    return p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/data/LocalAlbumSetMore;[Lcom/zui/gallery/data/BucketHelper$BucketEntry;Lcom/zui/gallery/data/DataManager;I)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/data/LocalAlbumSetMore;->getLocalAllMergeAlbum([Lcom/zui/gallery/data/BucketHelper$BucketEntry;Lcom/zui/gallery/data/DataManager;I)Lcom/zui/gallery/data/MediaSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lcom/zui/gallery/data/LocalAlbumSetMore;->findBucket([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500([Ljava/lang/Object;II)V
    .locals 0

    .line 61
    invoke-static {p0, p1, p2}, Lcom/zui/gallery/data/LocalAlbumSetMore;->circularShiftRight([Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/zui/gallery/data/LocalAlbumSetMore;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/zui/gallery/data/LocalAlbumSetMore;->isOnlyImageOrOnlyVideo()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/data/LocalAlbumSetMore;Lcom/zui/gallery/data/Path;III)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/gallery/data/LocalAlbumSetMore;->getCameraAlumbSet(Lcom/zui/gallery/data/Path;III)Lcom/zui/gallery/data/MediaSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/data/LocalAlbumSetMore;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/zui/gallery/data/LocalAlbumSetMore;->getLocalAlbum(Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object p0

    return-object p0
.end method

.method private static circularShiftRight([Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    .line 850
    aget-object v0, p0, p2

    :goto_0
    if-le p2, p1, :cond_0

    add-int/lit8 v1, p2, -0x1

    .line 852
    aget-object v1, p0, v1

    aput-object v1, p0, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 854
    :cond_0
    aput-object v0, p0, p1

    return-void
.end method

.method private static findBucket([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I
    .locals 3

    .line 167
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 168
    aget-object v2, p0, v1

    iget v2, v2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static findSystemGroupBucket([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I
    .locals 3

    .line 175
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 176
    aget-object v2, p0, v1

    iget-object v2, v2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    aget-object v2, p0, v1

    iget-object v2, v2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getCameraAlumbSet(Lcom/zui/gallery/data/Path;III)Lcom/zui/gallery/data/MediaSet;
    .locals 8

    .line 584
    iget-object p4, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p4}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p4

    .line 585
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {p1, v0}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v2

    .line 586
    invoke-virtual {p4, v2}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 589
    invoke-direct {p0}, Lcom/zui/gallery/data/LocalAlbumSetMore;->isOnlyImageOrOnlyVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz v0, :cond_0

    const-string p1, "LocalAlbumSetMore"

    const-string v0, "recreate camere LocalMergeAlbum"

    .line 591
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 593
    :cond_0
    check-cast p1, Lcom/zui/gallery/data/MediaSet;

    return-object p1

    .line 601
    :cond_1
    :goto_0
    sget-object p1, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {p1, v0}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object p1

    .line 602
    sget-object v0, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 605
    invoke-virtual {p4, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaSet;

    .line 607
    invoke-virtual {p4, v0}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaSet;

    .line 613
    new-instance v1, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;

    sget-object v3, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_CONTINUOUS_ALL:Lcom/zui/gallery/data/Path;

    iget-object v4, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v1, v3, v4}, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V

    .line 616
    sget-object v3, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    .line 617
    invoke-virtual {v3, p3}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v3

    .line 616
    invoke-virtual {p4, v3}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/MediaSet;

    .line 618
    sget-object v4, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    .line 619
    invoke-virtual {v4, p3}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object p3

    .line 618
    invoke-virtual {p4, p3}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p3

    check-cast p3, Lcom/zui/gallery/data/MediaSet;

    .line 625
    sget-object p4, Lcom/zui/gallery/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 626
    sget-object v4, Lcom/zui/gallery/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne p2, v7, :cond_2

    new-array p2, v7, [Lcom/zui/gallery/data/MediaSet;

    aput-object p1, p2, v6

    aput-object v3, p2, v5

    .line 629
    new-instance p1, Lcom/zui/gallery/data/LocalMergeAlbum;

    sget-object p3, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_CAMERA_IMAGE:Lcom/zui/gallery/data/Path;

    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-direct {p1, p3, p4, p2, v0}, Lcom/zui/gallery/data/LocalMergeAlbum;-><init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;[Lcom/zui/gallery/data/MediaSet;I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    if-ne p2, v3, :cond_3

    new-array p1, v7, [Lcom/zui/gallery/data/MediaSet;

    aput-object v0, p1, v6

    aput-object p3, p1, v5

    .line 632
    new-instance p2, Lcom/zui/gallery/data/LocalMergeAlbum;

    sget-object p3, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_CAMERA_VIDEO:Lcom/zui/gallery/data/Path;

    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-direct {p2, p3, p4, p1, v0}, Lcom/zui/gallery/data/LocalMergeAlbum;-><init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;[Lcom/zui/gallery/data/MediaSet;I)V

    move-object p1, p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x3

    new-array p2, p2, [Lcom/zui/gallery/data/MediaSet;

    aput-object p1, p2, v6

    aput-object v0, p2, v5

    aput-object v1, p2, v7

    .line 637
    new-instance p1, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    const v5, 0x10100d0

    iget-object v6, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    move-object v1, p1

    move-object v3, v4

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;-><init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;[Lcom/zui/gallery/data/MediaSet;ILcom/zui/gallery/app/GalleryApp;)V

    :goto_1
    return-object p1
.end method

.method private getLocalAlbum(Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    .line 646
    sget-object v10, Lcom/zui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v10

    .line 647
    :try_start_0
    invoke-virtual/range {p3 .. p4}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v11

    .line 648
    invoke-virtual {v0, v11}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 650
    check-cast v2, Lcom/zui/gallery/data/MediaSet;

    monitor-exit v10

    return-object v2

    :cond_0
    const/4 v12, 0x2

    if-eq v1, v12, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v4, 0x6

    if-eq v1, v4, :cond_2

    const/16 v0, 0x14

    if-ne v1, v0, :cond_1

    .line 672
    sget-object v0, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v8}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 673
    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    invoke-virtual {v1, v8}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v1

    .line 675
    iget-object v5, v7, Lcom/zui/gallery/data/LocalAlbumSetMore;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v5}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v5

    .line 676
    invoke-virtual {v5, v0}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaSet;

    .line 678
    invoke-virtual {v5, v1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaSet;

    .line 681
    sget v6, Lcom/zui/gallery/util/MediaSetUtils;->PANORAMA_BUCKET_ID:I

    .line 682
    sget-object v9, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    .line 683
    invoke-virtual {v9, v6}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v6

    .line 682
    invoke-virtual {v5, v6}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/data/MediaSet;

    .line 684
    new-instance v9, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;

    sget-object v15, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_CONTINUOUS_ALL:Lcom/zui/gallery/data/Path;

    iget-object v4, v7, Lcom/zui/gallery/data/LocalAlbumSetMore;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v9, v15, v4}, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V

    .line 687
    sget-object v4, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    sget v15, Lcom/zui/gallery/util/MediaSetUtils;->SD_CAMERA_BUCKET_ID:I

    .line 688
    invoke-virtual {v4, v15}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v4

    .line 687
    invoke-virtual {v5, v4}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/MediaSet;

    .line 689
    sget-object v15, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    sget v2, Lcom/zui/gallery/util/MediaSetUtils;->SD_CAMERA_BUCKET_ID:I

    .line 690
    invoke-virtual {v15, v2}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v2

    .line 689
    invoke-virtual {v5, v2}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/MediaSet;

    .line 691
    sget-object v15, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    sget v3, Lcom/zui/gallery/util/MediaSetUtils;->SD_PANORAMA_BUCKET_ID:I

    .line 692
    invoke-virtual {v15, v3}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v3

    .line 691
    invoke-virtual {v5, v3}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/MediaSet;

    .line 695
    sget-object v5, Lcom/zui/gallery/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 696
    new-instance v15, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    const/4 v12, 0x7

    new-array v12, v12, [Lcom/zui/gallery/data/MediaSet;

    aput-object v0, v12, v14

    aput-object v1, v12, v13

    const/4 v0, 0x2

    aput-object v6, v12, v0

    const/4 v0, 0x3

    aput-object v4, v12, v0

    const/4 v0, 0x4

    aput-object v2, v12, v0

    const/4 v0, 0x5

    aput-object v3, v12, v0

    const/4 v0, 0x6

    aput-object v9, v12, v0

    iget-object v6, v7, Lcom/zui/gallery/data/LocalAlbumSetMore;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    move-object v0, v15

    move-object v1, v11

    move-object v2, v5

    move-object v3, v12

    move/from16 v4, p4

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;-><init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;[Lcom/zui/gallery/data/MediaSet;ILcom/zui/gallery/app/GalleryApp;)V

    monitor-exit v10

    return-object v15

    .line 701
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_2
    sget-object v12, Lcom/zui/gallery/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 658
    sget-object v1, Lcom/zui/gallery/data/CloudSource;->PATH_ALBUM:Lcom/zui/gallery/data/Path;

    invoke-virtual {v1, v9}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v1

    .line 659
    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v2

    if-nez v2, :cond_3

    .line 661
    new-instance v2, Lcom/zui/gallery/data/CloudAlbum;

    iget-object v3, v7, Lcom/zui/gallery/data/LocalAlbumSetMore;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v2, v1, v3, v9, v11}, Lcom/zui/gallery/data/CloudAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;Lcom/zui/gallery/data/Path;)V

    :cond_3
    move-object v15, v2

    .line 663
    new-instance v6, Lcom/zui/gallery/data/LocalMergeAlbum;

    const/4 v1, 0x3

    new-array v5, v1, [Lcom/zui/gallery/data/MediaSet;

    const/4 v3, 0x2

    sget-object v4, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v13, v5

    move/from16 v5, p4

    move-object/from16 v16, v6

    move-object/from16 v6, p5

    .line 664
    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/data/LocalAlbumSetMore;->getLocalAlbum(Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    aput-object v1, v13, v14

    const/4 v3, 0x4

    sget-object v4, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 665
    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/data/LocalAlbumSetMore;->getLocalAlbum(Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v13, v1

    check-cast v15, Lcom/zui/gallery/data/CloudAlbum;

    const/4 v0, 0x2

    aput-object v15, v13, v0

    move-object/from16 v0, v16

    invoke-direct {v0, v11, v12, v13, v8}, Lcom/zui/gallery/data/LocalMergeAlbum;-><init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;[Lcom/zui/gallery/data/MediaSet;I)V

    monitor-exit v10

    return-object v0

    .line 655
    :cond_4
    new-instance v6, Lcom/zui/gallery/data/LocalAlbum;

    iget-object v2, v7, Lcom/zui/gallery/data/LocalAlbumSetMore;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, v11

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/zui/gallery/data/LocalAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IZLjava/lang/String;)V

    monitor-exit v10

    return-object v6

    .line 653
    :cond_5
    new-instance v6, Lcom/zui/gallery/data/LocalAlbum;

    iget-object v2, v7, Lcom/zui/gallery/data/LocalAlbumSetMore;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, v11

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/zui/gallery/data/LocalAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IZLjava/lang/String;)V

    monitor-exit v10

    return-object v6

    :catchall_0
    move-exception v0

    .line 702
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLocalAllMergeAlbum([Lcom/zui/gallery/data/BucketHelper$BucketEntry;Lcom/zui/gallery/data/DataManager;I)Lcom/zui/gallery/data/MediaSet;
    .locals 2

    .line 537
    sget-object p1, Lcom/zui/gallery/data/LocalMergeAllAlbum;->PATH_ALL_ALBUM:Lcom/zui/gallery/data/Path;

    .line 538
    sget-object v0, Lcom/zui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    :try_start_0
    sget-object p1, Lcom/zui/gallery/data/LocalMergeAllAlbum;->PATH_ALL_ALBUM_VIDEO:Lcom/zui/gallery/data/Path;

    goto :goto_0

    .line 543
    :cond_1
    sget-object p1, Lcom/zui/gallery/data/LocalMergeAllAlbum;->PATH_ALL_ALBUM_IMAGE:Lcom/zui/gallery/data/Path;

    .line 549
    :goto_0
    invoke-virtual {p2, p1}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 551
    check-cast p2, Lcom/zui/gallery/data/MediaSet;

    monitor-exit v0

    return-object p2

    .line 552
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 554
    sget-object p2, Lcom/zui/gallery/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 555
    new-instance p3, Lcom/zui/gallery/data/LocalMergeAllAlbum;

    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {p3, p1, p2, v0}, Lcom/zui/gallery/data/LocalMergeAllAlbum;-><init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;Lcom/zui/gallery/app/GalleryApp;)V

    return-object p3

    :catchall_0
    move-exception p1

    .line 552
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getLocalGroupAlbum(Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/zui/gallery/data/MediaSet;
    .locals 8

    .line 708
    sget-object v0, Lcom/zui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_0
    invoke-virtual {p3, p4}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v2

    .line 710
    invoke-virtual {p1, v2}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 712
    check-cast p1, Lcom/zui/gallery/data/MediaSet;

    monitor-exit v0

    return-object p1

    .line 725
    :cond_0
    new-instance p1, Lcom/zui/gallery/data/LocalGroupAlbum;

    iget-object v3, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    move-object v1, p1

    move v4, p4

    move v5, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/zui/gallery/data/LocalGroupAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 726
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static getTypeFromPath(Lcom/zui/gallery/data/Path;)I
    .locals 3

    .line 139
    invoke-virtual {p0}, Lcom/zui/gallery/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 140
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 p0, 0x1

    .line 143
    aget-object p0, v0, p0

    invoke-static {p0}, Lcom/zui/gallery/data/LocalAlbumSetMore;->getTypeFromString(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isOnlyImageOrOnlyVideo()Z
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_ALL_IMAGE_MORE:Lcom/zui/gallery/data/Path;

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_ALL_VIDEO_MORE:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method private isOnlyImageOrVideoDir()Z
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_IMAGE_DIR:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_VIDEO_DIR:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public addContentListener(Lcom/zui/gallery/data/ContentListener;)V
    .locals 2

    .line 217
    invoke-super {p0, p1}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 218
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 219
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fakeChange()V
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/zui/gallery/data/ChangeNotifier;->fakeChange()V

    return-void
.end method

.method public getAlbumEntryList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/AlbumSetCategoryEntry;",
            ">;"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbumEntryList:Ljava/util/List;

    const-string v1, "LocalAlbumSetMore"

    if-eqz v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "albumEntry list size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbumEntryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "albumEntryList is null"

    .line 523
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbumEntryList:Ljava/util/List;

    return-object v0
.end method

.method public getFolderCount(Z)I
    .locals 4

    .line 863
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 864
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/MediaSet;

    .line 865
    instance-of v3, v2, Lcom/zui/gallery/data/LocalGroupAlbum;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 869
    instance-of v2, v2, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOthersAlbumCount()I
    .locals 3

    .line 918
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbumEntryList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbumEntryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    invoke-virtual {v0}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    move-result-object v0

    sget-object v2, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->OTHER:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    if-ne v0, v2, :cond_0

    .line 920
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbumEntryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    invoke-virtual {v0}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getCount()I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getSubMediaSet(I)Lcom/zui/gallery/data/MediaSet;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaSet;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 158
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSystemAlbumCount()I
    .locals 3

    .line 927
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbumEntryList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbumEntryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    invoke-virtual {v0}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    move-result-object v0

    sget-object v2, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->SYSTEM:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    if-ne v0, v2, :cond_0

    .line 929
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbumEntryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    invoke-virtual {v0}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getCount()I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getVirtualFolderCount()I
    .locals 3

    .line 887
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 888
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/MediaSet;

    .line 889
    instance-of v2, v2, Lcom/zui/gallery/data/LocalGroupAlbum;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isAlbumAll()Z
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_ALL:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAlbumMore()Z
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_ALL_MORE:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_ALL_IMAGE_MORE:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSetMore;->PATH_ALL_VIDEO_MORE:Lcom/zui/gallery/data/Path;

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public isHaveCameraRoll()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->isHaveCameraRoll:Z

    return v0
.end method

.method public isHaveFavorite()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->isHaveFavorite:Z

    return v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    .line 733
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFutureDone(Lcom/zui/gallery/util/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/Future<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mLoadTask:Lcom/zui/gallery/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 829
    monitor-exit p0

    return-void

    .line 830
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mLoadBuffer:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 831
    iput-boolean v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mIsLoading:Z

    if-nez p1, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 833
    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mLoadBuffer:[Ljava/lang/Object;

    .line 834
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/zui/gallery/data/LocalAlbumSetMore$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/data/LocalAlbumSetMore$1;-><init>(Lcom/zui/gallery/data/LocalAlbumSetMore;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 840
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reload()J
    .locals 7

    monitor-enter p0

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/zui/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v0

    .line 747
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 748
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/MediaSet;

    .line 749
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->reload()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mDataVersion:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_1
    const-string v1, "LocalAlbumSetMore"

    .line 754
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reload LocalAlbumSet isChange "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 756
    iput-boolean v3, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->isHaveCameraRoll:Z

    .line 757
    iput-boolean v3, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->isHaveFavorite:Z

    .line 758
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 761
    :cond_2
    iput-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    .line 763
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbumEntryList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 764
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbumEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 766
    :cond_3
    iput-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbumEntryList:Ljava/util/List;

    .line 771
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mSyncTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_4

    .line 772
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mSyncTask:Lcom/zui/gallery/util/Future;

    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 774
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v4, Lcom/zui/gallery/data/LocalAlbumSetMore$SyncLoader;

    invoke-direct {v4, p0, v1}, Lcom/zui/gallery/data/LocalAlbumSetMore$SyncLoader;-><init>(Lcom/zui/gallery/data/LocalAlbumSetMore;Lcom/zui/gallery/data/LocalAlbumSetMore$1;)V

    invoke-virtual {v0, v4}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mSyncTask:Lcom/zui/gallery/util/Future;

    .line 777
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mLoadTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_5

    .line 778
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mLoadTask:Lcom/zui/gallery/util/Future;

    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 780
    :cond_5
    iput-boolean v2, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mIsLoading:Z

    .line 781
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v4, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;

    invoke-direct {v4, p0, v1}, Lcom/zui/gallery/data/LocalAlbumSetMore$AlbumsLoader;-><init>(Lcom/zui/gallery/data/LocalAlbumSetMore;Lcom/zui/gallery/data/LocalAlbumSetMore$1;)V

    invoke-virtual {v0, v4, p0}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mLoadTask:Lcom/zui/gallery/util/Future;

    .line 784
    :cond_6
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mLoadBuffer:[Ljava/lang/Object;

    if-eqz v0, :cond_c

    .line 786
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mLoadBuffer:[Ljava/lang/Object;

    aget-object v0, v0, v3

    if-eqz v0, :cond_9

    .line 788
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mLoadBuffer:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    .line 789
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    .line 797
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 798
    iput-boolean v2, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->isHaveCameraRoll:Z

    goto :goto_2

    .line 799
    :cond_7
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isFavoriteAlbum()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 800
    iput-boolean v2, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->isHaveFavorite:Z

    .line 803
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->reload()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 806
    :cond_9
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 807
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 812
    :cond_a
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mLoadBuffer:[Ljava/lang/Object;

    array-length v0, v0

    if-le v0, v2, :cond_b

    .line 813
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mLoadBuffer:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_b

    .line 815
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mLoadBuffer:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbumEntryList:Ljava/util/List;

    .line 818
    :cond_b
    iput-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mLoadBuffer:[Ljava/lang/Object;

    .line 819
    invoke-static {}, Lcom/zui/gallery/data/LocalAlbumSetMore;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mDataVersion:J

    .line 822
    :cond_c
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeContentListener(Lcom/zui/gallery/data/ContentListener;)V
    .locals 2

    .line 229
    invoke-super {p0, p1}, Lcom/zui/gallery/data/MediaSet;->removeContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 230
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 231
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSetMore;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/data/MediaSet;->removeContentListener(Lcom/zui/gallery/data/ContentListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
