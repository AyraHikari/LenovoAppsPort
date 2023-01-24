.class public Lcom/zui/gallery/ui/mosaic/DrawState;
.super Ljava/lang/Object;
.source "DrawState.java"


# static fields
.field public static final DEFAULT_COLOR:I

.field protected static final TOUCH_TOLERANCE:I = 0x4


# instance fields
.field protected last_X:I

.field protected last_Y:I

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mCanvas:Landroid/graphics/Canvas;

.field protected mPath:Landroid/graphics/Path;

.field protected paint:Lcom/zui/gallery/ui/mosaic/CPaint;

.field protected penColor:I

.field protected penWidth:I

.field protected refresh_LastX:I

.field protected refresh_LastY:I

.field protected refresh_X:I

.field protected refresh_Y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xff

    const/16 v1, 0x6a

    .line 11
    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/zui/gallery/ui/mosaic/DrawState;->DEFAULT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/zui/gallery/ui/mosaic/CPaint;

    invoke-direct {v0}, Lcom/zui/gallery/ui/mosaic/CPaint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->paint:Lcom/zui/gallery/ui/mosaic/CPaint;

    .line 19
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->mPath:Landroid/graphics/Path;

    const/16 v0, 0xa

    .line 22
    iput v0, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->penWidth:I

    .line 23
    sget v0, Lcom/zui/gallery/ui/mosaic/DrawState;->DEFAULT_COLOR:I

    iput v0, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->penColor:I

    .line 27
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/mosaic/DrawState;->setPathBitmap(Landroid/graphics/Bitmap;)V

    .line 29
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->paint:Lcom/zui/gallery/ui/mosaic/CPaint;

    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/DrawState;->getPenWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStrokeWidth(F)V

    .line 30
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->paint:Lcom/zui/gallery/ui/mosaic/CPaint;

    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/DrawState;->getPenColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/mosaic/CPaint;->setColor(I)V

    .line 31
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->paint:Lcom/zui/gallery/ui/mosaic/CPaint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 32
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->paint:Lcom/zui/gallery/ui/mosaic/CPaint;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStrokeMiter(F)V

    .line 33
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->paint:Lcom/zui/gallery/ui/mosaic/CPaint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->paint:Lcom/zui/gallery/ui/mosaic/CPaint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 36
    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/DrawState;->statisticEvent()V

    return-void
.end method


# virtual methods
.method public getPathBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPenColor()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->penColor:I

    return v0
.end method

.method public getPenWidth()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->penWidth:I

    return v0
.end method

.method public mouseDown(Landroid/graphics/Point;)V
    .locals 4

    .line 40
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 41
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 43
    iput v0, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->last_X:I

    .line 44
    iput p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->last_Y:I

    .line 45
    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 46
    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->last_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->last_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 47
    iput v0, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->refresh_X:I

    .line 48
    iput p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->refresh_Y:I

    .line 49
    iput v0, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->refresh_LastX:I

    .line 50
    iput p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->refresh_LastY:I

    .line 51
    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v0, v0

    int-to-float p1, p1

    iget-object v2, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->paint:Lcom/zui/gallery/ui/mosaic/CPaint;

    invoke-virtual {v1, v0, p1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public mouseMove(Landroid/graphics/Point;)V
    .locals 6

    .line 55
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 56
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 58
    iget v1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->last_X:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    .line 59
    iget v2, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->last_Y:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    cmpl-float v1, v1, v3

    if-gez v1, :cond_0

    cmpl-float v1, v2, v3

    if-ltz v1, :cond_1

    .line 61
    :cond_0
    iget v1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->last_X:I

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->refresh_X:I

    .line 62
    iget v3, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->last_Y:I

    add-int v4, p1, v3

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->refresh_Y:I

    .line 63
    iget-object v5, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->mPath:Landroid/graphics/Path;

    int-to-float v1, v1

    int-to-float v3, v3

    int-to-float v2, v2

    int-to-float v4, v4

    invoke-virtual {v5, v1, v3, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 65
    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->paint:Lcom/zui/gallery/ui/mosaic/CPaint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 67
    iput v0, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->last_X:I

    .line 68
    iput p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->last_Y:I

    .line 69
    iget p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->refresh_X:I

    iput p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->refresh_LastX:I

    .line 70
    iget p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->refresh_Y:I

    iput p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->refresh_LastY:I

    :cond_1
    return-void
.end method

.method public mouseUp(Landroid/graphics/Point;)V
    .locals 2

    .line 75
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 76
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 78
    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->mPath:Landroid/graphics/Path;

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 79
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->paint:Lcom/zui/gallery/ui/mosaic/CPaint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public resetPath()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public setPathBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 101
    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->mBitmap:Landroid/graphics/Bitmap;

    .line 102
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->mCanvas:Landroid/graphics/Canvas;

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public setPenColor(I)V
    .locals 1

    .line 92
    iput p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->penColor:I

    .line 93
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->paint:Lcom/zui/gallery/ui/mosaic/CPaint;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/mosaic/CPaint;->setColor(I)V

    return-void
.end method

.method public setPenWidth(I)V
    .locals 1

    .line 83
    iput p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->penWidth:I

    .line 84
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/DrawState;->paint:Lcom/zui/gallery/ui/mosaic/CPaint;

    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/DrawState;->getPenWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/mosaic/CPaint;->setStrokeWidth(F)V

    return-void
.end method

.method protected statisticEvent()V
    .locals 0

    return-void
.end method
