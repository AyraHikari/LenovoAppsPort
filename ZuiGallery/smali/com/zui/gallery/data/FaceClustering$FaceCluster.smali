.class Lcom/zui/gallery/data/FaceClustering$FaceCluster;
.super Ljava/lang/Object;
.source "FaceClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/FaceClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceCluster"
.end annotation


# instance fields
.field mCoverFaceIndex:I

.field mCoverItem:Lcom/zui/gallery/data/MediaItem;

.field mCoverRegion:Landroid/graphics/Rect;

.field mName:Ljava/lang/String;

.field mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zui/gallery/data/FaceClustering;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/FaceClustering;Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->this$0:Lcom/zui/gallery/data/FaceClustering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mPaths:Ljava/util/ArrayList;

    .line 44
    iput-object p2, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Lcom/zui/gallery/data/MediaItem;I)V
    .locals 4

    .line 48
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFaces()[Lcom/zui/gallery/data/Face;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    aget-object v0, v0, p2

    .line 53
    iget-object v1, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/zui/gallery/data/MediaItem;

    if-nez v1, :cond_0

    .line 54
    iput-object p1, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/zui/gallery/data/MediaItem;

    .line 55
    invoke-virtual {v0}, Lcom/zui/gallery/data/Face;->getPosition()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mCoverRegion:Landroid/graphics/Rect;

    .line 56
    iput p2, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mCoverFaceIndex:I

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/data/Face;->getPosition()Landroid/graphics/Rect;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mCoverRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mCoverRegion:Landroid/graphics/Rect;

    .line 60
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 61
    iput-object p1, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/zui/gallery/data/MediaItem;

    .line 62
    invoke-virtual {v0}, Lcom/zui/gallery/data/Face;->getPosition()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mCoverRegion:Landroid/graphics/Rect;

    .line 63
    iput p2, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mCoverFaceIndex:I

    :cond_1
    :goto_0
    return-void
.end method

.method public getCover()Lcom/zui/gallery/data/MediaItem;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/zui/gallery/data/MediaItem;

    if-eqz v0, :cond_1

    .line 75
    invoke-static {v0}, Lcom/zui/gallery/picasasource/PicasaSource;->isPicasaImage(Lcom/zui/gallery/data/MediaObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->this$0:Lcom/zui/gallery/data/FaceClustering;

    invoke-static {v0}, Lcom/zui/gallery/data/FaceClustering;->access$000(Lcom/zui/gallery/data/FaceClustering;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/zui/gallery/data/MediaItem;

    iget v2, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mCoverFaceIndex:I

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/picasasource/PicasaSource;->getFaceItem(Landroid/content/Context;Lcom/zui/gallery/data/MediaItem;I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mCoverItem:Lcom/zui/gallery/data/MediaItem;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/zui/gallery/data/FaceClustering$FaceCluster;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
