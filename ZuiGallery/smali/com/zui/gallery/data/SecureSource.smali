.class public Lcom/zui/gallery/data/SecureSource;
.super Lcom/zui/gallery/data/MediaSource;
.source "SecureSource.java"


# static fields
.field private static final SECURE_ALBUM:I = 0x0

.field private static final SECURE_UNLOCK:I = 0x1

.field private static mMatcher:Lcom/zui/gallery/data/PathMatcher;


# instance fields
.field private mApplication:Lcom/zui/gallery/app/GalleryApp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/zui/gallery/data/PathMatcher;

    invoke-direct {v0}, Lcom/zui/gallery/data/PathMatcher;-><init>()V

    sput-object v0, Lcom/zui/gallery/data/SecureSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v1, "/secure/all/*"

    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 29
    sget-object v0, Lcom/zui/gallery/data/SecureSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v1, "/secure/unlock"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;)V
    .locals 1

    const-string v0, "secure"

    .line 33
    invoke-direct {p0, v0}, Lcom/zui/gallery/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/zui/gallery/data/SecureSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    return-void
.end method

.method public static isSecurePath(Ljava/lang/String;)Z
    .locals 1

    .line 38
    sget-object v0, Lcom/zui/gallery/data/SecureSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-static {p0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/data/PathMatcher;->match(Lcom/zui/gallery/data/Path;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public createMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;
    .locals 3

    .line 43
    sget-object v0, Lcom/zui/gallery/data/SecureSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/PathMatcher;->match(Lcom/zui/gallery/data/Path;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 51
    new-instance v0, Lcom/zui/gallery/data/UnlockImage;

    iget-object v1, p0, Lcom/zui/gallery/data/SecureSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcom/zui/gallery/data/UnlockImage;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V

    return-object v0

    .line 53
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

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/data/SecureSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    const-string v1, "/secure/unlock"

    .line 46
    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/MediaItem;

    .line 48
    new-instance v1, Lcom/zui/gallery/data/SecureAlbum;

    iget-object v2, p0, Lcom/zui/gallery/data/SecureSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v1, p1, v2, v0}, Lcom/zui/gallery/data/SecureAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/MediaItem;)V

    return-object v1
.end method
