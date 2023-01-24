.class public Lcom/zui/gallery/data/CloudImage;
.super Lcom/zui/gallery/data/MediaItem;
.source "CloudImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/CloudImage$onDetailLoadListener;,
        Lcom/zui/gallery/data/CloudImage$BitmapJob;,
        Lcom/zui/gallery/data/CloudImage$RegionDecoderJob;
    }
.end annotation


# static fields
.field private static DNG_TYPE:Ljava/lang/String; = null

.field public static final INDEX_ALBUM_CLOUD_ID:I = 0x5

.field public static final INDEX_ALBUM_ID:I = 0x3

.field public static final INDEX_ALBUM_NAME:I = 0x4

.field public static final INDEX_BACKUP_TIME:I = 0xa

.field public static final INDEX_HEIGHT:I = 0x9

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_MIME_TYPE:I = 0x2

.field public static final INDEX_ORIGINAL_TIME:I = 0x7

.field public static final INDEX_SIZE:I = 0x6

.field public static final INDEX_TITLE:I = 0x1

.field public static final INDEX_WIDTH:I = 0x8

.field public static final PROJECTION:[Ljava/lang/String;

.field private static final STATE_DOWNLOADED:I = 0x2

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CloudImage"


# instance fields
.field albumCloudId:J

.field albumId:I

.field albumName:Ljava/lang/String;

.field backupTime:J

.field height:I

.field id:I

.field private isDNGImage:Z

.field private mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mCacheEntry:Lcom/zui/gallery/data/DownloadCache$Entry;

.field private final mContentType:Ljava/lang/String;

.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mFilePath:Ljava/lang/String;

.field private mHeight:I

.field private final mIsImage:Z

.field private mPanoramaMetadata:Lcom/zui/gallery/app/PanoramaMetadataSupport;

.field public final mPath:Lcom/zui/gallery/data/Path;

.field private mRotation:I

.field private mState:I

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I

.field private mediaDetails:Lcom/zui/gallery/data/MediaDetails;

.field mimeType:I

.field originalTime:J

.field size:J

.field title:Ljava/lang/String;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "_id"

    const-string/jumbo v1, "title"

    const-string v2, "mime_type"

    const-string v3, "album_id"

    const-string v4, "album_name"

    const-string v5, "album_cloud_id"

    const-string v6, "_size"

    const-string v7, "original_time"

    const-string/jumbo v8, "width"

    const-string v9, "height"

    const-string v10, "backup_time"

    .line 65
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/CloudImage;->PROJECTION:[Ljava/lang/String;

    const-string v0, "image/x-adobe-dng"

    .line 127
    sput-object v0, Lcom/zui/gallery/data/CloudImage;->DNG_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;Landroid/net/Uri;Z)V
    .locals 7

    .line 140
    invoke-static {}, Lcom/zui/gallery/data/CloudImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/zui/gallery/data/MediaItem;-><init>(Lcom/zui/gallery/data/Path;J)V

    const-string v0, ""

    .line 97
    iput-object v0, p0, Lcom/zui/gallery/data/CloudImage;->mContentType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/zui/gallery/data/CloudImage;->mState:I

    .line 124
    new-instance v1, Lcom/zui/gallery/app/PanoramaMetadataSupport;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/PanoramaMetadataSupport;-><init>(Lcom/zui/gallery/data/MediaObject;)V

    iput-object v1, p0, Lcom/zui/gallery/data/CloudImage;->mPanoramaMetadata:Lcom/zui/gallery/app/PanoramaMetadataSupport;

    .line 141
    iput-object p3, p0, Lcom/zui/gallery/data/CloudImage;->mUri:Landroid/net/Uri;

    .line 142
    iput-object p2, p0, Lcom/zui/gallery/data/CloudImage;->mPath:Lcom/zui/gallery/data/Path;

    .line 143
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/GalleryApp;

    iput-object p1, p0, Lcom/zui/gallery/data/CloudImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 144
    iput-boolean p4, p0, Lcom/zui/gallery/data/CloudImage;->mIsImage:Z

    .line 146
    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 148
    sget-object v2, Lcom/zui/gallery/cloud/CloudManager;->DEFAULT_CLOUD_MEDIA_URI:Landroid/net/Uri;

    sget-object v3, Lcom/zui/gallery/data/CloudImage;->PROJECTION:[Ljava/lang/String;

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/String;

    .line 149
    invoke-virtual {p2}, Lcom/zui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    const-string v4, "_id=?"

    const/4 v6, 0x0

    .line 148
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 155
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 156
    invoke-direct {p0, p1}, Lcom/zui/gallery/data/CloudImage;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    .line 158
    :cond_0
    :try_start_1
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot find data for: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 161
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 162
    throw p2

    .line 152
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "cannot get cursor for: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;Landroid/net/Uri;ZLandroid/database/Cursor;)V
    .locals 2

    .line 131
    invoke-static {}, Lcom/zui/gallery/data/CloudImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/zui/gallery/data/MediaItem;-><init>(Lcom/zui/gallery/data/Path;J)V

    const-string v0, ""

    .line 97
    iput-object v0, p0, Lcom/zui/gallery/data/CloudImage;->mContentType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/zui/gallery/data/CloudImage;->mState:I

    .line 124
    new-instance v0, Lcom/zui/gallery/app/PanoramaMetadataSupport;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/PanoramaMetadataSupport;-><init>(Lcom/zui/gallery/data/MediaObject;)V

    iput-object v0, p0, Lcom/zui/gallery/data/CloudImage;->mPanoramaMetadata:Lcom/zui/gallery/app/PanoramaMetadataSupport;

    .line 132
    iput-object p3, p0, Lcom/zui/gallery/data/CloudImage;->mUri:Landroid/net/Uri;

    .line 133
    iput-object p2, p0, Lcom/zui/gallery/data/CloudImage;->mPath:Lcom/zui/gallery/data/Path;

    .line 134
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/GalleryApp;

    iput-object p1, p0, Lcom/zui/gallery/data/CloudImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 135
    iput-boolean p4, p0, Lcom/zui/gallery/data/CloudImage;->mIsImage:Z

    .line 136
    invoke-direct {p0, p5}, Lcom/zui/gallery/data/CloudImage;->loadFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/data/CloudImage;Lcom/zui/gallery/util/ThreadPool$JobContext;I)Z
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/data/CloudImage;->prepareInputFile(Lcom/zui/gallery/util/ThreadPool$JobContext;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/data/CloudImage;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/zui/gallery/data/CloudImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/data/CloudImage;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/zui/gallery/data/CloudImage;->isDNGImage:Z

    return p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/data/CloudImage;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/zui/gallery/data/CloudImage;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/zui/gallery/data/CloudImage;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/zui/gallery/data/CloudImage;->mWidth:I

    return p1
.end method

.method static synthetic access$602(Lcom/zui/gallery/data/CloudImage;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/zui/gallery/data/CloudImage;->mHeight:I

    return p1
.end method

.method static synthetic access$702(Lcom/zui/gallery/data/CloudImage;Lcom/zui/gallery/data/MediaDetails;)Lcom/zui/gallery/data/MediaDetails;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/zui/gallery/data/CloudImage;->mediaDetails:Lcom/zui/gallery/data/MediaDetails;

    return-object p1
.end method

.method private isSharable()Z
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    .line 172
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/data/CloudImage;->id:I

    const/4 v0, 0x1

    .line 173
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/CloudImage;->title:Ljava/lang/String;

    const/4 v0, 0x2

    .line 174
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/data/CloudImage;->mimeType:I

    const/4 v0, 0x3

    .line 175
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/data/CloudImage;->albumId:I

    const/4 v0, 0x4

    .line 176
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/CloudImage;->albumName:Ljava/lang/String;

    const/4 v0, 0x5

    .line 177
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/CloudImage;->albumCloudId:J

    const/4 v0, 0x6

    .line 178
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/CloudImage;->size:J

    const/4 v0, 0x7

    .line 179
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/CloudImage;->originalTime:J

    const/16 v0, 0x8

    .line 180
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/data/CloudImage;->width:I

    const/16 v0, 0x9

    .line 181
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/data/CloudImage;->height:I

    const/16 v0, 0xa

    .line 182
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/CloudImage;->backupTime:J

    return-void
.end method

.method private openFileOrDownloadTempFile(Lcom/zui/gallery/util/ThreadPool$JobContext;I)V
    .locals 0

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/data/CloudImage;->openOrDownloadInner(Lcom/zui/gallery/util/ThreadPool$JobContext;I)I

    move-result p1

    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    iput p1, p0, Lcom/zui/gallery/data/CloudImage;->mState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 216
    iget-object p1, p0, Lcom/zui/gallery/data/CloudImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/zui/gallery/data/CloudImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    const/4 p1, 0x0

    .line 218
    iput-object p1, p0, Lcom/zui/gallery/data/CloudImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 221
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 222
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private openOrDownloadInner(Lcom/zui/gallery/util/ThreadPool$JobContext;I)I
    .locals 6

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 232
    sget-object p2, Lcom/zui/gallery/cloud/CloudManager;->DEFAULT_CLOUD_MEDIA_URI:Landroid/net/Uri;

    .line 233
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    iget v0, p0, Lcom/zui/gallery/data/CloudImage;->id:I

    int-to-long v0, v0

    .line 232
    invoke-static {p2, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object p2

    sget-object v0, Lcom/zui/gallery/cloud/ThumbnailType;->SMALLER_THUMBNAIL:Lcom/zui/gallery/cloud/ThumbnailType;

    .line 235
    invoke-virtual {v0}, Lcom/zui/gallery/cloud/ThumbnailType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "thumbnail_type"

    invoke-virtual {p2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 237
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/data/CloudImage;->mUri:Landroid/net/Uri;

    .line 240
    :goto_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x1

    const-string v5, "CloudImage"

    if-nez v1, :cond_4

    const-string v1, "android.resource"

    .line 242
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "file"

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 261
    :cond_1
    :try_start_0
    new-instance p2, Ljava/net/URI;

    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p2

    .line 262
    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getDownloadCache()Lcom/zui/gallery/data/DownloadCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/data/DownloadCache;->download(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/net/URL;)Lcom/zui/gallery/data/DownloadCache$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/CloudImage;->mCacheEntry:Lcom/zui/gallery/data/DownloadCache$Entry;

    .line 263
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    .line 264
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/data/CloudImage;->mCacheEntry:Lcom/zui/gallery/data/DownloadCache$Entry;

    if-nez p1, :cond_3

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 273
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/data/CloudImage;->mCacheEntry:Lcom/zui/gallery/data/DownloadCache$Entry;

    iget-object p1, p1, Lcom/zui/gallery/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    const/high16 p2, 0x10000000

    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/CloudImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception p1

    const-string p2, "download error"

    .line 277
    invoke-static {v5, p2, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    .line 251
    :cond_4
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "r"

    .line 252
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/CloudImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 253
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v3

    :catch_0
    move-exception p1

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to open: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method private prepareInputFile(Lcom/zui/gallery/util/ThreadPool$JobContext;I)Z
    .locals 4

    .line 284
    new-instance v0, Lcom/zui/gallery/data/CloudImage$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/data/CloudImage$1;-><init>(Lcom/zui/gallery/data/CloudImage;)V

    invoke-interface {p1, v0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/zui/gallery/util/ThreadPool$CancelListener;)V

    .line 294
    :goto_0
    monitor-enter p0

    .line 295
    :try_start_0
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 296
    :cond_0
    iget v0, p0, Lcom/zui/gallery/data/CloudImage;->mState:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 297
    iput v2, p0, Lcom/zui/gallery/data/CloudImage;->mState:I

    .line 311
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/data/CloudImage;->openFileOrDownloadTempFile(Lcom/zui/gallery/util/ThreadPool$JobContext;I)V

    goto :goto_0

    .line 299
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/zui/gallery/data/CloudImage;->mState:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 300
    monitor-exit p0

    return v1

    .line 301
    :cond_2
    iget v0, p0, Lcom/zui/gallery/data/CloudImage;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 302
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    .line 305
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    :catch_0
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 311
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public clearCachedPanoramaSupport()V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage;->mPanoramaMetadata:Lcom/zui/gallery/app/PanoramaMetadataSupport;

    invoke-virtual {v0}, Lcom/zui/gallery/app/PanoramaMetadataSupport;->clearCachedValues()V

    return-void
.end method

.method public delete()V
    .locals 3

    .line 390
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    iget v1, p0, Lcom/zui/gallery/data/CloudImage;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v1, p0, Lcom/zui/gallery/data/CloudImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/zui/gallery/cloud/CloudManager;->deleteCloudImage(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchDetailFromCloud(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/CloudImage$onDetailLoadListener;)V
    .locals 3

    .line 510
    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 512
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/cloud/CloudManager;->getiBinder()Lcom/zui/cloudservice/lpcs/ILPCSManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage;->mPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0}, Lcom/zui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Lcom/zui/gallery/data/CloudImage$2;

    invoke-direct {v2, p0, p2}, Lcom/zui/gallery/data/CloudImage$2;-><init>(Lcom/zui/gallery/data/CloudImage;Lcom/zui/gallery/data/CloudImage$onDetailLoadListener;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->fetchPhotoDetails(Ljava/lang/String;Ljava/lang/String;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 533
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 530
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 456
    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDateInMs()J
    .locals 2

    .line 461
    iget-wide v0, p0, Lcom/zui/gallery/data/CloudImage;->backupTime:J

    return-wide v0
.end method

.method public getDetails()Lcom/zui/gallery/data/MediaDetails;
    .locals 5

    .line 427
    invoke-super {p0}, Lcom/zui/gallery/data/MediaItem;->getDetails()Lcom/zui/gallery/data/MediaDetails;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/zui/gallery/data/CloudImage;->title:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 429
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 430
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/zui/gallery/data/CloudImage;->backupTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 431
    iget v1, p0, Lcom/zui/gallery/data/CloudImage;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 432
    iget v1, p0, Lcom/zui/gallery/data/CloudImage;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 433
    iget-wide v1, p0, Lcom/zui/gallery/data/CloudImage;->size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 503
    iget-boolean v0, p0, Lcom/zui/gallery/data/CloudImage;->isDNGImage:Z

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage;->mFilePath:Ljava/lang/String;

    return-object v0

    .line 506
    :cond_0
    invoke-super {p0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 484
    iget v0, p0, Lcom/zui/gallery/data/CloudImage;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 465
    iget v0, p0, Lcom/zui/gallery/data/CloudImage;->id:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getPanoramaSupport(Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/zui/gallery/data/CloudImage;->mPanoramaMetadata:Lcom/zui/gallery/app/PanoramaMetadataSupport;

    iget-object v1, p0, Lcom/zui/gallery/data/CloudImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/app/PanoramaMetadataSupport;->getPanoramaSupport(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;)V

    return-void
.end method

.method public getRotation()I
    .locals 1

    .line 489
    iget v0, p0, Lcom/zui/gallery/data/CloudImage;->mRotation:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .line 498
    iget-wide v0, p0, Lcom/zui/gallery/data/CloudImage;->size:J

    return-wide v0
.end method

.method public getSupportedOperations()I
    .locals 2

    .line 381
    invoke-direct {p0}, Lcom/zui/gallery/data/CloudImage;->isSharable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x20024

    goto :goto_0

    :cond_0
    const v0, 0x20020

    :goto_0
    const-string v1, ""

    .line 382
    invoke-static {v1}, Lcom/zui/gallery/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x240

    :cond_1
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 474
    iget v0, p0, Lcom/zui/gallery/data/CloudImage;->mWidth:I

    return v0
.end method

.method public isCloudVideo()Z
    .locals 1

    .line 469
    iget-boolean v0, p0, Lcom/zui/gallery/data/CloudImage;->mIsImage:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDNGImage()Z
    .locals 1

    .line 493
    iget-boolean v0, p0, Lcom/zui/gallery/data/CloudImage;->isDNGImage:Z

    return v0
.end method

.method public requestImage(I)Lcom/zui/gallery/util/ThreadPool$Job;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v8, Lcom/zui/gallery/data/CloudImage$BitmapJob;

    iget-object v2, p0, Lcom/zui/gallery/data/CloudImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    iget-object v3, p0, Lcom/zui/gallery/data/CloudImage;->mPath:Lcom/zui/gallery/data/Path;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p1}, Lcom/zui/gallery/data/MediaItem;->getTargetSize(I)I

    move-result v7

    move-object v0, v8

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/zui/gallery/data/CloudImage$BitmapJob;-><init>(Lcom/zui/gallery/data/CloudImage;Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;JII)V

    return-object v8
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

    .line 208
    new-instance v0, Lcom/zui/gallery/data/CloudImage$RegionDecoderJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/data/CloudImage$RegionDecoderJob;-><init>(Lcom/zui/gallery/data/CloudImage;Lcom/zui/gallery/data/CloudImage$1;)V

    return-object v0
.end method

.method public updateContent(Landroid/database/Cursor;)V
    .locals 2

    .line 166
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/CloudImage;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    invoke-static {}, Lcom/zui/gallery/data/CloudImage;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/CloudImage;->mDataVersion:J

    :cond_0
    return-void
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 5

    .line 186
    new-instance v0, Lcom/zui/gallery/util/UpdateHelper;

    invoke-direct {v0}, Lcom/zui/gallery/util/UpdateHelper;-><init>()V

    .line 187
    iget v1, p0, Lcom/zui/gallery/data/CloudImage;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/CloudImage;->id:I

    .line 188
    iget-object v1, p0, Lcom/zui/gallery/data/CloudImage;->title:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/zui/gallery/data/CloudImage;->title:Ljava/lang/String;

    .line 189
    iget v1, p0, Lcom/zui/gallery/data/CloudImage;->mimeType:I

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/CloudImage;->mimeType:I

    .line 190
    iget v1, p0, Lcom/zui/gallery/data/CloudImage;->albumId:I

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/CloudImage;->albumId:I

    .line 191
    iget-object v1, p0, Lcom/zui/gallery/data/CloudImage;->albumName:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/zui/gallery/data/CloudImage;->albumName:Ljava/lang/String;

    .line 192
    iget-wide v1, p0, Lcom/zui/gallery/data/CloudImage;->albumCloudId:J

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/data/CloudImage;->albumCloudId:J

    .line 193
    iget-wide v1, p0, Lcom/zui/gallery/data/CloudImage;->size:J

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/data/CloudImage;->size:J

    .line 194
    iget-wide v1, p0, Lcom/zui/gallery/data/CloudImage;->originalTime:J

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/data/CloudImage;->originalTime:J

    .line 195
    iget v1, p0, Lcom/zui/gallery/data/CloudImage;->width:I

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/CloudImage;->width:I

    .line 196
    iget v1, p0, Lcom/zui/gallery/data/CloudImage;->height:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/CloudImage;->height:I

    const/16 v1, 0xa

    .line 197
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/gallery/data/CloudImage;->backupTime:J

    .line 198
    invoke-virtual {v0}, Lcom/zui/gallery/util/UpdateHelper;->isUpdated()Z

    move-result p1

    return p1
.end method
