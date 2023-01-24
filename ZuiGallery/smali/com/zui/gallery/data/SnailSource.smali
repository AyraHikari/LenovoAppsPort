.class public Lcom/zui/gallery/data/SnailSource;
.super Lcom/zui/gallery/data/MediaSource;
.source "SnailSource.java"


# static fields
.field private static final SNAIL_ALBUM:I = 0x0

.field private static final SNAIL_ITEM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SnailSource"

.field private static sNextId:I


# instance fields
.field private mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mMatcher:Lcom/zui/gallery/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;)V
    .locals 2

    const-string/jumbo v0, "snail"

    .line 31
    invoke-direct {p0, v0}, Lcom/zui/gallery/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/zui/gallery/data/SnailSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 33
    new-instance p1, Lcom/zui/gallery/data/PathMatcher;

    invoke-direct {p1}, Lcom/zui/gallery/data/PathMatcher;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/SnailSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/snail/set/*"

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 35
    iget-object p1, p0, Lcom/zui/gallery/data/SnailSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    const-string v0, "/snail/item/*"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method

.method public static getItemPath(I)Lcom/zui/gallery/data/Path;
    .locals 1

    const-string v0, "/snail/item"

    .line 68
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getSetPath(I)Lcom/zui/gallery/data/Path;
    .locals 1

    const-string v0, "/snail/set"

    .line 64
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized newId()I
    .locals 3

    const-class v0, Lcom/zui/gallery/data/SnailSource;

    monitor-enter v0

    .line 60
    :try_start_0
    sget v1, Lcom/zui/gallery/data/SnailSource;->sNextId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/zui/gallery/data/SnailSource;->sNextId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public createMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/zui/gallery/data/SnailSource;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/zui/gallery/data/SnailSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/data/PathMatcher;->match(Lcom/zui/gallery/data/Path;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/data/SnailSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/data/PathMatcher;->getIntVar(I)I

    .line 50
    new-instance v0, Lcom/zui/gallery/data/SnailItem;

    invoke-direct {v0, p1}, Lcom/zui/gallery/data/SnailItem;-><init>(Lcom/zui/gallery/data/Path;)V

    return-object v0

    .line 44
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/snail/item/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/data/SnailSource;->mMatcher:Lcom/zui/gallery/data/PathMatcher;

    invoke-virtual {v3, v2}, Lcom/zui/gallery/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/SnailItem;

    .line 47
    new-instance v1, Lcom/zui/gallery/data/SnailAlbum;

    invoke-direct {v1, p1, v0}, Lcom/zui/gallery/data/SnailAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/SnailItem;)V

    return-object v1
.end method
