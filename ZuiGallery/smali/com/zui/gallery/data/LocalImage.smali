.class public Lcom/zui/gallery/data/LocalImage;
.super Lcom/zui/gallery/data/LocalMediaItem;
.source "LocalImage.java"


# static fields
.field public static HDR_VALUE:Ljava/lang/String; = null

.field private static final INDEX_BUCKET_ID:I = 0xa

.field private static final INDEX_CAPTION:I = 0x1

.field private static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_DESCRIPTION:I = 0xe

.field private static final INDEX_HEIGHT:I = 0xd

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_ORIENTATION:I = 0x9

.field private static final INDEX_SIZE:I = 0xb

.field private static final INDEX_WIDTH:I = 0xc

.field public static final ITEM_PATH:Lcom/zui/gallery/data/Path;

.field public static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LocalImage"


# instance fields
.field private final mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mPanoramaMetadata:Lcom/zui/gallery/app/PanoramaMetadataSupport;

.field public rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "/local/image/item"

    .line 53
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    const-string v0, "1"

    .line 72
    sput-object v0, Lcom/zui/gallery/data/LocalImage;->HDR_VALUE:Ljava/lang/String;

    const-string v1, "_id"

    const-string/jumbo v2, "title"

    const-string v3, "mime_type"

    const-string v4, "latitude"

    const-string v5, "longitude"

    const-string v6, "datetaken"

    const-string v7, "date_added"

    const-string v8, "date_modified"

    const-string v9, "_data"

    const-string v10, "orientation"

    const-string v11, "bucket_id"

    const-string v12, "_size"

    const-string v13, "0"

    const-string v14, "0"

    const-string v15, "description"

    .line 73
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/zui/gallery/data/LocalImage;->updateWidthAndHeightProjection()V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;I)V
    .locals 2

    .line 117
    invoke-static {}, Lcom/zui/gallery/data/LocalImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/LocalMediaItem;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 118
    iput-object p2, p0, Lcom/zui/gallery/data/LocalImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 119
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 120
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 121
    sget-object v1, Lcom/zui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {p2, v0, v1, p3}, Lcom/zui/gallery/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalImage id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "kugoubug"

    invoke-static {v0, p3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 127
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 129
    invoke-direct {p0, p2}, Lcom/zui/gallery/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    .line 135
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

    .line 138
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 139
    throw p1

    .line 124
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

    .line 111
    invoke-static {}, Lcom/zui/gallery/data/LocalImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/LocalMediaItem;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 112
    iput-object p2, p0, Lcom/zui/gallery/data/LocalImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 113
    invoke-direct {p0, p3}, Lcom/zui/gallery/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public static getItemPath(I)Lcom/zui/gallery/data/Path;
    .locals 2

    if-eqz p0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/local/image/item/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p0

    return-object p0

    .line 326
    :cond_0
    sget-object p0, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    return-object p0
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    .line 143
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/data/LocalImage;->id:I

    const/4 v0, 0x1

    .line 144
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/LocalImage;->caption:Ljava/lang/String;

    const/4 v0, 0x2

    .line 145
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/LocalImage;->mimeType:Ljava/lang/String;

    const/4 v0, 0x3

    .line 146
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalImage;->latitude:D

    const/4 v0, 0x4

    .line 147
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalImage;->longitude:D

    const/4 v0, 0x5

    .line 148
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalImage;->dateTakenInMs:J

    const/4 v0, 0x6

    .line 149
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalImage;->dateAddedInSec:J

    const/4 v0, 0x7

    .line 150
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalImage;->dateModifiedInSec:J

    const/16 v0, 0x8

    .line 151
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    const/16 v0, 0x9

    .line 153
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/data/LocalImage;->rotation:I

    const/16 v0, 0xa

    .line 154
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/data/LocalImage;->bucketId:I

    const/16 v0, 0xb

    .line 155
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/LocalImage;->fileSize:J

    const/16 v0, 0xc

    .line 156
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/data/LocalImage;->width:I

    const/16 v0, 0xd

    .line 157
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/data/LocalImage;->height:I

    return-void
.end method

.method private static updateWidthAndHeightProjection()V
    .locals 3

    .line 97
    sget-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/zui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "height"

    .line 99
    aput-object v2, v0, v1

    :cond_0
    return-void
.end method


# virtual methods
.method public clearCachedPanoramaSupport()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/zui/gallery/data/LocalImage;->mPanoramaMetadata:Lcom/zui/gallery/app/PanoramaMetadataSupport;

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/app/PanoramaMetadataSupport;->clearCachedValues()V

    return-void
.end method

.method public delete()V
    .locals 5

    .line 226
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 227
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 228
    iget-object v1, p0, Lcom/zui/gallery/data/LocalImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 233
    iget v3, p0, Lcom/zui/gallery/data/LocalImage;->id:I

    .line 234
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "_id=?"

    .line 233
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete image file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocalImage"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/zui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/zui/gallery/data/GroupBucketHelper;->deleteGroupMemberShips(Landroid/content/ContentResolver;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 2

    .line 279
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 280
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/data/LocalImage;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcom/zui/gallery/data/MediaDetails;
    .locals 3

    .line 290
    invoke-super {p0}, Lcom/zui/gallery/data/LocalMediaItem;->getDetails()Lcom/zui/gallery/data/MediaDetails;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/zui/gallery/data/LocalImage;->mimeType:Ljava/lang/String;

    const-string v2, "image/jpeg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/zui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zui/gallery/data/MediaDetails;->extractExifInfo(Lcom/zui/gallery/data/MediaDetails;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/zui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/zui/gallery/data/LocalImage;->height:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getPanoramaSupport(Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/zui/gallery/data/LocalImage;->mPanoramaMetadata:Lcom/zui/gallery/app/PanoramaMetadataSupport;

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/data/LocalImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/app/PanoramaMetadataSupport;->getPanoramaSupport(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;)V

    return-void
.end method

.method public getRotation()I
    .locals 1

    .line 304
    iget v0, p0, Lcom/zui/gallery/data/LocalImage;->rotation:I

    return v0
.end method

.method public getSupportedOperations()I
    .locals 5

    .line 198
    iget-object v0, p0, Lcom/zui/gallery/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x2066d

    goto :goto_0

    :cond_0
    const v0, 0x2042d

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/zui/gallery/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 206
    :cond_1
    iget-wide v1, p0, Lcom/zui/gallery/data/LocalImage;->latitude:D

    iget-wide v3, p0, Lcom/zui/gallery/data/LocalImage;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/zui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    :cond_2
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/zui/gallery/data/LocalImage;->width:I

    return v0
.end method

.method public requestImage(I)Lcom/zui/gallery/util/ThreadPool$Job;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v9, Lcom/zui/gallery/decode/LocalImageRequest;

    iget-object v1, p0, Lcom/zui/gallery/data/LocalImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    iget-object v2, p0, Lcom/zui/gallery/data/LocalImage;->mPath:Lcom/zui/gallery/data/Path;

    iget-wide v3, p0, Lcom/zui/gallery/data/LocalImage;->dateModifiedInSec:J

    iget-object v6, p0, Lcom/zui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lcom/zui/gallery/data/LocalImage;->isForceReload()Z

    move-result v7

    iget v8, p0, Lcom/zui/gallery/data/LocalImage;->id:I

    move-object v0, v9

    move v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/zui/gallery/decode/LocalImageRequest;-><init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;JILjava/lang/String;ZI)V

    return-object v9
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

    .line 191
    new-instance v0, Lcom/zui/gallery/decode/LocalLargeImageRequest;

    iget-object v1, p0, Lcom/zui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zui/gallery/decode/LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 7

    .line 246
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 247
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 248
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 249
    iget v2, p0, Lcom/zui/gallery/data/LocalImage;->rotation:I

    add-int/2addr v2, p1

    rem-int/lit16 v2, v2, 0x168

    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x168

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/data/LocalImage;->mimeType:Ljava/lang/String;

    const-string v3, "image/jpeg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 253
    new-instance p1, Lcom/zui/gallery/exif/ExifInterface;

    invoke-direct {p1}, Lcom/zui/gallery/exif/ExifInterface;-><init>()V

    .line 254
    sget v3, Lcom/zui/gallery/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 255
    invoke-static {v2}, Lcom/zui/gallery/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    .line 254
    invoke-virtual {p1, v3, v4}, Lcom/zui/gallery/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/zui/gallery/exif/ExifTag;

    move-result-object v3

    const-string v4, "LocalImage"

    if-eqz v3, :cond_1

    .line 257
    invoke-virtual {p1, v3}, Lcom/zui/gallery/exif/ExifInterface;->setTag(Lcom/zui/gallery/exif/ExifTag;)Lcom/zui/gallery/exif/ExifTag;

    .line 259
    :try_start_0
    iget-object v3, p0, Lcom/zui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/zui/gallery/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;)V

    .line 260
    new-instance p1, Ljava/io/File;

    iget-object v3, p0, Lcom/zui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/zui/gallery/data/LocalImage;->fileSize:J

    const-string p1, "_size"

    .line 261
    iget-wide v5, p0, Lcom/zui/gallery/data/LocalImage;->fileSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot set exif data: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find file to set exif: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not build tag: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/zui/gallery/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_2
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "orientation"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    iget-object p1, p0, Lcom/zui/gallery/data/LocalImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/zui/gallery/data/LocalImage;->id:I

    .line 274
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    .line 273
    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 5

    .line 162
    new-instance v0, Lcom/zui/gallery/util/UpdateHelper;

    invoke-direct {v0}, Lcom/zui/gallery/util/UpdateHelper;-><init>()V

    .line 163
    iget v1, p0, Lcom/zui/gallery/data/LocalImage;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/LocalImage;->id:I

    .line 164
    iget-object v1, p0, Lcom/zui/gallery/data/LocalImage;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/zui/gallery/data/LocalImage;->caption:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/zui/gallery/data/LocalImage;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/zui/gallery/data/LocalImage;->mimeType:Ljava/lang/String;

    .line 166
    iget-wide v1, p0, Lcom/zui/gallery/data/LocalImage;->latitude:D

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/data/LocalImage;->latitude:D

    .line 167
    iget-wide v1, p0, Lcom/zui/gallery/data/LocalImage;->longitude:D

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/data/LocalImage;->longitude:D

    .line 168
    iget-wide v1, p0, Lcom/zui/gallery/data/LocalImage;->dateTakenInMs:J

    const/4 v3, 0x5

    .line 169
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 168
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/data/LocalImage;->dateTakenInMs:J

    .line 170
    iget-wide v1, p0, Lcom/zui/gallery/data/LocalImage;->dateAddedInSec:J

    const/4 v3, 0x6

    .line 171
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 170
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/data/LocalImage;->dateAddedInSec:J

    .line 172
    iget-wide v1, p0, Lcom/zui/gallery/data/LocalImage;->dateModifiedInSec:J

    const/4 v3, 0x7

    .line 173
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 172
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/data/LocalImage;->dateModifiedInSec:J

    .line 174
    iget-object v1, p0, Lcom/zui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/zui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    .line 175
    iget v1, p0, Lcom/zui/gallery/data/LocalImage;->rotation:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/LocalImage;->rotation:I

    .line 176
    iget v1, p0, Lcom/zui/gallery/data/LocalImage;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/LocalImage;->bucketId:I

    .line 177
    iget-wide v1, p0, Lcom/zui/gallery/data/LocalImage;->fileSize:J

    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/data/LocalImage;->fileSize:J

    .line 178
    iget v1, p0, Lcom/zui/gallery/data/LocalImage;->width:I

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/LocalImage;->width:I

    .line 179
    iget v1, p0, Lcom/zui/gallery/data/LocalImage;->height:I

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/util/UpdateHelper;->update(II)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/data/LocalImage;->height:I

    .line 180
    invoke-virtual {v0}, Lcom/zui/gallery/util/UpdateHelper;->isUpdated()Z

    move-result p1

    return p1
.end method
