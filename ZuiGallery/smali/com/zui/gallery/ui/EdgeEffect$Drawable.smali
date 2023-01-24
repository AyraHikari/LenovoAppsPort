.class Lcom/zui/gallery/ui/EdgeEffect$Drawable;
.super Lcom/zui/gallery/glrenderer/ResourceTexture;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/EdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Drawable"
.end annotation


# instance fields
.field private mAlpha:I

.field private mBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 416
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 412
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->mBounds:Landroid/graphics/Rect;

    const/16 p1, 0xff

    .line 413
    iput p1, p0, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->mAlpha:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 7

    const/4 v0, 0x1

    .line 436
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 437
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->mAlpha:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->multiplyAlpha(F)V

    .line 438
    iget-object v0, p0, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->mBounds:Landroid/graphics/Rect;

    .line 439
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 440
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 420
    invoke-virtual {p0}, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->getWidth()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 432
    iput p1, p0, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->mAlpha:I

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
