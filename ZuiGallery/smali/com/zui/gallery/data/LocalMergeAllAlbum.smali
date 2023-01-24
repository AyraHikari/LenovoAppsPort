.class public Lcom/zui/gallery/data/LocalMergeAllAlbum;
.super Lcom/zui/gallery/data/MediaSet;
.source "LocalMergeAllAlbum.java"

# interfaces
.implements Lcom/zui/gallery/data/ContentListener;
.implements Lcom/zui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/LocalMergeAllAlbum$FetchCache;,
        Lcom/zui/gallery/data/LocalMergeAllAlbum$AlbumsLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/gallery/data/MediaSet;",
        "Lcom/zui/gallery/data/ContentListener;",
        "Lcom/zui/gallery/util/FutureListener<",
        "[",
        "Lcom/zui/gallery/data/MediaSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0x40

.field public static final PATH_ALL_ALBUM:Lcom/zui/gallery/data/Path;

.field public static final PATH_ALL_ALBUM_IMAGE:Lcom/zui/gallery/data/Path;

.field public static final PATH_ALL_ALBUM_VIDEO:Lcom/zui/gallery/data/Path;

.field private static final PATH_MIN_SEGMENT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LocalMergeAllAlbum"

.field public static final mWatchUris:[Landroid/net/Uri;


# instance fields
.field private mAlbums:[Lcom/zui/gallery/data/MediaSet;

.field private final mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFetcher:[Lcom/zui/gallery/data/LocalMergeAllAlbum$FetchCache;

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

.field private mLoadBuffer:[Lcom/zui/gallery/data/MediaSet;

.field private mLoadTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "[",
            "Lcom/zui/gallery/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private final mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

.field private mSupportedOperation:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    .line 65
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mWatchUris:[Landroid/net/Uri;

    const-string v0, "/local/album/all"

    .line 70
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->PATH_ALL_ALBUM:Lcom/zui/gallery/data/Path;

    const-string v0, "/local/album/all/image"

    .line 71
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->PATH_ALL_ALBUM_IMAGE:Lcom/zui/gallery/data/Path;

    const-string v0, "/local/album/all/video"

    .line 72
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->PATH_ALL_ALBUM_VIDEO:Lcom/zui/gallery/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;Lcom/zui/gallery/app/GalleryApp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/data/Path;",
            "Ljava/util/Comparator<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;",
            "Lcom/zui/gallery/app/GalleryApp;",
            ")V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 76
    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 56
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mIndex:Ljava/util/TreeMap;

    .line 77
    iput-object p2, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mComparator:Ljava/util/Comparator;

    .line 78
    iput-object p3, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 79
    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p3}, Lcom/zui/gallery/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance p2, Lcom/zui/gallery/data/ChangeNotifier;

    sget-object p3, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mWatchUris:[Landroid/net/Uri;

    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {p2, p0, p3, v0}, Lcom/zui/gallery/data/ChangeNotifier;-><init>(Lcom/zui/gallery/data/MediaSet;[Landroid/net/Uri;Lcom/zui/gallery/app/GalleryApp;)V

    iput-object p2, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    .line 81
    invoke-static {p1}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->getTypeFromPath(Lcom/zui/gallery/data/Path;)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mType:I

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/data/LocalMergeAllAlbum;)Lcom/zui/gallery/app/GalleryApp;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/data/LocalMergeAllAlbum;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mType:I

    return p0
.end method

.method private static getTypeFromPath(Lcom/zui/gallery/data/Path;)I
    .locals 3

    .line 85
    invoke-virtual {p0}, Lcom/zui/gallery/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 86
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 90
    aget-object p0, v0, v1

    invoke-static {p0}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->getTypeFromString(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateCache()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 118
    iget-object v3, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mFetcher:[Lcom/zui/gallery/data/LocalMergeAllAlbum$FetchCache;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/zui/gallery/data/LocalMergeAllAlbum$FetchCache;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    array-length v2, v2

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateData()V
    .locals 7

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 106
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    array-length v3, v2

    new-array v3, v3, [Lcom/zui/gallery/data/LocalMergeAllAlbum$FetchCache;

    iput-object v3, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mFetcher:[Lcom/zui/gallery/data/LocalMergeAllAlbum$FetchCache;

    .line 107
    array-length v2, v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    .line 108
    iget-object v4, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mFetcher:[Lcom/zui/gallery/data/LocalMergeAllAlbum$FetchCache;

    new-instance v5, Lcom/zui/gallery/data/LocalMergeAllAlbum$FetchCache;

    iget-object v6, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    aget-object v6, v6, v3

    invoke-direct {v5, v6}, Lcom/zui/gallery/data/LocalMergeAllAlbum$FetchCache;-><init>(Lcom/zui/gallery/data/MediaSet;)V

    aput-object v5, v4, v3

    .line 109
    iget-object v4, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getSupportedOperations()I

    move-result v4

    and-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 111
    :cond_1
    iput v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mSupportedOperation:I

    .line 112
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 113
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    array-length v2, v2

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_0

    .line 249
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 250
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->delete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized getAllAlbums()[Lcom/zui/gallery/data/MediaSet;
    .locals 1

    monitor-enter p0

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBucketId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageItemCount()I
    .locals 6

    .line 433
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 434
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 435
    instance-of v5, v4, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz v5, :cond_0

    .line 436
    check-cast v4, Lcom/zui/gallery/data/LocalAlbum;

    .line 437
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->isImage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 438
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

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    iget-object v1, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    .line 145
    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 146
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 147
    iget-object v3, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    if-nez v3, :cond_0

    return-object v0

    .line 150
    :cond_0
    array-length v4, v3

    new-array v4, v4, [Lcom/zui/gallery/data/MediaItem;

    .line 152
    array-length v3, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_1

    .line 156
    iget-object v7, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mFetcher:[Lcom/zui/gallery/data/LocalMergeAllAlbum$FetchCache;

    aget-object v7, v7, v6

    aget v8, v1, v6

    invoke-virtual {v7, v8}, Lcom/zui/gallery/data/LocalMergeAllAlbum$FetchCache;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v7

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int v6, p1, p2

    if-ge v2, v6, :cond_7

    const/4 v6, -0x1

    move v7, v5

    move v8, v6

    :goto_2
    if-ge v7, v3, :cond_4

    .line 161
    aget-object v9, v4, v7

    if-eqz v9, :cond_3

    if-eq v8, v6, :cond_2

    .line 162
    iget-object v9, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mComparator:Ljava/util/Comparator;

    aget-object v10, v4, v7

    aget-object v11, v4, v8

    invoke-interface {v9, v10, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_3

    :cond_2
    move v8, v7

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    if-ne v8, v6, :cond_5

    goto :goto_3

    .line 173
    :cond_5
    aget v6, v1, v8

    add-int/lit8 v6, v6, 0x1

    aput v6, v1, v8

    if-lt v2, p1, :cond_6

    .line 175
    aget-object v6, v4, v8

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_6
    iget-object v6, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mFetcher:[Lcom/zui/gallery/data/LocalMergeAllAlbum$FetchCache;

    aget-object v6, v6, v8

    aget v7, v1, v8

    invoke-virtual {v6, v7}, Lcom/zui/gallery/data/LocalMergeAllAlbum$FetchCache;->getItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v6

    aput-object v6, v4, v8

    add-int/lit8 v2, v2, 0x1

    .line 180
    rem-int/lit8 v6, v2, 0x40

    if-nez v6, :cond_1

    .line 181
    iget-object v6, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    invoke-virtual {v6, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    :goto_3
    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->getTotalMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 131
    iget v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const v0, 0x7f100049

    goto :goto_0

    :cond_0
    const v0, 0x7f100048

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mSupportedOperation:I

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 192
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 193
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getTotalMediaItemCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 195
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get localMergeAllAlbum count "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LocalMergeAllAlbum"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getVideoItemCount()I
    .locals 6

    .line 449
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 450
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 451
    instance-of v5, v4, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz v5, :cond_0

    .line 452
    check-cast v4, Lcom/zui/gallery/data/LocalAlbum;

    .line 453
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->isImage()Z

    move-result v5

    if-nez v5, :cond_0

    .line 454
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

    .line 417
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 418
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 419
    instance-of v5, v4, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz v5, :cond_0

    .line 420
    check-cast v4, Lcom/zui/gallery/data/LocalAlbum;

    .line 421
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
    .locals 1

    const/4 v0, 0x0

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

    .line 100
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mIsLoading:Z
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

    .line 262
    invoke-virtual {p0}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->notifyContentChanged()V

    return-void
.end method

.method public declared-synchronized onFutureDone(Lcom/zui/gallery/util/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/Future<",
            "[",
            "Lcom/zui/gallery/data/MediaSet;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "LocalMergeAllAlbum"

    const-string v1, "LocalMergeAllAlbum onFutureDone"

    .line 266
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mLoadTask:Lcom/zui/gallery/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 268
    monitor-exit p0

    return-void

    .line 269
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/zui/gallery/data/MediaSet;

    iput-object p1, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mLoadBuffer:[Lcom/zui/gallery/data/MediaSet;

    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mIsLoading:Z

    if-nez p1, :cond_1

    new-array p1, v0, [Lcom/zui/gallery/data/MediaSet;

    .line 272
    iput-object p1, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mLoadBuffer:[Lcom/zui/gallery/data/MediaSet;

    .line 275
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/zui/gallery/data/LocalMergeAllAlbum$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/data/LocalMergeAllAlbum$1;-><init>(Lcom/zui/gallery/data/LocalMergeAllAlbum;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reload()J
    .locals 10

    .line 202
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/zui/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v0

    .line 206
    iget-object v1, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 207
    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 208
    invoke-virtual {v6}, Lcom/zui/gallery/data/MediaSet;->reload()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mDataVersion:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    move v0, v3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 213
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reload LocalMergeAllAlbum isChange "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "LocalMergeAllAlbum"

    invoke-static {v4, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 215
    iput-object v1, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    .line 216
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mLoadTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_2

    .line 217
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 219
    :cond_2
    iput-boolean v3, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mIsLoading:Z

    .line 220
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getThreadPool()Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v3, Lcom/zui/gallery/data/LocalMergeAllAlbum$AlbumsLoader;

    invoke-direct {v3, p0, v1}, Lcom/zui/gallery/data/LocalMergeAllAlbum$AlbumsLoader;-><init>(Lcom/zui/gallery/data/LocalMergeAllAlbum;Lcom/zui/gallery/data/LocalMergeAllAlbum$1;)V

    invoke-virtual {v0, v3, p0}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mLoadTask:Lcom/zui/gallery/util/Future;

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mLoadBuffer:[Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_5

    .line 224
    array-length v3, v0

    .line 225
    iput-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    :goto_1
    if-ge v2, v3, :cond_4

    .line 227
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 228
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->reload()J

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    :cond_4
    invoke-direct {p0}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->updateData()V

    .line 231
    invoke-direct {p0}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->invalidateCache()V

    .line 232
    iput-object v1, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mLoadBuffer:[Lcom/zui/gallery/data/MediaSet;

    .line 233
    invoke-static {}, Lcom/zui/gallery/data/LocalMergeAllAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mDataVersion:J

    .line 234
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mDataVersion:J

    return-wide v0

    .line 237
    :cond_5
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public rotate(I)V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/zui/gallery/data/LocalMergeAllAlbum;->mAlbums:[Lcom/zui/gallery/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 257
    invoke-virtual {v3, p1}, Lcom/zui/gallery/data/MediaSet;->rotate(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
