.class public Lcom/zui/gallery/data/CloudAlbum;
.super Lcom/zui/gallery/data/MediaSet;
.source "CloudAlbum.java"


# static fields
.field private static final INVALID_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CloudAlbum"

.field private static final mWatchUris:[Landroid/net/Uri;


# instance fields
.field private localExistImageCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localExistVideoCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mCachedCount:I

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/Uri;

    .line 26
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/zui/gallery/cloud/CloudManager;->DEFAULT_CLOUD_MEDIA_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/zui/gallery/cloud/CloudUtils;->ALBUM_AUTO_SYNC_CHANGED_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/zui/gallery/data/CloudAlbum;->mWatchUris:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;Lcom/zui/gallery/data/Path;)V
    .locals 2

    .line 44
    invoke-static {}, Lcom/zui/gallery/data/CloudAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/zui/gallery/data/CloudAlbum;->mCachedCount:I

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/zui/gallery/data/CloudAlbum;->localExistImageCache:Ljava/util/List;

    .line 40
    iput-object v0, p0, Lcom/zui/gallery/data/CloudAlbum;->localExistVideoCache:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "name:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " parentPath:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "CloudAlbum"

    invoke-static {p4, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iput-object p2, p0, Lcom/zui/gallery/data/CloudAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 48
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/CloudAlbum;->mResolver:Landroid/content/ContentResolver;

    .line 49
    iput-object p3, p0, Lcom/zui/gallery/data/CloudAlbum;->mName:Ljava/lang/String;

    .line 51
    new-instance p1, Lcom/zui/gallery/data/ChangeNotifier;

    sget-object p2, Lcom/zui/gallery/data/CloudAlbum;->mWatchUris:[Landroid/net/Uri;

    iget-object p3, p0, Lcom/zui/gallery/data/CloudAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {p1, p0, p2, p3}, Lcom/zui/gallery/data/ChangeNotifier;-><init>(Lcom/zui/gallery/data/MediaSet;[Landroid/net/Uri;Lcom/zui/gallery/app/GalleryApp;)V

    iput-object p1, p0, Lcom/zui/gallery/data/CloudAlbum;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/data/CloudAlbum;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/zui/gallery/data/CloudAlbum;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/data/CloudAlbum;)Lcom/zui/gallery/app/GalleryApp;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/zui/gallery/data/CloudAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    return-object p0
.end method

.method private isExistInLocal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9

    if-eqz p3, :cond_0

    .line 143
    iget-object v0, p0, Lcom/zui/gallery/data/CloudAlbum;->localExistImageCache:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    if-nez p3, :cond_1

    .line 145
    iget-object v0, p0, Lcom/zui/gallery/data/CloudAlbum;->localExistVideoCache:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 146
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 150
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_display_name"

    if-eqz p3, :cond_2

    .line 156
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 158
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 160
    :cond_2
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 162
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v5, v1

    .line 165
    iget-object v1, p0, Lcom/zui/gallery/data/CloudAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v7, v1

    const-string v6, "bucket_display_name=?"

    const-string v8, "_id"

    move-object v4, v2

    .line 166
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-nez p2, :cond_3

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "query fail"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CloudAlbum"

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 175
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 176
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    if-eqz p3, :cond_5

    .line 184
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/data/CloudAlbum;->localExistImageCache:Ljava/util/List;

    .line 185
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 187
    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/data/CloudAlbum;->localExistVideoCache:Ljava/util/List;

    .line 188
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    :goto_2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static loadOrUpdateItem(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/app/GalleryApp;Landroid/net/Uri;ZLandroid/database/Cursor;)Lcom/zui/gallery/data/CloudImage;
    .locals 7

    .line 55
    sget-object v0, Lcom/zui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/CloudImage;

    if-nez p1, :cond_0

    .line 58
    new-instance p1, Lcom/zui/gallery/data/CloudImage;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/data/CloudImage;-><init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;Landroid/net/Uri;ZLandroid/database/Cursor;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1, p5}, Lcom/zui/gallery/data/CloudImage;->updateFromCursor(Landroid/database/Cursor;)Z

    .line 62
    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public delete()V
    .locals 4

    .line 275
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 277
    iget-object v0, p0, Lcom/zui/gallery/data/CloudAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/data/CloudAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/data/CloudAlbum;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zui/gallery/cloud/CloudUtils;->getCloudAlbumIdByName(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    return-void

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/data/CloudAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/data/CloudAlbum$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/data/CloudAlbum$1;-><init>(Lcom/zui/gallery/data/CloudAlbum;)V

    invoke-virtual {v2, v0, v1}, Lcom/zui/gallery/cloud/CloudManager;->deleteCloudAlbum(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public fakeChange()V
    .locals 2

    const-string v0, "CloudAlbum"

    const-string v1, "CloudAlbum fakeChange"

    .line 261
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/zui/gallery/data/CloudAlbum;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/data/ChangeNotifier;->fakeChange()V

    :cond_0
    return-void
.end method

.method public getBucketId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 338
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/data/CloudAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 341
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaItem;

    return-object v0

    .line 343
    :cond_0
    sget-object v0, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    const-string v1, "empty"

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/zui/gallery/data/CloudAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaItem;

    if-nez v1, :cond_1

    .line 346
    new-instance v1, Lcom/zui/gallery/data/LocalEmptyMediaItem;

    invoke-direct {v1, v0}, Lcom/zui/gallery/data/LocalEmptyMediaItem;-><init>(Lcom/zui/gallery/data/Path;)V

    :cond_1
    return-object v1
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iget-object v2, v1, Lcom/zui/gallery/data/CloudAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v2

    iget-object v3, v1, Lcom/zui/gallery/data/CloudAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zui/gallery/cloud/CloudManager;->isAlbumAutoSync(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 72
    :cond_0
    iget-object v2, v1, Lcom/zui/gallery/data/CloudAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncAllowed()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 84
    :cond_1
    iget-object v3, v1, Lcom/zui/gallery/data/CloudAlbum;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/zui/gallery/cloud/CloudManager;->DEFAULT_CLOUD_MEDIA_URI:Landroid/net/Uri;

    sget-object v5, Lcom/zui/gallery/data/CloudImage;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    iget-object v6, v1, Lcom/zui/gallery/data/CloudAlbum;->mName:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v7, v9

    const-string v6, "album_name=?"

    const-string v8, "backup_time DESC,title DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const-string v4, "CloudAlbum"

    if-nez v3, :cond_2

    const-string v2, "getMediaItem, query fail: "

    .line 87
    invoke-static {v4, v2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 90
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_3

    const-string v2, "getMediaItem, query count = 0 : "

    .line 91
    invoke-static {v4, v2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_3
    move v5, v9

    .line 100
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 101
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 102
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    .line 103
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    .line 104
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-nez v11, :cond_4

    move v14, v2

    goto :goto_1

    :cond_4
    move v14, v9

    .line 109
    :goto_1
    invoke-direct {v1, v8, v10, v14}, Lcom/zui/gallery/data/CloudAlbum;->isExistInLocal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    move/from16 v8, p1

    goto :goto_0

    :cond_5
    move/from16 v8, p1

    if-ge v5, v8, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 118
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    move/from16 v15, p2

    if-ne v10, v15, :cond_7

    goto :goto_3

    .line 123
    :cond_7
    sget-object v10, Lcom/zui/gallery/cloud/CloudManager;->DEFAULT_CLOUD_MEDIA_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-static {v10, v6, v7}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string/jumbo v11, "thumbnail_type"

    .line 124
    sget-object v12, Lcom/zui/gallery/cloud/ThumbnailType;->LARGER_THUMBNAIL:Lcom/zui/gallery/cloud/ThumbnailType;

    invoke-virtual {v12}, Lcom/zui/gallery/cloud/ThumbnailType;->ordinal()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    if-eqz v14, :cond_8

    .line 126
    sget-object v10, Lcom/zui/gallery/data/CloudSource;->PATH_IMAGE_ITEM:Lcom/zui/gallery/data/Path;

    goto :goto_2

    :cond_8
    sget-object v10, Lcom/zui/gallery/data/CloudSource;->PATH_VIDEO_ITEM:Lcom/zui/gallery/data/Path;

    :goto_2
    invoke-virtual {v10, v6, v7}, Lcom/zui/gallery/data/Path;->getChild(J)Lcom/zui/gallery/data/Path;

    move-result-object v6

    move-object v10, v6

    .line 127
    iget-object v6, v1, Lcom/zui/gallery/data/CloudAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v6}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v11

    iget-object v12, v1, Lcom/zui/gallery/data/CloudAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    move-object v15, v3

    invoke-static/range {v10 .. v15}, Lcom/zui/gallery/data/CloudAlbum;->loadOrUpdateItem(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/app/GalleryApp;Landroid/net/Uri;ZLandroid/database/Cursor;)Lcom/zui/gallery/data/CloudImage;

    move-result-object v6

    .line 128
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 132
    :cond_9
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMediaItem list.getCount():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_0
    move-exception v0

    .line 132
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 133
    throw v0
.end method

.method public getMediaItemCount()I
    .locals 12

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMediaItemCount, mName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/data/CloudAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCachedCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/data/CloudAlbum;->mCachedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudAlbum"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget v0, p0, Lcom/zui/gallery/data/CloudAlbum;->mCachedCount:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_6

    .line 212
    iget-object v0, p0, Lcom/zui/gallery/data/CloudAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/data/CloudAlbum;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/cloud/CloudManager;->isAlbumAutoSync(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/data/CloudAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const-string v0, "_id"

    const-string/jumbo v3, "title"

    const-string v4, "album_name"

    const-string v5, "mime_type"

    .line 215
    filled-new-array {v0, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v8

    .line 218
    iget-object v6, p0, Lcom/zui/gallery/data/CloudAlbum;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/zui/gallery/cloud/CloudManager;->DEFAULT_CLOUD_MEDIA_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/gallery/data/CloudAlbum;->mName:Ljava/lang/String;

    aput-object v3, v10, v2

    const/4 v11, 0x0

    const-string v9, "album_name=?"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v0, "getMediaItemCount, query fail"

    .line 220
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    move v1, v2

    .line 225
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 226
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 227
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 228
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 229
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v6, :cond_3

    move v6, v0

    goto :goto_1

    :cond_3
    move v6, v2

    .line 232
    :goto_1
    invoke-direct {p0, v4, v5, v6}, Lcom/zui/gallery/data/CloudAlbum;->isExistInLocal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 240
    iput v1, p0, Lcom/zui/gallery/data/CloudAlbum;->mCachedCount:I

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 238
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 239
    throw v0

    .line 242
    :cond_6
    :goto_2
    iget v0, p0, Lcom/zui/gallery/data/CloudAlbum;->mCachedCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/zui/gallery/data/CloudAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSystemId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isFavoriteAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGroupAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGroupFolderAlbum()Z
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/zui/gallery/data/CloudAlbum;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/data/CloudAlbum;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->isGroupExist(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPanoAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSelfAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSystemGroupAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVideoAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reload()J
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/zui/gallery/data/CloudAlbum;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lcom/zui/gallery/data/CloudAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/CloudAlbum;->mDataVersion:J

    const/4 v0, -0x1

    .line 254
    iput v0, p0, Lcom/zui/gallery/data/CloudAlbum;->mCachedCount:I

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/zui/gallery/data/CloudAlbum;->localExistImageCache:Ljava/util/List;

    .line 256
    iput-object v0, p0, Lcom/zui/gallery/data/CloudAlbum;->localExistVideoCache:Ljava/util/List;

    .line 258
    :cond_0
    iget-wide v0, p0, Lcom/zui/gallery/data/CloudAlbum;->mDataVersion:J

    return-wide v0
.end method
