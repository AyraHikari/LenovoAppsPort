.class public Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;
.super Lcom/zui/gallery/data/MediaSet;
.source "LocalTimeContinuousAlbumSet.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final INVALID_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LocalTimeContinuousAlbumSet"


# instance fields
.field private array:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private volatile mBucketEntries:[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

.field private mCachedCount:I

.field private mContentListener:Lcom/zui/gallery/data/ContentListener;

.field private final mItemPath:Lcom/zui/gallery/data/Path;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private volatile mSources:[Lcom/zui/gallery/data/MediaSet;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "count(*)"

    .line 35
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V
    .locals 2

    .line 55
    invoke-static {}, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mCachedCount:I

    .line 56
    iput-object p2, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 57
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mResolver:Landroid/content/ContentResolver;

    const-string p1, "bucket_id = ?"

    .line 58
    iput-object p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mWhereClause:Ljava/lang/String;

    const-string p1, "datetaken DESC, _id DESC"

    .line 59
    iput-object p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mOrderClause:Ljava/lang/String;

    .line 61
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mBaseUri:Landroid/net/Uri;

    .line 62
    sget-object p1, Lcom/zui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mProjection:[Ljava/lang/String;

    .line 63
    sget-object p1, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    iput-object p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mItemPath:Lcom/zui/gallery/data/Path;

    return-void
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 180
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const-string v4, "_id=?"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 179
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 240
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne p1, v0, :cond_0

    const p1, 0x7f10014d

    .line 241
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 242
    :cond_0
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    if-ne p1, v0, :cond_1

    const p1, 0x7f10014f

    .line 243
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 244
    :cond_1
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    if-ne p1, v0, :cond_2

    const p1, 0x7f100152

    .line 245
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 246
    :cond_2
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    if-ne p1, v0, :cond_3

    const p1, 0x7f100156

    .line 247
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 248
    :cond_3
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->EDITED_ONLINE_PHOTOS_BUCKET_ID:I

    if-ne p1, v0, :cond_4

    const p1, 0x7f100150

    .line 249
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object p2
.end method

.method public static getRelativePath(I)Ljava/lang/String;
    .locals 2

    .line 258
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    const-string v1, "/"

    if-ne p0, v0, :cond_0

    .line 259
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DCIM/Camera"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 260
    :cond_0
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    if-ne p0, v0, :cond_1

    .line 261
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Download"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 262
    :cond_1
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    if-ne p0, v0, :cond_2

    .line 263
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Imported"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 264
    :cond_2
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    if-ne p0, v0, :cond_3

    .line 265
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Pictures/Screenshots"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 266
    :cond_3
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->EDITED_ONLINE_PHOTOS_BUCKET_ID:I

    if-ne p0, v0, :cond_4

    .line 267
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "EditedOnlinePhotos"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 271
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 272
    invoke-static {v0, p0}, Lcom/zui/gallery/util/GalleryUtils;->searchDirForPath(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Relative path for bucket id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not found."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LocalTimeContinuousAlbumSet"

    invoke-static {v0, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    .line 278
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 278
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static loadOrUpdateItem(Lcom/zui/gallery/data/Path;Landroid/database/Cursor;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/app/GalleryApp;Z)Lcom/zui/gallery/data/LocalMediaItem;
    .locals 1

    .line 160
    sget-object v0, Lcom/zui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/data/LocalMediaItem;

    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    const-string p2, "kugoubug"

    const-string p4, "1"

    .line 165
    invoke-static {p2, p4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance p2, Lcom/zui/gallery/data/LocalImage;

    invoke-direct {p2, p0, p3, p1}, Lcom/zui/gallery/data/LocalImage;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    .line 168
    :cond_0
    new-instance p2, Lcom/zui/gallery/data/LocalVideo;

    invoke-direct {p2, p0, p3, p1}, Lcom/zui/gallery/data/LocalVideo;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p2, p1}, Lcom/zui/gallery/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    .line 173
    :goto_0
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    .line 174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addContentListener(Lcom/zui/gallery/data/ContentListener;)V
    .locals 0

    .line 287
    invoke-super {p0, p1}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    .line 288
    iput-object p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mContentListener:Lcom/zui/gallery/data/ContentListener;

    return-void
.end method

.method public delete()V
    .locals 0

    .line 228
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    return-void
.end method

.method public getContinusFolderImageCount(Ljava/util/Set;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mBucketEntries:[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mBucketEntries:[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 301
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mBucketEntries:[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    if-eqz p2, :cond_0

    .line 303
    iget v5, v4, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 304
    iget v4, v4, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->itemCount:I

    goto :goto_1

    .line 307
    :cond_0
    iget v5, v4, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 308
    iget v4, v4, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->itemCount:I

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
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->getMediaItemCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    return-object v0

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v2

    .line 115
    iget-object v9, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mBaseUri:Landroid/net/Uri;

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    move v4, v10

    :goto_0
    if-ge p1, v1, :cond_1

    if-ge v4, p2, :cond_1

    add-int/lit8 v4, v4, 0x1

    const-string v5, "\'"

    .line 120
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mBucketEntries:[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->coverItemId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\',"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const-string v1, "LocalTimeContinuousAlbumSet"

    if-le p1, p2, :cond_5

    .line 124
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 125
    iget-object p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mProjection:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id in ( "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mOrderClause:Ljava/lang/String;

    move-object v3, p1

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_2

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 133
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 134
    iget-object v4, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mItemPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {v4, v3}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v4

    .line 135
    iget-object v5, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-static {v4, p1, v2, v5, p2}, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->loadOrUpdateItem(Lcom/zui/gallery/data/Path;Landroid/database/Cursor;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/app/GalleryApp;Z)Lcom/zui/gallery/data/LocalMediaItem;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 138
    iget-object v5, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->array:Landroid/util/SparseArray;

    iget v6, v4, Lcom/zui/gallery/data/LocalMediaItem;->id:I

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_3

    .line 139
    iput-boolean p2, v4, Lcom/zui/gallery/data/LocalMediaItem;->isContinuousCover:Z

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMediaItem:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v4, Lcom/zui/gallery/data/LocalMediaItem;->isContinuousCover:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " name:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalMediaItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v3, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->array:Landroid/util/SparseArray;

    iget v5, v4, Lcom/zui/gallery/data/LocalMediaItem;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v4, Lcom/zui/gallery/data/LocalMediaItem;->continuousCount:I

    .line 142
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "continues albumSet not found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 151
    :cond_4
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    .line 149
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 151
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 152
    throw p2

    .line 154
    :cond_5
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LocalTimeContinuousAlbumSet list "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mSources:[Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    const/16 v0, 0x405

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mSources:[Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mSources:[Lcom/zui/gallery/data/MediaSet;

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
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

.method public declared-synchronized reload()J
    .locals 2

    monitor-enter p0

    .line 218
    :try_start_0
    iget-wide v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateMediaSet([Lcom/zui/gallery/data/BucketHelper$BucketEntry;[Lcom/zui/gallery/data/MediaSet;)V
    .locals 4

    monitor-enter p0

    .line 68
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mBucketEntries:[Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->array:Landroid/util/SparseArray;

    .line 75
    iput-object p2, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->mSources:[Lcom/zui/gallery/data/MediaSet;

    if-eqz p1, :cond_0

    .line 77
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 78
    iget-object v2, p0, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;->array:Landroid/util/SparseArray;

    iget v3, v1, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->coverItemId:I

    iget v1, v1, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->itemCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
