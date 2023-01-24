.class Lcom/zui/gallery/data/ComboSource;
.super Lcom/zui/gallery/data/MediaSource;
.source "ComboSource.java"


# static fields
.field private static final COMBO_ALBUM:I = 0x1

.field private static final COMBO_ALBUMSET:I


# instance fields
.field private mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mMatcher:Lcom/zui/gallery/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;)V
    .locals 2

    const-string v0, "combo"

    .line 28
    invoke-direct {p0, v0}, Lcom/zui/gallery/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/zui/gallery/data/ComboSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 30
    new-instance p1, Lcom/zui/gallery/data/PathMatcher;

    invoke-direct {p1}, Lcom/zui/gallery/data/PathMatcher;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/ComboSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/combo/*"

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 32
    iget-object p1, p0, Lcom/zui/gallery/data/ComboSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/combo/*/*"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;
    .locals 5

    .line 38
    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 39
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 43
    iget-object v1, p0, Lcom/zui/gallery/data/ComboSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    .line 44
    iget-object v3, p0, Lcom/zui/gallery/data/ComboSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v3, p1}, Lcom/zui/gallery/data/PathMatcher;->match(Lcom/zui/gallery/data/Path;)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-eq v3, v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_0
    new-instance v3, Lcom/zui/gallery/data/ComboAlbum;

    aget-object v2, v0, v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    aget-object v0, v0, v4

    invoke-direct {v3, p1, v1, v0}, Lcom/zui/gallery/data/ComboAlbum;-><init>(Lcom/zui/gallery/data/Path;[Lcom/zui/gallery/data/MediaSet;Ljava/lang/String;)V

    return-object v3

    .line 46
    :cond_1
    new-instance v2, Lcom/zui/gallery/data/ComboAlbumSet;

    iget-object v3, p0, Lcom/zui/gallery/data/ComboSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    aget-object v0, v0, v4

    .line 47
    invoke-virtual {v1, v0}, Lcom/zui/gallery/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    invoke-direct {v2, p1, v3, v0}, Lcom/zui/gallery/data/ComboAlbumSet;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;[Lcom/zui/gallery/data/MediaSet;)V

    return-object v2

    .line 40
    :cond_2
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
