.class public Lcom/zui/gallery/ui/BitmapScreenNail;
.super Ljava/lang/Object;
.source "BitmapScreenNail.java"

# interfaces
.implements Lcom/zui/gallery/ui/ScreenNail;


# instance fields
.field private final mBitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/zui/gallery/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/BitmapScreenNail;->mBitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    return-void
.end method


# virtual methods
.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/zui/gallery/ui/BitmapScreenNail;->mBitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/BitmapTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/zui/gallery/ui/BitmapScreenNail;->mBitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-interface {p1, v0, p2, p3}, Lcom/zui/gallery/glrenderer/GLCanvas;->drawTexture(Lcom/zui/gallery/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/zui/gallery/ui/BitmapScreenNail;->mBitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/zui/gallery/ui/BitmapScreenNail;->mBitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public noDraw()V
    .locals 0

    return-void
.end method

.method public recycle()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/zui/gallery/ui/BitmapScreenNail;->mBitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;->recycle()V

    return-void
.end method
