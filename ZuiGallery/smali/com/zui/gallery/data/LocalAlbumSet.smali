.class public Lcom/zui/gallery/data/LocalAlbumSet;
.super Lcom/zui/gallery/data/MediaSet;
.source "LocalAlbumSet.java"

# interfaces
.implements Lcom/zui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/LocalAlbumSet$SyncLoader;,
        Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;
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

.field public static final IS_SHOW_TRACH_CAN:Z = true

.field private static final PANORAMA_FOLDER_STRING:Ljava/lang/String; = "DCIM/Camera/Panorama"

.field public static final PATH_ALL:Lcom/zui/gallery/data/Path;

.field public static final PATH_ALL_IMAGE_MORE:Lcom/zui/gallery/data/Path;

.field public static final PATH_ALL_MORE:Lcom/zui/gallery/data/Path;

.field public static final PATH_ALL_VIDEO_MORE:Lcom/zui/gallery/data/Path;

.field public static final PATH_CAMERA:Lcom/zui/gallery/data/Path;

.field public static final PATH_CAMERA_IMAGE:Lcom/zui/gallery/data/Path;

.field public static final PATH_CAMERA_PRIVACY:Lcom/zui/gallery/data/Path;

.field public static final PATH_CAMERA_VIDEO:Lcom/zui/gallery/data/Path;

.field public static final PATH_CONTINUOUS_ALL:Lcom/zui/gallery/data/Path;

.field public static final PATH_IMAGE:Lcom/zui/gallery/data/Path;

.field public static final PATH_IMAGE_DIR:Lcom/zui/gallery/data/Path;

.field public static final PATH_IMAGE_MORE:Lcom/zui/gallery/data/Path;

.field public static final PATH_VIDEO:Lcom/zui/gallery/data/Path;

.field public static final PATH_VIDEO_DIR:Lcom/zui/gallery/data/Path;

.field public static final PATH_VIDEO_MORE:Lcom/zui/gallery/data/Path;

.field private static final TAG:Ljava/lang/String; = "LogLocalAlbumSet"

.field public static final mWatchUris:[Landroid/net/Uri;


# instance fields
.field public isForAddPage:Z

.field private volatile isGetContent:Z

.field private volatile isGetContentImage:Z

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
    .locals 3

    const-string v0, "/local/all"

    .line 81
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_ALL:Lcom/zui/gallery/data/Path;

    const-string v0, "/local/image"

    .line 82
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    const-string v0, "/local/video"

    .line 83
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    const-string v0, "/local/image/all/more"

    .line 84
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v1

    sput-object v1, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE_MORE:Lcom/zui/gallery/data/Path;

    const-string v1, "/local/video/all/more"

    .line 86
    invoke-static {v1}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO_MORE:Lcom/zui/gallery/data/Path;

    const-string v2, "/local/continuous/all"

    .line 88
    invoke-static {v2}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_CONTINUOUS_ALL:Lcom/zui/gallery/data/Path;

    const-string v2, "/local/all/more"

    .line 90
    invoke-static {v2}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_ALL_MORE:Lcom/zui/gallery/data/Path;

    const-string v2, "/local/image/dir"

    .line 93
    invoke-static {v2}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE_DIR:Lcom/zui/gallery/data/Path;

    const-string v2, "/local/video/dir"

    .line 94
    invoke-static {v2}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO_DIR:Lcom/zui/gallery/data/Path;

    .line 97
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_ALL_IMAGE_MORE:Lcom/zui/gallery/data/Path;

    .line 99
    invoke-static {v1}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_ALL_VIDEO_MORE:Lcom/zui/gallery/data/Path;

    const-string v0, "/local/camera"

    .line 101
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_CAMERA:Lcom/zui/gallery/data/Path;

    const-string v0, "/local/camera/image"

    .line 102
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_CAMERA_IMAGE:Lcom/zui/gallery/data/Path;

    const-string v0, "/local/camera/video"

    .line 103
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_CAMERA_VIDEO:Lcom/zui/gallery/data/Path;

    const-string v0, "/local/camera/privacy"

    .line 104
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_CAMERA_PRIVACY:Lcom/zui/gallery/data/Path;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/Uri;

    .line 109
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/zui/gallery/database/GalleryContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/zui/gallery/database/GalleryContract$Whites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumSet;->mWatchUris:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V
    .locals 3

    .line 147
    invoke-static {}, Lcom/zui/gallery/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->isForAddPage:Z

    .line 148
    iput-object p2, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 149
    new-instance v1, Landroid/os/Handler;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v1, Lcom/zui/gallery/data/ChangeNotifier;

    sget-object v2, Lcom/zui/gallery/data/LocalAlbumSet;->mWatchUris:[Landroid/net/Uri;

    invoke-direct {v1, p0, v2, p2}, Lcom/zui/gallery/data/ChangeNotifier;-><init>(Lcom/zui/gallery/data/MediaSet;[Landroid/net/Uri;Lcom/zui/gallery/app/GalleryApp;)V

    iput-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    .line 151
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f100249

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mName:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "/local/image"

    .line 154
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/local/video"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->isGetContent:Z

    .line 155
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zui/gallery/data/LocalAlbumSet;->isGetContentImage:Z

    .line 157
    iget-boolean p2, p0, Lcom/zui/gallery/data/LocalAlbumSet;->isGetContent:Z

    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/zui/gallery/data/LocalAlbumSet;->isOnlyImageOrVideoDir()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x6

    .line 158
    iput p1, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mType:I

    goto :goto_0

    .line 160
    :cond_2
    invoke-static {p1}, Lcom/zui/gallery/data/LocalAlbumSet;->getTypeFromPath(Lcom/zui/gallery/data/Path;)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mType:I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/data/LocalAlbumSet;)Lcom/zui/gallery/app/GalleryApp;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/data/LocalAlbumSet;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mType:I

    return p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/data/LocalAlbumSet;)Z
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/zui/gallery/data/LocalAlbumSet;->isOnlyImageOrVideoDir()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 77
    invoke-direct/range {p0 .. p6}, Lcom/zui/gallery/data/LocalAlbumSet;->getLocalGroupAlbum(Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/zui/gallery/data/LocalAlbumSet;->getLocalAlbum(Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/data/LocalAlbumSet;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->isGetContent:Z

    return p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/data/LocalAlbumSet;[Lcom/zui/gallery/data/BucketHelper$BucketEntry;Lcom/zui/gallery/data/DataManager;I)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/data/LocalAlbumSet;->getLocalAllMergeAlbum([Lcom/zui/gallery/data/BucketHelper$BucketEntry;Lcom/zui/gallery/data/DataManager;I)Lcom/zui/gallery/data/MediaSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I
    .locals 0

    .line 77
    invoke-static {p0, p1}, Lcom/zui/gallery/data/LocalAlbumSet;->findBucket([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500([Ljava/lang/Object;II)V
    .locals 0

    .line 77
    invoke-static {p0, p1, p2}, Lcom/zui/gallery/data/LocalAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/zui/gallery/data/LocalAlbumSet;)Z
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/zui/gallery/data/LocalAlbumSet;->isOnlyImageOrOnlyVideo()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/Path;III)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/gallery/data/LocalAlbumSet;->getCameraAlumbSet(Lcom/zui/gallery/data/Path;III)Lcom/zui/gallery/data/MediaSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I
    .locals 0

    .line 77
    invoke-static {p0, p1}, Lcom/zui/gallery/data/LocalAlbumSet;->findSystemGroupBucket([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/data/LocalAlbumSet;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->isGetContentImage:Z

    return p0
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

    .line 1266
    aget-object v0, p0, p2

    :goto_0
    if-le p2, p1, :cond_0

    add-int/lit8 v1, p2, -0x1

    .line 1268
    aget-object v1, p0, v1

    aput-object v1, p0, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 1270
    :cond_0
    aput-object v0, p0, p1

    return-void
.end method

.method private static findBucket([Lcom/zui/gallery/data/BucketHelper$BucketEntry;I)I
    .locals 3

    .line 194
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 195
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

    .line 202
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 203
    aget-object v2, p0, v1

    iget-object v2, v2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->systemId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
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
    .locals 11

    .line 923
    iget-object p4, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p4}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p4

    .line 924
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {p1, v0}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v2

    .line 925
    invoke-virtual {p4, v2}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    const-string v0, "LogLocalAlbumSet"

    if-eqz p1, :cond_1

    .line 928
    invoke-direct {p0}, Lcom/zui/gallery/data/LocalAlbumSet;->isOnlyImageOrOnlyVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz v1, :cond_0

    const-string p1, "recreate camere LocalMergeAlbum"

    .line 930
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 932
    :cond_0
    check-cast p1, Lcom/zui/gallery/data/MediaSet;

    return-object p1

    .line 940
    :cond_1
    :goto_0
    sget-object p1, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {p1, v1}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object p1

    .line 941
    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    sget v3, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v1, v3}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v1

    .line 944
    invoke-virtual {p4, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaSet;

    .line 946
    invoke-virtual {p4, v1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaSet;

    .line 952
    new-instance v3, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;

    sget-object v4, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_CONTINUOUS_ALL:Lcom/zui/gallery/data/Path;

    iget-object v5, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v3, v4, v5}, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V

    .line 955
    sget-object v4, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    .line 956
    invoke-virtual {v4, p3}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v4

    .line 955
    invoke-virtual {p4, v4}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/MediaSet;

    .line 957
    sget-object v5, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    .line 958
    invoke-virtual {v5, p3}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object p3

    .line 957
    invoke-virtual {p4, p3}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p3

    check-cast p3, Lcom/zui/gallery/data/MediaSet;

    .line 964
    sget-object v5, Lcom/zui/gallery/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 965
    sget-object v6, Lcom/zui/gallery/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-ne p2, v9, :cond_2

    new-array p2, v9, [Lcom/zui/gallery/data/MediaSet;

    aput-object p1, p2, v8

    aput-object v4, p2, v7

    .line 968
    new-instance p1, Lcom/zui/gallery/data/LocalMergeAlbum;

    sget-object p3, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_CAMERA_IMAGE:Lcom/zui/gallery/data/Path;

    sget p4, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-direct {p1, p3, v5, p2, p4}, Lcom/zui/gallery/data/LocalMergeAlbum;-><init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;[Lcom/zui/gallery/data/MediaSet;I)V

    goto :goto_1

    :cond_2
    const/4 v10, 0x4

    if-ne p2, v10, :cond_3

    new-array p1, v9, [Lcom/zui/gallery/data/MediaSet;

    aput-object v1, p1, v8

    aput-object p3, p1, v7

    .line 971
    new-instance p2, Lcom/zui/gallery/data/LocalMergeAlbum;

    sget-object p3, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_CAMERA_VIDEO:Lcom/zui/gallery/data/Path;

    sget p4, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-direct {p2, p3, v5, p1, p4}, Lcom/zui/gallery/data/LocalMergeAlbum;-><init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;[Lcom/zui/gallery/data/MediaSet;I)V

    move-object p1, p2

    goto :goto_1

    :cond_3
    const-string/jumbo p2, "yykkmm get camera set"

    .line 973
    invoke-static {v0, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    sget-object p2, Lcom/zui/gallery/data/CloudSource;->PATH_ALBUM:Lcom/zui/gallery/data/Path;

    const-string v0, "Camera"

    invoke-virtual {p2, v0}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p2

    .line 975
    invoke-virtual {p4, p2}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p4

    check-cast p4, Lcom/zui/gallery/data/MediaSet;

    if-nez p4, :cond_4

    .line 977
    new-instance p4, Lcom/zui/gallery/data/CloudAlbum;

    iget-object v5, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {p4, p2, v5, v0, v2}, Lcom/zui/gallery/data/CloudAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;Lcom/zui/gallery/data/Path;)V

    :cond_4
    const/4 p2, 0x6

    new-array p2, p2, [Lcom/zui/gallery/data/MediaSet;

    aput-object p1, p2, v8

    aput-object v1, p2, v7

    aput-object v4, p2, v9

    const/4 p1, 0x3

    aput-object p3, p2, p1

    aput-object p4, p2, v10

    const/4 p1, 0x5

    aput-object v3, p2, p1

    .line 982
    new-instance p1, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    const v5, 0x10100d0

    iget-object p3, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    move-object v1, p1

    move-object v3, v6

    move-object v4, p2

    move-object v6, p3

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

    .line 991
    sget-object v10, Lcom/zui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v10

    .line 992
    :try_start_0
    invoke-virtual/range {p3 .. p4}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v11

    .line 993
    invoke-virtual {v0, v11}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 995
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

    .line 1017
    sget-object v0, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v8}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 1018
    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    invoke-virtual {v1, v8}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v1

    .line 1020
    iget-object v5, v7, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v5}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v5

    .line 1021
    invoke-virtual {v5, v0}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaSet;

    .line 1023
    invoke-virtual {v5, v1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaSet;

    .line 1026
    sget v6, Lcom/zui/gallery/util/MediaSetUtils;->PANORAMA_BUCKET_ID:I

    .line 1027
    sget-object v9, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    .line 1028
    invoke-virtual {v9, v6}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v6

    .line 1027
    invoke-virtual {v5, v6}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/data/MediaSet;

    .line 1029
    new-instance v9, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;

    sget-object v15, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_CONTINUOUS_ALL:Lcom/zui/gallery/data/Path;

    iget-object v4, v7, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v9, v15, v4}, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V

    .line 1032
    sget-object v4, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    sget v15, Lcom/zui/gallery/util/MediaSetUtils;->SD_CAMERA_BUCKET_ID:I

    .line 1033
    invoke-virtual {v4, v15}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v4

    .line 1032
    invoke-virtual {v5, v4}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/MediaSet;

    .line 1034
    sget-object v15, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    sget v2, Lcom/zui/gallery/util/MediaSetUtils;->SD_CAMERA_BUCKET_ID:I

    .line 1035
    invoke-virtual {v15, v2}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v2

    .line 1034
    invoke-virtual {v5, v2}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/MediaSet;

    .line 1036
    sget-object v15, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    sget v3, Lcom/zui/gallery/util/MediaSetUtils;->SD_PANORAMA_BUCKET_ID:I

    .line 1037
    invoke-virtual {v15, v3}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v3

    .line 1036
    invoke-virtual {v5, v3}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/MediaSet;

    .line 1040
    sget-object v5, Lcom/zui/gallery/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 1041
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

    iget-object v6, v7, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    move-object v0, v15

    move-object v1, v11

    move-object v2, v5

    move-object v3, v12

    move/from16 v4, p4

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;-><init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;[Lcom/zui/gallery/data/MediaSet;ILcom/zui/gallery/app/GalleryApp;)V

    monitor-exit v10

    return-object v15

    .line 1046
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
    :cond_2
    sget-object v12, Lcom/zui/gallery/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 1003
    sget-object v1, Lcom/zui/gallery/data/CloudSource;->PATH_ALBUM:Lcom/zui/gallery/data/Path;

    invoke-virtual {v1, v9}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v1

    .line 1004
    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1006
    new-instance v2, Lcom/zui/gallery/data/CloudAlbum;

    iget-object v3, v7, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v2, v1, v3, v9, v11}, Lcom/zui/gallery/data/CloudAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;Lcom/zui/gallery/data/Path;)V

    :cond_3
    move-object v15, v2

    .line 1008
    new-instance v6, Lcom/zui/gallery/data/LocalMergeAlbum;

    const/4 v1, 0x3

    new-array v5, v1, [Lcom/zui/gallery/data/MediaSet;

    const/4 v3, 0x2

    sget-object v4, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v13, v5

    move/from16 v5, p4

    move-object/from16 v16, v6

    move-object/from16 v6, p5

    .line 1009
    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/data/LocalAlbumSet;->getLocalAlbum(Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    aput-object v1, v13, v14

    const/4 v3, 0x4

    sget-object v4, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 1010
    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/data/LocalAlbumSet;->getLocalAlbum(Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;)Lcom/zui/gallery/data/MediaSet;

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

    .line 1000
    :cond_4
    new-instance v6, Lcom/zui/gallery/data/LocalAlbum;

    iget-object v2, v7, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, v11

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/zui/gallery/data/LocalAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IZLjava/lang/String;)V

    monitor-exit v10

    return-object v6

    .line 998
    :cond_5
    new-instance v6, Lcom/zui/gallery/data/LocalAlbum;

    iget-object v2, v7, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

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

    .line 1047
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLocalAllMergeAlbum([Lcom/zui/gallery/data/BucketHelper$BucketEntry;Lcom/zui/gallery/data/DataManager;I)Lcom/zui/gallery/data/MediaSet;
    .locals 2

    .line 876
    sget-object p1, Lcom/zui/gallery/data/LocalMergeAllAlbum;->PATH_ALL_ALBUM:Lcom/zui/gallery/data/Path;

    .line 877
    sget-object v0, Lcom/zui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    goto :goto_0

    .line 885
    :cond_0
    :try_start_0
    sget-object p1, Lcom/zui/gallery/data/LocalMergeAllAlbum;->PATH_ALL_ALBUM_VIDEO:Lcom/zui/gallery/data/Path;

    goto :goto_0

    .line 882
    :cond_1
    sget-object p1, Lcom/zui/gallery/data/LocalMergeAllAlbum;->PATH_ALL_ALBUM_IMAGE:Lcom/zui/gallery/data/Path;

    .line 888
    :goto_0
    invoke-virtual {p2, p1}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 890
    check-cast p2, Lcom/zui/gallery/data/MediaSet;

    monitor-exit v0

    return-object p2

    .line 891
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 893
    sget-object p2, Lcom/zui/gallery/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 894
    new-instance p3, Lcom/zui/gallery/data/LocalMergeAllAlbum;

    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {p3, p1, p2, v0}, Lcom/zui/gallery/data/LocalMergeAllAlbum;-><init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;Lcom/zui/gallery/app/GalleryApp;)V

    return-object p3

    :catchall_0
    move-exception p1

    .line 891
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getLocalGroupAlbum(Lcom/zui/gallery/data/DataManager;ILcom/zui/gallery/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/zui/gallery/data/MediaSet;
    .locals 8

    .line 1053
    sget-object v0, Lcom/zui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1054
    :try_start_0
    invoke-virtual {p3, p4}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v2

    .line 1055
    invoke-virtual {p1, v2}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1057
    check-cast p1, Lcom/zui/gallery/data/MediaSet;

    monitor-exit v0

    return-object p1

    .line 1070
    :cond_0
    new-instance p1, Lcom/zui/gallery/data/LocalGroupAlbum;

    iget-object v3, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

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

    .line 1071
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static getTypeFromPath(Lcom/zui/gallery/data/Path;)I
    .locals 3

    .line 166
    invoke-virtual {p0}, Lcom/zui/gallery/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 167
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 p0, 0x1

    .line 170
    aget-object p0, v0, p0

    invoke-static {p0}, Lcom/zui/gallery/data/LocalAlbumSet;->getTypeFromString(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isOnlyHasSymbol(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "[\u4e00-\u9fa5]"

    .line 835
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 836
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 837
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "[a-zA-Z]"

    .line 840
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 841
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 842
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    const-string v1, "[0-9]"

    .line 845
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 846
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 847
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    return v2
.end method

.method private isOnlyImageOrOnlyVideo()Z
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_ALL_IMAGE_MORE:Lcom/zui/gallery/data/Path;

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_ALL_VIDEO_MORE:Lcom/zui/gallery/data/Path;

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

    .line 226
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE_DIR:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO_DIR:Lcom/zui/gallery/data/Path;

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

.method private isSystemGroup(Lcom/zui/gallery/data/MediaSet;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1317
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-eq v1, v2, :cond_2

    .line 1318
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcom/zui/gallery/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    if-eq v1, v2, :cond_2

    .line 1319
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcom/zui/gallery/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    if-eq v1, v2, :cond_2

    .line 1320
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcom/zui/gallery/util/MediaSetUtils;->PANORAMA_BUCKET_ID:I

    if-eq v1, v2, :cond_2

    .line 1321
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcom/zui/gallery/util/MediaSetUtils;->SD_CAMERA_BUCKET_ID:I

    if-eq v1, v2, :cond_2

    .line 1322
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcom/zui/gallery/util/MediaSetUtils;->WEIXIN_VIDEO_ID:I

    if-eq v1, v2, :cond_2

    .line 1323
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcom/zui/gallery/util/MediaSetUtils;->SCREENRECORDER_VIDEO_ID:I

    if-eq v1, v2, :cond_2

    .line 1324
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result p1

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->HIGHLIGHT_BUCKET_ID:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private shouldReLoadAlbums()Z
    .locals 3

    .line 1083
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1087
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/MediaSet;

    .line 1088
    instance-of v2, v2, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    if-eqz v2, :cond_2

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addContentListener(Lcom/zui/gallery/data/ContentListener;)V
    .locals 2

    .line 244
    invoke-super {p0, p1}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 245
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 246
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

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
    .locals 2

    const-string v0, "LogLocalAlbumSet"

    const-string v1, "LocalAlbumSet fakeChange"

    .line 1259
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

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

    .line 859
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbumEntryList:Ljava/util/List;

    const-string v1, "LogLocalAlbumSet"

    if-eqz v0, :cond_0

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "albumEntry list size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbumEntryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "albumEntryList is null"

    .line 862
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbumEntryList:Ljava/util/List;

    return-object v0
.end method

.method public getFolderCount(Z)I
    .locals 4

    .line 1279
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1280
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/MediaSet;

    .line 1281
    instance-of v3, v2, Lcom/zui/gallery/data/LocalGroupAlbum;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1285
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

    .line 190
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartAlbumCount()I
    .locals 3

    .line 1351
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbumEntryList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbumEntryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    invoke-virtual {v0}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    move-result-object v0

    sget-object v2, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->SMART:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    if-ne v0, v2, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbumEntryList:Ljava/util/List;

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

    .line 175
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

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

    .line 182
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 185
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSystemAlbumCount()I
    .locals 3

    .line 1360
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbumEntryList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbumEntryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    invoke-virtual {v0}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    move-result-object v0

    sget-object v2, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->SYSTEM:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    if-ne v0, v2, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbumEntryList:Ljava/util/List;

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

    .line 1303
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1304
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

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

    .line 1305
    instance-of v2, v2, Lcom/zui/gallery/data/LocalGroupAlbum;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isAlbumAll()Z
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_ALL:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAlbumMore()Z
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_ALL_MORE:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_ALL_IMAGE_MORE:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_ALL_VIDEO_MORE:Lcom/zui/gallery/data/Path;

    .line 214
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

    .line 234
    iget-boolean v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->isHaveCameraRoll:Z

    return v0
.end method

.method public isHaveFavorite()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->isHaveFavorite:Z

    return v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    .line 1078
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mIsLoading:Z
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

    .line 1243
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mLoadTask:Lcom/zui/gallery/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 1244
    monitor-exit p0

    return-void

    .line 1245
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mLoadBuffer:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1246
    iput-boolean v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mIsLoading:Z

    if-nez p1, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 1248
    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mLoadBuffer:[Ljava/lang/Object;

    .line 1249
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/zui/gallery/data/LocalAlbumSet$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/data/LocalAlbumSet$2;-><init>(Lcom/zui/gallery/data/LocalAlbumSet;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1255
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reload()J
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v0, "LogLocalAlbumSet"

    const-string v1, "LocalAlbumSet reload"

    .line 1103
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/zui/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v0

    .line 1108
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    move v1, v3

    .line 1109
    :goto_0
    iget-object v5, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 1110
    iget-object v5, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/MediaSet;

    .line 1111
    iget-object v6, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v6}, Lcom/zui/gallery/app/GalleryApp;->getOptimizationAlbum()Lcom/zui/gallery/app/OptimizationAlbum;

    move-result-object v6

    .line 1112
    invoke-virtual {v6}, Lcom/zui/gallery/app/OptimizationAlbum;->getLongTapItem()Lcom/zui/gallery/data/MediaSet;

    move-result-object v7

    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    const-string v8, "111111"

    .line 1114
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "longTapItem= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  album="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  album=ams ==  albums size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v7, :cond_4

    .line 1116
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1117
    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1118
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1119
    iget-object v8, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1120
    invoke-virtual {v6, v2}, Lcom/zui/gallery/app/OptimizationAlbum;->setLongTapItem(Lcom/zui/gallery/data/MediaSet;)V

    .line 1121
    invoke-virtual {v6, v4}, Lcom/zui/gallery/app/OptimizationAlbum;->setFixed(Z)V

    .line 1122
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v4}, Lcom/zui/gallery/app/OptimizationAlbum;->setDeleteAlbum(I)V

    .line 1123
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->isGroupAlbum()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->isSystemGroupAlbum()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1126
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->isGroupFolderAlbum()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-direct {p0, v5}, Lcom/zui/gallery/data/LocalAlbumSet;->isSystemGroup(Lcom/zui/gallery/data/MediaSet;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1129
    :cond_1
    iget-object v5, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbumEntryList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    goto :goto_2

    .line 1127
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbumEntryList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    .line 1131
    :goto_2
    invoke-virtual {v5}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getCount()I

    move-result v8

    if-lez v8, :cond_3

    add-int/lit8 v9, v8, -0x1

    .line 1133
    invoke-virtual {v5, v9}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->setCount(I)V

    goto :goto_3

    .line 1135
    :cond_3
    invoke-virtual {v5, v3}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->setCount(I)V

    .line 1137
    :goto_3
    iget-object v5, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbumEntryList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1138
    invoke-virtual {v6, v7}, Lcom/zui/gallery/app/OptimizationAlbum;->setAlbumEntryList(Ljava/util/List;)V

    const-string v5, "111111"

    .line 1139
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remove\u540e  albums size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "  listSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  count="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v5, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/zui/gallery/app/OptimizationAlbum;->setSlotCount(I)V

    .line 1141
    iget-object v5, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/zui/gallery/data/LocalAlbumSet$1;

    invoke-direct {v6, p0}, Lcom/zui/gallery/data/LocalAlbumSet$1;-><init>(Lcom/zui/gallery/data/LocalAlbumSet;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    const-string v1, "LogLocalAlbumSet"

    .line 1151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalAlbumSet reload isChange:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    .line 1154
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/MediaSet;

    .line 1155
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->reload()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mDataVersion:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_6

    move v0, v4

    :cond_7
    const-string v1, "LogLocalAlbumSet"

    .line 1161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reload LocalAlbumSet isChange "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->getPrivacyCount()I

    move-result v1

    .line 1165
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/gallery/util/GroupUtils;->getPrivacyFilesSize(Landroid/content/Context;)I

    move-result v5

    if-eq v1, v5, :cond_8

    .line 1167
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->setPrivacyFilesSize(Landroid/content/Context;I)V

    move v0, v4

    :cond_8
    const-string/jumbo v1, "wangcanReload"

    .line 1169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shouldReLoadAlbums() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/zui/gallery/data/LocalAlbumSet;->shouldReLoadAlbums()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_d

    .line 1171
    iput-boolean v3, p0, Lcom/zui/gallery/data/LocalAlbumSet;->isHaveCameraRoll:Z

    .line 1172
    iput-boolean v3, p0, Lcom/zui/gallery/data/LocalAlbumSet;->isHaveFavorite:Z

    .line 1173
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1174
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1176
    :cond_9
    iput-object v2, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 1178
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbumEntryList:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 1179
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbumEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1181
    :cond_a
    iput-object v2, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbumEntryList:Ljava/util/List;

    .line 1186
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mSyncTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_b

    .line 1187
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mSyncTask:Lcom/zui/gallery/util/Future;

    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 1189
    :cond_b
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/data/LocalAlbumSet$SyncLoader;

    invoke-direct {v1, p0, v2}, Lcom/zui/gallery/data/LocalAlbumSet$SyncLoader;-><init>(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/LocalAlbumSet$1;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mSyncTask:Lcom/zui/gallery/util/Future;

    .line 1192
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mLoadTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_c

    .line 1193
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mLoadTask:Lcom/zui/gallery/util/Future;

    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 1195
    :cond_c
    iput-boolean v4, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mIsLoading:Z

    .line 1196
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;

    invoke-direct {v1, p0, v2}, Lcom/zui/gallery/data/LocalAlbumSet$AlbumsLoader;-><init>(Lcom/zui/gallery/data/LocalAlbumSet;Lcom/zui/gallery/data/LocalAlbumSet$1;)V

    invoke-virtual {v0, v1, p0}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mLoadTask:Lcom/zui/gallery/util/Future;

    .line 1199
    :cond_d
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mLoadBuffer:[Ljava/lang/Object;

    if-eqz v0, :cond_13

    .line 1201
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mLoadBuffer:[Ljava/lang/Object;

    aget-object v0, v0, v3

    if-eqz v0, :cond_10

    .line 1203
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mLoadBuffer:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 1204
    :goto_4
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_11

    .line 1212
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1213
    iput-boolean v4, p0, Lcom/zui/gallery/data/LocalAlbumSet;->isHaveCameraRoll:Z

    goto :goto_5

    .line 1214
    :cond_e
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isFavoriteAlbum()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1215
    iput-boolean v4, p0, Lcom/zui/gallery/data/LocalAlbumSet;->isHaveFavorite:Z

    .line 1218
    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->reload()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1221
    :cond_10
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 1222
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1227
    :cond_11
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mLoadBuffer:[Ljava/lang/Object;

    array-length v0, v0

    if-le v0, v4, :cond_12

    .line 1228
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mLoadBuffer:[Ljava/lang/Object;

    aget-object v0, v0, v4

    if-eqz v0, :cond_12

    .line 1230
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mLoadBuffer:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbumEntryList:Ljava/util/List;

    .line 1233
    :cond_12
    iput-object v2, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mLoadBuffer:[Ljava/lang/Object;

    .line 1234
    invoke-static {}, Lcom/zui/gallery/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mDataVersion:J

    .line 1237
    :cond_13
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mDataVersion:J
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

    .line 256
    invoke-super {p0, p1}, Lcom/zui/gallery/data/MediaSet;->removeContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 257
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

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
