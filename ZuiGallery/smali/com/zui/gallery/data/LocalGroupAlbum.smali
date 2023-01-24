.class public Lcom/zui/gallery/data/LocalGroupAlbum;
.super Lcom/zui/gallery/data/MediaSet;
.source "LocalGroupAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final GRROUPMEMBERSHIPS_PROJECTION:[Ljava/lang/String;

.field private static final INVALID_COUNT:I = -0x1

.field private static final MEDIA_ID_COLUMN_INDEX:I = 0x0

.field private static final MEDIA_TYPE_COLUMN_INDEX:I = 0x2

.field private static final PATH_COLUMN_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalGroupAlbum"

.field private static final TITLE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mCachedCount:I

.field private mCachedFolderCount:I

.field private mCachedImageCount:I

.field private mCachedVideoCount:I

.field private final mGroupId:I

.field private final mGroupMemerShipsBaseUri:Landroid/net/Uri;

.field private final mGroupsUri:Landroid/net/Uri;

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

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mSystemId:I

.field private final mType:I

.field private mWhereClause:Ljava/lang/String;

.field private trashFileCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_id"

    .line 46
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/gallery/data/LocalGroupAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v1, "title"

    .line 49
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zui/gallery/data/LocalGroupAlbum;->TITLE_PROJECTION:[Ljava/lang/String;

    const-string v1, "path"

    const-string/jumbo v2, "type"

    .line 53
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalGroupAlbum;->GRROUPMEMBERSHIPS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;II)V
    .locals 8

    .line 123
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 122
    invoke-static {v0, p3}, Lcom/zui/gallery/data/BucketHelper;->getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 121
    invoke-direct/range {v1 .. v7}, Lcom/zui/gallery/data/LocalGroupAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 102
    invoke-static {}, Lcom/zui/gallery/data/LocalGroupAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 76
    sget-object p1, Lcom/zui/gallery/database/GalleryContract$GroupMemberShips;->CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupMemerShipsBaseUri:Landroid/net/Uri;

    .line 77
    sget-object p1, Lcom/zui/gallery/database/GalleryContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupsUri:Landroid/net/Uri;

    const/4 p1, -0x1

    .line 78
    iput p1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedCount:I

    .line 80
    iput p1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedImageCount:I

    .line 81
    iput p1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedVideoCount:I

    .line 82
    iput p1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedFolderCount:I

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mMediaItemCache:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->trashFileCount:I

    .line 104
    iput-object p2, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 105
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mResolver:Landroid/content/ContentResolver;

    .line 106
    iput p3, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupId:I

    .line 107
    iput-object p5, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mName:Ljava/lang/String;

    .line 108
    iput p4, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mType:I

    .line 109
    iput p1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mSystemId:I

    .line 110
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 111
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mSystemId:I

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/data/LocalGroupAlbum;->createWhereClause()V

    .line 116
    new-instance p1, Lcom/zui/gallery/data/ChangeNotifier;

    iget-object p3, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupMemerShipsBaseUri:Landroid/net/Uri;

    invoke-direct {p1, p0, p3, p2}, Lcom/zui/gallery/data/ChangeNotifier;-><init>(Lcom/zui/gallery/data/MediaSet;Landroid/net/Uri;Lcom/zui/gallery/app/GalleryApp;)V

    iput-object p1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    return-void
.end method

.method private createSelectionArg()[Ljava/lang/String;
    .locals 6

    .line 141
    iget v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    .line 162
    iget v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupId:I

    .line 163
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0

    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 147
    iget v5, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupId:I

    .line 148
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    .line 149
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 150
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    const/16 v3, 0x8

    .line 151
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    const/16 v2, 0xa

    .line 152
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x5

    const/16 v4, 0xb

    .line 153
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/16 v2, 0x12

    .line 154
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x13

    .line 155
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 156
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    return-object v0

    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    .line 143
    iget v3, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupId:I

    .line 144
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private createWhereClause()V
    .locals 4

    const-string v0, "group_id = ?"

    .line 127
    iput-object v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mWhereClause:Ljava/lang/String;

    .line 128
    iget v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mType:I

    const/4 v1, 0x2

    const-string/jumbo v2, "type"

    const-string v3, " AND "

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mWhereClause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in (?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mWhereClause:Ljava/lang/String;

    goto :goto_0

    .line 130
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mWhereClause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mWhereClause:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private static loadOrUpdateItem(Lcom/zui/gallery/data/Path;Landroid/database/Cursor;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/app/GalleryApp;Z)Lcom/zui/gallery/data/MediaItem;
    .locals 8

    .line 328
    sget-object v0, Lcom/zui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/data/LocalMediaItem;

    if-nez p2, :cond_9

    if-eqz p4, :cond_0

    const-string p2, "kugoubug"

    const-string p4, "2"

    .line 332
    invoke-static {p2, p4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance p2, Lcom/zui/gallery/data/LocalImage;

    invoke-direct {p2, p0, p3, p1}, Lcom/zui/gallery/data/LocalImage;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto/16 :goto_1

    :cond_0
    const/16 p4, 0x8

    .line 336
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-interface {p3}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->PROJECTIONS:[Ljava/lang/String;

    const-string v5, "_data=? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 348
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 p2, 0x2

    .line 349
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-ne p2, p4, :cond_1

    .line 351
    new-instance p2, Lcom/zui/gallery/data/LocalVideoHighSpeed;

    invoke-direct {p2, p0, p3, p1}, Lcom/zui/gallery/data/LocalVideoHighSpeed;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    const/16 p4, 0xa

    if-ne p2, p4, :cond_2

    .line 353
    new-instance p2, Lcom/zui/gallery/data/LocalVideoLowSpeed;

    invoke-direct {p2, p0, p3, p1}, Lcom/zui/gallery/data/LocalVideoLowSpeed;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    const/16 p4, 0xb

    if-ne p2, p4, :cond_3

    .line 355
    new-instance p2, Lcom/zui/gallery/data/LocalVideoShotVideo;

    invoke-direct {p2, p0, p3, p1}, Lcom/zui/gallery/data/LocalVideoShotVideo;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_3
    const/16 p4, 0x12

    if-ne p2, p4, :cond_4

    .line 357
    new-instance p2, Lcom/zui/gallery/data/LocalWeixinVideo;

    invoke-direct {p2, p0, p3, p1}, Lcom/zui/gallery/data/LocalWeixinVideo;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_4
    const/16 p4, 0x13

    if-ne p2, p4, :cond_5

    .line 359
    new-instance p2, Lcom/zui/gallery/data/LocalVideoScreenRecord;

    invoke-direct {p2, p0, p3, p1}, Lcom/zui/gallery/data/LocalVideoScreenRecord;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_5
    const/16 p4, 0xd

    if-ne p2, p4, :cond_6

    .line 361
    new-instance p2, Lcom/zui/gallery/data/LocalVideoHDR;

    invoke-direct {p2, p0, p3, p1}, Lcom/zui/gallery/data/LocalVideoHDR;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    .line 363
    :cond_6
    new-instance p2, Lcom/zui/gallery/data/LocalVideoCamera;

    invoke-direct {p2, p0, p3, p1}, Lcom/zui/gallery/data/LocalVideoCamera;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    :cond_7
    :goto_0
    if-eqz v1, :cond_8

    .line 367
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    if-nez p2, :cond_a

    .line 372
    new-instance p2, Lcom/zui/gallery/data/LocalVideo;

    invoke-direct {p2, p0, p3, p1}, Lcom/zui/gallery/data/LocalVideo;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_1

    .line 376
    :cond_9
    invoke-virtual {p2, p1}, Lcom/zui/gallery/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    .line 378
    :cond_a
    :goto_1
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    .line 379
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public delete()V
    .locals 11

    const-string v0, "delete "

    .line 454
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 457
    invoke-virtual {p0}, Lcom/zui/gallery/data/LocalGroupAlbum;->isPanoAlbum()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "LocalGroupAlbum"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/data/LocalGroupAlbum;->isSelfAlbum()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 460
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupMemerShipsBaseUri:Landroid/net/Uri;

    sget-object v7, Lcom/zui/gallery/data/LocalGroupAlbum;->GRROUPMEMBERSHIPS_PROJECTION:[Ljava/lang/String;

    iget-object v8, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mWhereClause:Ljava/lang/String;

    .line 462
    invoke-direct {p0}, Lcom/zui/gallery/data/LocalGroupAlbum;->createSelectionArg()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 460
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_data in ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const/4 v6, 0x1

    move v7, v2

    .line 468
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v7, "\'"

    .line 470
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\',"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v6

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    .line 473
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    .line 474
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 476
    iget-object v7, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v6, v5, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " item "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    if-eqz v1, :cond_3

    .line 484
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v5

    move-object v1, v4

    .line 481
    :goto_2
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Album exception "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 489
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupsUri:Landroid/net/Uri;

    iget v5, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupId:I

    int-to-long v5, v5

    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->deleteGroupFolderDirectoryiByName(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 494
    iget v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mSystemId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom album deleted :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  set auto sync off"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/zui/gallery/util/GroupUtils;->GROUP_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/zui/gallery/cloud/CloudManager;->setAlbumAutoSync(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    return-void

    :catchall_1
    move-exception v0

    move-object v4, v1

    :goto_4
    if-eqz v4, :cond_5

    .line 484
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 486
    :cond_5
    throw v0
.end method

.method public getBucketId()I
    .locals 1

    .line 606
    iget v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupId:I

    return v0
.end method

.method public getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 587
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/data/LocalGroupAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 588
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 591
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaItem;

    if-eqz v0, :cond_0

    return-object v0

    .line 596
    :cond_0
    sget-object v0, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    const-string v1, "empty"

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaItem;

    if-nez v1, :cond_1

    .line 599
    new-instance v1, Lcom/zui/gallery/data/LocalEmptyMediaItem;

    invoke-direct {v1, v0}, Lcom/zui/gallery/data/LocalEmptyMediaItem;-><init>(Lcom/zui/gallery/data/Path;)V

    :cond_1
    return-object v1
.end method

.method public getFolderNameInTable()Ljava/lang/String;
    .locals 7

    .line 563
    iget-object v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupsUri:Landroid/net/Uri;

    sget-object v2, Lcom/zui/gallery/data/LocalGroupAlbum;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    iget v3, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupId:I

    .line 565
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const-string v3, "_id = ?"

    const/4 v5, 0x0

    .line 563
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 570
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 571
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 573
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public getImageItemCount()I
    .locals 8

    .line 610
    iget v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedImageCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    .line 613
    iget v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupId:I

    .line 614
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v5, v7

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 616
    iget-object v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupMemerShipsBaseUri:Landroid/net/Uri;

    sget-object v3, Lcom/zui/gallery/data/LocalGroupAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "group_id = ? AND type = ?"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "LocalGroupAlbum"

    const-string v1, "getMediaItemCount, query fail"

    .line 620
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 624
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedImageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 627
    throw v1

    .line 629
    :cond_1
    :goto_0
    iget v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedImageCount:I

    return v0
.end method

.method public getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    const p2, 0x7f100157

    .line 542
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    const p2, 0x7f100154

    .line 544
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p3, 0x2

    const v0, 0x7f100158

    if-ne p2, p3, :cond_2

    .line 546
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    const p2, 0x7f100151

    .line 548
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p3, 0x5

    if-ne p2, p3, :cond_4

    const p2, 0x7f10014e

    .line 550
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p3, 0x6

    if-ne p2, p3, :cond_5

    .line 552
    iget-object p1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100153

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p3, 0x7

    if-ne p2, p3, :cond_6

    const p2, 0x7f100282

    .line 554
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const/16 p3, 0x8

    if-eq p2, p3, :cond_8

    const/16 p3, 0x9

    if-eq p2, p3, :cond_8

    const/16 p3, 0xa

    if-ne p2, p3, :cond_7

    goto :goto_0

    .line 558
    :cond_7
    invoke-virtual {p0}, Lcom/zui/gallery/data/LocalGroupAlbum;->getFolderNameInTable()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 556
    :cond_8
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    const-string/jumbo v3, "videoIdList :"

    .line 169
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMediaItem, query start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  count ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LocalGroupAlbum"

    invoke-static {v6, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 189
    iget-object v7, v1, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupMemerShipsBaseUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "limit"

    .line 190
    invoke-virtual {v7, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 191
    iget-object v7, v1, Lcom/zui/gallery/data/LocalGroupAlbum;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/zui/gallery/data/LocalGroupAlbum;->GRROUPMEMBERSHIPS_PROJECTION:[Ljava/lang/String;

    iget-object v10, v1, Lcom/zui/gallery/data/LocalGroupAlbum;->mWhereClause:Ljava/lang/String;

    .line 193
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/data/LocalGroupAlbum;->createSelectionArg()[Ljava/lang/String;

    move-result-object v11

    const-string v12, "_id DESC"

    .line 191
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaItem, query fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupMemerShipsBaseUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 203
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 204
    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaItem, query count = 0 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupMemerShipsBaseUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 209
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 213
    :cond_2
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_4

    .line 215
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    .line 216
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v9, :cond_3

    .line 219
    invoke-interface {v5, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_3
    invoke-static {v11}, Lcom/zui/gallery/data/MediaObject;->isVideoType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 223
    invoke-interface {v5, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMediaItem,query path ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMediaItem,gallery   query total ="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 233
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 237
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    const-string v11, ")"

    const-string v12, " in ("

    const-string v13, "_data"

    if-lez v8, :cond_5

    .line 239
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {v14, v0}, Lcom/zui/gallery/data/GroupBucketHelper;->appendStrings(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 242
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    move-object v14, v10

    .line 246
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 248
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-static {v15, v7}, Lcom/zui/gallery/data/GroupBucketHelper;->appendStrings(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 251
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    move-object v15, v10

    .line 254
    :goto_2
    iget-object v11, v1, Lcom/zui/gallery/data/LocalGroupAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v11}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v11

    const/4 v12, 0x0

    if-lez v8, :cond_a

    .line 258
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 261
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 262
    iget-object v10, v1, Lcom/zui/gallery/data/LocalGroupAlbum;->mResolver:Landroid/content/ContentResolver;

    sget-object v18, Lcom/zui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    if-eqz v14, :cond_7

    .line 263
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v14

    goto :goto_3

    :cond_7
    const/16 v19, 0x0

    :goto_3
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v10

    move-object/from16 v17, v8

    .line 262
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 267
    :goto_4
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 268
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 269
    sget-object v14, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    invoke-virtual {v14, v8}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v8

    .line 270
    iget-object v14, v1, Lcom/zui/gallery/data/LocalGroupAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-static {v8, v10, v11, v14, v9}, Lcom/zui/gallery/data/LocalGroupAlbum;->loadOrUpdateItem(Lcom/zui/gallery/data/Path;Landroid/database/Cursor;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/app/GalleryApp;Z)Lcom/zui/gallery/data/MediaItem;

    move-result-object v8

    .line 272
    invoke-virtual {v8}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 277
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 278
    throw v0

    .line 280
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMediaItem, query image fail: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_5
    if-lez v0, :cond_10

    .line 286
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 289
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 290
    iget-object v8, v1, Lcom/zui/gallery/data/LocalGroupAlbum;->mResolver:Landroid/content/ContentResolver;

    sget-object v18, Lcom/zui/gallery/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    if-eqz v15, :cond_b

    .line 291
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v9

    goto :goto_6

    :cond_b
    const/16 v19, 0x0

    :goto_6
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v8

    move-object/from16 v17, v0

    .line 290
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 295
    :cond_c
    :goto_7
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 296
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 297
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 298
    sget-object v10, Lcom/zui/gallery/data/LocalVideo;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    invoke-virtual {v10, v0}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v10

    .line 299
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getMediaItem, path: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, v1, Lcom/zui/gallery/data/LocalGroupAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-static {v10, v8, v11, v0, v12}, Lcom/zui/gallery/data/LocalGroupAlbum;->loadOrUpdateItem(Lcom/zui/gallery/data/Path;Landroid/database/Cursor;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/app/GalleryApp;Z)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_c

    .line 304
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 305
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 308
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMediaItem,system provider query total ="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 310
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 312
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, v1, Lcom/zui/gallery/data/LocalGroupAlbum;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-static {v0, v7, v2}, Lcom/zui/gallery/data/GroupBucketHelper;->batchDeleteGroupMemberShips(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    .line 310
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 312
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v2, v1, Lcom/zui/gallery/data/LocalGroupAlbum;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {v2, v7, v3}, Lcom/zui/gallery/data/GroupBucketHelper;->batchDeleteGroupMemberShips(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 317
    :cond_e
    throw v0

    .line 319
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMediaItem, query video fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_10
    :goto_8
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v4

    :catchall_2
    move-exception v0

    .line 233
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 234
    throw v0
.end method

.method public getMediaItemCount()I
    .locals 8

    .line 387
    iget v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 395
    iget-object v2, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupMemerShipsBaseUri:Landroid/net/Uri;

    sget-object v4, Lcom/zui/gallery/data/LocalGroupAlbum;->GRROUPMEMBERSHIPS_PROJECTION:[Ljava/lang/String;

    iget-object v5, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mWhereClause:Ljava/lang/String;

    .line 397
    invoke-direct {p0}, Lcom/zui/gallery/data/LocalGroupAlbum;->createSelectionArg()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 395
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "LocalGroupAlbum"

    const-string v2, "getMediaItemCount, query fail"

    .line 399
    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 404
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedCount:I

    .line 406
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 407
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 408
    iget-object v3, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v3}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100158

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-virtual {p0}, Lcom/zui/gallery/data/LocalGroupAlbum;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/zui/gallery/data/MediaObject;->isVideoType(I)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    :cond_2
    iget v2, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 418
    throw v1

    .line 420
    :cond_3
    :goto_1
    iget v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mSystemId:I

    iget-object v2, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/zui/gallery/data/LocalGroupAlbum;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSystemId()I
    .locals 1

    .line 536
    iget v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mSystemId:I

    return v0
.end method

.method public getTrashFileCount()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->trashFileCount:I

    return v0
.end method

.method public getVideoItemCount()I
    .locals 8

    .line 633
    iget v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedVideoCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    new-array v5, v0, [Ljava/lang/String;

    .line 636
    iget v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupId:I

    .line 637
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v5, v7

    const/4 v1, 0x1

    const/4 v2, 0x4

    .line 638
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    const/4 v1, 0x2

    const/4 v3, 0x6

    .line 639
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    const/4 v1, 0x3

    .line 640
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const/16 v0, 0xa

    .line 641
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x5

    const/16 v1, 0xb

    .line 642
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/16 v0, 0x13

    .line 643
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v0, 0x7

    const/16 v1, 0xd

    .line 644
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 646
    iget-object v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupMemerShipsBaseUri:Landroid/net/Uri;

    sget-object v3, Lcom/zui/gallery/data/LocalGroupAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "group_id = ? AND type in (?,?,?,?,?,?,?)"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    return v7

    .line 653
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedVideoCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 656
    throw v1

    .line 658
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoItemCount, mCachedVideoCount ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedVideoCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalGroupAlbum"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedVideoCount:I

    return v0
.end method

.method public isFavoriteAlbum()Z
    .locals 2

    .line 517
    iget v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mSystemId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isGroupAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPanoAlbum()Z
    .locals 2

    .line 512
    iget v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mSystemId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelfAlbum()Z
    .locals 2

    .line 522
    iget v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mSystemId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSystemGroupAlbum()Z
    .locals 3

    .line 527
    iget v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mSystemId:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isVideoAlbum()Z
    .locals 2

    .line 507
    iget v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mSystemId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reload()J
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/zui/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-static {}, Lcom/zui/gallery/data/LocalGroupAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mDataVersion:J

    const/4 v0, -0x1

    .line 432
    iput v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedCount:I

    .line 433
    iput v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedImageCount:I

    .line 434
    iput v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedVideoCount:I

    .line 435
    iput v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mCachedFolderCount:I

    .line 436
    iget-object v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mMediaItemCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 440
    :cond_0
    iget-wide v0, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public renameFolderName(Ljava/lang/String;)V
    .locals 5

    .line 578
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "title"

    .line 579
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object p1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupsUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget v3, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->mGroupId:I

    .line 581
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "_id = ?"

    .line 580
    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public setTrashFileCount(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/zui/gallery/data/LocalGroupAlbum;->trashFileCount:I

    return-void
.end method
