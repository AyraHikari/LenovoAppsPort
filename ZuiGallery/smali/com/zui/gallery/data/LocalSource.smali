.class public Lcom/zui/gallery/data/LocalSource;
.super Lcom/zui/gallery/data/MediaSource;
.source "LocalSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/LocalSource$IdComparator;
    }
.end annotation


# static fields
.field public static final KEY_BUCKET_ID:Ljava/lang/String; = "bucketId"

.field private static final LOCAL_ALL_ALBUM:I = 0x7

.field private static final LOCAL_ALL_ALBUMSET:I = 0x6

.field private static final LOCAL_ALL_ALBUMSET_ADD:I = 0x10

.field private static final LOCAL_ALL_ALBUMSET_EXTRADIRS:I = 0xe

.field private static final LOCAL_ALL_ALBUMSET_IMAGE_MORE:I = 0xa

.field private static final LOCAL_ALL_ALBUMSET_MORE:I = 0x9

.field private static final LOCAL_ALL_ALBUMSET_VIDEO_MORE:I = 0xb

.field private static final LOCAL_ALL_ALBUM_IMAGE_DIR:I = 0xc

.field private static final LOCAL_ALL_ALBUM_VIDEO_DIR:I = 0xd

.field private static final LOCAL_CAMERA_ALBUM:I = 0x8

.field private static final LOCAL_IMAGE_ALBUM:I = 0x2

.field private static final LOCAL_IMAGE_ALBUMSET:I = 0x0

.field private static final LOCAL_IMAGE_ITEM:I = 0x4

.field private static final LOCAL_TIME_ALL_ALBUM:I = 0xf

.field private static final LOCAL_VIDEO_ALBUM:I = 0x3

.field private static final LOCAL_VIDEO_ALBUMSET:I = 0x1

.field private static final LOCAL_VIDEO_ITEM:I = 0x5

.field private static final MEDIA_TYPE_ALL:I = 0x0

.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_VIDEO:I = 0x4

.field private static final NO_MATCH:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LocalSource"

.field public static final sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/zui/gallery/data/MediaSource$PathId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mClient:Landroid/content/ContentProviderClient;

.field private mMatcher:Lcom/zui/gallery/data/PathMatcher;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/zui/gallery/data/LocalSource$IdComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/gallery/data/LocalSource$IdComparator;-><init>(Lcom/zui/gallery/data/LocalSource$1;)V

    sput-object v0, Lcom/zui/gallery/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;)V
    .locals 7

    const-string v0, "local"

    .line 77
    invoke-direct {p0, v0}, Lcom/zui/gallery/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    .line 78
    iput-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 79
    new-instance p1, Lcom/zui/gallery/data/PathMatcher;

    invoke-direct {p1}, Lcom/zui/gallery/data/PathMatcher;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/image"

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 81
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/video"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 82
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/all"

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 87
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/album/all"

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 91
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/all/third/*"

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 93
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/image/*"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 94
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/video/*"

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 95
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/all/*"

    const/4 v3, 0x7

    invoke-virtual {p1, v0, v3}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 96
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/image/item/*"

    const/4 v4, 0x4

    invoke-virtual {p1, v0, v4}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 97
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/video/item/*"

    const/4 v5, 0x5

    invoke-virtual {p1, v0, v5}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 99
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/camera/*"

    const/16 v6, 0x8

    invoke-virtual {p1, v0, v6}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 101
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/camera-preivew/*"

    const/16 v6, 0x12

    invoke-virtual {p1, v0, v6}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 103
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v0, "media"

    const-string v6, "external/images/media/#"

    invoke-virtual {p1, v0, v6, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v6, "external/video/media/#"

    invoke-virtual {p1, v0, v6, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v6, "external_primary/images/media/#"

    invoke-virtual {p1, v0, v6, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v4, "external_primary/video/media/#"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v4, "external/images/media"

    invoke-virtual {p1, v0, v4, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "external/video/media"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "external/file"

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/all/more"

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 122
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/all/albumsetadd"

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 125
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/album/all/image"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 126
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/album/all/video"

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 128
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/image/dir"

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 129
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/video/dir"

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 130
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/all/moredirs"

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 131
    iget-object p1, p0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/local/timeall/*"

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method

.method private getAlbumPath(Landroid/net/Uri;I)Lcom/zui/gallery/data/Path;
    .locals 2

    const-string v0, "mediaTypes"

    .line 300
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {v0, p2}, Lcom/zui/gallery/data/LocalSource;->getMediaType(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "bucketId"

    .line 302
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 305
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string p2, "/local/all"

    .line 316
    invoke-static {p2}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "/local/video"

    .line 314
    invoke-static {p2}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p2, "/local/image"

    .line 312
    invoke-static {p2}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p2

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid bucket id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalSource"

    invoke-static {v0, p1, p2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private static getMediaType(Ljava/lang/String;I)I
    .locals 3

    if-nez p0, :cond_0

    return p1

    .line 284
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v0, p0, 0x5

    if-eqz v0, :cond_1

    return p0

    :catch_0
    move-exception v0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LocalSource"

    invoke-static {v1, p0, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return p1
.end method

.method private processMapMediaItems(Ljava/util/ArrayList;Lcom/zui/gallery/data/MediaSet$ItemConsumer;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaSource$PathId;",
            ">;",
            "Lcom/zui/gallery/data/MediaSet$ItemConsumer;",
            "Z)V"
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/zui/gallery/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 383
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 385
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/MediaSource$PathId;

    .line 388
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 389
    iget-object v2, v2, Lcom/zui/gallery/data/MediaSource$PathId;->path:Lcom/zui/gallery/data/Path;

    invoke-virtual {v2}, Lcom/zui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 390
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v1, 0x1

    :goto_1
    if-ge v4, v0, :cond_1

    .line 394
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/MediaSource$PathId;

    .line 395
    iget-object v5, v5, Lcom/zui/gallery/data/MediaSource$PathId;->path:Lcom/zui/gallery/data/Path;

    invoke-virtual {v5}, Lcom/zui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int v6, v5, v2

    const/16 v7, 0x1f4

    if-lt v6, v7, :cond_0

    goto :goto_2

    .line 399
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 402
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/zui/gallery/data/LocalSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-static {v2, p3, v3}, Lcom/zui/gallery/data/LocalAlbum;->getMediaItemById(Lcom/zui/gallery/app/GalleryApp;ZLjava/util/ArrayList;)[Lcom/zui/gallery/data/MediaItem;

    move-result-object v2

    move v3, v1

    :goto_3
    if-ge v3, v4, :cond_2

    .line 405
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/MediaSource$PathId;

    .line 406
    iget v5, v5, Lcom/zui/gallery/data/MediaSource$PathId;->id:I

    sub-int v6, v3, v1

    aget-object v6, v2, v6

    invoke-interface {p2, v5, v6}, Lcom/zui/gallery/data/MediaSet$ItemConsumer;->consume(ILcom/zui/gallery/data/MediaItem;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 136
    iget-object v6, v0, Lcom/zui/gallery/data/LocalSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 138
    iget-object v1, v0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/PathMatcher;->match(Lcom/zui/gallery/data/Path;)I

    move-result v1

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move-object v7, v0

    .line 277
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :pswitch_1
    iget-object v1, v0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v1, v9}, Lcom/zui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v1

    .line 181
    invoke-interface {v6}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v3

    .line 182
    new-instance v4, Lcom/zui/gallery/data/LocalAlbumThridView;

    sget-object v5, Lcom/zui/gallery/data/LocalAlbumThridView;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    invoke-virtual {v5, v1}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v5

    iget-object v10, v0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v10, v9}, Lcom/zui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v10

    invoke-direct {v4, v5, v6, v10, v8}, Lcom/zui/gallery/data/LocalAlbumThridView;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IZ)V

    .line 184
    sget-object v5, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    .line 185
    invoke-virtual {v5, v1}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v5

    .line 184
    invoke-virtual {v3, v5}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/MediaSet;

    .line 186
    sget-object v5, Lcom/zui/gallery/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 187
    new-instance v6, Lcom/zui/gallery/data/LocalMergeAlbum;

    new-array v7, v7, [Lcom/zui/gallery/data/MediaSet;

    aput-object v4, v7, v9

    aput-object v3, v7, v8

    invoke-direct {v6, v2, v5, v7, v1}, Lcom/zui/gallery/data/LocalMergeAlbum;-><init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;[Lcom/zui/gallery/data/MediaSet;I)V

    return-object v6

    .line 150
    :pswitch_2
    new-instance v1, Lcom/zui/gallery/data/LocalAlbumAddSet;

    const-string v2, "/local/all/albumsetadd"

    invoke-static {v2}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v2

    iget-object v3, v0, Lcom/zui/gallery/data/LocalSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v1, v2, v3}, Lcom/zui/gallery/data/LocalAlbumAddSet;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V

    return-object v1

    .line 223
    :pswitch_3
    iget-object v1, v0, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v1, v9}, Lcom/zui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v10

    .line 224
    invoke-interface {v6}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    .line 225
    sget-object v11, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    sget v12, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    .line 226
    invoke-virtual {v11, v12}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v11

    .line 225
    invoke-virtual {v1, v11}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v11

    check-cast v11, Lcom/zui/gallery/data/MediaSet;

    .line 227
    sget-object v12, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    sget v13, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    .line 228
    invoke-virtual {v12, v13}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v12

    .line 227
    invoke-virtual {v1, v12}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v12

    check-cast v12, Lcom/zui/gallery/data/MediaSet;

    .line 229
    sget-object v13, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    sget v14, Lcom/zui/gallery/util/MediaSetUtils;->SCREENRECORDER_VIDEO_ID:I

    .line 230
    invoke-virtual {v13, v14}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v13

    .line 229
    invoke-virtual {v1, v13}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v13

    check-cast v13, Lcom/zui/gallery/data/MediaSet;

    .line 231
    sget-object v14, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    sget v15, Lcom/zui/gallery/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    .line 232
    invoke-virtual {v14, v15}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v14

    .line 231
    invoke-virtual {v1, v14}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v14

    check-cast v14, Lcom/zui/gallery/data/MediaSet;

    .line 233
    sget-object v15, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_ALL:Lcom/zui/gallery/data/Path;

    sget v5, Lcom/zui/gallery/util/MediaSetUtils;->HIGHLIGHT_BUCKET_ID:I

    .line 234
    invoke-virtual {v15, v5}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v5

    .line 233
    invoke-virtual {v1, v5}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/MediaSet;

    .line 235
    sget-object v15, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_ALL:Lcom/zui/gallery/data/Path;

    sget v3, Lcom/zui/gallery/util/MediaSetUtils;->CUSTOMIZATION_BUCKET_ID:I

    .line 236
    invoke-virtual {v15, v3}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v3

    .line 235
    invoke-virtual {v1, v3}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/MediaSet;

    .line 237
    sget-object v15, Lcom/zui/gallery/data/CloudSource;->PATH_ALBUM:Lcom/zui/gallery/data/Path;

    const-string v4, "Camera"

    .line 238
    invoke-virtual {v15, v4}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v4

    .line 237
    invoke-virtual {v1, v4}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/MediaSet;

    .line 239
    sget-object v15, Lcom/zui/gallery/data/CloudSource;->PATH_ALBUM:Lcom/zui/gallery/data/Path;

    const-string v7, "Screenshots"

    .line 240
    invoke-virtual {v15, v7}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v7

    .line 239
    invoke-virtual {v1, v7}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v7

    check-cast v7, Lcom/zui/gallery/data/MediaSet;

    .line 241
    sget-object v15, Lcom/zui/gallery/data/CloudSource;->PATH_ALBUM:Lcom/zui/gallery/data/Path;

    const-string v8, "screenrecorder"

    .line 242
    invoke-virtual {v15, v8}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v8

    .line 241
    invoke-virtual {v1, v8}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v8

    check-cast v8, Lcom/zui/gallery/data/MediaSet;

    .line 243
    sget-object v15, Lcom/zui/gallery/data/CloudSource;->PATH_ALBUM:Lcom/zui/gallery/data/Path;

    const-string v9, "Highlight"

    .line 244
    invoke-virtual {v15, v9}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v9

    .line 243
    invoke-virtual {v1, v9}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v9

    check-cast v9, Lcom/zui/gallery/data/MediaSet;

    .line 247
    sget-object v15, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    sget v2, Lcom/zui/gallery/util/MediaSetUtils;->SD_CAMERA_BUCKET_ID:I

    .line 248
    invoke-virtual {v15, v2}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v2

    .line 247
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/MediaSet;

    .line 249
    sget-object v15, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    move-object/from16 v17, v6

    sget v6, Lcom/zui/gallery/util/MediaSetUtils;->SD_CAMERA_BUCKET_ID:I

    .line 250
    invoke-virtual {v15, v6}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v6

    .line 249
    invoke-virtual {v1, v6}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaSet;

    .line 252
    new-instance v6, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;

    sget-object v15, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_CONTINUOUS_ALL:Lcom/zui/gallery/data/Path;

    move/from16 v18, v10

    iget-object v10, v0, Lcom/zui/gallery/data/LocalSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v6, v15, v10}, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V

    .line 253
    sget-object v10, Lcom/zui/gallery/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 254
    new-instance v15, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/zui/gallery/data/MediaSet;

    const/16 v16, 0x0

    aput-object v11, v0, v16

    const/4 v11, 0x1

    aput-object v12, v0, v11

    const/4 v11, 0x2

    aput-object v2, v0, v11

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object v14, v0, v1

    const/4 v1, 0x5

    aput-object v13, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v4, v0, v1

    const/16 v1, 0x9

    aput-object v7, v0, v1

    const/16 v1, 0xa

    aput-object v8, v0, v1

    const/16 v1, 0xb

    aput-object v9, v0, v1

    const/16 v1, 0xc

    aput-object v6, v0, v1

    move-object v1, v15

    move-object/from16 v2, p1

    move-object v3, v10

    move-object v4, v0

    move/from16 v5, v18

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;-><init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;[Lcom/zui/gallery/data/MediaSet;ILcom/zui/gallery/app/GalleryApp;)V

    return-object v15

    .line 153
    :pswitch_4
    new-instance v0, Lcom/zui/gallery/data/LocalAlbumSetMore;

    move-object/from16 v7, p0

    iget-object v1, v7, Lcom/zui/gallery/data/LocalSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Lcom/zui/gallery/data/LocalAlbumSetMore;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V

    return-object v0

    :pswitch_5
    move-object v7, v0

    .line 158
    new-instance v0, Lcom/zui/gallery/data/LocalMergeAllAlbum;

    sget-object v1, Lcom/zui/gallery/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    iget-object v3, v7, Lcom/zui/gallery/data/LocalSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v0, v2, v1, v3}, Lcom/zui/gallery/data/LocalMergeAllAlbum;-><init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;Lcom/zui/gallery/app/GalleryApp;)V

    return-object v0

    :pswitch_6
    move-object v7, v0

    move-object/from16 v17, v6

    .line 196
    iget-object v0, v7, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v5

    .line 197
    invoke-interface/range {v17 .. v17}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    .line 198
    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    .line 199
    invoke-virtual {v1, v5}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaSet;

    .line 200
    sget-object v3, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    .line 201
    invoke-virtual {v3, v5}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v3

    .line 200
    invoke-virtual {v0, v3}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/MediaSet;

    .line 203
    sget-object v4, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    sget v6, Lcom/zui/gallery/util/MediaSetUtils;->SD_CAMERA_BUCKET_ID:I

    .line 204
    invoke-virtual {v4, v6}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v4

    .line 203
    invoke-virtual {v0, v4}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/MediaSet;

    .line 205
    sget-object v6, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    sget v8, Lcom/zui/gallery/util/MediaSetUtils;->SD_CAMERA_BUCKET_ID:I

    .line 206
    invoke-virtual {v6, v8}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v6

    .line 205
    invoke-virtual {v0, v6}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaSet;

    .line 213
    new-instance v6, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;

    sget-object v8, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_CONTINUOUS_ALL:Lcom/zui/gallery/data/Path;

    iget-object v9, v7, Lcom/zui/gallery/data/LocalSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v6, v8, v9}, Lcom/zui/gallery/data/localtime/LocalTimeContinuousAlbumSet;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V

    .line 214
    sget-object v8, Lcom/zui/gallery/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 215
    new-instance v9, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/zui/gallery/data/MediaSet;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v1, 0x1

    aput-object v3, v10, v1

    const/4 v1, 0x2

    aput-object v4, v10, v1

    const/4 v1, 0x3

    aput-object v0, v10, v1

    const/4 v0, 0x4

    aput-object v6, v10, v0

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v4, v10

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;-><init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;[Lcom/zui/gallery/data/MediaSet;ILcom/zui/gallery/app/GalleryApp;)V

    return-object v9

    :pswitch_7
    move-object v7, v0

    move-object/from16 v17, v6

    .line 168
    iget-object v0, v7, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v0

    .line 169
    invoke-interface/range {v17 .. v17}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    .line 170
    sget-object v3, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    .line 171
    invoke-virtual {v3, v0}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v3

    .line 170
    invoke-virtual {v1, v3}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/MediaSet;

    .line 172
    sget-object v4, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    .line 173
    invoke-virtual {v4, v0}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v4

    .line 172
    invoke-virtual {v1, v4}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaSet;

    .line 174
    sget-object v4, Lcom/zui/gallery/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 175
    new-instance v5, Lcom/zui/gallery/data/LocalMergeAlbum;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/zui/gallery/data/MediaSet;

    const/4 v8, 0x0

    aput-object v3, v6, v8

    const/4 v3, 0x1

    aput-object v1, v6, v3

    invoke-direct {v5, v2, v4, v6, v0}, Lcom/zui/gallery/data/LocalMergeAlbum;-><init>(Lcom/zui/gallery/data/Path;Ljava/util/Comparator;[Lcom/zui/gallery/data/MediaSet;I)V

    return-object v5

    :pswitch_8
    move-object v7, v0

    move v8, v9

    .line 221
    new-instance v0, Lcom/zui/gallery/data/LocalVideo;

    iget-object v1, v7, Lcom/zui/gallery/data/LocalSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    iget-object v3, v7, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v3, v8}, Lcom/zui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/zui/gallery/data/LocalVideo;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;I)V

    return-object v0

    :pswitch_9
    move-object v7, v0

    move v8, v9

    .line 219
    new-instance v0, Lcom/zui/gallery/data/LocalImage;

    iget-object v1, v7, Lcom/zui/gallery/data/LocalSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    iget-object v3, v7, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v3, v8}, Lcom/zui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/zui/gallery/data/LocalImage;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;I)V

    return-object v0

    :pswitch_a
    move-object v7, v0

    move-object/from16 v17, v6

    move v8, v9

    .line 166
    new-instance v0, Lcom/zui/gallery/data/LocalAlbum;

    iget-object v1, v7, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v1, v8}, Lcom/zui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v1

    move-object/from16 v3, v17

    invoke-direct {v0, v2, v3, v1, v8}, Lcom/zui/gallery/data/LocalAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IZ)V

    return-object v0

    :pswitch_b
    move-object v7, v0

    move-object v3, v6

    move v8, v9

    .line 164
    new-instance v0, Lcom/zui/gallery/data/LocalAlbum;

    iget-object v1, v7, Lcom/zui/gallery/data/LocalSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v1, v8}, Lcom/zui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v1

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/zui/gallery/data/LocalAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;IZ)V

    return-object v0

    :pswitch_c
    move-object v7, v0

    .line 148
    new-instance v0, Lcom/zui/gallery/data/LocalAlbumSet;

    iget-object v1, v7, Lcom/zui/gallery/data/LocalSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v0, v2, v1}, Lcom/zui/gallery/data/LocalAlbumSet;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_7
        :pswitch_6
        :pswitch_c
        :pswitch_5
        :pswitch_5
        :pswitch_c
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/data/Path;
    .locals 5

    const/4 p2, 0x0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v1, :cond_5

    const-wide/16 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 339
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/zui/gallery/data/Path;

    move-result-object p1

    return-object p1

    .line 329
    :cond_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-ltz v2, :cond_2

    .line 330
    sget-object v2, Lcom/zui/gallery/data/LocalVideo;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    invoke-virtual {v2, v0, v1}, Lcom/zui/gallery/data/Path;->getChild(J)Lcom/zui/gallery/data/Path;

    move-result-object p2

    :cond_2
    return-object p2

    .line 325
    :cond_3
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-ltz v2, :cond_4

    .line 326
    sget-object v2, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    invoke-virtual {v2, v0, v1}, Lcom/zui/gallery/data/Path;->getChild(J)Lcom/zui/gallery/data/Path;

    move-result-object p2

    :cond_4
    return-object p2

    .line 336
    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/zui/gallery/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/zui/gallery/data/Path;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 v0, 0x1

    .line 333
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/zui/gallery/data/Path;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LocalSource"

    invoke-static {v1, p1, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p2
.end method

.method public getDefaultSetOf(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/Path;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/zui/gallery/data/LocalSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    .line 351
    instance-of v0, p1, Lcom/zui/gallery/data/LocalMediaItem;

    if-eqz v0, :cond_0

    const-string v0, "/local/all"

    .line 352
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    check-cast p1, Lcom/zui/gallery/data/LocalMediaItem;

    .line 353
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalMediaItem;->getBucketId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 352
    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/zui/gallery/data/MediaSet$ItemConsumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaSource$PathId;",
            ">;",
            "Lcom/zui/gallery/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 362
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 364
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/data/MediaSource$PathId;

    .line 367
    iget-object v6, v5, Lcom/zui/gallery/data/MediaSource$PathId;->path:Lcom/zui/gallery/data/Path;

    invoke-virtual {v6}, Lcom/zui/gallery/data/Path;->getParent()Lcom/zui/gallery/data/Path;

    move-result-object v6

    .line 368
    sget-object v7, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    if-ne v6, v7, :cond_0

    .line 369
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 370
    :cond_0
    sget-object v7, Lcom/zui/gallery/data/LocalVideo;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    if-ne v6, v7, :cond_1

    .line 371
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 375
    invoke-direct {p0, v0, p2, p1}, Lcom/zui/gallery/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/zui/gallery/data/MediaSet$ItemConsumer;Z)V

    .line 376
    invoke-direct {p0, v1, p2, v3}, Lcom/zui/gallery/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/zui/gallery/data/MediaSet$ItemConsumer;Z)V

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method
