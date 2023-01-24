.class public Lcom/zui/gallery/data/LocalAlbum;
.super Lcom/zui/gallery/data/MediaSet;
.source "LocalAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final INVALID_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LocalAlbum"


# instance fields
.field private filePath:Ljava/lang/String;

.field private isCameraAlbum:Z

.field private final mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mBucketId:I

.field private mCachedCount:I

.field private mDateTaking:J

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
    .locals 1

    const-string v0, "count(_id)"

    .line 54
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IZ)V
    .locals 7

    .line 130
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    invoke-static {v0, p3}, Lcom/zui/gallery/data/BucketHelper;->getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 128
    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/data/LocalAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IZLjava/lang/String;)V
    .locals 2

    .line 78
    invoke-static {}, Lcom/zui/gallery/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    const/4 p1, -0x1

    .line 69
    iput p1, p0, Lcom/zui/gallery/data/LocalAlbum;->mCachedCount:I

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/zui/gallery/data/LocalAlbum;->isCameraAlbum:Z

    .line 79
    iput-object p2, p0, Lcom/zui/gallery/data/LocalAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 80
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    .line 81
    iput p3, p0, Lcom/zui/gallery/data/LocalAlbum;->mBucketId:I

    .line 82
    iput-object p5, p0, Lcom/zui/gallery/data/LocalAlbum;->mName:Ljava/lang/String;

    .line 83
    iput-boolean p4, p0, Lcom/zui/gallery/data/LocalAlbum;->mIsImage:Z

    const-string p1, "date_modified DESC, title DESC"

    const-string p3, "bucket_id = ? and _size >0 "

    if-eqz p4, :cond_0

    .line 100
    iput-object p3, p0, Lcom/zui/gallery/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 107
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 108
    sget-object p1, Lcom/zui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 109
    sget-object p1, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbum;->mItemPath:Lcom/zui/gallery/data/Path;

    goto :goto_0

    .line 112
    :cond_0
    iput-object p3, p0, Lcom/zui/gallery/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 118
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 119
    sget-object p1, Lcom/zui/gallery/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 120
    sget-object p1, Lcom/zui/gallery/data/LocalVideo;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbum;->mItemPath:Lcom/zui/gallery/data/Path;

    .line 123
    :goto_0
    new-instance p1, Lcom/zui/gallery/data/ChangeNotifier;

    iget-object p3, p0, Lcom/zui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-direct {p1, p0, p3, p2}, Lcom/zui/gallery/data/ChangeNotifier;-><init>(Lcom/zui/gallery/data/MediaSet;Landroid/net/Uri;Lcom/zui/gallery/app/GalleryApp;)V

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbum;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    return-void
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 351
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const-string v4, "_id=?"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 350
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalizedName(Landroid/content/res/Resources;ILandroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 480
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne p1, v0, :cond_0

    const p1, 0x7f100282

    .line 482
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 484
    :cond_0
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    if-ne p1, v0, :cond_1

    const p1, 0x7f10014f

    .line 485
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 486
    :cond_1
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    if-ne p1, v0, :cond_2

    const p1, 0x7f100152

    .line 487
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 488
    :cond_2
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    if-ne p1, v0, :cond_3

    const p1, 0x7f100156

    .line 489
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 490
    :cond_3
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->EDITED_ONLINE_PHOTOS_BUCKET_ID:I

    if-ne p1, v0, :cond_4

    const p1, 0x7f100150

    .line 491
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 492
    :cond_4
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->PANORAMA_BUCKET_ID:I

    if-ne p1, v0, :cond_5

    const p1, 0x7f100154

    .line 493
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 494
    :cond_5
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->WEIXIN_VIDEO_ID:I

    if-ne p1, v0, :cond_6

    const p1, 0x7f1002d6

    .line 495
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 496
    :cond_6
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->SCREENRECORDER_VIDEO_ID:I

    if-ne p1, v0, :cond_7

    const p1, 0x7f100155

    .line 497
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 498
    :cond_7
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->HIGHLIGHT_BUCKET_ID:I

    if-ne p1, v0, :cond_8

    const p1, 0x7f100159

    .line 499
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    if-eqz p3, :cond_9

    .line 501
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    return-object p3

    .line 504
    :cond_9
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

    .line 290
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/zui/gallery/data/MediaItem;

    .line 291
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    .line 292
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 293
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

    .line 300
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 301
    sget-object v8, Lcom/zui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 302
    sget-object v9, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    goto :goto_0

    .line 304
    :cond_1
    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 305
    sget-object v8, Lcom/zui/gallery/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    .line 306
    sget-object v9, Lcom/zui/gallery/data/LocalVideo;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    :goto_0
    move-object v12, v8

    .line 309
    invoke-interface/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 310
    invoke-interface/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v8

    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/String;

    .line 312
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v6

    const-string v13, "_id BETWEEN ? AND ?"

    const-string v15, "_id"

    move-object v11, v7

    .line 311
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalAlbum"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 319
    :cond_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_5

    .line 322
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 323
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 326
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v7, :cond_3

    goto :goto_1

    .line 330
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

    .line 344
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 336
    :cond_4
    :try_start_1
    invoke-virtual {v9, v7}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v7

    move-object/from16 v10, p0

    .line 337
    invoke-static {v7, v4, v8, v10, v0}, Lcom/zui/gallery/data/LocalAlbum;->loadOrUpdateItem(Lcom/zui/gallery/data/Path;Landroid/database/Cursor;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/app/GalleryApp;Z)Lcom/zui/gallery/data/MediaItem;

    move-result-object v7

    .line 339
    aput-object v7, v2, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 344
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 345
    throw v0
.end method

.method public static getRelativePath(I)Ljava/lang/String;
    .locals 2

    .line 511
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    const-string v1, "/"

    if-ne p0, v0, :cond_0

    .line 512
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DCIM/Camera"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 513
    :cond_0
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    if-ne p0, v0, :cond_1

    .line 514
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Download"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 515
    :cond_1
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    if-ne p0, v0, :cond_2

    .line 516
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Imported"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 517
    :cond_2
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    if-ne p0, v0, :cond_3

    .line 518
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Pictures/Screenshots"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 519
    :cond_3
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->EDITED_ONLINE_PHOTOS_BUCKET_ID:I

    if-ne p0, v0, :cond_4

    .line 520
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "EditedOnlinePhotos"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 524
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 525
    invoke-static {v0, p0}, Lcom/zui/gallery/util/GalleryUtils;->searchDirForPath(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Relative path for bucket id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not found."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LocalAlbum"

    invoke-static {v0, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    .line 530
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
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 200
    sget-object v3, Lcom/zui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    move-object/from16 v4, p2

    .line 201
    :try_start_0
    invoke-virtual {v4, v0}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/LocalMediaItem;

    if-nez v4, :cond_f

    if-eqz p4, :cond_0

    .line 205
    new-instance v4, Lcom/zui/gallery/data/LocalImage;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalImage;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto/16 :goto_5

    :cond_0
    const/16 v5, 0x8

    .line 208
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, "ZuiGalleryGroup/"

    .line 213
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v8, v9, :cond_1

    const-string v8, "VID_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v9, :cond_1

    const-string v7, "ZuiGalleryGroup/"

    .line 215
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 216
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "VID_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v8, v10

    goto :goto_0

    :cond_1
    move v8, v11

    .line 224
    :goto_0
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->CONTENT_URI:Landroid/net/Uri;

    sget-object v14, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->PROJECTIONS:[Ljava/lang/String;

    const-string v15, "_data=? "

    new-array v9, v10, [Ljava/lang/String;

    if-eqz v8, :cond_2

    move-object v6, v7

    :cond_2
    aput-object v6, v9, v11

    const/16 v17, 0x0

    move-object/from16 v16, v9

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/16 v7, 0xa

    if-eqz v6, :cond_9

    .line 229
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x2

    .line 230
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v5, :cond_3

    .line 232
    new-instance v4, Lcom/zui/gallery/data/LocalVideoHighSpeed;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoHighSpeed;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_1

    :cond_3
    if-ne v8, v7, :cond_4

    .line 234
    new-instance v4, Lcom/zui/gallery/data/LocalVideoLowSpeed;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoLowSpeed;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_1

    :cond_4
    const/16 v9, 0xb

    if-ne v8, v9, :cond_5

    .line 236
    new-instance v4, Lcom/zui/gallery/data/LocalVideoShotVideo;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoShotVideo;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_1

    :cond_5
    const/16 v9, 0x12

    if-ne v8, v9, :cond_6

    .line 238
    new-instance v4, Lcom/zui/gallery/data/LocalWeixinVideo;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalWeixinVideo;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_1

    :cond_6
    const/16 v9, 0x13

    if-ne v8, v9, :cond_7

    .line 240
    new-instance v4, Lcom/zui/gallery/data/LocalVideoScreenRecord;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoScreenRecord;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_1

    :cond_7
    const/4 v9, 0x6

    if-ne v8, v9, :cond_8

    .line 243
    new-instance v4, Lcom/zui/gallery/data/LocalVideoCamera;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoCamera;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_1

    :cond_8
    const/16 v9, 0xd

    if-ne v8, v9, :cond_9

    .line 245
    new-instance v4, Lcom/zui/gallery/data/LocalVideoHDR;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoHDR;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    :cond_9
    :goto_1
    if-eqz v6, :cond_a

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_a
    const/4 v6, 0x0

    if-eqz v4, :cond_d

    .line 256
    :try_start_1
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalMediaItem;->getMediaType()I

    move-result v8

    if-ne v8, v7, :cond_d

    .line 257
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/zui/gallery/database/GalleryContract$VideoEdit;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "mult"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v14

    const-string v15, "_data=?"

    new-array v7, v10, [Ljava/lang/String;

    .line 258
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    const/16 v17, 0x0

    move-object/from16 v16, v7

    .line 257
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 259
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 260
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v7, "LocalAlbum"

    .line 261
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "slow_video mult "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_b
    move-object v7, v4

    check-cast v7, Lcom/zui/gallery/data/LocalVideo;

    invoke-virtual {v7, v5}, Lcom/zui/gallery/data/LocalVideo;->setMult(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_c

    .line 268
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_c
    throw v0

    :catch_0
    if-eqz v6, :cond_e

    .line 268
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_d
    :goto_3
    if-eqz v6, :cond_e

    goto :goto_2

    :cond_e
    :goto_4
    if-nez v4, :cond_10

    .line 275
    new-instance v4, Lcom/zui/gallery/data/LocalVideo;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideo;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_5

    .line 280
    :cond_f
    invoke-virtual {v4, v1}, Lcom/zui/gallery/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    .line 282
    :cond_10
    :goto_5
    monitor-exit v3

    return-object v4

    :catchall_1
    move-exception v0

    .line 283
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public delete()V
    .locals 9

    .line 399
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 401
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/zui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    const-string v3, "_data"

    const-string v4, "_id"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/gallery/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    iget v6, p0, Lcom/zui/gallery/data/LocalAlbum;->mBucketId:I

    .line 403
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    const/4 v6, 0x0

    .line 401
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "LocalAlbum"

    if-eqz v1, :cond_1

    .line 406
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 409
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 410
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 411
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 412
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 416
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 419
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Lcom/zui/gallery/data/GroupBucketHelper;->batchDeleteGroupMemberShips(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v3}, Lcom/zui/gallery/data/GroupBucketHelper;->batchDeleteShadowVideoShips(Landroid/content/ContentResolver;Ljava/util/List;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 416
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 417
    throw v0

    :cond_1
    const-string v0, "delete folder is empty"

    .line 422
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filetest localalbum delete mName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/data/LocalAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1e

    .line 430
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->isAtLeastBuildVersion(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 432
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "is_trashed"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 434
    iget-object v4, p0, Lcom/zui/gallery/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const-string v5, "android:query-arg-sql-selection"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v7, [Ljava/lang/String;

    .line 435
    iget v5, p0, Lcom/zui/gallery/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "android:query-arg-sql-selection-args"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v4, "android:query-arg-allow-movement"

    .line 436
    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 437
    iget-object v4, p0, Lcom/zui/gallery/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/zui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v0

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete item count :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/zui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/zui/gallery/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    new-array v5, v7, [Ljava/lang/String;

    iget v6, p0, Lcom/zui/gallery/data/LocalAlbum;->mBucketId:I

    .line 442
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 441
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 445
    :goto_2
    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbum;->mName:Ljava/lang/String;

    iget v3, p0, Lcom/zui/gallery/data/LocalAlbum;->mBucketId:I

    invoke-static {v3}, Lcom/zui/gallery/data/LocalAlbum;->getRelativePath(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/zui/gallery/util/GroupUtils;->isFolderInGroup(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_3

    const-string v3, "filetest localalbum folder in group"

    .line 449
    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v2, p0, Lcom/zui/gallery/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v0, v1}, Lcom/zui/gallery/util/GroupUtils;->deleteGroupById(Landroid/content/ContentResolver;J)V

    .line 451
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbum;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->deleteGroupFolderDirectoryiByName(Landroid/content/ContentResolver;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public fakeChange()V
    .locals 2

    const-string v0, "LocalAlbum"

    const-string v1, "LocalAlbum fakeChange"

    .line 389
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/zui/gallery/data/ChangeNotifier;->fakeChange()V

    return-void
.end method

.method public getBucketId()I
    .locals 1

    .line 556
    iget v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mBucketId:I

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .line 140
    iget-boolean v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mIsImage:Z

    const-string v1, "bucketId"

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v2, p0, Lcom/zui/gallery/data/LocalAlbum;->mBucketId:I

    .line 143
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v2, p0, Lcom/zui/gallery/data/LocalAlbum;->mBucketId:I

    .line 147
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDateInMs()J
    .locals 2

    monitor-enter p0

    .line 537
    :try_start_0
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mDateTaking:J
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

    .line 546
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbum;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " offset "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 167
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 169
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 170
    iget-object v3, p0, Lcom/zui/gallery/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const-string v4, "android:query-arg-sql-selection"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/zui/gallery/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    const-string v4, "android:query-arg-sql-sort-order"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "android:query-arg-sql-limit"

    .line 172
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 173
    iget v3, p0, Lcom/zui/gallery/data/LocalAlbum;->mBucketId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string v3, "android:query-arg-sql-selection-args"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/zui/gallery/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/zui/gallery/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v3, v2, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    const-string v2, "LocalAlbum"

    if-nez p1, :cond_0

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query fail: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 181
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 183
    iget-object v3, p0, Lcom/zui/gallery/data/LocalAlbum;->mItemPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {v3, v1}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v1

    .line 184
    iget-object v3, p0, Lcom/zui/gallery/data/LocalAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    iget-boolean v5, p0, Lcom/zui/gallery/data/LocalAlbum;->mIsImage:Z

    invoke-static {v1, p1, v0, v3, v5}, Lcom/zui/gallery/data/LocalAlbum;->loadOrUpdateItem(Lcom/zui/gallery/data/Path;Landroid/database/Cursor;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/app/GalleryApp;Z)Lcom/zui/gallery/data/MediaItem;

    move-result-object v1

    .line 186
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 189
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LocalAlbum list "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LocalAlbum first File ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KEGUOQING"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p2

    :catchall_0
    move-exception p2

    .line 189
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 190
    throw p2
.end method

.method public getMediaItemCount()I
    .locals 7

    .line 357
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/zui/gallery/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/gallery/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/zui/gallery/data/LocalAlbum;->mBucketId:I

    .line 359
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    .line 357
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "LocalAlbum"

    const-string v1, "query fail"

    .line 361
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 365
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 366
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/LocalAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 371
    iget v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mCachedCount:I

    return v0

    :catchall_0
    move-exception v1

    .line 368
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 369
    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 376
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/data/LocalAlbum;->mBucketId:I

    iget-object v2, p0, Lcom/zui/gallery/data/LocalAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 377
    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/data/LocalAlbum;->mName:Ljava/lang/String;

    .line 376
    invoke-static {v0, v1, v2, v3}, Lcom/zui/gallery/data/LocalAlbum;->getLocalizedName(Landroid/content/res/Resources;ILandroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

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

    .line 135
    iget v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mBucketId:I

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGroupFolderAlbum()Z
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/util/GroupUtils;->isGroupFolderDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/util/GroupUtils;->GROUP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/zui/gallery/data/LocalAlbum;->mBucketId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isImage()Z
    .locals 1

    .line 560
    iget-boolean v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mIsImage:Z

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/zui/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-static {}, Lcom/zui/gallery/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mDataVersion:J

    const/4 v0, -0x1

    .line 384
    iput v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mCachedCount:I

    .line 386
    :cond_0
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public declared-synchronized setDateInMs(J)V
    .locals 0

    monitor-enter p0

    .line 541
    :try_start_0
    iput-wide p1, p0, Lcom/zui/gallery/data/LocalAlbum;->mDateTaking:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbum;->filePath:Ljava/lang/String;

    return-void
.end method
