.class public Lcom/zui/gallery/ui/mosaic/EraserState;
.super Lcom/zui/gallery/ui/mosaic/DrawState;
.source "EraserState.java"


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 10
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/mosaic/DrawState;-><init>(Landroid/graphics/Bitmap;)V

    .line 11
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/EraserState;->paint:Lcom/zui/gallery/ui/mosaic/CPaint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/mosaic/CPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method public mouseUp(Landroid/graphics/Point;)V
    .locals 2

    .line 15
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 16
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 18
    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/EraserState;->mPath:Landroid/graphics/Path;

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 19
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/EraserState;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/EraserState;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/EraserState;->paint:Lcom/zui/gallery/ui/mosaic/CPaint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
