.class public Lcom/zui/gallery/data/ComboAlbumSet;
.super Lcom/zui/gallery/data/MediaSet;
.source "ComboAlbumSet.java"

# interfaces
.implements Lcom/zui/gallery/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ComboAlbumSet"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mSets:[Lcom/zui/gallery/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;[Lcom/zui/gallery/data/MediaSet;)V
    .locals 2

    .line 33
    invoke-static {}, Lcom/zui/gallery/data/ComboAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 34
    iput-object p3, p0, Lcom/zui/gallery/data/ComboAlbumSet;->mSets:[Lcom/zui/gallery/data/MediaSet;

    .line 35
    array-length p1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p3, v0

    .line 36
    invoke-virtual {v1, p0}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100248

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/ComboAlbumSet;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/zui/gallery/data/ComboAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/zui/gallery/data/MediaSet;
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/zui/gallery/data/ComboAlbumSet;->mSets:[Lcom/zui/gallery/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 45
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 47
    invoke-virtual {v3, p1}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/zui/gallery/data/MediaSet;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubMediaSetCount()I
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/zui/gallery/data/ComboAlbumSet;->mSets:[Lcom/zui/gallery/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 58
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public isLoading()Z
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/zui/gallery/data/ComboAlbumSet;->mSets:[Lcom/zui/gallery/data/MediaSet;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 71
    iget-object v3, p0, Lcom/zui/gallery/data/ComboAlbumSet;->mSets:[Lcom/zui/gallery/data/MediaSet;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onContentDirty()V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/zui/gallery/data/ComboAlbumSet;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 7

    .line 79
    iget-object v0, p0, Lcom/zui/gallery/data/ComboAlbumSet;->mSets:[Lcom/zui/gallery/data/MediaSet;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 80
    iget-object v3, p0, Lcom/zui/gallery/data/ComboAlbumSet;->mSets:[Lcom/zui/gallery/data/MediaSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->reload()J

    move-result-wide v3

    .line 81
    iget-wide v5, p0, Lcom/zui/gallery/data/ComboAlbumSet;->mDataVersion:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 83
    invoke-static {}, Lcom/zui/gallery/data/ComboAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/ComboAlbumSet;->mDataVersion:J

    .line 84
    :cond_2
    iget-wide v0, p0, Lcom/zui/gallery/data/ComboAlbumSet;->mDataVersion:J

    return-wide v0
.end method

.method public requestSync(Lcom/zui/gallery/data/MediaSet$SyncListener;)Lcom/zui/gallery/util/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/data/MediaSet$SyncListener;",
            ")",
            "Lcom/zui/gallery/util/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/zui/gallery/data/ComboAlbumSet;->mSets:[Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/data/ComboAlbumSet;->requestSyncOnMultipleSets([Lcom/zui/gallery/data/MediaSet;Lcom/zui/gallery/data/MediaSet$SyncListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    return-object p1
.end method
