.class public Lcom/zui/gallery/data/FaceClustering;
.super Lcom/zui/gallery/data/Clustering;
.source "FaceClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/FaceClustering$FaceCluster;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceClustering"


# instance fields
.field private mClusters:[Lcom/zui/gallery/data/FaceClustering$FaceCluster;

.field private mContext:Landroid/content/Context;

.field private mUntaggedString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/zui/gallery/data/Clustering;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/data/FaceClustering;->mUntaggedString:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/zui/gallery/data/FaceClustering;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/data/FaceClustering;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zui/gallery/data/FaceClustering;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/zui/gallery/data/FaceClustering;->mClusters:[Lcom/zui/gallery/data/FaceClustering$FaceCluster;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mPaths:Ljava/util/ArrayList;

    return-object p1
.end method

.method public getClusterCover(I)Lcom/zui/gallery/data/MediaItem;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/zui/gallery/data/FaceClustering;->mClusters:[Lcom/zui/gallery/data/FaceClustering$FaceCluster;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->getCover()Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    return-object p1
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/zui/gallery/data/FaceClustering;->mClusters:[Lcom/zui/gallery/data/FaceClustering$FaceCluster;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mName:Ljava/lang/String;

    return-object p1
.end method

.method public getNumberOfClusters()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/zui/gallery/data/FaceClustering;->mClusters:[Lcom/zui/gallery/data/FaceClustering$FaceCluster;

    array-length v0, v0

    return v0
.end method

.method public run(Lcom/zui/gallery/data/MediaSet;)V
    .locals 3

    .line 92
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 94
    new-instance v1, Lcom/zui/gallery/data/FaceClustering$FaceCluster;

    iget-object v2, p0, Lcom/zui/gallery/data/FaceClustering;->mUntaggedString:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/zui/gallery/data/FaceClustering$FaceCluster;-><init>(Lcom/zui/gallery/data/FaceClustering;Ljava/lang/String;)V

    .line 96
    new-instance v2, Lcom/zui/gallery/data/FaceClustering$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/zui/gallery/data/FaceClustering$1;-><init>(Lcom/zui/gallery/data/FaceClustering;Lcom/zui/gallery/data/FaceClustering$FaceCluster;Ljava/util/TreeMap;)V

    invoke-virtual {p1, v2}, Lcom/zui/gallery/data/MediaSet;->enumerateTotalMediaItems(Lcom/zui/gallery/data/MediaSet$ItemConsumer;)V

    .line 116
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result p1

    .line 117
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1}, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v2, p1

    new-array v2, v2, [Lcom/zui/gallery/data/FaceClustering$FaceCluster;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/data/FaceClustering$FaceCluster;

    iput-object v0, p0, Lcom/zui/gallery/data/FaceClustering;->mClusters:[Lcom/zui/gallery/data/FaceClustering$FaceCluster;

    .line 118
    invoke-virtual {v1}, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/zui/gallery/data/FaceClustering;->mClusters:[Lcom/zui/gallery/data/FaceClustering$FaceCluster;

    aput-object v1, v0, p1

    :cond_1
    return-void
.end method
