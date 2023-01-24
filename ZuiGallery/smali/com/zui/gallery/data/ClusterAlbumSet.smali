.class public Lcom/zui/gallery/data/ClusterAlbumSet;
.super Lcom/zui/gallery/data/MediaSet;
.source "ClusterAlbumSet.java"

# interfaces
.implements Lcom/zui/gallery/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClusterAlbumSet"


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/ClusterAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mBaseSet:Lcom/zui/gallery/data/MediaSet;

.field private mFirstReloadDone:Z

.field private mKind:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/MediaSet;I)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 38
    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 39
    iput-object p2, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 40
    iput-object p3, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    .line 41
    iput p4, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mKind:I

    .line 42
    invoke-virtual {p3, p0}, Lcom/zui/gallery/data/MediaSet;->addContentListener(Lcom/zui/gallery/data/ContentListener;)V

    return-void
.end method

.method private updateClusters()V
    .locals 9

    .line 80
    iget-object v0, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    iget-object v0, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    iget v1, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mKind:I

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 97
    new-instance v1, Lcom/zui/gallery/data/SizeClustering;

    invoke-direct {v1, v0}, Lcom/zui/gallery/data/SizeClustering;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 94
    :cond_0
    new-instance v1, Lcom/zui/gallery/data/FaceClustering;

    invoke-direct {v1, v0}, Lcom/zui/gallery/data/FaceClustering;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 91
    :cond_1
    new-instance v1, Lcom/zui/gallery/data/TagClustering;

    invoke-direct {v1, v0}, Lcom/zui/gallery/data/TagClustering;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 88
    :cond_2
    new-instance v1, Lcom/zui/gallery/data/LocationClustering;

    invoke-direct {v1, v0}, Lcom/zui/gallery/data/LocationClustering;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 85
    :cond_3
    new-instance v1, Lcom/zui/gallery/data/TimeClustering;

    invoke-direct {v1, v0}, Lcom/zui/gallery/data/TimeClustering;-><init>(Landroid/content/Context;)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/data/Clustering;->run(Lcom/zui/gallery/data/MediaSet;)V

    .line 102
    invoke-virtual {v1}, Lcom/zui/gallery/data/Clustering;->getNumberOfClusters()I

    move-result v0

    .line 103
    iget-object v3, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v3}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_7

    .line 106
    invoke-virtual {v1, v4}, Lcom/zui/gallery/data/Clustering;->getClusterName(I)Ljava/lang/String;

    move-result-object v5

    .line 107
    iget v6, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mKind:I

    if-ne v6, v2, :cond_4

    .line 108
    iget-object v6, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v6

    goto :goto_2

    :cond_4
    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 110
    move-object v6, v1

    check-cast v6, Lcom/zui/gallery/data/SizeClustering;

    invoke-virtual {v6, v4}, Lcom/zui/gallery/data/SizeClustering;->getMinSize(I)J

    move-result-wide v6

    .line 111
    iget-object v8, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {v8, v6, v7}, Lcom/zui/gallery/data/Path;->getChild(J)Lcom/zui/gallery/data/Path;

    move-result-object v6

    goto :goto_2

    .line 113
    :cond_5
    iget-object v6, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {v6, v4}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v6

    .line 117
    :goto_2
    sget-object v7, Lcom/zui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 118
    :try_start_0
    invoke-virtual {v3, v6}, Lcom/zui/gallery/data/DataManager;->peekMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v8

    check-cast v8, Lcom/zui/gallery/data/ClusterAlbum;

    if-nez v8, :cond_6

    .line 120
    new-instance v8, Lcom/zui/gallery/data/ClusterAlbum;

    invoke-direct {v8, v6, v3, p0}, Lcom/zui/gallery/data/ClusterAlbum;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/data/MediaSet;)V

    .line 122
    :cond_6
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {v1, v4}, Lcom/zui/gallery/data/Clustering;->getCluster(I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/zui/gallery/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 124
    invoke-virtual {v8, v5}, Lcom/zui/gallery/data/ClusterAlbum;->setName(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, v4}, Lcom/zui/gallery/data/Clustering;->getClusterCover(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/zui/gallery/data/ClusterAlbum;->setCoverMediaItem(Lcom/zui/gallery/data/MediaItem;)V

    .line 126
    iget-object v5, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 122
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    return-void
.end method

.method private updateClustersContents()V
    .locals 8

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 132
    iget-object v1, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    new-instance v2, Lcom/zui/gallery/data/ClusterAlbumSet$1;

    invoke-direct {v2, p0, v0}, Lcom/zui/gallery/data/ClusterAlbumSet$1;-><init>(Lcom/zui/gallery/data/ClusterAlbumSet;Ljava/util/HashSet;)V

    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaSet;->enumerateTotalMediaItems(Lcom/zui/gallery/data/MediaSet$ItemConsumer;)V

    .line 139
    iget-object v1, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 144
    iget-object v2, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/ClusterAlbum;

    invoke-virtual {v2}, Lcom/zui/gallery/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 148
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/data/Path;

    .line 149
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 150
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/ClusterAlbum;

    invoke-virtual {v2, v3}, Lcom/zui/gallery/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 154
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/zui/gallery/data/MediaSet;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaSet;

    return-object p1
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/zui/gallery/data/ClusterAlbumSet;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mBaseSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 63
    iget-boolean v0, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mFirstReloadDone:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/zui/gallery/data/ClusterAlbumSet;->updateClustersContents()V

    goto :goto_0

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/data/ClusterAlbumSet;->updateClusters()V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mFirstReloadDone:Z

    .line 69
    :goto_0
    invoke-static {}, Lcom/zui/gallery/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mDataVersion:J

    .line 71
    :cond_1
    iget-wide v0, p0, Lcom/zui/gallery/data/ClusterAlbumSet;->mDataVersion:J

    return-wide v0
.end method
