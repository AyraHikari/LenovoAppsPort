.class Lcom/zui/gallery/data/FaceClustering$1;
.super Ljava/lang/Object;
.source "FaceClustering.java"

# interfaces
.implements Lcom/zui/gallery/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/FaceClustering;->run(Lcom/zui/gallery/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/FaceClustering;

.field final synthetic val$map:Ljava/util/TreeMap;

.field final synthetic val$untagged:Lcom/zui/gallery/data/FaceClustering$FaceCluster;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/FaceClustering;Lcom/zui/gallery/data/FaceClustering$FaceCluster;Ljava/util/TreeMap;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/zui/gallery/data/FaceClustering$1;->this$0:Lcom/zui/gallery/data/FaceClustering;

    iput-object p2, p0, Lcom/zui/gallery/data/FaceClustering$1;->val$untagged:Lcom/zui/gallery/data/FaceClustering$FaceCluster;

    iput-object p3, p0, Lcom/zui/gallery/data/FaceClustering$1;->val$map:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/zui/gallery/data/MediaItem;)V
    .locals 5

    .line 99
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getFaces()[Lcom/zui/gallery/data/Face;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 100
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 105
    aget-object v1, p1, v0

    .line 106
    iget-object v2, p0, Lcom/zui/gallery/data/FaceClustering$1;->val$map:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/FaceClustering$FaceCluster;

    if-nez v2, :cond_1

    .line 108
    new-instance v2, Lcom/zui/gallery/data/FaceClustering$FaceCluster;

    iget-object v3, p0, Lcom/zui/gallery/data/FaceClustering$1;->this$0:Lcom/zui/gallery/data/FaceClustering;

    invoke-virtual {v1}, Lcom/zui/gallery/data/Face;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zui/gallery/data/FaceClustering$FaceCluster;-><init>(Lcom/zui/gallery/data/FaceClustering;Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/zui/gallery/data/FaceClustering$1;->val$map:Ljava/util/TreeMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_1
    invoke-virtual {v2, p2, v0}, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->add(Lcom/zui/gallery/data/MediaItem;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 101
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/data/FaceClustering$1;->val$untagged:Lcom/zui/gallery/data/FaceClustering$FaceCluster;

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->add(Lcom/zui/gallery/data/MediaItem;I)V

    return-void
.end method
