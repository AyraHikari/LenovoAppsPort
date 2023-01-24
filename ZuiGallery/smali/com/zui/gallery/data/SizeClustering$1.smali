.class Lcom/zui/gallery/data/SizeClustering$1;
.super Ljava/lang/Object;
.source "SizeClustering.java"

# interfaces
.implements Lcom/zui/gallery/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/SizeClustering;->run(Lcom/zui/gallery/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/SizeClustering;

.field final synthetic val$group:[Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/SizeClustering;[Ljava/util/ArrayList;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/zui/gallery/data/SizeClustering$1;->this$0:Lcom/zui/gallery/data/SizeClustering;

    iput-object p2, p0, Lcom/zui/gallery/data/SizeClustering$1;->val$group:[Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/zui/gallery/data/MediaItem;)V
    .locals 6

    .line 61
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getSize()J

    move-result-wide v0

    const/4 p1, 0x0

    .line 63
    :goto_0
    invoke-static {}, Lcom/zui/gallery/data/SizeClustering;->access$000()[J

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_1

    .line 64
    invoke-static {}, Lcom/zui/gallery/data/SizeClustering;->access$000()[J

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    aget-wide v4, v2, v3

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    move p1, v3

    goto :goto_0

    .line 69
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/data/SizeClustering$1;->val$group:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/zui/gallery/data/SizeClustering$1;->val$group:[Ljava/util/ArrayList;

    aput-object v0, v1, p1

    .line 74
    :cond_2
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
