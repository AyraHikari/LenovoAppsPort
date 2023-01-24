.class Lcom/zui/gallery/glrenderer/TiledTexture$Tile;
.super Lcom/zui/gallery/glrenderer/UploadedTexture;
.source "TiledTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/glrenderer/TiledTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tile"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public contentHeight:I

.field public contentWidth:I

.field public nextFreeTile:Lcom/zui/gallery/glrenderer/TiledTexture$Tile;

.field public offsetX:I

.field public offsetY:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/glrenderer/TiledTexture$1;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 12

    .line 139
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 143
    iget v1, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v1, v1, 0x1

    .line 144
    iget v2, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v2, v2, 0x1

    .line 145
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 149
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 151
    :cond_0
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v5

    if-nez v5, :cond_6

    .line 152
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->prepareResources()V

    .line 161
    :cond_1
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isColorModeNature()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 164
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$300()Landroid/graphics/Canvas;

    move-result-object v6

    int-to-float v7, v1

    int-to-float v8, v2

    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$200()Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 166
    :cond_2
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v6

    int-to-float v7, v1

    int-to-float v8, v2

    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$200()Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    if-lez v1, :cond_3

    .line 174
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v6

    add-int/lit8 v1, v1, -0x1

    int-to-float v9, v1

    const/4 v8, 0x0

    const/high16 v10, 0x43800000    # 256.0f

    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$400()Landroid/graphics/Paint;

    move-result-object v11

    move v7, v9

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    if-lez v2, :cond_4

    .line 176
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v6

    const/4 v7, 0x0

    add-int/lit8 v2, v2, -0x1

    int-to-float v10, v2

    const/high16 v9, 0x43800000    # 256.0f

    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$400()Landroid/graphics/Paint;

    move-result-object v11

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    const/16 v0, 0xfe

    if-ge v3, v0, :cond_5

    .line 178
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v6

    int-to-float v9, v3

    const/4 v8, 0x0

    const/high16 v10, 0x43800000    # 256.0f

    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$400()Landroid/graphics/Paint;

    move-result-object v11

    move v7, v9

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    if-ge v4, v0, :cond_8

    .line 180
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v6

    const/4 v7, 0x0

    int-to-float v10, v4

    const/high16 v9, 0x43800000    # 256.0f

    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$400()Landroid/graphics/Paint;

    move-result-object v11

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 154
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetBitmap error sCanvas: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$100()Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] is null or localBitmapRef:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "] isRecycled!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TiledTexture"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_7
    const/4 v5, 0x0

    :cond_8
    :goto_1
    if-eqz v5, :cond_9

    .line 183
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$500()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/zui/gallery/glrenderer/TiledTexture;->access$600()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public setSize(II)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->contentWidth:I

    .line 128
    iput p2, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->contentHeight:I

    add-int/lit8 p1, p1, 0x2

    .line 129
    iput p1, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->mWidth:I

    add-int/lit8 p2, p2, 0x2

    .line 130
    iput p2, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->mHeight:I

    const/16 p1, 0x100

    .line 131
    iput p1, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->mTextureWidth:I

    .line 132
    iput p1, p0, Lcom/zui/gallery/glrenderer/TiledTexture$Tile;->mTextureHeight:I

    return-void
.end method
