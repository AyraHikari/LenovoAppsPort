.class public Lcom/zui/gallery/data/BurstAlbum;
.super Lcom/zui/gallery/data/MediaSet;
.source "BurstAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final INVALID_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BurstAlbum"


# instance fields
.field private final args:[Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private final mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mBucketId:I

.field private final mBurstId:Ljava/lang/String;

.field private mCachedCount:I

.field private mDateTaking:J

.field private final mExtBucketId:I

.field private final mIsImage:Z

.field private final mItemPath:Lcom/zui/gallery/data/Path;

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    .line 38
    invoke-static {v2}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result v2

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/zui/gallery/data/BurstAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IIZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 67
    invoke-static {}, Lcom/zui/gallery/data/BurstAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/zui/gallery/data/BurstAlbum;->mCachedCount:I

    .line 68
    iput-object p2, p0, Lcom/zui/gallery/data/BurstAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 69
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/BurstAlbum;->mResolver:Landroid/content/ContentResolver;

    .line 70
    iput p3, p0, Lcom/zui/gallery/data/BurstAlbum;->mBucketId:I

    .line 71
    iput p4, p0, Lcom/zui/gallery/data/BurstAlbum;->mExtBucketId:I

    .line 72
    iput-object p6, p0, Lcom/zui/gallery/data/BurstAlbum;->mName:Ljava/lang/String;

    .line 73
    iput-boolean p5, p0, Lcom/zui/gallery/data/BurstAlbum;->mIsImage:Z

    .line 74
    iput-object p7, p0, Lcom/zui/gallery/data/BurstAlbum;->mBurstId:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    .line 75
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p1, p4

    iget p3, p0, Lcom/zui/gallery/data/BurstAlbum;->mExtBucketId:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p1, p4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/zui/gallery/data/BurstAlbum;->mBurstId:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "%"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p1, p4

    iput-object p1, p0, Lcom/zui/gallery/data/BurstAlbum;->args:[Ljava/lang/String;

    const-string p1, "datetaken DESC, _id DESC"

    if-eqz p5, :cond_0

    const-string p3, "bucket_id in (?,?) and _size >0 and _display_name like ? "

    .line 78
    iput-object p3, p0, Lcom/zui/gallery/data/BurstAlbum;->mWhereClause:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/zui/gallery/data/BurstAlbum;->mOrderClause:Ljava/lang/String;

    .line 82
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/zui/gallery/data/BurstAlbum;->mBaseUri:Landroid/net/Uri;

    .line 83
    sget-object p1, Lcom/zui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/gallery/data/BurstAlbum;->mProjection:[Ljava/lang/String;

    .line 84
    sget-object p1, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    iput-object p1, p0, Lcom/zui/gallery/data/BurstAlbum;->mItemPath:Lcom/zui/gallery/data/Path;

    goto :goto_0

    :cond_0
    const-string p3, "bucket_id = ? and _size >0 "

    .line 87
    iput-object p3, p0, Lcom/zui/gallery/data/BurstAlbum;->mWhereClause:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/zui/gallery/data/BurstAlbum;->mOrderClause:Ljava/lang/String;

    .line 91
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/zui/gallery/data/BurstAlbum;->mBaseUri:Landroid/net/Uri;

    .line 92
    sget-object p1, Lcom/zui/gallery/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/gallery/data/BurstAlbum;->mProjection:[Ljava/lang/String;

    .line 93
    sget-object p1, Lcom/zui/gallery/data/LocalVideo;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    iput-object p1, p0, Lcom/zui/gallery/data/BurstAlbum;->mItemPath:Lcom/zui/gallery/data/Path;

    .line 96
    :goto_0
    new-instance p1, Lcom/zui/gallery/data/ChangeNotifier;

    iget-object p3, p0, Lcom/zui/gallery/data/BurstAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-direct {p1, p0, p3, p2}, Lcom/zui/gallery/data/ChangeNotifier;-><init>(Lcom/zui/gallery/data/MediaSet;Landroid/net/Uri;Lcom/zui/gallery/app/GalleryApp;)V

    iput-object p1, p0, Lcom/zui/gallery/data/BurstAlbum;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    return-void
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 291
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const-string v4, "_id=?"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 290
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalizedName(Landroid/content/res/Resources;ILandroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 384
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne p1, v0, :cond_0

    const p1, 0x7f100282

    .line 386
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 388
    :cond_0
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    if-ne p1, v0, :cond_1

    const p1, 0x7f10014f

    .line 389
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 390
    :cond_1
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    if-ne p1, v0, :cond_2

    const p1, 0x7f100152

    .line 391
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 392
    :cond_2
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    if-ne p1, v0, :cond_3

    const p1, 0x7f100156

    .line 393
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 394
    :cond_3
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->EDITED_ONLINE_PHOTOS_BUCKET_ID:I

    if-ne p1, v0, :cond_4

    const p1, 0x7f100150

    .line 395
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 396
    :cond_4
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->PANORAMA_BUCKET_ID:I

    if-ne p1, v0, :cond_5

    const p1, 0x7f100154

    .line 397
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 398
    :cond_5
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->WEIXIN_VIDEO_ID:I

    if-ne p1, v0, :cond_6

    const p1, 0x7f1002d6

    .line 399
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 400
    :cond_6
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->SCREENRECORDER_VIDEO_ID:I

    if-ne p1, v0, :cond_7

    const p1, 0x7f100155

    .line 401
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz p3, :cond_8

    .line 403
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    return-object p3

    .line 406
    :cond_8
    invoke-static {p2, p1}, Lcom/zui/gallery/data/BucketHelper;->getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMediaItemById(Lcom/zui/gallery/app/GalleryApp;ZLjava/util/ArrayList;)[Lcom/zui/gallery/data/MediaItem;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/app/GalleryApp;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Lcom/zui/gallery/data/MediaItem;"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 230
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/zui/gallery/data/MediaItem;

    .line 231
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    .line 232
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 233
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v0, :cond_1

    .line 240
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 241
    sget-object v8, Lcom/zui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 242
    sget-object v9, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    goto :goto_0

    .line 244
    :cond_1
    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 245
    sget-object v8, Lcom/zui/gallery/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    .line 246
    sget-object v9, Lcom/zui/gallery/data/LocalVideo;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    :goto_0
    move-object v12, v8

    .line 249
    invoke-interface/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 250
    invoke-interface/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v8

    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/String;

    .line 252
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v6

    const-string v13, "_id BETWEEN ? AND ?"

    const-string v15, "_id"

    move-object v11, v7

    .line 251
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BurstAlbum"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 259
    :cond_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_5

    .line 262
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 263
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 266
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v7, :cond_3

    goto :goto_1

    .line 270
    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v10, v7, :cond_4

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v5, :cond_3

    .line 284
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 276
    :cond_4
    :try_start_1
    invoke-virtual {v9, v7}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v7

    move-object/from16 v10, p0

    .line 277
    invoke-static {v7, v4, v8, v10, v0}, Lcom/zui/gallery/data/BurstAlbum;->loadOrUpdateItem(Lcom/zui/gallery/data/Path;Landroid/database/Cursor;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/app/GalleryApp;Z)Lcom/zui/gallery/data/MediaItem;

    move-result-object v7

    .line 279
    aput-object v7, v2, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 284
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 285
    throw v0
.end method

.method public static getRelativePath(I)Ljava/lang/String;
    .locals 2

    .line 413
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    const-string v1, "/"

    if-ne p0, v0, :cond_0

    .line 414
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DCIM/Camera"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 415
    :cond_0
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    if-ne p0, v0, :cond_1

    .line 416
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Download"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 417
    :cond_1
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    if-ne p0, v0, :cond_2

    .line 418
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Imported"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 419
    :cond_2
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    if-ne p0, v0, :cond_3

    .line 420
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Pictures/Screenshots"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 421
    :cond_3
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->EDITED_ONLINE_PHOTOS_BUCKET_ID:I

    if-ne p0, v0, :cond_4

    .line 422
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "EditedOnlinePhotos"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 426
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 427
    invoke-static {v0, p0}, Lcom/zui/gallery/util/GalleryUtils;->searchDirForPath(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Relative path for bucket id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not found."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BurstAlbum"

    invoke-static {v0, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    .line 432
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static loadOrUpdateItem(Lcom/zui/gallery/data/Path;Landroid/database/Cursor;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/app/GalleryApp;Z)Lcom/zui/gallery/data/MediaItem;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 150
    sget-object v3, Lcom/zui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    move-object/from16 v4, p2

    .line 151
    :try_start_0
    invoke-virtual {v4, v0}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/LocalMediaItem;

    if-nez v4, :cond_d

    if-eqz p4, :cond_0

    .line 154
    new-instance v4, Lcom/zui/gallery/data/LocalImage;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalImage;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto/16 :goto_4

    :cond_0
    const/16 v5, 0x8

    .line 157
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 164
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->PROJECTIONS:[Ljava/lang/String;

    const-string v10, "_data=? "

    const/4 v13, 0x1

    new-array v11, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v6, v11, v14

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/16 v7, 0xa

    if-eqz v6, :cond_7

    .line 169
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x2

    .line 170
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v5, :cond_1

    .line 172
    new-instance v4, Lcom/zui/gallery/data/LocalVideoHighSpeed;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoHighSpeed;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    if-ne v8, v7, :cond_2

    .line 174
    new-instance v4, Lcom/zui/gallery/data/LocalVideoLowSpeed;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoLowSpeed;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    const/16 v9, 0xb

    if-ne v8, v9, :cond_3

    .line 176
    new-instance v4, Lcom/zui/gallery/data/LocalVideoShotVideo;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoShotVideo;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_3
    const/16 v9, 0x12

    if-ne v8, v9, :cond_4

    .line 178
    new-instance v4, Lcom/zui/gallery/data/LocalWeixinVideo;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalWeixinVideo;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_4
    const/16 v9, 0x13

    if-ne v8, v9, :cond_5

    .line 180
    new-instance v4, Lcom/zui/gallery/data/LocalVideoScreenRecord;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoScreenRecord;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_5
    const/4 v9, 0x6

    if-ne v8, v9, :cond_6

    .line 183
    new-instance v4, Lcom/zui/gallery/data/LocalVideoCamera;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoCamera;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_6
    const/16 v9, 0xd

    if-ne v8, v9, :cond_7

    .line 185
    new-instance v4, Lcom/zui/gallery/data/LocalVideoHDR;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoHDR;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    :cond_7
    :goto_0
    if-eqz v6, :cond_8

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_8
    const/4 v6, 0x0

    if-eqz v4, :cond_b

    .line 196
    :try_start_1
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalMediaItem;->getMediaType()I

    move-result v8

    if-ne v8, v7, :cond_b

    .line 197
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Lcom/zui/gallery/database/GalleryContract$VideoEdit;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "mult"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    const-string v18, "_data=?"

    new-array v7, v13, [Ljava/lang/String;

    .line 198
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    const/16 v20, 0x0

    move-object/from16 v19, v7

    .line 197
    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 199
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 200
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v7, "BurstAlbum"

    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "slow_video mult "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_9
    move-object v7, v4

    check-cast v7, Lcom/zui/gallery/data/LocalVideo;

    invoke-virtual {v7, v5}, Lcom/zui/gallery/data/LocalVideo;->setMult(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_a

    .line 208
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_a
    throw v0

    :catch_0
    if-eqz v6, :cond_c

    .line 208
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_b
    :goto_2
    if-eqz v6, :cond_c

    goto :goto_1

    :cond_c
    :goto_3
    if-nez v4, :cond_e

    .line 215
    new-instance v4, Lcom/zui/gallery/data/LocalVideo;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideo;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_4

    .line 220
    :cond_d
    invoke-virtual {v4, v1}, Lcom/zui/gallery/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    .line 222
    :cond_e
    :goto_4
    monitor-exit v3

    return-object v4

    :catchall_1
    move-exception v0

    .line 223
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public delete()V
    .locals 12

    .line 336
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 338
    iget-object v0, p0, Lcom/zui/gallery/data/BurstAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/gallery/data/BurstAlbum;->mBaseUri:Landroid/net/Uri;

    const-string v2, "_data"

    const-string v3, "_id"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/data/BurstAlbum;->mWhereClause:Ljava/lang/String;

    iget-object v4, p0, Lcom/zui/gallery/data/BurstAlbum;->args:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "BurstAlbum"

    if-eqz v0, :cond_2

    .line 343
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 344
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 346
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 347
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 348
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 350
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    if-lez v4, :cond_1

    .line 354
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 355
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "is_trashed"

    .line 356
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 358
    iget-object v9, p0, Lcom/zui/gallery/data/BurstAlbum;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9, v7, v8, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 359
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 362
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " motoIds == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 367
    iget-object v0, p0, Lcom/zui/gallery/data/BurstAlbum;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v2, v6}, Lcom/zui/gallery/data/GroupBucketHelper;->batchDeleteGroupMemberShips(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/zui/gallery/data/BurstAlbum;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v2}, Lcom/zui/gallery/data/GroupBucketHelper;->batchDeleteShadowVideoShips(Landroid/content/ContentResolver;Ljava/util/List;)I

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 364
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 365
    throw v1

    :cond_2
    const-string v0, "delete folder is empty"

    .line 370
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public getBucketId()I
    .locals 1

    .line 458
    iget v0, p0, Lcom/zui/gallery/data/BurstAlbum;->mBucketId:I

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .line 106
    iget-boolean v0, p0, Lcom/zui/gallery/data/BurstAlbum;->mIsImage:Z

    const-string v1, "bucketId"

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v2, p0, Lcom/zui/gallery/data/BurstAlbum;->mBucketId:I

    .line 109
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v2, p0, Lcom/zui/gallery/data/BurstAlbum;->mBucketId:I

    .line 113
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDateInMs()J
    .locals 2

    monitor-enter p0

    .line 439
    :try_start_0
    iget-wide v0, p0, Lcom/zui/gallery/data/BurstAlbum;->mDateTaking:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/zui/gallery/data/BurstAlbum;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/zui/gallery/data/BurstAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/zui/gallery/data/BurstAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "limit"

    .line 121
    invoke-virtual {v1, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 122
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 124
    iget-object v1, p0, Lcom/zui/gallery/data/BurstAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/zui/gallery/data/BurstAlbum;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/zui/gallery/data/BurstAlbum;->mWhereClause:Ljava/lang/String;

    iget-object v5, p0, Lcom/zui/gallery/data/BurstAlbum;->args:[Ljava/lang/String;

    iget-object v6, p0, Lcom/zui/gallery/data/BurstAlbum;->mOrderClause:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "BurstAlbum"

    if-nez v1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 134
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 135
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 136
    iget-object v3, p0, Lcom/zui/gallery/data/BurstAlbum;->mItemPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {v3, p1}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object p1

    .line 137
    iget-object v3, p0, Lcom/zui/gallery/data/BurstAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    iget-boolean v4, p0, Lcom/zui/gallery/data/BurstAlbum;->mIsImage:Z

    invoke-static {p1, v1, v0, v3, v4}, Lcom/zui/gallery/data/BurstAlbum;->loadOrUpdateItem(Lcom/zui/gallery/data/Path;Landroid/database/Cursor;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/app/GalleryApp;Z)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    .line 139
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 142
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BurstAlbum list "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :catchall_0
    move-exception p1

    .line 142
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 143
    throw p1
.end method

.method public getMediaItemCount()I
    .locals 8

    .line 296
    iget v0, p0, Lcom/zui/gallery/data/BurstAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 297
    iget-object v2, p0, Lcom/zui/gallery/data/BurstAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/zui/gallery/data/BurstAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v4, Lcom/zui/gallery/data/BurstAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v5, p0, Lcom/zui/gallery/data/BurstAlbum;->mWhereClause:Ljava/lang/String;

    iget-object v6, p0, Lcom/zui/gallery/data/BurstAlbum;->args:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "BurstAlbum"

    const-string v2, "query fail"

    .line 301
    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 305
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 306
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/BurstAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 309
    throw v1

    .line 311
    :cond_1
    :goto_0
    iget v0, p0, Lcom/zui/gallery/data/BurstAlbum;->mCachedCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/zui/gallery/data/BurstAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/data/BurstAlbum;->mBucketId:I

    iget-object v2, p0, Lcom/zui/gallery/data/BurstAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 317
    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/data/BurstAlbum;->mName:Ljava/lang/String;

    .line 316
    invoke-static {v0, v1, v2, v3}, Lcom/zui/gallery/data/BurstAlbum;->getLocalizedName(Landroid/content/res/Resources;ILandroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    const/16 v0, 0x405

    return v0
.end method

.method public isCameraRoll()Z
    .locals 2

    .line 101
    iget v0, p0, Lcom/zui/gallery/data/BurstAlbum;->mBucketId:I

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImage()Z
    .locals 1

    .line 462
    iget-boolean v0, p0, Lcom/zui/gallery/data/BurstAlbum;->mIsImage:Z

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/zui/gallery/data/BurstAlbum;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/zui/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-static {}, Lcom/zui/gallery/data/BurstAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/BurstAlbum;->mDataVersion:J

    const/4 v0, -0x1

    .line 324
    iput v0, p0, Lcom/zui/gallery/data/BurstAlbum;->mCachedCount:I

    .line 326
    :cond_0
    iget-wide v0, p0, Lcom/zui/gallery/data/BurstAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public declared-synchronized setDateInMs(J)V
    .locals 0

    monitor-enter p0

    .line 443
    :try_start_0
    iput-wide p1, p0, Lcom/zui/gallery/data/BurstAlbum;->mDateTaking:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/zui/gallery/data/BurstAlbum;->filePath:Ljava/lang/String;

    return-void
.end method
