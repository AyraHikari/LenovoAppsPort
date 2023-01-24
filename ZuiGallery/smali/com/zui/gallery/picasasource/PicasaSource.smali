.class public Lcom/zui/gallery/picasasource/PicasaSource;
.super Lcom/zui/gallery/data/MediaSource;
.source "PicasaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/picasasource/PicasaSource$EmptyAlbumSet;
    }
.end annotation


# static fields
.field public static final ALBUM_PATH:Lcom/zui/gallery/data/Path;

.field private static final IMAGE_MEDIA_ID:I = 0x1

.field private static final MAP_BATCH_COUNT:I = 0x64

.field private static final NO_MATCH:I = -0x1

.field private static final PICASA_ALBUMSET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PicasaSource"


# instance fields
.field private mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mMatcher:Lcom/zui/gallery/data/PathMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/picasa/all"

    .line 46
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/picasasource/PicasaSource;->ALBUM_PATH:Lcom/zui/gallery/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;)V
    .locals 2

    const-string v0, "picasa"

    .line 49
    invoke-direct {p0, v0}, Lcom/zui/gallery/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/zui/gallery/picasasource/PicasaSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 51
    new-instance p1, Lcom/zui/gallery/data/PathMatcher;

    invoke-direct {p1}, Lcom/zui/gallery/data/PathMatcher;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/picasasource/PicasaSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/picasa/all"

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 53
    iget-object p1, p0, Lcom/zui/gallery/picasasource/PicasaSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/picasa/image"

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 54
    iget-object p1, p0, Lcom/zui/gallery/picasasource/PicasaSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/picasa/video"

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method

.method public static getContentType(Lcom/zui/gallery/data/MediaObject;)Ljava/lang/String;
    .locals 0

    .line 101
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static getDateTaken(Lcom/zui/gallery/data/MediaObject;)J
    .locals 0

    .line 105
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static getFaceItem(Landroid/content/Context;Lcom/zui/gallery/data/MediaItem;I)Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 85
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static getImageSize(Lcom/zui/gallery/data/MediaObject;)I
    .locals 0

    .line 97
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static getImageTitle(Lcom/zui/gallery/data/MediaObject;)Ljava/lang/String;
    .locals 0

    .line 93
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static getLatitude(Lcom/zui/gallery/data/MediaObject;)D
    .locals 0

    .line 109
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static getLongitude(Lcom/zui/gallery/data/MediaObject;)D
    .locals 0

    .line 113
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static getPicasaId(Lcom/zui/gallery/data/MediaObject;)J
    .locals 0

    .line 121
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static getRotation(Lcom/zui/gallery/data/MediaObject;)I
    .locals 0

    .line 117
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static getUserAccount(Landroid/content/Context;Lcom/zui/gallery/data/MediaObject;)Ljava/lang/String;
    .locals 0

    .line 125
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static getVersionCheckDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static isPicasaImage(Lcom/zui/gallery/data/MediaObject;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static onPackageAdded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static onPackageChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static onPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static openFile(Landroid/content/Context;Lcom/zui/gallery/data/MediaObject;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 130
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static requestSync(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static showSignInReminder(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/zui/gallery/picasasource/PicasaSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/PathMatcher;->match(Lcom/zui/gallery/data/Path;)I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/zui/gallery/picasasource/PicasaSource$EmptyAlbumSet;

    invoke-static {}, Lcom/zui/gallery/data/MediaObject;->nextVersionNumber()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lcom/zui/gallery/picasasource/PicasaSource$EmptyAlbumSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
