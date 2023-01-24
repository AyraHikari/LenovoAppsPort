.class public abstract Lcom/zui/gallery/data/MediaObject;
.super Ljava/lang/Object;
.source "MediaObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;
    }
.end annotation


# static fields
.field public static final CACHE_FLAG_FULL:I = 0x2

.field public static final CACHE_FLAG_NO:I = 0x0

.field public static final CACHE_FLAG_SCREENNAIL:I = 0x1

.field public static final CACHE_STATUS_CACHED_FULL:I = 0x3

.field public static final CACHE_STATUS_CACHED_SCREENNAIL:I = 0x2

.field public static final CACHE_STATUS_CACHING:I = 0x1

.field public static final CACHE_STATUS_NOT_CACHED:I = 0x0

.field public static final INVALID_DATA_VERSION:J = -0x1L

.field public static final MEDIA_TYPE_ALBUM:I = 0xc

.field public static final MEDIA_TYPE_ALL:I = 0x6

.field public static final MEDIA_TYPE_ALL_STRING:Ljava/lang/String; = "all"

.field public static final MEDIA_TYPE_CAMERA:I = 0x14

.field public static final MEDIA_TYPE_CAMERA_STRING:Ljava/lang/String; = "camera"

.field public static final MEDIA_TYPE_IMAGE:I = 0x2

.field public static final MEDIA_TYPE_IMAGE_STRING:Ljava/lang/String; = "image"

.field public static final MEDIA_TYPE_UNKNOWN:I = 0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x4

.field public static final MEDIA_TYPE_VIDEO_CAMERA:I = 0x6

.field public static final MEDIA_TYPE_VIDEO_HDR_VIDEO:I = 0xd

.field public static final MEDIA_TYPE_VIDEO_HIGH_SPEED:I = 0x8

.field public static final MEDIA_TYPE_VIDEO_LOW_SPEED:I = 0xa

.field public static final MEDIA_TYPE_VIDEO_SCREEN_RECORD:I = 0x13

.field public static final MEDIA_TYPE_VIDEO_SHOT_VIDEO:I = 0xb

.field public static final MEDIA_TYPE_VIDEO_STRING:Ljava/lang/String; = "video"

.field public static final MEDIA_TYPE_VIDEO_WIEXIN_VIDEO:I = 0x12

.field public static final SUPPORT_ACTION:I = 0x4000

.field public static final SUPPORT_ALL:I = -0x1

.field public static final SUPPORT_BACK:I = 0x2000

.field public static final SUPPORT_CACHE:I = 0x100

.field public static final SUPPORT_CAMERA_SHORTCUT:I = 0x8000

.field public static final SUPPORT_CROP:I = 0x8

.field public static final SUPPORT_DELETE:I = 0x1

.field public static final SUPPORT_EDIT:I = 0x200

.field public static final SUPPORT_FULL_IMAGE:I = 0x40

.field public static final SUPPORT_INFO:I = 0x400

.field public static final SUPPORT_MUTE:I = 0x10000

.field public static final SUPPORT_PLAY:I = 0x80

.field public static final SUPPORT_PRINT:I = 0x20000

.field public static final SUPPORT_ROTATE:I = 0x2

.field public static final SUPPORT_SETAS:I = 0x20

.field public static final SUPPORT_SHARE:I = 0x4

.field public static final SUPPORT_SHOW_ON_MAP:I = 0x10

.field public static final SUPPORT_TRIM:I = 0x800

.field public static final SUPPORT_UNLOCK:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "MediaObject"

.field private static sVersionSerial:J


# instance fields
.field public continuousCount:I

.field public isBestChoice:Z

.field public isContinuousCover:Z

.field public isSelected:Z

.field protected mDataVersion:J

.field public final mPath:Lcom/zui/gallery/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;J)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/zui/gallery/data/MediaObject;->isSelected:Z

    .line 116
    iput-boolean v0, p0, Lcom/zui/gallery/data/MediaObject;->isBestChoice:Z

    .line 124
    invoke-virtual {p1, p0}, Lcom/zui/gallery/data/Path;->setObject(Lcom/zui/gallery/data/MediaObject;)V

    .line 125
    iput-object p1, p0, Lcom/zui/gallery/data/MediaObject;->mPath:Lcom/zui/gallery/data/Path;

    .line 126
    iput-wide p2, p0, Lcom/zui/gallery/data/MediaObject;->mDataVersion:J

    return-void
.end method

.method public static getTypeFromString(Ljava/lang/String;)I
    .locals 1

    const-string v0, "all"

    .line 197
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "camera"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "image"

    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string/jumbo v0, "video"

    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    .line 200
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const/4 p0, 0x6

    return p0
.end method

.method public static getTypeString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const-string p0, "all"

    return-object p0

    .line 209
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const-string/jumbo p0, "video"

    return-object p0

    :cond_2
    const-string p0, "image"

    return-object p0
.end method

.method public static isVideoType(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static declared-synchronized nextVersionNumber()J
    .locals 5

    const-class v0, Lcom/zui/gallery/data/MediaObject;

    monitor-enter v0

    .line 193
    :try_start_0
    sget-wide v1, Lcom/zui/gallery/data/MediaObject;->sVersionSerial:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/zui/gallery/data/MediaObject;->sVersionSerial:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public cache(I)V
    .locals 0

    .line 189
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clearCachedPanoramaSupport()V
    .locals 0

    return-void
.end method

.method public delete()V
    .locals 1

    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCacheFlag()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCacheSize()J
    .locals 1

    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCacheStatus()I
    .locals 1

    .line 181
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "should implement getContentUri."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaObject"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The object was created from path: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaObject;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDataVersion()J
    .locals 2

    .line 173
    iget-wide v0, p0, Lcom/zui/gallery/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public getDateInMs()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDetails()Lcom/zui/gallery/data/MediaDetails;
    .locals 1

    .line 168
    new-instance v0, Lcom/zui/gallery/data/MediaDetails;

    invoke-direct {v0}, Lcom/zui/gallery/data/MediaDetails;-><init>()V

    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPanoramaSupport(Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-interface {p1, p0, v0, v0}, Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;->panoramaInfoAvailable(Lcom/zui/gallery/data/MediaObject;ZZ)V

    return-void
.end method

.method public getPath()Lcom/zui/gallery/data/Path;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/zui/gallery/data/MediaObject;->mPath:Lcom/zui/gallery/data/Path;

    return-object v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    .line 160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSupportedOperations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isMediaSet()Z
.end method

.method public rotate(I)V
    .locals 0

    .line 149
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
