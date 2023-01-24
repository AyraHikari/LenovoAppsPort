.class Lcom/zui/gallery/data/TagClustering$1;
.super Ljava/lang/Object;
.source "TagClustering.java"

# interfaces
.implements Lcom/zui/gallery/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/TagClustering;->run(Lcom/zui/gallery/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/TagClustering;

.field final synthetic val$map:Ljava/util/TreeMap;

.field final synthetic val$untagged:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/TagClustering;Ljava/util/ArrayList;Ljava/util/TreeMap;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/zui/gallery/data/TagClustering$1;->this$0:Lcom/zui/gallery/data/TagClustering;

    iput-object p2, p0, Lcom/zui/gallery/data/TagClustering$1;->val$untagged:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/zui/gallery/data/TagClustering$1;->val$map:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/zui/gallery/data/MediaItem;)V
    .locals 4

    .line 48
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    .line 50
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getTags()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 51
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 56
    aget-object v1, p2, v0

    .line 57
    iget-object v2, p0, Lcom/zui/gallery/data/TagClustering$1;->val$map:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v3, p0, Lcom/zui/gallery/data/TagClustering$1;->val$map:Ljava/util/TreeMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 52
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/zui/gallery/data/TagClustering$1;->val$untagged:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
