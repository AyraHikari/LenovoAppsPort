.class public Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;
.super Lcom/zui/gallery/data/MediaSet;
.source "LocalTimeMergeAlbum.java"

# interfaces
.implements Lcom/zui/gallery/data/ContentListener;
.implements Lcom/zui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$FetchCache;,
        Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeEntryLoader;,
        Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/gallery/data/MediaSet;",
        "Lcom/zui/gallery/data/ContentListener;",
        "Lcom/zui/gallery/util/FutureListener<",
        "Ljava/util/List<",
        "Ljava/util/List<",
        "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final DAY_DATETAKEN_STEP:J = 0x5265c00L

.field private static final PAGE_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String; = "LocalTimeMergeAlbum"


# instance fields
.field private volatile SD_CAMERA_BUCKET_ID:I

.field private volatile SD_PANOMA_BUCKET_ID:I

.field private extSDCardPath:Ljava/lang/String;

.field private forceReload:Z

.field private mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mBucketId:I

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContinuousMediaSet:Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;

.field private mDayTimeEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFetcher:[Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$FetchCache;

.field private final mHandler:Landroid/os/Handler;

.field private mIndex:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mIsLoading:Z

.field private mLoadBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mMediaItemCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMonthTimeEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

.field private mParseYear:Z

.field private mSources:[Lcom/zui/gallery/data/MediaSet;

.field private mSupportedOperation:I

.field private mYearTimeEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;[Lcom/zui/gallery/data/MediaSet;ILcom/zui/gallery/app/GalleryApp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/data/Path;",
            "Ljava/util/Comparator<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;[",
            "Lcom/zui/gallery/data/MediaSet;",
            "I",
            "Lcom/zui/gallery/app/GalleryApp;",
            ")V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 174
    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 114
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mIndex:Ljava/util/TreeMap;

    .line 117
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mMediaItemCache:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 140
    iput-boolean p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mParseYear:Z

    const/4 v0, -0x1

    .line 144
    iput v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->SD_CAMERA_BUCKET_ID:I

    .line 145
    iput v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->SD_PANOMA_BUCKET_ID:I

    .line 146
    iput-boolean p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->forceReload:Z

    const-string v0, "LocalTimeMergeAlbum"

    const-string v1, "LocalTimeMergeAlbum onCreate ********************************"

    .line 175
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-object p2, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mComparator:Ljava/util/Comparator;

    .line 177
    iput-object p3, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    .line 178
    array-length p2, p3

    add-int/lit8 p2, p2, -0x1

    aget-object p2, p3, p2

    check-cast p2, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;

    iput-object p2, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mContinuousMediaSet:Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;

    .line 179
    iput p4, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mBucketId:I

    .line 180
    iput-object p5, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 181
    new-instance p2, Landroid/os/Handler;

    invoke-interface {p5}, Lcom/zui/gallery/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mHandler:Landroid/os/Handler;

    .line 182
    iget-object p2, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length p3, p2

    :goto_0
    if-ge p1, p3, :cond_0

    aget-object p4, p2, p1

    .line 183
    invoke-virtual {p4, p0}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;)[Ljava/lang/Object;
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getTimeEntryCount()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;Lcom/zui/gallery/util/ThreadPool$JobContext;)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getContiunousBucketEntry(Lcom/zui/gallery/util/ThreadPool$JobContext;)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mParseYear:Z

    return p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;Ljava/util/Calendar;J[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;IZLjava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct/range {p0 .. p9}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mergeMonthTimeEntry(Ljava/util/Calendar;J[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;)Lcom/zui/gallery/app/GalleryApp;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;)[Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    return-object p0
.end method

.method private getContiunousBucketEntry(Lcom/zui/gallery/util/ThreadPool$JobContext;)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;
    .locals 3

    .line 836
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 837
    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x2

    .line 836
    invoke-static {v1, p1, v0, v2}, Lcom/zui/gallery/data/BucketHelper;->getContinuousBucketEntry(Ljava/lang/String;Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    move-result-object p1

    return-object p1
.end method

.method private getContiunousBucketEntry(Lcom/zui/gallery/util/ThreadPool$JobContext;[Ljava/lang/String;)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 843
    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    .line 842
    invoke-static {p2, p1, v0, v1}, Lcom/zui/gallery/data/BucketHelper;->getContinuousBucketEntry([Ljava/lang/String;Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    move-result-object p1

    return-object p1
.end method

.method private getTimeEntryCount(Z)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 756
    iget-object v2, v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v1, :cond_0

    .line 762
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    move-object v4, v2

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "date_modified"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",\'unixepoch\', \'localtime\')"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 775
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "count("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x1e

    invoke-static {v8}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "_id"

    goto :goto_1

    :cond_1
    const-string v9, "*"

    :goto_1
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v5, v10

    .line 776
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "min("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x1

    aput-object v6, v5, v11

    const-string v6, "group_concat(_id)"

    const/4 v12, 0x2

    aput-object v6, v5, v12

    const/4 v1, 0x3

    const-string v6, "group_concat(_display_name)"

    aput-object v6, v5, v1

    .line 782
    invoke-static {v8}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result v6

    const-string v7, " in ("

    const-string v13, " not like \'%/_BURST%\' ESCAPE \'/\' and "

    const-string v14, ">0  and "

    const-string v15, ","

    const-string v1, "_data"

    const-string v12, "_size"

    const-string v11, "bucket_id"

    if-eqz v6, :cond_2

    .line 789
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->SD_CAMERA_BUCKET_ID:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->SCREENRECORDER_VIDEO_ID:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->HIGHLIGHT_BUCKET_ID:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->CUSTOMIZATION_BUCKET_ID:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 797
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1 ) and "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->SD_CAMERA_BUCKET_ID:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->SCREENRECORDER_VIDEO_ID:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->HIGHLIGHT_BUCKET_ID:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->CUSTOMIZATION_BUCKET_ID:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") group by ("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const/4 v7, 0x0

    .line 799
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " desc"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 801
    invoke-static {v8}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 802
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "android:query-arg-sql-group-by"

    .line 803
    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android:query-arg-sql-selection"

    .line 804
    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android:query-arg-sql-sort-order"

    .line 805
    invoke-virtual {v6, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 806
    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_3

    .line 808
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v8, v9

    .line 809
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 813
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_5

    move v3, v10

    .line 816
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 817
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    .line 818
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 819
    invoke-static {v6, v7}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getStartTimeOfDay(J)J

    move-result-wide v6

    const/4 v8, 0x2

    .line 820
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x3

    .line 821
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 822
    new-instance v13, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;

    invoke-direct {v13, v6, v7, v4}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;-><init>(JI)V

    .line 823
    iput-object v9, v13, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->latlong:Ljava/lang/String;

    .line 824
    iput-object v12, v13, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->displayname:Ljava/lang/String;

    .line 825
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    iget v4, v13, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->count:I

    add-int/2addr v3, v4

    goto :goto_4

    .line 829
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v10, v3

    .line 831
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeEntryCount total: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LocalTimeMergeAlbum"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private getTimeEntryCount()[Ljava/lang/Object;
    .locals 33

    move-object/from16 v10, p0

    const/4 v0, 0x3

    new-array v11, v0, [Ljava/lang/Object;

    .line 624
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 625
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 626
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v15, 0x0

    aput-object v12, v11, v15

    const/16 v16, 0x1

    aput-object v13, v11, v16

    const/16 v17, 0x2

    aput-object v14, v11, v17

    .line 630
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 631
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getTimeEntryImageCount()Ljava/util/ArrayList;

    move-result-object v2

    .line 632
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getTimeEntryVideoCount()Ljava/util/ArrayList;

    move-result-object v3

    .line 635
    iget-object v4, v10, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v4}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 636
    iget-object v4, v10, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-static {v4, v2, v3}, Lcom/zui/gallery/cloud/CloudUtils;->getTimeEntryCount(Lcom/zui/gallery/app/GalleryApp;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 637
    invoke-direct {v10, v2, v3}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mergeTimeCountList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 638
    invoke-direct {v10, v2, v4}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mergeTimeCountList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 640
    :cond_0
    invoke-direct {v10, v2, v3}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mergeTimeCountList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    move-object v9, v2

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeEntryCount spend time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalTimeMergeAlbum"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 651
    iget-object v0, v10, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 652
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v15

    :goto_1
    if-ge v6, v7, :cond_5

    .line 653
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;

    .line 654
    iget-wide v0, v5, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->time:J

    const-wide/32 v2, 0x5afb0400

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    move/from16 v19, v16

    goto :goto_2

    :cond_1
    move/from16 v19, v15

    .line 655
    :goto_2
    iget-wide v2, v5, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->time:J

    .line 656
    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 658
    iget-object v4, v5, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->latlong:Ljava/lang/String;

    .line 659
    invoke-static {v8}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getDateName(Ljava/util/Calendar;)[Ljava/lang/String;

    move-result-object v27

    .line 662
    iget v1, v5, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->count:I

    iget-boolean v0, v10, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mParseYear:Z

    iget-object v15, v5, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->latlong:Ljava/lang/String;

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v21, v1

    move-object v1, v8

    move-wide/from16 v22, v2

    move-object v10, v4

    move-object/from16 v4, v27

    move-object/from16 v28, v11

    move-object v11, v5

    move-object v5, v13

    move/from16 v29, v6

    move-object v6, v14

    move/from16 v30, v7

    move/from16 v7, v21

    move-object/from16 v31, v8

    move/from16 v8, v20

    move-object/from16 v32, v9

    move-object v9, v15

    invoke-direct/range {v0 .. v9}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mergeMonthTimeEntry(Ljava/util/Calendar;J[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;IZLjava/lang/String;)V

    .line 667
    new-instance v0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    const-wide/32 v1, 0x5265c00

    add-long v2, v22, v1

    const-wide/16 v4, 0x1

    sub-long v1, v2, v4

    if-eqz v19, :cond_2

    move-object/from16 v25, v18

    goto :goto_3

    .line 668
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v27, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v27, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    :goto_3
    iget v3, v11, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->count:I

    move-object/from16 v20, v0

    move-wide/from16 v21, v22

    move-wide/from16 v23, v1

    move/from16 v26, v3

    invoke-direct/range {v20 .. v26}, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;-><init>(JJLjava/lang/String;I)V

    .line 669
    invoke-static {v0}, Lcom/zui/gallery/data/LocalTimeDateUtil;->isWeek(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/zui/gallery/data/LocalTimeDateUtil;->isThisYear(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v19, :cond_3

    move-object/from16 v1, v18

    const/4 v2, 0x0

    goto :goto_4

    .line 670
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v3, v27, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v27, v16

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v27, v17

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, v0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    .line 672
    invoke-static {v0}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getLocalTimeName(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Ljava/lang/String;

    .line 674
    :goto_5
    iput-object v10, v0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->latlong:Ljava/lang/String;

    .line 675
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v29, 0x1

    move-object/from16 v10, p0

    move v15, v2

    move-object/from16 v11, v28

    move/from16 v7, v30

    move-object/from16 v8, v31

    move-object/from16 v9, v32

    goto/16 :goto_1

    :cond_5
    move-object/from16 v28, v11

    return-object v28
.end method

.method private getTimeEntryImageCount()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 746
    invoke-direct {p0, v0}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getTimeEntryCount(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getTimeEntryVideoCount()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 750
    invoke-direct {p0, v0}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getTimeEntryCount(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private invalidateCache()V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 217
    iget-object v3, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mFetcher:[Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$FetchCache;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$FetchCache;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 220
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v2, v2

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mMediaItemCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private mergeMonthTimeEntry(Ljava/util/Calendar;J[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;IZLjava/lang/String;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "J[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p9

    if-eqz v1, :cond_15

    .line 1079
    array-length v5, v1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_15

    if-eqz v2, :cond_15

    if-nez v3, :cond_0

    goto/16 :goto_a

    :cond_0
    const-wide/32 v5, 0x5afb0400

    cmp-long v5, p2, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gtz v5, :cond_1

    move-object/from16 v5, p0

    move v8, v7

    goto :goto_0

    :cond_1
    move-object/from16 v5, p0

    move v8, v6

    .line 1084
    :goto_0
    iget-object v9, v5, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v9}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1002a5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1085
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v1, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v1, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/"

    .line 1086
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1087
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1089
    :cond_2
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    const-wide/16 v18, 0x1

    const-wide/32 v20, 0x5265c00

    if-nez v11, :cond_a

    const/4 v11, 0x5

    .line 1091
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 1092
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v11

    sub-int/2addr v12, v7

    int-to-long v12, v12

    mul-long v12, v12, v20

    sub-long v12, p2, v12

    int-to-long v14, v11

    mul-long v14, v14, v20

    add-long/2addr v14, v12

    sub-long v14, v14, v18

    .line 1095
    new-instance v11, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    if-lez p7, :cond_3

    move/from16 v17, p7

    goto :goto_1

    :cond_3
    move/from16 v17, v7

    :goto_1
    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v17}, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;-><init>(JJLjava/lang/String;I)V

    .line 1096
    invoke-static/range {v22 .. v22}, Lcom/zui/gallery/data/LocalTimeDateUtil;->isThisYear(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1097
    invoke-static/range {v22 .. v22}, Lcom/zui/gallery/data/LocalTimeDateUtil;->isThisMonth(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1098
    aget-object v11, v1, v7

    invoke-static {v11}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getMonthEn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v8, :cond_4

    move-object v11, v9

    :cond_4
    move-object/from16 v12, v22

    .line 1099
    iput-object v11, v12, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object/from16 v12, v22

    if-eqz v8, :cond_6

    move-object v11, v9

    goto :goto_2

    .line 1101
    :cond_6
    sget-object v11, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_THIS_MONTH:Ljava/lang/String;

    :goto_2
    iput-object v11, v12, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object/from16 v12, v22

    .line 1104
    iget-object v11, v12, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    if-eqz v8, :cond_8

    move-object v11, v9

    .line 1105
    :cond_8
    iput-object v11, v12, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    .line 1107
    :goto_3
    iget-object v11, v12, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->latlong:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1108
    iput-object v4, v12, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->latlong:Ljava/lang/String;

    .line 1110
    :cond_9
    invoke-interface {v2, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    if-lez p7, :cond_b

    .line 1113
    iget v2, v11, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    add-int v2, v2, p7

    iput v2, v11, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    goto :goto_4

    .line 1115
    :cond_b
    iget v2, v11, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    add-int/2addr v2, v7

    iput v2, v11, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    .line 1117
    :goto_4
    iget-object v2, v11, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->latlong:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1118
    iput-object v4, v11, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->latlong:Ljava/lang/String;

    :cond_c
    :goto_5
    if-nez p8, :cond_d

    return-void

    .line 1125
    :cond_d
    aget-object v1, v1, v6

    .line 1126
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    if-nez v2, :cond_12

    const/4 v2, 0x6

    .line 1128
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1129
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sub-int/2addr v6, v7

    int-to-long v10, v6

    mul-long v10, v10, v20

    sub-long v11, p2, v10

    sub-int/2addr v0, v7

    int-to-long v13, v0

    mul-long v13, v13, v20

    add-long/2addr v13, v11

    sub-long v13, v13, v18

    .line 1132
    new-instance v0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;

    if-lez p7, :cond_e

    move/from16 v16, p7

    goto :goto_6

    :cond_e
    move/from16 v16, v7

    :goto_6
    move-object v10, v0

    move-object v15, v1

    invoke-direct/range {v10 .. v16}, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;-><init>(JJLjava/lang/String;I)V

    .line 1133
    invoke-static {v0}, Lcom/zui/gallery/data/LocalTimeDateUtil;->isThisYear(Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v8, :cond_f

    goto :goto_7

    .line 1134
    :cond_f
    sget-object v9, Lcom/zui/gallery/data/LocalTimeDateUtil;->S_THIS_YEAR:Ljava/lang/String;

    :goto_7
    iput-object v9, v0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

    .line 1136
    :cond_10
    iget-object v2, v0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->latlong:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1137
    iput-object v4, v0, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->latlong:Ljava/lang/String;

    .line 1139
    :cond_11
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_12
    if-lez p7, :cond_13

    .line 1142
    iget v0, v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    add-int v0, v0, p7

    iput v0, v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    goto :goto_8

    .line 1144
    :cond_13
    iget v0, v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    add-int/2addr v0, v7

    iput v0, v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->timeCount:I

    .line 1146
    :goto_8
    iget-object v0, v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->latlong:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1147
    iput-object v4, v2, Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;->latlong:Ljava/lang/String;

    :cond_14
    :goto_9
    return-void

    :cond_15
    :goto_a
    move-object/from16 v5, p0

    return-void
.end method

.method private mergeTimeCountList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;",
            ">;"
        }
    .end annotation

    .line 683
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 684
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 688
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 689
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 691
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 692
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    .line 695
    iget-wide v4, v1, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->time:J

    iget-wide v6, v3, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->time:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 696
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 698
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_1

    .line 702
    :cond_3
    iget-wide v4, v1, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->time:J

    iget-wide v6, v3, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->time:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 703
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 705
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;

    goto :goto_1

    .line 710
    :cond_4
    new-instance v4, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;

    iget-wide v5, v1, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->time:J

    iget v7, v1, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->count:I

    iget v3, v3, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->count:I

    add-int/2addr v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;-><init>(JI)V

    .line 711
    iget-object v1, v1, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->latlong:Ljava/lang/String;

    iput-object v1, v4, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;->latlong:Ljava/lang/String;

    .line 713
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 715
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;

    goto :goto_2

    :cond_5
    move-object v1, v2

    .line 719
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 720
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;

    goto :goto_1

    :cond_6
    :goto_3
    if-eqz v1, :cond_8

    .line 727
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 729
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;

    goto :goto_3

    :cond_7
    move-object v1, v2

    goto :goto_3

    :cond_8
    :goto_4
    if-eqz v3, :cond_a

    .line 735
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 737
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeCount;

    goto :goto_4

    :cond_9
    move-object v3, v2

    goto :goto_4

    :cond_a
    return-object v0
.end method

.method private updateData()V
    .locals 7

    .line 200
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 201
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v3, v2

    new-array v3, v3, [Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$FetchCache;

    iput-object v3, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mFetcher:[Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$FetchCache;

    .line 202
    array-length v2, v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    .line 203
    iget-object v4, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    aget-object v4, v4, v3

    if-nez v4, :cond_1

    goto :goto_2

    .line 204
    :cond_1
    iget-object v4, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mFetcher:[Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$FetchCache;

    new-instance v5, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$FetchCache;

    iget-object v6, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    aget-object v6, v6, v3

    invoke-direct {v5, v6}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$FetchCache;-><init>(Lcom/zui/gallery/data/MediaSet;)V

    aput-object v5, v4, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 207
    :cond_2
    iput v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSupportedOperation:I

    .line 208
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 209
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v2, v2

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mMediaItemCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/zui/gallery/data/ContentListener;)V
    .locals 0

    .line 967
    invoke-super {p0, p1}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    return-void
.end method

.method public delete()V
    .locals 4

    .line 1011
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1012
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->delete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBucketId()I
    .locals 1

    .line 1223
    iget v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mBucketId:I

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .line 228
    iget v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mBucketId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    sget-boolean v1, Lcom/zui/gallery/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    const-string v2, "bucketId"

    if-eqz v1, :cond_0

    const-string v1, "external"

    .line 230
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 231
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 237
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getContinueFolderCount()I
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mContinuousMediaSet:Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;

    if-eqz v0, :cond_0

    .line 1202
    invoke-virtual {v0}, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->getMediaItemCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getContinuesFolderImgeCount(Ljava/util/Set;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 1213
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mContinuousMediaSet:Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;

    if-eqz v0, :cond_0

    .line 1214
    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->getContinusFolderImageCount(Ljava/util/Set;Z)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 255
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 260
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaItem;

    if-eqz v0, :cond_1

    return-object v0

    .line 264
    :cond_1
    sget-object v0, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    const-string v1, "empty"

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaItem;

    if-nez v1, :cond_2

    .line 267
    new-instance v1, Lcom/zui/gallery/data/LocalEmptyMediaItem;

    invoke-direct {v1, v0}, Lcom/zui/gallery/data/LocalEmptyMediaItem;-><init>(Lcom/zui/gallery/data/Path;)V

    :cond_2
    return-object v1
.end method

.method public getCoverMediaItem(I)Lcom/zui/gallery/data/MediaItem;
    .locals 1

    const/4 v0, 0x1

    .line 276
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 281
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaItem;

    if-eqz p1, :cond_1

    return-object p1

    .line 286
    :cond_1
    sget-object p1, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    const-string v0, "empty"

    invoke-virtual {p1, v0}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p1

    .line 287
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaItem;

    if-nez v0, :cond_2

    .line 289
    new-instance v0, Lcom/zui/gallery/data/LocalEmptyMediaItem;

    invoke-direct {v0, p1}, Lcom/zui/gallery/data/LocalEmptyMediaItem;-><init>(Lcom/zui/gallery/data/Path;)V

    :cond_2
    return-object v0
.end method

.method public getImageItemCount()I
    .locals 6

    .line 1170
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 1171
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 1172
    instance-of v5, v4, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz v5, :cond_0

    .line 1173
    check-cast v4, Lcom/zui/gallery/data/LocalAlbum;

    .line 1174
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->isImage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1175
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->getMediaItemCount()I

    move-result v4

    goto :goto_1

    .line 1177
    :cond_0
    instance-of v5, v4, Lcom/zui/gallery/data/CloudAlbum;

    if-eqz v5, :cond_1

    .line 1178
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v4

    :goto_1
    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :cond_3
    return v1
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mMediaItemCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mMediaItemCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getMediaItemImpl(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 306
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->getTotalMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getMediaItemImpl(II)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    if-gtz p2, :cond_0

    .line 315
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 322
    :try_start_0
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 324
    invoke-virtual {v2}, Ljava/util/NoSuchElementException;->printStackTrace()V

    move v2, v1

    .line 326
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_a

    .line 328
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 329
    iget-object v3, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v4, v3

    new-array v4, v4, [Lcom/zui/gallery/data/MediaItem;

    .line 331
    array-length v3, v3

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_2

    .line 335
    iget-object v6, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mFetcher:[Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$FetchCache;

    aget-object v7, v6, v5

    if-eqz v7, :cond_1

    .line 336
    aget-object v6, v6, v5

    aget v7, v0, v5

    invoke-virtual {v6, v7}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$FetchCache;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v6

    aput-object v6, v4, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 339
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    :goto_2
    add-int v6, p1, p2

    if-ge v2, v6, :cond_9

    const/4 v6, -0x1

    move v7, v1

    move v8, v6

    :goto_3
    if-ge v7, v3, :cond_6

    .line 344
    aget-object v9, v4, v7

    if-eqz v9, :cond_5

    if-eq v8, v6, :cond_4

    .line 345
    iget-object v9, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mComparator:Ljava/util/Comparator;

    aget-object v10, v4, v7

    aget-object v11, v4, v8

    invoke-interface {v9, v10, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_5

    :cond_4
    move v8, v7

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    if-ne v8, v6, :cond_7

    goto :goto_4

    .line 356
    :cond_7
    aget v6, v0, v8

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v8

    if-lt v2, p1, :cond_8

    .line 358
    aget-object v6, v4, v8

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_8
    iget-object v6, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mMediaItemCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget-object v9, v4, v8

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v6, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mFetcher:[Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$FetchCache;

    aget-object v7, v6, v8

    if-eqz v7, :cond_9

    .line 366
    aget-object v6, v6, v8

    aget v7, v0, v8

    invoke-virtual {v6, v7}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$FetchCache;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v6

    aput-object v6, v4, v8

    add-int/lit8 v2, v2, 0x1

    .line 372
    rem-int/lit8 v6, v2, 0x40

    if-nez v6, :cond_3

    .line 373
    iget-object v6, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    invoke-virtual {v6, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    :goto_4
    return-object v5

    .line 378
    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v1, v0

    if-nez v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .line 1006
    iget v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSupportedOperation:I

    return v0
.end method

.method public getTimeEntry(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;"
        }
    .end annotation

    .line 403
    sget-object v0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$1;->$SwitchMap$com$zui$gallery$ui$localtime$LocalTimeAlbumViewModel:[I

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 409
    iget-object p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mYearTimeEntries:Ljava/util/List;

    return-object p1

    .line 411
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "get TimeEntry exception"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 407
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mMonthTimeEntries:Ljava/util/List;

    return-object p1

    .line 405
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mDayTimeEntries:Ljava/util/List;

    return-object p1
.end method

.method public getTotalMediaItemCount()I
    .locals 5

    .line 385
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 386
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getTotalMediaItemCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get totalMediaItemCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalTimeMergeAlbum"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public getVideoItemCount()I
    .locals 6

    .line 1188
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 1189
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 1190
    instance-of v5, v4, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz v5, :cond_0

    .line 1191
    check-cast v4, Lcom/zui/gallery/data/LocalAlbum;

    .line 1192
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->isImage()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1193
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->getMediaItemCount()I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    return v1
.end method

.method public hasVideo()Z
    .locals 6

    .line 1154
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 1155
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1156
    instance-of v5, v4, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz v5, :cond_0

    .line 1157
    check-cast v4, Lcom/zui/gallery/data/LocalAlbum;

    .line 1158
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->isImage()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->getMediaItemCount()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isCameraRoll()Z
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 191
    :cond_0
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 192
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public isForceReload()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->forceReload:Z

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    .line 617
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onContentDirty()V
    .locals 0

    .line 1001
    invoke-virtual {p0}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->notifyContentChanged()V

    return-void
.end method

.method public declared-synchronized onFutureDone(Lcom/zui/gallery/util/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/Future<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;>;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 976
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mLoadTask:Lcom/zui/gallery/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 977
    monitor-exit p0

    return-void

    .line 978
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mLoadBuffer:Ljava/util/List;

    const/4 p1, 0x0

    .line 979
    iput-boolean p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mIsLoading:Z

    .line 995
    invoke-virtual {p0}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->notifyContentChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 997
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reload()J
    .locals 12

    monitor-enter p0

    .line 858
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getExtSDCardPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalTimeMergeAlbum"

    .line 861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "external sdcard path is to currentExtSDCardPath ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 862
    iget-object v4, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->extSDCardPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 863
    iget-object v4, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->extSDCardPath:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->extSDCardPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "LocalTimeMergeAlbum"

    .line 864
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "external sdcard path is to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  sdcard path changed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSources.length "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v4, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iput-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->extSDCardPath:Ljava/lang/String;

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->extSDCardPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "DCIM/Camera"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 867
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->extSDCardPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "DCIM/Camera/Panorama"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 868
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->SD_CAMERA_BUCKET_ID:I

    .line 869
    invoke-static {v4}, Lcom/zui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->SD_PANOMA_BUCKET_ID:I

    .line 870
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    .line 871
    sget-object v4, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    iget v5, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->SD_CAMERA_BUCKET_ID:I

    .line 872
    invoke-virtual {v4, v5}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v4

    .line 871
    invoke-virtual {v0, v4}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/MediaSet;

    .line 873
    sget-object v5, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    iget v6, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->SD_CAMERA_BUCKET_ID:I

    .line 874
    invoke-virtual {v5, v6}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v5

    .line 873
    invoke-virtual {v0, v5}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaSet;

    .line 875
    invoke-virtual {v4, p0}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 876
    invoke-virtual {v0, p0}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 895
    iget-object v5, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v6, v5

    move v7, v3

    move v8, v7

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v9, v5, v7

    if-eqz v9, :cond_2

    .line 897
    invoke-virtual {v9}, Lcom/zui/gallery/data/MediaSet;->getBucketId()I

    move-result v10

    sget v11, Lcom/zui/gallery/util/MediaSetUtils;->SD_CAMERA_BUCKET_ID:I

    if-ne v10, v11, :cond_2

    .line 898
    instance-of v10, v9, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz v10, :cond_2

    .line 899
    check-cast v9, Lcom/zui/gallery/data/LocalAlbum;

    .line 900
    invoke-virtual {v9}, Lcom/zui/gallery/data/LocalAlbum;->isImage()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 901
    invoke-virtual {v4, p0}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 902
    invoke-virtual {v9, p0}, Lcom/zui/gallery/data/LocalAlbum;->removeContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 903
    iget-object v9, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    aput-object v1, v9, v8

    .line 904
    iget-object v9, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    aput-object v4, v9, v8

    goto :goto_2

    .line 906
    :cond_1
    invoke-virtual {v0, p0}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 907
    invoke-virtual {v9, p0}, Lcom/zui/gallery/data/LocalAlbum;->removeContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 908
    iget-object v9, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    aput-object v1, v9, v8

    .line 909
    iget-object v9, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    aput-object v0, v9, v8

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 918
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_5

    .line 919
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v0, v0

    move v4, v3

    move v5, v4

    :goto_3
    if-ge v4, v0, :cond_6

    .line 920
    iget-object v6, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    aget-object v6, v6, v4

    if-eqz v6, :cond_4

    .line 921
    iget-object v6, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/zui/gallery/data/MediaSet;->reload()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mDataVersion:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    move v5, v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    move v5, v3

    .line 928
    :cond_6
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getInstance(Landroid/content/Context;)Lcom/zui/gallery/data/LocalTimeDateUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalTimeDateUtil;->initIfNeed()Z

    move-result v0

    const-string v4, "LocalTimeMergeAlbum"

    .line 929
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forceReload:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->forceReload:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "LocaleChanged = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " changed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_7

    if-nez v0, :cond_7

    .line 930
    iget-boolean v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->forceReload:Z

    if-eqz v0, :cond_9

    .line 931
    :cond_7
    invoke-virtual {p0, v3}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->setForceReload(Z)V

    .line 935
    iput-object v1, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mDayTimeEntries:Ljava/util/List;

    .line 936
    iput-object v1, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mMonthTimeEntries:Ljava/util/List;

    .line 937
    iput-object v1, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mYearTimeEntries:Ljava/util/List;

    .line 939
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mLoadTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_8

    .line 940
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mLoadTask:Lcom/zui/gallery/util/Future;

    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 941
    :cond_8
    invoke-direct {p0}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->updateData()V

    .line 942
    invoke-direct {p0}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->invalidateCache()V

    .line 943
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v4, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeEntryLoader;

    invoke-direct {v4, p0, v1}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$TimeEntryLoader;-><init>(Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum$1;)V

    invoke-virtual {v0, v4, p0}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mLoadTask:Lcom/zui/gallery/util/Future;

    .line 945
    iput-boolean v2, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mIsLoading:Z

    .line 948
    :cond_9
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mLoadBuffer:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 949
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mLoadBuffer:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mDayTimeEntries:Ljava/util/List;

    .line 950
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mLoadBuffer:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mMonthTimeEntries:Ljava/util/List;

    .line 951
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mLoadBuffer:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mYearTimeEntries:Ljava/util/List;

    .line 952
    iput-object v1, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mLoadBuffer:Ljava/util/List;

    .line 953
    invoke-static {}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mDataVersion:J

    .line 954
    iget-wide v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_a
    if-eqz v5, :cond_b

    .line 958
    :try_start_1
    invoke-static {}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mDataVersion:J

    .line 963
    :cond_b
    iget-wide v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mDataVersion:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeContentListener(Lcom/zui/gallery/data/ContentListener;)V
    .locals 0

    .line 971
    invoke-super {p0, p1}, Lcom/zui/gallery/data/MediaSet;->removeContentListener(Lcom/zui/gallery/data/ContentListener;)V

    return-void
.end method

.method public rotate(I)V
    .locals 4

    .line 1018
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1019
    invoke-virtual {v3, p1}, Lcom/zui/gallery/data/MediaSet;->rotate(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setForceReload(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->forceReload:Z

    return-void
.end method
