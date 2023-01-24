.class Lcom/zui/gallery/data/ClusterAlbumSet$1;
.super Ljava/lang/Object;
.source "ClusterAlbumSet.java"

# interfaces
.implements Lcom/zui/gallery/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/ClusterAlbumSet;->updateClustersContents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/ClusterAlbumSet;

.field final synthetic val$existing:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/ClusterAlbumSet;Ljava/util/HashSet;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/zui/gallery/data/ClusterAlbumSet$1;->this$0:Lcom/zui/gallery/data/ClusterAlbumSet;

    iput-object p2, p0, Lcom/zui/gallery/data/ClusterAlbumSet$1;->val$existing:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/zui/gallery/data/MediaItem;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/zui/gallery/data/ClusterAlbumSet$1;->val$existing:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
