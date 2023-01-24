.class public abstract Lcom/zui/gallery/data/MediaItem;
.super Lcom/zui/gallery/data/MediaObject;
.source "MediaItem.java"


# static fields
.field private static final BYTESBUFFER_SIZE:I = 0x32000

.field private static final BYTESBUFFE_POOL_SIZE:I = 0x4

.field public static final CACHED_IMAGE_QUALITY:I = 0x5f

.field public static final IMAGE_ERROR:I = -0x1

.field public static final IMAGE_READY:I = 0x0

.field public static final IMAGE_WAIT:I = 0x1

.field public static final INVALID_LATLNG:D = 0.0

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static PANO_THUMBNAIL_HEIGHT:I = 0x0

.field public static final TYPE_MICROTHUMBNAIL:I = 0x2

.field public static final TYPE_MINITHUMBNAIL:I = 0x3

.field public static final TYPE_PANOTHUMNAL:I = 0x5

.field public static final TYPE_THUMBNAIL:I = 0x1

.field public static final TYPE_VIDEOFRAME:I = 0x4

.field private static mPanoThumbnailTargeSize:I = 0x0

.field private static final sMicroThumbBufferPool:Lcom/zui/gallery/data/BytesBufferPool;

.field private static sMicrothumbnailTargetSize:I = 0xc8

.field private static sMinithumbnailTargSize:I = 0x64

.field private static sThumbnailTargetSize:I


# instance fields
.field private mContinuousData:Lcom/zui/gallery/data/MediaObject;

.field private mForceReload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/zui/gallery/data/BytesBufferPool;

    const/4 v1, 0x4

    const v2, 0x32000

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcom/zui/gallery/data/MediaItem;->sMicroThumbBufferPool:Lcom/zui/gallery/data/BytesBufferPool;

    const/16 v0, 0x280

    .line 51
    sput v0, Lcom/zui/gallery/data/MediaItem;->sThumbnailTargetSize:I

    const/16 v0, 0x414

    .line 52
    sput v0, Lcom/zui/gallery/data/MediaItem;->mPanoThumbnailTargeSize:I

    const/16 v0, 0x10e

    .line 53
    sput v0, Lcom/zui/gallery/data/MediaItem;->PANO_THUMBNAIL_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;J)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/data/MediaObject;-><init>(Lcom/zui/gallery/data/Path;J)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/zui/gallery/data/MediaItem;->mForceReload:Z

    return-void
.end method

.method public static getBytesBufferPool()Lcom/zui/gallery/data/BytesBufferPool;
    .locals 1

    .line 148
    sget-object v0, Lcom/zui/gallery/data/MediaItem;->sMicroThumbBufferPool:Lcom/zui/gallery/data/BytesBufferPool;

    return-object v0
.end method

.method public static getTargetSize(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 140
    sget p0, Lcom/zui/gallery/data/MediaItem;->mPanoThumbnailTargeSize:I

    return p0

    .line 142
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "should only request thumb/microthumb from cache"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 138
    :cond_1
    sget p0, Lcom/zui/gallery/data/MediaItem;->sMicrothumbnailTargetSize:I

    return p0

    .line 136
    :cond_2
    sget p0, Lcom/zui/gallery/data/MediaItem;->sMinithumbnailTargSize:I

    return p0

    .line 134
    :cond_3
    sget p0, Lcom/zui/gallery/data/MediaItem;->sMicrothumbnailTargetSize:I

    return p0

    .line 132
    :cond_4
    sget p0, Lcom/zui/gallery/data/MediaItem;->sThumbnailTargetSize:I

    return p0
.end method

.method public static setThumbnailSizes(II)V
    .locals 0

    .line 152
    sput p0, Lcom/zui/gallery/data/MediaItem;->sThumbnailTargetSize:I

    .line 153
    sget p0, Lcom/zui/gallery/data/MediaItem;->sMicrothumbnailTargetSize:I

    if-eq p0, p1, :cond_0

    .line 154
    sput p1, Lcom/zui/gallery/data/MediaItem;->sMicrothumbnailTargetSize:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getContinuousData()Lcom/zui/gallery/data/MediaObject;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/zui/gallery/data/MediaItem;->mContinuousData:Lcom/zui/gallery/data/MediaObject;

    return-object v0
.end method

.method public getDateInMs()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFaces()[Lcom/zui/gallery/data/Face;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getFullImageRotation()I
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaItem;->getRotation()I

    move-result v0

    return v0
.end method

.method public abstract getHeight()I
.end method

.method public getLatLong([D)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 85
    aput-wide v1, p1, v0

    const/4 v0, 0x1

    .line 86
    aput-wide v1, p1, v0

    return-void
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScreenNail()Lcom/zui/gallery/ui/ScreenNail;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeModified()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getWidth()I
.end method

.method public isForceReload()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/zui/gallery/data/MediaItem;->mForceReload:Z

    return v0
.end method

.method public isMediaSet()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract requestImage(I)Lcom/zui/gallery/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestLargeImage()Lcom/zui/gallery/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end method

.method public setContinuousData(Lcom/zui/gallery/data/MediaObject;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/zui/gallery/data/MediaItem;->mContinuousData:Lcom/zui/gallery/data/MediaObject;

    return-void
.end method

.method public setForceReload(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/zui/gallery/data/MediaItem;->mForceReload:Z

    return-void
.end method

.method public updateWidthAndHeight(II)V
    .locals 0

    return-void
.end method
