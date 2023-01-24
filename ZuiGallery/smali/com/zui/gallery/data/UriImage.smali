.class public Lcom/zui/gallery/data/UriImage;
.super Lcom/zui/gallery/data/MediaItem;
.source "UriImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/UriImage$BitmapJob;,
        Lcom/zui/gallery/data/UriImage$RegionDecoderJob;
    }
.end annotation


# static fields
.field private static DNG_TYPE:Ljava/lang/String; = "image/x-adobe-dng"

.field private static final STATE_DOWNLOADED:I = 0x2

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UriImage"


# instance fields
.field private isDNGImage:Z

.field private mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mCacheEntry:Lcom/zui/gallery/data/DownloadCache$Entry;

.field private final mContentType:Ljava/lang/String;

.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mFilePath:Ljava/lang/String;

.field private mHeight:I

.field private mPanoramaMetadata:Lcom/zui/gallery/app/PanoramaMetadataSupport;

.field private mRotation:I

.field private mState:I

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 68
    invoke-static {}, Lcom/zui/gallery/data/UriImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/zui/gallery/data/MediaItem;-><init>(Lcom/zui/gallery/data/Path;J)V

    const/4 p2, 0x0

    .line 57
    iput p2, p0, Lcom/zui/gallery/data/UriImage;->mState:I

    .line 61
    new-instance p2, Lcom/zui/gallery/app/PanoramaMetadataSupport;

    invoke-direct {p2, p0}, Lcom/zui/gallery/app/PanoramaMetadataSupport;-><init>(Lcom/zui/gallery/data/MediaObject;)V

    iput-object p2, p0, Lcom/zui/gallery/data/UriImage;->mPanoramaMetadata:Lcom/zui/gallery/app/PanoramaMetadataSupport;

    .line 69
    iput-object p3, p0, Lcom/zui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    .line 70
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/GalleryApp;

    iput-object p1, p0, Lcom/zui/gallery/data/UriImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 71
    iput-object p4, p0, Lcom/zui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    .line 72
    iget-object p1, p0, Lcom/zui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    .line 73
    sget-object p2, Lcom/zui/gallery/data/UriImage;->DNG_TYPE:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "file"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/zui/gallery/data/UriImage;->isDNGImage:Z

    .line 75
    iget-object p1, p0, Lcom/zui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/UriImage;->mFilePath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/data/UriImage;Lcom/zui/gallery/util/ThreadPool$JobContext;)Z
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/zui/gallery/data/UriImage;->prepareInputFile(Lcom/zui/gallery/util/ThreadPool$JobContext;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/data/UriImage;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/zui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/data/UriImage;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/zui/gallery/data/UriImage;->isDNGImage:Z

    return p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/data/UriImage;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/zui/gallery/data/UriImage;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/zui/gallery/data/UriImage;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/zui/gallery/data/UriImage;->mWidth:I

    return p1
.end method

.method static synthetic access$602(Lcom/zui/gallery/data/UriImage;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/zui/gallery/data/UriImage;->mHeight:I

    return p1
.end method

.method private isSharable()Z
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/zui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private openFileOrDownloadTempFile(Lcom/zui/gallery/util/ThreadPool$JobContext;)V
    .locals 1

    .line 90
    invoke-direct {p0, p1}, Lcom/zui/gallery/data/UriImage;->openOrDownloadInner(Lcom/zui/gallery/util/ThreadPool$JobContext;)I

    move-result p1

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iput p1, p0, Lcom/zui/gallery/data/UriImage;->mState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 94
    iget-object p1, p0, Lcom/zui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/zui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcom/zui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 99
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private openOrDownloadInner(Lcom/zui/gallery/util/ThreadPool$JobContext;)I
    .locals 7

    .line 104
    iget-object v0, p0, Lcom/zui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "image/jpeg"

    const/4 v5, -0x1

    const-string v6, "UriImage"

    if-nez v1, :cond_4

    const-string v1, "android.resource"

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "file"

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/zui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/zui/gallery/data/UriImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getDownloadCache()Lcom/zui/gallery/data/DownloadCache;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/zui/gallery/data/DownloadCache;->download(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/net/URL;)Lcom/zui/gallery/data/DownloadCache$Entry;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/data/UriImage;->mCacheEntry:Lcom/zui/gallery/data/DownloadCache$Entry;

    .line 127
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/data/UriImage;->mCacheEntry:Lcom/zui/gallery/data/DownloadCache$Entry;

    if-nez p1, :cond_2

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download failed "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 132
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 133
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/zui/gallery/data/UriImage;->mCacheEntry:Lcom/zui/gallery/data/DownloadCache$Entry;

    iget-object v0, v0, Lcom/zui/gallery/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 134
    invoke-static {p1}, Lcom/zui/gallery/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/data/UriImage;->mRotation:I

    .line 135
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 137
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/data/UriImage;->mCacheEntry:Lcom/zui/gallery/data/DownloadCache$Entry;

    iget-object p1, p1, Lcom/zui/gallery/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    const/high16 v0, 0x10000000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception p1

    const-string v0, "download error"

    .line 141
    invoke-static {v6, v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5

    .line 109
    :cond_4
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/zui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    iget-object v0, p0, Lcom/zui/gallery/data/UriImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/zui/gallery/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/UriImage;->mRotation:I

    .line 113
    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/data/UriImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    const-string v4, "r"

    .line 116
    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 117
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v3

    :catch_0
    move-exception p1

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to open: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method

.method private prepareInputFile(Lcom/zui/gallery/util/ThreadPool$JobContext;)Z
    .locals 4

    .line 148
    new-instance v0, Lcom/zui/gallery/data/UriImage$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/data/UriImage$1;-><init>(Lcom/zui/gallery/data/UriImage;)V

    invoke-interface {p1, v0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/zui/gallery/util/ThreadPool$CancelListener;)V

    .line 158
    :goto_0
    monitor-enter p0

    .line 159
    :try_start_0
    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 160
    :cond_0
    iget v0, p0, Lcom/zui/gallery/data/UriImage;->mState:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 161
    iput v2, p0, Lcom/zui/gallery/data/UriImage;->mState:I

    .line 175
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-direct {p0, p1}, Lcom/zui/gallery/data/UriImage;->openFileOrDownloadTempFile(Lcom/zui/gallery/util/ThreadPool$JobContext;)V

    goto :goto_0

    .line 163
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/zui/gallery/data/UriImage;->mState:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 164
    monitor-exit p0

    return v1

    .line 165
    :cond_2
    iget v0, p0, Lcom/zui/gallery/data/UriImage;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 166
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    .line 169
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    :catch_0
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 175
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public clearCachedPanoramaSupport()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/zui/gallery/data/UriImage;->mPanoramaMetadata:Lcom/zui/gallery/app/PanoramaMetadataSupport;

    invoke-virtual {v0}, Lcom/zui/gallery/app/PanoramaMetadataSupport;->clearCachedValues()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/zui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 301
    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/zui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetails()Lcom/zui/gallery/data/MediaDetails;
    .locals 3

    .line 272
    invoke-super {p0}, Lcom/zui/gallery/data/MediaItem;->getDetails()Lcom/zui/gallery/data/MediaDetails;

    move-result-object v0

    .line 273
    iget v1, p0, Lcom/zui/gallery/data/UriImage;->mWidth:I

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/zui/gallery/data/UriImage;->mHeight:I

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    .line 274
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/4 v1, 0x6

    .line 275
    iget v2, p0, Lcom/zui/gallery/data/UriImage;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v2, 0x9

    .line 278
    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/zui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    .line 282
    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 283
    invoke-static {v0, v1}, Lcom/zui/gallery/data/MediaDetails;->extractExifInfo(Lcom/zui/gallery/data/MediaDetails;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcom/zui/gallery/data/UriImage;->isDNGImage:Z

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/zui/gallery/data/UriImage;->mFilePath:Ljava/lang/String;

    return-object v0

    .line 328
    :cond_0
    invoke-super {p0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 311
    iget v0, p0, Lcom/zui/gallery/data/UriImage;->mHeight:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/zui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getPanoramaSupport(Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/zui/gallery/data/UriImage;->mPanoramaMetadata:Lcom/zui/gallery/app/PanoramaMetadataSupport;

    iget-object v1, p0, Lcom/zui/gallery/data/UriImage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/app/PanoramaMetadataSupport;->getPanoramaSupport(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;)V

    return-void
.end method

.method public getRotation()I
    .locals 1

    .line 316
    iget v0, p0, Lcom/zui/gallery/data/UriImage;->mRotation:I

    return v0
.end method

.method public getSupportedOperations()I
    .locals 2

    .line 235
    invoke-direct {p0}, Lcom/zui/gallery/data/UriImage;->isSharable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x20024

    goto :goto_0

    :cond_0
    const v0, 0x20020

    .line 236
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/zui/gallery/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x240

    :cond_1
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 306
    iget v0, p0, Lcom/zui/gallery/data/UriImage;->mWidth:I

    return v0
.end method

.method public isDNGImage()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/zui/gallery/data/UriImage;->isDNGImage:Z

    return v0
.end method

.method public requestImage(I)Lcom/zui/gallery/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/zui/gallery/data/UriImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/zui/gallery/data/UriImage$BitmapJob;-><init>(Lcom/zui/gallery/data/UriImage;I)V

    return-object v0
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

    .line 86
    new-instance v0, Lcom/zui/gallery/data/UriImage$RegionDecoderJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/data/UriImage$RegionDecoderJob;-><init>(Lcom/zui/gallery/data/UriImage;Lcom/zui/gallery/data/UriImage$1;)V

    return-object v0
.end method
