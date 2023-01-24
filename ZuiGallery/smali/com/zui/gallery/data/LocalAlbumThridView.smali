.class public Lcom/zui/gallery/data/LocalAlbumThridView;
.super Lcom/zui/gallery/data/MediaSet;
.source "LocalAlbumThridView.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final INVALID_COUNT:I = -0x1

.field public static final PATH_IMAGE:Lcom/zui/gallery/data/Path;

.field private static final TAG:Ljava/lang/String; = "LocalAlbumThridView"


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

.field private mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/local/thrid-view-image"

    .line 49
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumThridView;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    const-string v0, "count(*)"

    .line 51
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalAlbumThridView;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IZ)V
    .locals 7

    .line 110
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    invoke-static {v0, p3}, Lcom/zui/gallery/data/BucketHelper;->getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 108
    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/data/LocalAlbumThridView;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IZLjava/lang/String;)V
    .locals 2

    .line 76
    invoke-static {}, Lcom/zui/gallery/data/LocalAlbumThridView;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mCachedCount:I

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->isCameraAlbum:Z

    .line 77
    iput-object p2, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 78
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mResolver:Landroid/content/ContentResolver;

    .line 79
    iput p3, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mBucketId:I

    .line 80
    iput-object p5, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mName:Ljava/lang/String;

    .line 81
    iput-boolean p4, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mIsImage:Z

    const-string p1, "datetaken DESC, _id DESC"

    const-string p3, "bucket_id = ? and _size >0 "

    if-eqz p4, :cond_0

    .line 85
    iput-object p3, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mWhereClause:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mOrderClause:Ljava/lang/String;

    .line 89
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mBaseUri:Landroid/net/Uri;

    .line 90
    sget-object p1, Lcom/zui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mProjection:[Ljava/lang/String;

    .line 91
    sget-object p1, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mItemPath:Lcom/zui/gallery/data/Path;

    goto :goto_0

    .line 94
    :cond_0
    iput-object p3, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mWhereClause:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mOrderClause:Ljava/lang/String;

    .line 98
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mBaseUri:Landroid/net/Uri;

    .line 99
    sget-object p1, Lcom/zui/gallery/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mProjection:[Ljava/lang/String;

    .line 100
    sget-object p1, Lcom/zui/gallery/data/LocalVideo;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mItemPath:Lcom/zui/gallery/data/Path;

    .line 103
    :goto_0
    new-instance p1, Lcom/zui/gallery/data/ChangeNotifier;

    iget-object p3, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mBaseUri:Landroid/net/Uri;

    invoke-direct {p1, p0, p3, p2}, Lcom/zui/gallery/data/ChangeNotifier;-><init>(Lcom/zui/gallery/data/MediaSet;Landroid/net/Uri;Lcom/zui/gallery/app/GalleryApp;)V

    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    return-void
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 305
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const-string v4, "_id=?"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 304
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

    .line 244
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/zui/gallery/data/MediaItem;

    .line 245
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    .line 246
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 247
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

    .line 254
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 255
    sget-object v8, Lcom/zui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 256
    sget-object v9, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    goto :goto_0

    .line 258
    :cond_1
    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 259
    sget-object v8, Lcom/zui/gallery/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    .line 260
    sget-object v9, Lcom/zui/gallery/data/LocalVideo;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    :goto_0
    move-object v12, v8

    .line 263
    invoke-interface/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 264
    invoke-interface/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v8

    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/String;

    .line 266
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v6

    const-string v13, "_id BETWEEN ? AND ?"

    const-string v15, "_id"

    move-object v11, v7

    .line 265
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalAlbumThridView"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 273
    :cond_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_5

    .line 276
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 277
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 280
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v7, :cond_3

    goto :goto_1

    .line 284
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

    .line 298
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 290
    :cond_4
    :try_start_1
    invoke-virtual {v9, v7}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v7

    move-object/from16 v10, p0

    .line 291
    invoke-static {v7, v4, v8, v10, v0}, Lcom/zui/gallery/data/LocalAlbumThridView;->loadOrUpdateItem(Lcom/zui/gallery/data/Path;Landroid/database/Cursor;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/app/GalleryApp;Z)Lcom/zui/gallery/data/MediaItem;

    move-result-object v7

    .line 293
    aput-object v7, v2, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 298
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 299
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

    const-string v0, "LocalAlbumThridView"

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

    .line 163
    sget-object v3, Lcom/zui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    move-object/from16 v4, p2

    .line 164
    :try_start_0
    invoke-virtual {v4, v0}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/LocalMediaItem;

    if-nez v4, :cond_d

    if-eqz p4, :cond_0

    const-string v4, "kugoubug"

    const-string v5, "3"

    .line 167
    invoke-static {v4, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v4, Lcom/zui/gallery/data/LocalImage;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalImage;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto/16 :goto_4

    :cond_0
    const/16 v5, 0x8

    .line 171
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 178
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

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x2

    .line 184
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v5, :cond_1

    .line 186
    new-instance v4, Lcom/zui/gallery/data/LocalVideoHighSpeed;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoHighSpeed;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    if-ne v8, v7, :cond_2

    .line 188
    new-instance v4, Lcom/zui/gallery/data/LocalVideoLowSpeed;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoLowSpeed;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    const/16 v9, 0xb

    if-ne v8, v9, :cond_3

    .line 190
    new-instance v4, Lcom/zui/gallery/data/LocalVideoShotVideo;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoShotVideo;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_3
    const/16 v9, 0x12

    if-ne v8, v9, :cond_4

    .line 192
    new-instance v4, Lcom/zui/gallery/data/LocalWeixinVideo;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalWeixinVideo;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_4
    const/16 v9, 0x13

    if-ne v8, v9, :cond_5

    .line 194
    new-instance v4, Lcom/zui/gallery/data/LocalVideoScreenRecord;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoScreenRecord;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_5
    const/4 v9, 0x6

    if-ne v8, v9, :cond_6

    .line 197
    new-instance v4, Lcom/zui/gallery/data/LocalVideoCamera;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoCamera;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_6
    const/16 v9, 0xd

    if-ne v8, v9, :cond_7

    .line 199
    new-instance v4, Lcom/zui/gallery/data/LocalVideoHDR;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideoHDR;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    :cond_7
    :goto_0
    if-eqz v6, :cond_8

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_8
    const/4 v6, 0x0

    if-eqz v4, :cond_b

    .line 210
    :try_start_1
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalMediaItem;->getMediaType()I

    move-result v8

    if-ne v8, v7, :cond_b

    .line 211
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Lcom/zui/gallery/database/GalleryContract$VideoEdit;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "mult"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    const-string v18, "_data=?"

    new-array v7, v13, [Ljava/lang/String;

    .line 212
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    const/16 v20, 0x0

    move-object/from16 v19, v7

    .line 211
    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 213
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 214
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v7, "LocalAlbumThridView"

    .line 215
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "slow_video mult "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
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

    .line 222
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_a
    throw v0

    :catch_0
    if-eqz v6, :cond_c

    .line 222
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

    .line 229
    new-instance v4, Lcom/zui/gallery/data/LocalVideo;

    invoke-direct {v4, v0, v2, v1}, Lcom/zui/gallery/data/LocalVideo;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_4

    .line 234
    :cond_d
    invoke-virtual {v4, v1}, Lcom/zui/gallery/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    .line 236
    :cond_e
    :goto_4
    monitor-exit v3

    return-object v4

    :catchall_1
    move-exception v0

    .line 237
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public delete()V
    .locals 8

    .line 350
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 352
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mBaseUri:Landroid/net/Uri;

    const-string v2, "_data"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mWhereClause:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    iget v5, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mBucketId:I

    .line 354
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const/4 v5, 0x0

    .line 352
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 359
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 364
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 367
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/data/GroupBucketHelper;->batchDeleteGroupMemberShips(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/zui/gallery/data/GroupBucketHelper;->batchDeleteShadowVideoShips(Landroid/content/ContentResolver;Ljava/util/List;)I

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 364
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 365
    throw v1

    :cond_1
    const-string v0, "LocalAlbumThridView"

    const-string v1, "delete folder is empty"

    .line 370
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mWhereClause:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    iget v4, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mBucketId:I

    .line 374
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 373
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getBucketId()I
    .locals 1

    .line 458
    iget v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mBucketId:I

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .line 120
    iget-boolean v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mIsImage:Z

    const-string v1, "bucketId"

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v2, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mBucketId:I

    .line 123
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v2, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mBucketId:I

    .line 127
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDateInMs()J
    .locals 2

    monitor-enter p0

    .line 439
    :try_start_0
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mDateTaking:J
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
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mBaseUri:Landroid/net/Uri;

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

    .line 135
    invoke-virtual {v1, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 136
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 138
    iget-object v1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mWhereClause:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    iget v2, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mBucketId:I

    .line 140
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mOrderClause:Ljava/lang/String;

    move-object v2, p1

    .line 138
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalAlbumThridView"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 148
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 149
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 150
    iget-object v2, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mItemPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {v2, p1}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object p1

    .line 151
    iget-object v2, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    iget-boolean v3, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mIsImage:Z

    invoke-static {p1, v1, v0, v2, v3}, Lcom/zui/gallery/data/LocalAlbumThridView;->loadOrUpdateItem(Lcom/zui/gallery/data/Path;Landroid/database/Cursor;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/app/GalleryApp;Z)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    .line 153
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 157
    throw p1
.end method

.method public getMediaItemCount()I
    .locals 8

    .line 310
    iget v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 311
    iget-object v2, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mBaseUri:Landroid/net/Uri;

    sget-object v4, Lcom/zui/gallery/data/LocalAlbumThridView;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v5, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mWhereClause:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    iget v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mBucketId:I

    .line 313
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    const/4 v7, 0x0

    .line 311
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "LocalAlbumThridView"

    const-string v2, "query fail"

    .line 315
    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 319
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 320
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 323
    throw v1

    .line 325
    :cond_1
    :goto_0
    iget v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mCachedCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 330
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mBucketId:I

    iget-object v2, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 331
    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mName:Ljava/lang/String;

    .line 330
    invoke-static {v0, v1, v2, v3}, Lcom/zui/gallery/data/LocalAlbumThridView;->getLocalizedName(Landroid/content/res/Resources;ILandroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

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

    .line 115
    iget v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mBucketId:I

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
    iget-boolean v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mIsImage:Z

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/zui/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-static {}, Lcom/zui/gallery/data/LocalAlbumThridView;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mDataVersion:J

    const/4 v0, -0x1

    .line 338
    iput v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mCachedCount:I

    .line 340
    :cond_0
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mDataVersion:J

    return-wide v0
.end method

.method public declared-synchronized setDateInMs(J)V
    .locals 0

    monitor-enter p0

    .line 443
    :try_start_0
    iput-wide p1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->mDateTaking:J
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
    iput-object p1, p0, Lcom/zui/gallery/data/LocalAlbumThridView;->filePath:Ljava/lang/String;

    return-void
.end method
