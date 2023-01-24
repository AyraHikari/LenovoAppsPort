.class public Lcom/zui/gallery/glrenderer/ColorTexture;
.super Ljava/lang/Object;
.source "ColorTexture.java"

# interfaces
.implements Lcom/zui/gallery/glrenderer/Texture;


# instance fields
.field private final mColor:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/zui/gallery/glrenderer/ColorTexture;->mColor:I

    const/4 p1, 0x1

    .line 32
    iput p1, p0, Lcom/zui/gallery/glrenderer/ColorTexture;->mWidth:I

    .line 33
    iput p1, p0, Lcom/zui/gallery/glrenderer/ColorTexture;->mHeight:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 6

    .line 38
    iget v4, p0, Lcom/zui/gallery/glrenderer/ColorTexture;->mWidth:I

    iget v5, p0, Lcom/zui/gallery/glrenderer/ColorTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/ColorTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V
    .locals 6

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    .line 43
    iget v5, p0, Lcom/zui/gallery/glrenderer/ColorTexture;->mColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/GLCanvas;->fillRect(FFFFI)V

    return-void
.end method

.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6

    .line 49
    iget p2, p3, Landroid/graphics/RectF;->left:F

    float-to-int v2, p2

    iget p2, p3, Landroid/graphics/RectF;->top:F

    float-to-int v3, p2

    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget v0, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, v0

    float-to-int v4, p2

    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    iget p3, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, p3

    float-to-int v5, p2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/ColorTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/zui/gallery/glrenderer/ColorTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/zui/gallery/glrenderer/ColorTexture;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 55
    iget v0, p0, Lcom/zui/gallery/glrenderer/ColorTexture;->mColor:I

    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->isOpaque(I)Z

    move-result v0

    return v0
.end method

.method public setSize(II)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/zui/gallery/glrenderer/ColorTexture;->mWidth:I

    .line 60
    iput p2, p0, Lcom/zui/gallery/glrenderer/ColorTexture;->mHeight:I

    return-void
.end method
