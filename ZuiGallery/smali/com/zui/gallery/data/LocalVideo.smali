.class public Lcom/zui/gallery/data/LocalVideo;
.super Lcom/zui/gallery/data/LocalMediaItem;
.source "LocalVideo.java"


# static fields
.field private static final INDEX_BUCKET_ID:I = 0xa

.field private static final INDEX_CAPTION:I = 0x1

.field private static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_DURATION:I = 0x9

.field private static final INDEX_HEIGHT:I = 0xe

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_RESOLUTION:I = 0xc

.field private static final INDEX_SIZE:I = 0xb

.field private static final INDEX_WIDHT:I = 0xd

.field public static final ITEM_PATH:Lcom/zui/gallery/data/Path;

.field static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LocalVideo"


# instance fields
.field public durationInSec:I

.field private final mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mult:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "/local/video/item"

    .line 41
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalVideo;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    const-string v1, "_id"

    const-string/jumbo v2, "title"

    const-string v3, "mime_type"

    const-string v4, "latitude"

    const-string v5, "longitude"

    const-string v6, "datetaken"

    const-string v7, "date_added"

    const-string v8, "date_modified"

    const-string v9, "_data"

    const-string v10, "duration"

    const-string v11, "bucket_id"

    const-string v12, "_size"

    const-string v13, "resolution"

    const-string/jumbo v14, "width"

    const-string v15, "height"

    .line 61
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;I)V
    .locals 2

    .line 92
    invoke-static {}, Lcom/zui/gallery/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/LocalMediaItem;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 93
    iput-object p2, p0, Lcom/zui/gallery/data/LocalVideo;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 94
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 95
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 96
    sget-object v1, Lcom/zui/gallery/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    invoke-static {p2, v0, v1, p3}, Lcom/zui/gallery/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 101
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 102
    invoke-direct {p0, p2}, Lcom/zui/gallery/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    .line 104
    :cond_0
    :try_start_1
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find data for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 107
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 108
    throw p1

    .line 98
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot get cursor for: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 2

    .line 86
    invoke-static {}, Lcom/zui/gallery/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/LocalMediaItem;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 87
    iput-object p2, p0, Lcom/zui/gallery/data/LocalVideo;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 88
    invoke-direct {p0, p3}, Lcom/zui/gallery/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public static getItemPath(I)Lcom/zui/gallery/data/Path;
    .locals 2

    if-eqz p0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/local/video/item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p0

    return-object p0

    .line 283
    :cond_0
    sget-object p0, Lcom/zui/gallery/data/LocalVideo;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    return-object p0
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    .line 112
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/data/LocalVideo;->id:I

    const/4 v0, 0x1

    .line 113
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/LocalVideo;->caption:Ljava/lang/String;

    const/4 v0, 0x2

    .line 114
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/LocalVideo;->mimeType:Ljava/lang/String;

    const/4 v0, 0x3

    .line 115
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalVideo;->latitude:D

    const/4 v0, 0x4

    .line 116
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalVideo;->longitude:D

    const/4 v0, 0x5

    .line 117
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalVideo;->dateTakenInMs:J

    const/4 v0, 0x6

    .line 118
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalVideo;->dateAddedInSec:J

    const/4 v0, 0x7

    .line 119
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalVideo;->dateModifiedInSec:J

    const/16 v0, 0x8

    .line 120
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/LocalVideo;->filePath:Ljava/lang/String;

    const/16 v0, 0x9

    .line 121
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/zui/gallery/data/LocalVideo;->durationInSec:I

    const/16 v0, 0xa

    .line 122
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/data/LocalVideo;->bucketId:I

    const/16 v0, 0xb

    .line 123
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalVideo;->fileSize:J

    const/16 v0, 0xc

    .line 124
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/gallery/data/LocalVideo;->parseResolution(Ljava/lang/String;)V

    .line 125
    iget v0, p0, Lcom/zui/gallery/data/LocalVideo;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/data/LocalVideo;->height:I

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0xd

    .line 126
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/data/LocalVideo;->width:I

    const/16 v0, 0xe

    .line 127
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/data/LocalVideo;->height:I

    :cond_1
    return-void
.end method

.method private parseResolution(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x78

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 136
    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 138
    iput v1, p0, Lcom/zui/gallery/data/LocalVideo;->width:I

    .line 139
    iput p1, p0, Lcom/zui/gallery/data/LocalVideo;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "LocalVideo"

    .line 141
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 6

    .line 198
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 199
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 200
    iget-object v1, p0, Lcom/zui/gallery/data/LocalVideo;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    iget v4, p0, Lcom/zui/gallery/data/LocalVideo;->id:I

    .line 201
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "_id=?"

    .line 200
    invoke-virtual {v1, v0, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete video file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/data/LocalVideo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LocalVideo"

    invoke-static {v3, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/zui/gallery/data/LocalVideo;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/data/LocalVideo;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zui/gallery/data/GroupBucketHelper;->deleteGroupMemberShips(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    iget-object v1, p0, Lcom/zui/gallery/data/LocalVideo;->filePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/zui/gallery/data/LocalVideo;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zui/gallery/data/GroupBucketHelper;->batchDeleteShadowVideoShips(Landroid/content/ContentResolver;Ljava/util/List;)I

    :cond_0
    return-void
.end method

.method public deleteForPrivacy()V
    .locals 5

    .line 215
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 216
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseUri is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wangccc"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/zui/gallery/data/LocalVideo;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget v3, p0, Lcom/zui/gallery/data/LocalVideo;->id:I

    .line 220
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "_id=?"

    .line 219
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 2

    .line 230
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 231
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/data/LocalVideo;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcom/zui/gallery/data/MediaDetails;
    .locals 9

    .line 246
    invoke-super {p0}, Lcom/zui/gallery/data/LocalMediaItem;->getDetails()Lcom/zui/gallery/data/MediaDetails;

    move-result-object v0

    .line 247
    iget v1, p0, Lcom/zui/gallery/data/LocalVideo;->durationInSec:I

    if-lez v1, :cond_0

    const/16 v1, 0x8

    .line 249
    iget-object v2, p0, Lcom/zui/gallery/data/LocalVideo;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 250
    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/zui/gallery/data/LocalVideo;->durationInSec:I

    .line 249
    invoke-static {v2, v3}, Lcom/zui/gallery/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/data/LocalVideo;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/gallery/data/LocalVideo;->filePath:Ljava/lang/String;

    const-string v2, "mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 255
    invoke-virtual {p0}, Lcom/zui/gallery/data/LocalVideo;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/zui/gallery/util/GalleryUtils;->getLocationFromMp4(Landroid/net/Uri;[F)V

    const/4 v3, 0x0

    .line 256
    aget v4, v2, v3

    float-to-double v4, v4

    const/4 v6, 0x1

    aget v7, v2, v6

    float-to-double v7, v7

    invoke-static {v4, v5, v7, v8}, Lcom/zui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    new-array v1, v1, [D

    .line 257
    aget v5, v2, v3

    float-to-double v7, v5

    aput-wide v7, v1, v3

    aget v2, v2, v6

    float-to-double v2, v2

    aput-wide v2, v1, v6

    invoke-virtual {v0, v4, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/zui/gallery/data/LocalVideo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/zui/gallery/data/LocalVideo;->height:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getMult()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/zui/gallery/data/LocalVideo;->mult:I

    return v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    .line 236
    invoke-virtual {p0}, Lcom/zui/gallery/data/LocalVideo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    const v0, 0x10c85

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/zui/gallery/data/LocalVideo;->width:I

    return v0
.end method

.method public requestImage(I)Lcom/zui/gallery/util/ThreadPool$Job;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v7, Lcom/zui/gallery/decode/LocalVideoRequest;

    iget-object v1, p0, Lcom/zui/gallery/data/LocalVideo;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-virtual {p0}, Lcom/zui/gallery/data/LocalVideo;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v2

    iget-wide v3, p0, Lcom/zui/gallery/data/LocalVideo;->dateModifiedInSec:J

    iget-object v6, p0, Lcom/zui/gallery/data/LocalVideo;->filePath:Ljava/lang/String;

    move-object v0, v7

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/zui/gallery/decode/LocalVideoRequest;-><init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;JILjava/lang/String;)V

    return-object v7
.end method

.method public requestLargeImage()Lcom/zui/gallery/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot regquest a large image to a local video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestViewFrame(ILjava/util/List;Z)Lcom/zui/gallery/util/ThreadPool$Job;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v11, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;

    iget-object v1, p0, Lcom/zui/gallery/data/LocalVideo;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-virtual {p0}, Lcom/zui/gallery/data/LocalVideo;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v2

    iget-wide v3, p0, Lcom/zui/gallery/data/LocalVideo;->dateModifiedInSec:J

    iget-object v6, p0, Lcom/zui/gallery/data/LocalVideo;->filePath:Ljava/lang/String;

    iget v7, p0, Lcom/zui/gallery/data/LocalVideo;->durationInSec:I

    iget v0, p0, Lcom/zui/gallery/data/LocalVideo;->width:I

    const/16 v5, 0xbb8

    if-gt v0, v5, :cond_1

    iget v0, p0, Lcom/zui/gallery/data/LocalVideo;->height:I

    if-le v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v10, v0

    move-object v0, v11

    move v5, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v0 .. v10}, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;-><init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;JILjava/lang/String;ILjava/util/List;ZZ)V

    return-object v11
.end method

.method public rotate(I)V
    .locals 0

    return-void
.end method

.method public setMult(I)V
    .locals 0

    .line 288
    iput p1, p0, Lcom/zui/gallery/data/LocalVideo;->mult:I

    return-void
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 5

    .line 147
    new-instance v0, Lcom/zui/gallery/util/UpdateHelper;

    invoke-direct {v0}, Lcom/zui/gallery/util/UpdateHelper;-><init>()V

    .line 148
    iget v1, p0, Lcom/zui/gallery/data/LocalVideo;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/LocalVideo;->id:I

    .line 149
    iget-object v1, p0, Lcom/zui/gallery/data/LocalVideo;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/zui/gallery/data/LocalVideo;->caption:Ljava/lang/String;

    .line 150
    iget-object v1, p0, Lcom/zui/gallery/data/LocalVideo;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/zui/gallery/data/LocalVideo;->mimeType:Ljava/lang/String;

    .line 151
    iget-wide v1, p0, Lcom/zui/gallery/data/LocalVideo;->latitude:D

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/data/LocalVideo;->latitude:D

    .line 152
    iget-wide v1, p0, Lcom/zui/gallery/data/LocalVideo;->longitude:D

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/data/LocalVideo;->longitude:D

    .line 153
    iget-wide v1, p0, Lcom/zui/gallery/data/LocalVideo;->dateTakenInMs:J

    const/4 v3, 0x5

    .line 154
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 153
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/data/LocalVideo;->dateTakenInMs:J

    .line 155
    iget-wide v1, p0, Lcom/zui/gallery/data/LocalVideo;->dateAddedInSec:J

    const/4 v3, 0x6

    .line 156
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 155
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/data/LocalVideo;->dateAddedInSec:J

    .line 157
    iget-wide v1, p0, Lcom/zui/gallery/data/LocalVideo;->dateModifiedInSec:J

    const/4 v3, 0x7

    .line 158
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 157
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/data/LocalVideo;->dateModifiedInSec:J

    .line 159
    iget-object v1, p0, Lcom/zui/gallery/data/LocalVideo;->filePath:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/zui/gallery/data/LocalVideo;->filePath:Ljava/lang/String;

    .line 160
    iget v1, p0, Lcom/zui/gallery/data/LocalVideo;->durationInSec:I

    const/16 v2, 0x9

    .line 161
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    .line 160
    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/LocalVideo;->durationInSec:I

    .line 162
    iget v1, p0, Lcom/zui/gallery/data/LocalVideo;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/LocalVideo;->bucketId:I

    .line 163
    iget-wide v1, p0, Lcom/zui/gallery/data/LocalVideo;->fileSize:J

    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/data/LocalVideo;->fileSize:J

    .line 164
    invoke-virtual {v0}, Lcom/zui/gallery/util/UpdateHelper;->isUpdated()Z

    move-result p1

    return p1
.end method
