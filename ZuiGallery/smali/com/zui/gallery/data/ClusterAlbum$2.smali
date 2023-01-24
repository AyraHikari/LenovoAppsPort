.class Lcom/zui/gallery/data/ClusterAlbum$2;
.super Ljava/lang/Object;
.source "ClusterAlbum.java"

# interfaces
.implements Lcom/zui/gallery/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/ClusterAlbum;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/ClusterAlbum;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/ClusterAlbum;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/zui/gallery/data/ClusterAlbum$2;->this$0:Lcom/zui/gallery/data/ClusterAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/zui/gallery/data/MediaItem;)V
    .locals 0

    .line 131
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->delete()V

    :cond_0
    return-void
.end method
