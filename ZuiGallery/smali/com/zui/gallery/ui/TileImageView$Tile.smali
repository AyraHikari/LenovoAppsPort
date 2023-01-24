.class Lcom/zui/gallery/ui/TileImageView$Tile;
.super Lcom/zui/gallery/glrenderer/UploadedTexture;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tile"
.end annotation


# instance fields
.field public mDecodedTile:Landroid/graphics/Bitmap;

.field public mNext:Lcom/zui/gallery/ui/TileImageView$Tile;

.field public mTileLevel:I

.field public volatile mTileState:I

.field public mX:I

.field public mY:I

.field final synthetic this$0:Lcom/zui/gallery/ui/TileImageView;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/TileImageView;III)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->this$0:Lcom/zui/gallery/ui/TileImageView;

    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;-><init>()V

    const/4 p1, 0x1

    .line 700
    iput p1, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    .line 703
    iput p2, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mX:I

    .line 704
    iput p3, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mY:I

    .line 705
    iput p4, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileLevel:I

    return-void
.end method


# virtual methods
.method decode()Z
    .locals 5

    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->this$0:Lcom/zui/gallery/ui/TileImageView;

    invoke-static {v0}, Lcom/zui/gallery/ui/TileImageView;->access$500(Lcom/zui/gallery/ui/TileImageView;)Lcom/zui/gallery/ui/TileImageView$TileSource;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileLevel:I

    iget v2, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mX:I

    iget v3, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mY:I

    .line 718
    invoke-static {}, Lcom/zui/gallery/ui/TileImageView;->access$400()I

    move-result v4

    .line 717
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zui/gallery/ui/TileImageView$TileSource;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/decode/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "TileImageView"

    const-string v2, "fail to decode tile"

    .line 720
    invoke-static {v1, v2, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 722
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getParentTile()Lcom/zui/gallery/ui/TileImageView$Tile;
    .locals 4

    .line 763
    iget v0, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->this$0:Lcom/zui/gallery/ui/TileImageView;

    iget v1, v1, Lcom/zui/gallery/ui/TileImageView;->mLevelCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 764
    :cond_0
    invoke-static {}, Lcom/zui/gallery/ui/TileImageView;->access$400()I

    move-result v0

    iget v1, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v2, v1, 0x1

    shl-int/2addr v0, v2

    .line 765
    iget v2, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mX:I

    div-int/2addr v2, v0

    mul-int/2addr v2, v0

    .line 766
    iget v3, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mY:I

    div-int/2addr v3, v0

    mul-int/2addr v0, v3

    .line 767
    iget-object v3, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->this$0:Lcom/zui/gallery/ui/TileImageView;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v2, v0, v1}, Lcom/zui/gallery/ui/TileImageView;->access$600(Lcom/zui/gallery/ui/TileImageView;III)Lcom/zui/gallery/ui/TileImageView$Tile;

    move-result-object v0

    return-object v0
.end method

.method public getTextureHeight()I
    .locals 1

    .line 752
    invoke-static {}, Lcom/zui/gallery/ui/TileImageView;->access$400()I

    move-result v0

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .line 747
    invoke-static {}, Lcom/zui/gallery/ui/TileImageView;->access$400()I

    move-result v0

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 710
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 731
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->this$0:Lcom/zui/gallery/ui/TileImageView;

    iget v0, v0, Lcom/zui/gallery/ui/TileImageView;->mImageWidth:I

    iget v1, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileLevel:I

    shr-int/2addr v0, v1

    .line 732
    iget-object v1, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->this$0:Lcom/zui/gallery/ui/TileImageView;

    iget v1, v1, Lcom/zui/gallery/ui/TileImageView;->mImageHeight:I

    iget v2, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mY:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileLevel:I

    shr-int/2addr v1, v2

    .line 733
    invoke-static {}, Lcom/zui/gallery/ui/TileImageView;->access$400()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {}, Lcom/zui/gallery/ui/TileImageView;->access$400()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/ui/TileImageView$Tile;->setSize(II)V

    .line 735
    iget-object v0, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 736
    iput-object v1, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    .line 737
    iput v1, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileState:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 772
    iget v1, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mX:I

    .line 773
    invoke-static {}, Lcom/zui/gallery/ui/TileImageView;->access$400()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mY:I

    invoke-static {}, Lcom/zui/gallery/ui/TileImageView;->access$400()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->this$0:Lcom/zui/gallery/ui/TileImageView;

    invoke-static {v1}, Lcom/zui/gallery/ui/TileImageView;->access$700(Lcom/zui/gallery/ui/TileImageView;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->this$0:Lcom/zui/gallery/ui/TileImageView;

    iget v1, v1, Lcom/zui/gallery/ui/TileImageView;->mLevelCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "tile(%s, %s, %s / %s)"

    .line 772
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(III)V
    .locals 0

    .line 756
    iput p1, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mX:I

    .line 757
    iput p2, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mY:I

    .line 758
    iput p3, p0, Lcom/zui/gallery/ui/TileImageView$Tile;->mTileLevel:I

    .line 759
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TileImageView$Tile;->invalidateContent()V

    return-void
.end method
