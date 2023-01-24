.class Lcom/zui/gallery/data/LocationClustering$1;
.super Ljava/lang/Object;
.source "LocationClustering.java"

# interfaces
.implements Lcom/zui/gallery/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/LocationClustering;->run(Lcom/zui/gallery/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/LocationClustering;

.field final synthetic val$buf:[Lcom/zui/gallery/data/LocationClustering$SmallItem;

.field final synthetic val$latLong:[D

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/LocationClustering;I[D[Lcom/zui/gallery/data/LocationClustering$SmallItem;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/zui/gallery/data/LocationClustering$1;->this$0:Lcom/zui/gallery/data/LocationClustering;

    iput p2, p0, Lcom/zui/gallery/data/LocationClustering$1;->val$total:I

    iput-object p3, p0, Lcom/zui/gallery/data/LocationClustering$1;->val$latLong:[D

    iput-object p4, p0, Lcom/zui/gallery/data/LocationClustering$1;->val$buf:[Lcom/zui/gallery/data/LocationClustering$SmallItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/zui/gallery/data/MediaItem;)V
    .locals 3

    if-ltz p1, :cond_1

    .line 78
    iget v0, p0, Lcom/zui/gallery/data/LocationClustering$1;->val$total:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Lcom/zui/gallery/data/LocationClustering$SmallItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/gallery/data/LocationClustering$SmallItem;-><init>(Lcom/zui/gallery/data/LocationClustering$1;)V

    .line 80
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/gallery/data/LocationClustering$SmallItem;->path:Lcom/zui/gallery/data/Path;

    .line 81
    iget-object v1, p0, Lcom/zui/gallery/data/LocationClustering$1;->val$latLong:[D

    invoke-virtual {p2, v1}, Lcom/zui/gallery/data/MediaItem;->getLatLong([D)V

    .line 82
    iget-object p2, p0, Lcom/zui/gallery/data/LocationClustering$1;->val$latLong:[D

    const/4 v1, 0x0

    aget-wide v1, p2, v1

    iput-wide v1, v0, Lcom/zui/gallery/data/LocationClustering$SmallItem;->lat:D

    .line 83
    iget-object p2, p0, Lcom/zui/gallery/data/LocationClustering$1;->val$latLong:[D

    const/4 v1, 0x1

    aget-wide v1, p2, v1

    iput-wide v1, v0, Lcom/zui/gallery/data/LocationClustering$SmallItem;->lng:D

    .line 84
    iget-object p2, p0, Lcom/zui/gallery/data/LocationClustering$1;->val$buf:[Lcom/zui/gallery/data/LocationClustering$SmallItem;

    aput-object v0, p2, p1

    :cond_1
    :goto_0
    return-void
.end method
