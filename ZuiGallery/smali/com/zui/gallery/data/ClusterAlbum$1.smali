.class Lcom/zui/gallery/data/ClusterAlbum$1;
.super Ljava/lang/Object;
.source "ClusterAlbum.java"

# interfaces
.implements Lcom/zui/gallery/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/zui/gallery/data/DataManager;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$buf:[Lcom/zui/gallery/data/MediaItem;


# direct methods
.method constructor <init>([Lcom/zui/gallery/data/MediaItem;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/zui/gallery/data/ClusterAlbum$1;->val$buf:[Lcom/zui/gallery/data/MediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/zui/gallery/data/MediaItem;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/zui/gallery/data/ClusterAlbum$1;->val$buf:[Lcom/zui/gallery/data/MediaItem;

    aput-object p2, v0, p1

    return-void
.end method
