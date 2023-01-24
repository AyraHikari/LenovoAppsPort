.class public Lcom/zui/gallery/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/zui/gallery/app/StitchingChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/DataManager$NotifyBroker;,
        Lcom/zui/gallery/data/DataManager$LocalTimeDateTakenComparator;,
        Lcom/zui/gallery/data/DataManager$DateTakenComparator;
    }
.end annotation


# static fields
.field public static final INCLUDE_ALL:I = 0x3

.field public static final INCLUDE_CAMERA_PREVIEW:I = 0x12

.field public static final INCLUDE_IMAGE:I = 0x1

.field public static final INCLUDE_IMAGE_VIDEO_ALL_FOR_THRED_VIEW:I = 0x14

.field public static final INCLUDE_LOCAL_ALL_EXTRADIRS:I = 0x15

.field public static final INCLUDE_LOCAL_ALL_IMAGE_ONLY_MORE:I = 0xe

.field public static final INCLUDE_LOCAL_ALL_ONLY:I = 0x7

.field public static final INCLUDE_LOCAL_ALL_ONLY_MORE:I = 0xc

.field public static final INCLUDE_LOCAL_ALL_VIDEO_ONLY_MORE:I = 0x10

.field public static final INCLUDE_LOCAL_CAMERA:I = 0xa

.field public static final INCLUDE_LOCAL_IMAGE_DIR:I = 0x8

.field public static final INCLUDE_LOCAL_IMAGE_ONLY:I = 0x5

.field public static final INCLUDE_LOCAL_ONLY:I = 0x4

.field public static final INCLUDE_LOCAL_VIDEO_DIR:I = 0x9

.field public static final INCLUDE_LOCAL_VIDEO_ONLY:I = 0x6

.field public static final INCLUDE_SCURE_CAMERA:I = 0xb

.field public static final INCLUDE_TIME_ALL_SET:I = 0x16

.field public static final INCLUDE_VIDEO:I = 0x2

.field public static final INCLUDE_VIDEO_IMAGE_ALL:I = 0x13

.field public static final LOCAL_ALL_FOR_THRID_VIEW:Ljava/lang/String; = "/local/all/third/*"

.field public static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "DataManager"

.field public static final TOP_LOCAL_ALBUMES_ALL:Ljava/lang/String; = "/local/album/all"

.field public static final TOP_LOCAL_ALBUMES_ALL_IMAGE:Ljava/lang/String; = "/local/album/all/image"

.field public static final TOP_LOCAL_ALBUMES_ALL_VIDEO:Ljava/lang/String; = "/local/album/all/video"

.field public static final TOP_LOCAL_CAMERA_PREVIEW_SET_PATH:Ljava/lang/String; = "/local/camera-preivew"

.field private static final TOP_LOCAL_CAMERA_SET_PATH:Ljava/lang/String; = "/local/camera"

.field public static final TOP_LOCAL_DIR_PATH_EXTRA:Ljava/lang/String; = "/local/all/moredirs"

.field public static final TOP_LOCAL_IMAGE_DIR_PATH:Ljava/lang/String; = "/local/image/dir"

.field public static final TOP_LOCAL_IMAGE_MORE_SET_PATH:Ljava/lang/String; = "/local/image/all/more"

.field public static final TOP_LOCAL_IMAGE_SET_PATH:Ljava/lang/String; = "/local/image"

.field private static final TOP_LOCAL_MORE_SET_PATH:Ljava/lang/String; = "/local/all/more"

.field private static final TOP_LOCAL_SET_PATH:Ljava/lang/String; = "/local/all"

.field private static final TOP_LOCAL_TIME_ALL_SET_PATH:Ljava/lang/String; = "/local/timeall"

.field public static final TOP_LOCAL_TIME_PATH_EXTRA:Ljava/lang/String; = "/local/timeall"

.field public static final TOP_LOCAL_VIDEO_DIR_PATH:Ljava/lang/String; = "/local/video/dir"

.field public static final TOP_LOCAL_VIDEO_MORE_SET_PATH:Ljava/lang/String; = "/local/video/all/more"

.field public static final TOP_LOCAL_VIDEO_SET_PATH:Ljava/lang/String; = "/local/video"

.field private static final TOP_SECURE_MORE_SET_PATH:Ljava/lang/String; = "/secure/all"

.field public static final sDateTakenComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final sLocalTimeDateTakenComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/zui/gallery/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveCount:I

.field private mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private final mDefaultMainHandler:Landroid/os/Handler;

.field private mNotifierMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lcom/zui/gallery/data/DataManager$NotifyBroker;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/zui/gallery/data/MediaSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    .line 154
    new-instance v0, Lcom/zui/gallery/data/DataManager$DateTakenComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/gallery/data/DataManager$DateTakenComparator;-><init>(Lcom/zui/gallery/data/DataManager$1;)V

    sput-object v0, Lcom/zui/gallery/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 157
    new-instance v0, Lcom/zui/gallery/data/DataManager$LocalTimeDateTakenComparator;

    invoke-direct {v0, v1}, Lcom/zui/gallery/data/DataManager$LocalTimeDateTakenComparator;-><init>(Lcom/zui/gallery/data/DataManager$1;)V

    sput-object v0, Lcom/zui/gallery/data/DataManager;->sLocalTimeDateTakenComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;)V
    .locals 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 189
    iput v0, p0, Lcom/zui/gallery/data/DataManager;->mActiveCount:I

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    .line 195
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    .line 199
    iput-object p1, p0, Lcom/zui/gallery/data/DataManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zui/gallery/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/zui/gallery/data/DataManager;
    .locals 0

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/app/GalleryApp;

    .line 107
    invoke-interface {p0}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method addSource(Lcom/zui/gallery/data/MediaSource;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSource;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public delete(Lcom/zui/gallery/data/Path;)V
    .locals 0

    .line 370
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaObject;->delete()V

    return-void
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/data/Path;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/MediaSource;

    .line 391
    invoke-virtual {v2, p1, p2}, Lcom/zui/gallery/data/MediaSource;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;
    .locals 1

    .line 378
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 381
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultSetOf(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/Path;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaSource;

    if-nez v1, :cond_1

    goto :goto_0

    .line 404
    :cond_1
    invoke-virtual {v1, p1}, Lcom/zui/gallery/data/MediaSource;->getDefaultSetOf(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;
    .locals 9

    .line 276
    sget-object v0, Lcom/zui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_0
    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->getObject()Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 279
    monitor-exit v0

    return-object v1

    :cond_0
    const-string v1, "TAG"

    const-string v2, "getMediaObject = null, to get!!"

    .line 281
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/local/camera/fakevideo"

    .line 282
    invoke-virtual {p1, v1}, Lcom/zui/gallery/data/Path;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    new-instance p1, Lcom/zui/gallery/data/LocalGroupAlbum;

    const-string v1, "/local/camera/fakevideo"

    invoke-static {v1}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/gallery/data/DataManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    const/4 v5, 0x1

    const/4 v6, 0x4

    const-string v7, "FakeVideoSet"

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/zui/gallery/data/LocalGroupAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object p1

    .line 287
    :cond_1
    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 289
    iget-object v2, p0, Lcom/zui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaSource;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "DataManager"

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find media source for path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v2

    .line 295
    :cond_2
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/zui/gallery/data/MediaSource;->createMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v3, "DataManager"

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot create media object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    :cond_3
    :try_start_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    const-string v3, "DataManager"

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception in creating media object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception p1

    .line 304
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getMediaObject(Ljava/lang/String;)Lcom/zui/gallery/data/MediaObject;
    .locals 0

    .line 308
    invoke-static {p1}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    return-object p1
.end method

.method public getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 312
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaSet;

    return-object p1
.end method

.method public getMediaSet(Ljava/lang/String;)Lcom/zui/gallery/data/MediaSet;
    .locals 0

    .line 316
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaSet;

    return-object p1
.end method

.method public getMediaSetsFromString(Ljava/lang/String;)[Lcom/zui/gallery/data/MediaSet;
    .locals 4

    .line 320
    invoke-static {p1}, Lcom/zui/gallery/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 321
    array-length v0, p1

    .line 322
    new-array v1, v0, [Lcom/zui/gallery/data/MediaSet;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 324
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getMediaType(Lcom/zui/gallery/data/Path;)I
    .locals 0

    .line 385
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaObject;->getMediaType()I

    move-result p1

    return p1
.end method

.method public getPanoramaSupport(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;)V
    .locals 0

    .line 366
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/zui/gallery/data/MediaObject;->getPanoramaSupport(Lcom/zui/gallery/data/MediaObject$PanoramaSupportCallback;)V

    return-void
.end method

.method public getSupportedOperations(Lcom/zui/gallery/data/Path;)I
    .locals 0

    .line 362
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaObject;->getSupportedOperations()I

    move-result p1

    return p1
.end method

.method public getTopSetPath(I)Ljava/lang/String;
    .locals 2

    const-string v0, "/local/camera"

    const-string v1, "/local/all"

    packed-switch p1, :pswitch_data_0

    .line 254
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_1
    const-string p1, "/local/timeall"

    return-object p1

    :pswitch_2
    const-string p1, "/local/all/moredirs"

    return-object p1

    :pswitch_3
    const-string p1, "/local/album/all"

    return-object p1

    :pswitch_4
    return-object v0

    :pswitch_5
    const-string p1, "/local/video/all/more"

    return-object p1

    :pswitch_6
    const-string p1, "/local/image/all/more"

    return-object p1

    :pswitch_7
    const-string p1, "/local/all/more"

    return-object p1

    :pswitch_8
    const-string p1, "/secure/all"

    return-object p1

    :pswitch_9
    return-object v0

    :pswitch_a
    const-string p1, "/local/video/dir"

    return-object p1

    :pswitch_b
    const-string p1, "/local/image/dir"

    return-object p1

    :pswitch_c
    return-object v1

    :pswitch_d
    const-string p1, "/local/video"

    return-object p1

    :pswitch_e
    const-string p1, "/local/image"

    return-object p1

    :pswitch_f
    return-object v1

    :pswitch_10
    const-string p1, "/local/album/all/video"

    return-object p1

    :pswitch_11
    const-string p1, "/local/album/all/image"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getTotalTargetCacheSize()J
    .locals 5

    .line 420
    iget-object v0, p0, Lcom/zui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/MediaSource;

    .line 421
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSource;->getTotalTargetCacheSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getTotalUsedCacheSize()J
    .locals 5

    .line 410
    iget-object v0, p0, Lcom/zui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/MediaSource;

    .line 411
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSource;->getTotalUsedCacheSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public declared-synchronized initializeSourceMap()V
    .locals 2

    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 207
    :cond_0
    :try_start_1
    new-instance v0, Lcom/zui/gallery/data/LocalSource;

    iget-object v1, p0, Lcom/zui/gallery/data/DataManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v0, v1}, Lcom/zui/gallery/data/LocalSource;-><init>(Lcom/zui/gallery/app/GalleryApp;)V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/data/DataManager;->addSource(Lcom/zui/gallery/data/MediaSource;)V

    .line 208
    new-instance v0, Lcom/zui/gallery/picasasource/PicasaSource;

    iget-object v1, p0, Lcom/zui/gallery/data/DataManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v0, v1}, Lcom/zui/gallery/picasasource/PicasaSource;-><init>(Lcom/zui/gallery/app/GalleryApp;)V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/data/DataManager;->addSource(Lcom/zui/gallery/data/MediaSource;)V

    .line 209
    new-instance v0, Lcom/zui/gallery/data/ComboSource;

    iget-object v1, p0, Lcom/zui/gallery/data/DataManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v0, v1}, Lcom/zui/gallery/data/ComboSource;-><init>(Lcom/zui/gallery/app/GalleryApp;)V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/data/DataManager;->addSource(Lcom/zui/gallery/data/MediaSource;)V

    .line 210
    new-instance v0, Lcom/zui/gallery/data/ClusterSource;

    iget-object v1, p0, Lcom/zui/gallery/data/DataManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v0, v1}, Lcom/zui/gallery/data/ClusterSource;-><init>(Lcom/zui/gallery/app/GalleryApp;)V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/data/DataManager;->addSource(Lcom/zui/gallery/data/MediaSource;)V

    .line 211
    new-instance v0, Lcom/zui/gallery/data/FilterSource;

    iget-object v1, p0, Lcom/zui/gallery/data/DataManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v0, v1}, Lcom/zui/gallery/data/FilterSource;-><init>(Lcom/zui/gallery/app/GalleryApp;)V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/data/DataManager;->addSource(Lcom/zui/gallery/data/MediaSource;)V

    .line 212
    new-instance v0, Lcom/zui/gallery/data/SecureSource;

    iget-object v1, p0, Lcom/zui/gallery/data/DataManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v0, v1}, Lcom/zui/gallery/data/SecureSource;-><init>(Lcom/zui/gallery/app/GalleryApp;)V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/data/DataManager;->addSource(Lcom/zui/gallery/data/MediaSource;)V

    .line 213
    new-instance v0, Lcom/zui/gallery/data/UriSource;

    iget-object v1, p0, Lcom/zui/gallery/data/DataManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v0, v1}, Lcom/zui/gallery/data/UriSource;-><init>(Lcom/zui/gallery/app/GalleryApp;)V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/data/DataManager;->addSource(Lcom/zui/gallery/data/MediaSource;)V

    .line 214
    new-instance v0, Lcom/zui/gallery/data/SnailSource;

    iget-object v1, p0, Lcom/zui/gallery/data/DataManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v0, v1}, Lcom/zui/gallery/data/SnailSource;-><init>(Lcom/zui/gallery/app/GalleryApp;)V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/data/DataManager;->addSource(Lcom/zui/gallery/data/MediaSource;)V

    .line 215
    new-instance v0, Lcom/zui/gallery/data/CloudSource;

    iget-object v1, p0, Lcom/zui/gallery/data/DataManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v0, v1}, Lcom/zui/gallery/data/CloudSource;-><init>(Lcom/zui/gallery/app/GalleryApp;)V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/data/DataManager;->addSource(Lcom/zui/gallery/data/MediaSource;)V

    .line 217
    iget v0, p0, Lcom/zui/gallery/data/DataManager;->mActiveCount:I

    if-lez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/zui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaSource;

    .line 219
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSource;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/zui/gallery/data/MediaSet$ItemConsumer;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;",
            "Lcom/zui/gallery/data/MediaSet$ItemConsumer;",
            "I)V"
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 340
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 342
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/Path;

    .line 343
    invoke-virtual {v3}, Lcom/zui/gallery/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 344
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 346
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_0
    new-instance v4, Lcom/zui/gallery/data/MediaSource$PathId;

    add-int v6, v2, p3

    invoke-direct {v4, v3, v6}, Lcom/zui/gallery/data/MediaSource$PathId;-><init>(Lcom/zui/gallery/data/Path;I)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 354
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 355
    iget-object v1, p0, Lcom/zui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaSource;

    .line 356
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {v0, p3, p2}, Lcom/zui/gallery/data/MediaSource;->mapMediaItems(Ljava/util/ArrayList;Lcom/zui/gallery/data/MediaSet$ItemConsumer;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public moveToParentFolder(Lcom/zui/gallery/data/Path;)Ljava/lang/String;
    .locals 5

    .line 522
    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd_HHmmss_SSSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 525
    new-instance v2, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMG_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Continuous"

    .line 527
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 532
    instance-of v2, p1, Lcom/zui/gallery/data/LocalImage;

    if-eqz v2, :cond_1

    .line 533
    check-cast p1, Lcom/zui/gallery/data/LocalImage;

    .line 534
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 544
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 550
    invoke-static {v0, p1}, Lcom/zui/gallery/util/GalleryUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public onStitchingProgress(Landroid/net/Uri;I)V
    .locals 0

    return-void
.end method

.method public onStitchingQueued(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onStitchingResult(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 506
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 508
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 510
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaObject;->clearCachedPanoramaSupport()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 454
    iget v0, p0, Lcom/zui/gallery/data/DataManager;->mActiveCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zui/gallery/data/DataManager;->mActiveCount:I

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/zui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaSource;

    .line 456
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSource;->pause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;
    .locals 0

    .line 272
    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->getObject()Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    return-object p1
.end method

.method public registerChangeNotifier(Landroid/net/Uri;Lcom/zui/gallery/data/ChangeNotifier;)V
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/zui/gallery/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/DataManager$NotifyBroker;

    if-nez v1, :cond_0

    .line 431
    new-instance v1, Lcom/zui/gallery/data/DataManager$NotifyBroker;

    iget-object v2, p0, Lcom/zui/gallery/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/zui/gallery/data/DataManager$NotifyBroker;-><init>(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :try_start_1
    iget-object v2, p0, Lcom/zui/gallery/data/DataManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    .line 434
    invoke-virtual {v2, p1, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    :try_start_2
    iget-object v2, p0, Lcom/zui/gallery/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    .line 436
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 437
    monitor-exit v0

    return-void

    .line 441
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 442
    invoke-virtual {v1, p2}, Lcom/zui/gallery/data/DataManager$NotifyBroker;->registerNotifier(Lcom/zui/gallery/data/ChangeNotifier;)V

    return-void

    :catchall_0
    move-exception p1

    .line 441
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public resume()V
    .locals 2

    .line 446
    iget v0, p0, Lcom/zui/gallery/data/DataManager;->mActiveCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/data/DataManager;->mActiveCount:I

    if-ne v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/zui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaSource;

    .line 448
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSource;->resume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public rotate(Lcom/zui/gallery/data/Path;I)V
    .locals 0

    .line 374
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/zui/gallery/data/MediaObject;->rotate(I)V

    return-void
.end method

.method public scanFilePath(Ljava/lang/String;)V
    .locals 2

    .line 557
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 558
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 559
    iget-object p1, p0, Lcom/zui/gallery/data/DataManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
