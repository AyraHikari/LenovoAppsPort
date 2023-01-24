.class public Lcom/zui/gallery/data/FilterSource;
.super Lcom/zui/gallery/data/MediaSource;
.source "FilterSource.java"


# static fields
.field private static final FILTER_BY_CAMERA_SHORTCUT:I = 0x4

.field private static final FILTER_BY_CAMERA_SHORTCUT_ITEM:I = 0x5

.field private static final FILTER_BY_DELETE:I = 0x1

.field private static final FILTER_BY_EMPTY:I = 0x2

.field private static final FILTER_BY_EMPTY_ITEM:I = 0x3

.field private static final FILTER_BY_MEDIATYPE:I = 0x0

.field public static final FILTER_CAMERA_SHORTCUT:Ljava/lang/String; = "/filter/camera_shortcut"

.field private static final FILTER_CAMERA_SHORTCUT_ITEM:Ljava/lang/String; = "/filter/camera_shortcut_item"

.field public static final FILTER_EMPTY_ITEM:Ljava/lang/String; = "/filter/empty_prompt"

.field private static final TAG:Ljava/lang/String; = "FilterSource"


# instance fields
.field private mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mCameraShortcutItem:Lcom/zui/gallery/data/MediaItem;

.field private mEmptyItem:Lcom/zui/gallery/data/MediaItem;

.field private mMatcher:Lcom/zui/gallery/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;)V
    .locals 3

    const-string v0, "filter"

    .line 41
    invoke-direct {p0, v0}, Lcom/zui/gallery/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/zui/gallery/data/FilterSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 43
    new-instance p1, Lcom/zui/gallery/data/PathMatcher;

    invoke-direct {p1}, Lcom/zui/gallery/data/PathMatcher;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/FilterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/filter/mediatype/*/*"

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 45
    iget-object p1, p0, Lcom/zui/gallery/data/FilterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/filter/delete/*"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 46
    iget-object p1, p0, Lcom/zui/gallery/data/FilterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/filter/empty/*"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 47
    iget-object p1, p0, Lcom/zui/gallery/data/FilterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/filter/empty_prompt"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 48
    iget-object p1, p0, Lcom/zui/gallery/data/FilterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v1, "/filter/camera_shortcut"

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 49
    iget-object p1, p0, Lcom/zui/gallery/data/FilterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v1, "/filter/camera_shortcut_item"

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 51
    new-instance p1, Lcom/zui/gallery/data/EmptyAlbumImage;

    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/data/FilterSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {p1, v0, v2}, Lcom/zui/gallery/data/EmptyAlbumImage;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V

    iput-object p1, p0, Lcom/zui/gallery/data/FilterSource;->mEmptyItem:Lcom/zui/gallery/data/MediaItem;

    .line 53
    new-instance p1, Lcom/zui/gallery/data/CameraShortcutImage;

    .line 54
    invoke-static {v1}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/data/FilterSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {p1, v0, v1}, Lcom/zui/gallery/data/CameraShortcutImage;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;)V

    iput-object p1, p0, Lcom/zui/gallery/data/FilterSource;->mCameraShortcutItem:Lcom/zui/gallery/data/MediaItem;

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/zui/gallery/data/FilterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/PathMatcher;->match(Lcom/zui/gallery/data/Path;)I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/zui/gallery/data/FilterSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/zui/gallery/data/FilterSource;->mCameraShortcutItem:Lcom/zui/gallery/data/MediaItem;

    return-object p1

    .line 91
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

    .line 85
    :cond_1
    new-instance v0, Lcom/zui/gallery/data/SingleItemAlbum;

    iget-object v1, p0, Lcom/zui/gallery/data/FilterSource;->mCameraShortcutItem:Lcom/zui/gallery/data/MediaItem;

    invoke-direct {v0, p1, v1}, Lcom/zui/gallery/data/SingleItemAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/MediaItem;)V

    return-object v0

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/data/FilterSource;->mEmptyItem:Lcom/zui/gallery/data/MediaItem;

    return-object p1

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/data/FilterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v0, v3}, Lcom/zui/gallery/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v1, v0}, Lcom/zui/gallery/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/zui/gallery/data/FilterEmptyPromptSet;

    aget-object v0, v0, v3

    iget-object v2, p0, Lcom/zui/gallery/data/FilterSource;->mEmptyItem:Lcom/zui/gallery/data/MediaItem;

    invoke-direct {v1, p1, v0, v2}, Lcom/zui/gallery/data/FilterEmptyPromptSet;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/MediaSet;Lcom/zui/gallery/data/MediaItem;)V

    return-object v1

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/data/FilterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v0, v3}, Lcom/zui/gallery/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v1, v0}, Lcom/zui/gallery/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/zui/gallery/data/FilterDeleteSet;

    aget-object v0, v0, v3

    invoke-direct {v1, p1, v0}, Lcom/zui/gallery/data/FilterDeleteSet;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/MediaSet;)V

    return-object v1

    .line 66
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/data/FilterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v0, v3}, Lcom/zui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v0

    .line 67
    iget-object v4, p0, Lcom/zui/gallery/data/FilterSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v4, v2}, Lcom/zui/gallery/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    .line 69
    new-instance v4, Lcom/zui/gallery/data/FilterTypeSet;

    aget-object v2, v2, v3

    invoke-direct {v4, p1, v1, v2, v0}, Lcom/zui/gallery/data/FilterTypeSet;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/data/MediaSet;I)V

    return-object v4
.end method
