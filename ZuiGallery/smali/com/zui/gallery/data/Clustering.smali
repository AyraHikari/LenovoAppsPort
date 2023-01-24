.class public abstract Lcom/zui/gallery/data/Clustering;
.super Ljava/lang/Object;
.source "Clustering.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCluster(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end method

.method public getClusterCover(I)Lcom/zui/gallery/data/MediaItem;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getClusterName(I)Ljava/lang/String;
.end method

.method public abstract getNumberOfClusters()I
.end method

.method public abstract run(Lcom/zui/gallery/data/MediaSet;)V
.end method
