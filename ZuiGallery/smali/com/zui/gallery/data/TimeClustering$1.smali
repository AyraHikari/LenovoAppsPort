.class Lcom/zui/gallery/data/TimeClustering$1;
.super Ljava/lang/Object;
.source "TimeClustering.java"

# interfaces
.implements Lcom/zui/gallery/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/TimeClustering;->run(Lcom/zui/gallery/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/TimeClustering;

.field final synthetic val$buf:[Lcom/zui/gallery/data/SmallItem;

.field final synthetic val$latLng:[D

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/TimeClustering;I[D[Lcom/zui/gallery/data/SmallItem;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/zui/gallery/data/TimeClustering$1;->this$0:Lcom/zui/gallery/data/TimeClustering;

    iput p2, p0, Lcom/zui/gallery/data/TimeClustering$1;->val$total:I

    iput-object p3, p0, Lcom/zui/gallery/data/TimeClustering$1;->val$latLng:[D

    iput-object p4, p0, Lcom/zui/gallery/data/TimeClustering$1;->val$buf:[Lcom/zui/gallery/data/SmallItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/zui/gallery/data/MediaItem;)V
    .locals 3

    if-ltz p1, :cond_1

    .line 108
    iget v0, p0, Lcom/zui/gallery/data/TimeClustering$1;->val$total:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Lcom/zui/gallery/data/SmallItem;

    invoke-direct {v0}, Lcom/zui/gallery/data/SmallItem;-><init>()V

    .line 110
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/gallery/data/SmallItem;->path:Lcom/zui/gallery/data/Path;

    .line 111
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getDateInMs()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zui/gallery/data/SmallItem;->dateInMs:J

    .line 112
    iget-object v1, p0, Lcom/zui/gallery/data/TimeClustering$1;->val$latLng:[D

    invoke-virtual {p2, v1}, Lcom/zui/gallery/data/MediaItem;->getLatLong([D)V

    .line 113
    iget-object p2, p0, Lcom/zui/gallery/data/TimeClustering$1;->val$latLng:[D

    const/4 v1, 0x0

    aget-wide v1, p2, v1

    iput-wide v1, v0, Lcom/zui/gallery/data/SmallItem;->lat:D

    .line 114
    iget-object p2, p0, Lcom/zui/gallery/data/TimeClustering$1;->val$latLng:[D

    const/4 v1, 0x1

    aget-wide v1, p2, v1

    iput-wide v1, v0, Lcom/zui/gallery/data/SmallItem;->lng:D

    .line 115
    iget-object p2, p0, Lcom/zui/gallery/data/TimeClustering$1;->val$buf:[Lcom/zui/gallery/data/SmallItem;

    aput-object v0, p2, p1

    :cond_1
    :goto_0
    return-void
.end method
