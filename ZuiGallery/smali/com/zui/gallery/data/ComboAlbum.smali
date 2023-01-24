.class public Lcom/zui/gallery/data/ComboAlbum;
.super Lcom/zui/gallery/data/MediaSet;
.source "ComboAlbum.java"

# interfaces
.implements Lcom/zui/gallery/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ComboAlbum"


# instance fields
.field private mName:Ljava/lang/String;

.field private final mSets:[Lcom/zui/gallery/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;[Lcom/zui/gallery/data/MediaSet;Ljava/lang/String;)V
    .locals 2

    .line 33
    invoke-static {}, Lcom/zui/gallery/data/ComboAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 34
    iput-object p2, p0, Lcom/zui/gallery/data/ComboAlbum;->mSets:[Lcom/zui/gallery/data/MediaSet;

    .line 35
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 36
    invoke-virtual {v1, p0}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    iput-object p3, p0, Lcom/zui/gallery/data/ComboAlbum;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImageItemCount()I
    .locals 6

    .line 119
    iget-object v0, p0, Lcom/zui/gallery/data/ComboAlbum;->mSets:[Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 120
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 121
    instance-of v5, v4, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz v5, :cond_0

    .line 122
    check-cast v4, Lcom/zui/gallery/data/LocalAlbum;

    .line 123
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->isImage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->getMediaItemCount()I

    move-result v4

    goto :goto_1

    .line 126
    :cond_0
    instance-of v5, v4, Lcom/zui/gallery/data/LocalMergeAlbum;

    if-eqz v5, :cond_1

    .line 127
    check-cast v4, Lcom/zui/gallery/data/LocalMergeAlbum;

    .line 128
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalMergeAlbum;->getImageItemCount()I

    move-result v4

    :goto_1
    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :cond_3
    return v1
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/zui/gallery/data/ComboAlbum;->mSets:[Lcom/zui/gallery/data/MediaSet;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 45
    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v6

    const/4 v7, 0x1

    if-ge p2, v7, :cond_0

    goto :goto_3

    :cond_0
    if-ge p1, v6, :cond_2

    add-int v7, p1, p2

    if-gt v7, v6, :cond_1

    move v6, p2

    goto :goto_1

    :cond_1
    sub-int/2addr v6, p1

    .line 49
    :goto_1
    invoke-virtual {v5, p1, v6}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p2, p1

    move p1, v3

    goto :goto_2

    :cond_2
    sub-int/2addr p1, v6

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/zui/gallery/data/ComboAlbum;->mSets:[Lcom/zui/gallery/data/MediaSet;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 64
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/zui/gallery/data/ComboAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoItemCount()I
    .locals 6

    .line 138
    iget-object v0, p0, Lcom/zui/gallery/data/ComboAlbum;->mSets:[Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 139
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 140
    instance-of v5, v4, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz v5, :cond_0

    .line 141
    check-cast v4, Lcom/zui/gallery/data/LocalAlbum;

    .line 142
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->isImage()Z

    move-result v5

    if-nez v5, :cond_1

    .line 143
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalAlbum;->getMediaItemCount()I

    move-result v4

    goto :goto_1

    .line 145
    :cond_0
    instance-of v5, v4, Lcom/zui/gallery/data/LocalMergeAlbum;

    if-eqz v5, :cond_1

    .line 146
    check-cast v4, Lcom/zui/gallery/data/LocalMergeAlbum;

    .line 147
    invoke-virtual {v4}, Lcom/zui/gallery/data/LocalMergeAlbum;->getVideoItemCount()I

    move-result v4

    :goto_1
    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :cond_3
    return v1
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPanoAlbum()Z
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/zui/gallery/data/ComboAlbum;->mSets:[Lcom/zui/gallery/data/MediaSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 86
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 87
    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaSet;->isPanoAlbum()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onContentDirty()V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/zui/gallery/data/ComboAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/zui/gallery/data/ComboAlbum;->mSets:[Lcom/zui/gallery/data/MediaSet;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 99
    iget-object v3, p0, Lcom/zui/gallery/data/ComboAlbum;->mSets:[Lcom/zui/gallery/data/MediaSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->reload()J

    move-result-wide v3

    .line 100
    iget-wide v5, p0, Lcom/zui/gallery/data/ComboAlbum;->mDataVersion:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 102
    invoke-static {}, Lcom/zui/gallery/data/ComboAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/ComboAlbum;->mDataVersion:J

    .line 103
    :cond_2
    iget-wide v0, p0, Lcom/zui/gallery/data/ComboAlbum;->mDataVersion:J

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

    .line 113
    iget-object v0, p0, Lcom/zui/gallery/data/ComboAlbum;->mSets:[Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/data/ComboAlbum;->requestSyncOnMultipleSets([Lcom/zui/gallery/data/MediaSet;Lcom/zui/gallery/data/MediaSet$SyncListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    return-object p1
.end method

.method public useNameOfChild(I)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/zui/gallery/data/ComboAlbum;->mSets:[Lcom/zui/gallery/data/MediaSet;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/ComboAlbum;->mName:Ljava/lang/String;

    :cond_0
    return-void
.end method
