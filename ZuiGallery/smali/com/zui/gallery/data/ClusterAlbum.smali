.class public Lcom/zui/gallery/data/ClusterAlbum;
.super Lcom/zui/gallery/data/MediaSet;
.source "ClusterAlbum.java"

# interfaces
.implements Lcom/zui/gallery/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClusterAlbum"


# instance fields
.field private mClusterAlbumSet:Lcom/zui/gallery/data/MediaSet;

.field private mCover:Lcom/zui/gallery/data/MediaItem;

.field private mDataManager:Lcom/zui/gallery/data/DataManager;

.field private mName:Ljava/lang/String;

.field private mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/data/MediaSet;)V
    .locals 2

    .line 32
    invoke-static {}, Lcom/zui/gallery/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    const-string p1, ""

    .line 25
    iput-object p1, p0, Lcom/zui/gallery/data/ClusterAlbum;->mName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/zui/gallery/data/ClusterAlbum;->mDataManager:Lcom/zui/gallery/data/DataManager;

    .line 34
    iput-object p3, p0, Lcom/zui/gallery/data/ClusterAlbum;->mClusterAlbumSet:Lcom/zui/gallery/data/MediaSet;

    .line 35
    invoke-virtual {p3, p0}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    return-void
.end method

.method public static getMediaItemFromPath(Ljava/util/ArrayList;IILcom/zui/gallery/data/DataManager;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;II",
            "Lcom/zui/gallery/data/DataManager;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 78
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    add-int/2addr p2, p1

    .line 80
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sub-int/2addr p2, p1

    .line 82
    new-array p0, p2, [Lcom/zui/gallery/data/MediaItem;

    .line 83
    new-instance p1, Lcom/zui/gallery/data/ClusterAlbum$1;

    invoke-direct {p1, p0}, Lcom/zui/gallery/data/ClusterAlbum$1;-><init>([Lcom/zui/gallery/data/MediaItem;)V

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p3, v0, p1, v1}, Lcom/zui/gallery/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/zui/gallery/data/MediaSet$ItemConsumer;I)V

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v1, p2, :cond_1

    .line 92
    aget-object p3, p0, v1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public delete()V
    .locals 4

    .line 128
    new-instance v0, Lcom/zui/gallery/data/ClusterAlbum$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/data/ClusterAlbum$2;-><init>(Lcom/zui/gallery/data/ClusterAlbum;)V

    .line 136
    iget-object v1, p0, Lcom/zui/gallery/data/ClusterAlbum;->mDataManager:Lcom/zui/gallery/data/DataManager;

    iget-object v2, p0, Lcom/zui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/zui/gallery/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/zui/gallery/data/MediaSet$ItemConsumer;I)V

    return-void
.end method

.method protected enumerateMediaItems(Lcom/zui/gallery/data/MediaSet$ItemConsumer;I)I
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/zui/gallery/data/ClusterAlbum;->mDataManager:Lcom/zui/gallery/data/DataManager;

    iget-object v1, p0, Lcom/zui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p2}, Lcom/zui/gallery/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/zui/gallery/data/MediaSet$ItemConsumer;I)V

    .line 100
    iget-object p1, p0, Lcom/zui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/zui/gallery/data/ClusterAlbum;->mCover:Lcom/zui/gallery/data/MediaItem;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/zui/gallery/data/MediaSet;->getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/zui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zui/gallery/data/ClusterAlbum;->mDataManager:Lcom/zui/gallery/data/DataManager;

    invoke-static {v0, p1, p2, v1}, Lcom/zui/gallery/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/zui/gallery/data/DataManager;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMediaItemCount()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/zui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getMediaItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/zui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/zui/gallery/data/ClusterAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    const/16 v0, 0x405

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/zui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/zui/gallery/data/ClusterAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/zui/gallery/data/ClusterAlbum;->mClusterAlbumSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/gallery/data/ClusterAlbum;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/zui/gallery/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/ClusterAlbum;->mDataVersion:J

    .line 113
    :cond_0
    iget-wide v0, p0, Lcom/zui/gallery/data/ClusterAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public setCoverMediaItem(Lcom/zui/gallery/data/MediaItem;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/zui/gallery/data/ClusterAlbum;->mCover:Lcom/zui/gallery/data/MediaItem;

    return-void
.end method

.method setMediaItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/zui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/zui/gallery/data/ClusterAlbum;->mName:Ljava/lang/String;

    return-void
.end method
