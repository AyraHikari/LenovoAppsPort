.class Lcom/zui/gallery/data/CloudSource;
.super Lcom/zui/gallery/data/MediaSource;
.source "CloudSource.java"


# static fields
.field private static final CHARSET_UTF_8:Ljava/lang/String; = "utf-8"

.field private static final CLOUD_ALBUM:I = 0x0

.field private static final CLOUD_ITEM_IMAGE:I = 0x1

.field private static final CLOUD_ITEM_VIDEO:I = 0x2

.field private static final IMAGE_TYPE_ANY:Ljava/lang/String; = "image/*"

.field private static final IMAGE_TYPE_PREFIX:Ljava/lang/String; = "image/"

.field public static final PATH_ALBUM:Lcom/zui/gallery/data/Path;

.field public static final PATH_IMAGE_ITEM:Lcom/zui/gallery/data/Path;

.field public static final PATH_VIDEO_ITEM:Lcom/zui/gallery/data/Path;

.field private static final TAG:Ljava/lang/String; = "CloudSource"


# instance fields
.field private mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mMatcher:Lcom/zui/gallery/data/PathMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/cloud/set"

    .line 40
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/CloudSource;->PATH_ALBUM:Lcom/zui/gallery/data/Path;

    const-string v0, "/cloud/image"

    .line 41
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/CloudSource;->PATH_IMAGE_ITEM:Lcom/zui/gallery/data/Path;

    const-string v0, "/cloud/video"

    .line 42
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/CloudSource;->PATH_VIDEO_ITEM:Lcom/zui/gallery/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;)V
    .locals 2

    const-string v0, "cloud"

    .line 52
    invoke-direct {p0, v0}, Lcom/zui/gallery/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/zui/gallery/data/CloudSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 54
    new-instance p1, Lcom/zui/gallery/data/PathMatcher;

    invoke-direct {p1}, Lcom/zui/gallery/data/PathMatcher;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/CloudSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/cloud/set/*"

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 56
    iget-object p1, p0, Lcom/zui/gallery/data/CloudSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/cloud/image/*"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 57
    iget-object p1, p0, Lcom/zui/gallery/data/CloudSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/cloud/video/*"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method

.method private getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 92
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/data/CloudSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "image/*"

    :cond_1
    return-object p1
.end method


# virtual methods
.method public createMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;
    .locals 6

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMediaObject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudSource"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/zui/gallery/data/CloudSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/PathMatcher;->match(Lcom/zui/gallery/data/Path;)I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "bad path: "

    const/4 v3, 0x2

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 76
    array-length v5, v0

    if-ne v5, v1, :cond_3

    .line 79
    sget-object v1, Lcom/zui/gallery/cloud/CloudManager;->DEFAULT_CLOUD_MEDIA_URI:Landroid/net/Uri;

    .line 81
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    aget-object v0, v0, v3

    .line 82
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 79
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 83
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "thumbnail_type"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/zui/gallery/data/CloudImage;

    iget-object v2, p0, Lcom/zui/gallery/data/CloudSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    iget-object v3, p0, Lcom/zui/gallery/data/CloudSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v3, p1}, Lcom/zui/gallery/data/PathMatcher;->match(Lcom/zui/gallery/data/Path;)I

    move-result v3

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-direct {v1, v2, p1, v0, v4}, Lcom/zui/gallery/data/CloudImage;-><init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;Landroid/net/Uri;Z)V

    return-object v1

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_4
    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 68
    array-length v4, v0

    if-ne v4, v1, :cond_5

    .line 71
    new-instance v1, Lcom/zui/gallery/data/CloudAlbum;

    iget-object v2, p0, Lcom/zui/gallery/data/CloudSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    aget-object v0, v0, v3

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/zui/gallery/data/CloudAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;Lcom/zui/gallery/data/Path;)V

    return-object v1

    .line 69
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/data/Path;
    .locals 4

    const-string/jumbo v0, "utf-8"

    .line 108
    invoke-direct {p0, p1}, Lcom/zui/gallery/data/CloudSource;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/"

    if-eqz p2, :cond_0

    const-string v3, "image/*"

    .line 111
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object p2, v1

    .line 116
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/uri/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p1}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 122
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
