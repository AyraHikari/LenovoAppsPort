.class public Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;
.super Lcom/zui/gallery/filtershow/filters/ImageFilter;
.source "ImageFilterColorBorder.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageFilterColorBorder"


# instance fields
.field mBorderPath:Landroid/graphics/Path;

.field mBounds:Landroid/graphics/RectF;

.field mInsideBounds:Landroid/graphics/RectF;

.field mPaint:Landroid/graphics/Paint;

.field private mParameters:Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mPaint:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBounds:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mInsideBounds:Landroid/graphics/RectF;

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBorderPath:Landroid/graphics/Path;

    const-string v0, "Border"

    .line 35
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mName:Ljava/lang/String;

    return-void
.end method

.method private applyHelper(Landroid/graphics/Canvas;II)V
    .locals 5

    .line 53
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->getBorderSize()I

    move-result v0

    int-to-float v0, v0

    .line 57
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->getBorderRadius()I

    move-result v1

    int-to-float v1, v1

    .line 59
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 60
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBounds:Landroid/graphics/RectF;

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 63
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 64
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {p2, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr v0, p2

    .line 66
    iget-object p3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    mul-float/2addr v0, p3

    div-float/2addr v1, p2

    .line 67
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    mul-float/2addr v1, p2

    .line 69
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mInsideBounds:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBounds:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr p3, v0

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    invoke-virtual {p2, p3, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 73
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBorderPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBounds:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 74
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBorderPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBounds:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 75
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBorderPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBounds:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBorderPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBounds:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBorderPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mInsideBounds:Landroid/graphics/RectF;

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p3, v1, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 80
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mBorderPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 1

    .line 85
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->applyHelper(Landroid/graphics/Canvas;II)V

    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 4

    .line 39
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;-><init>(III)V

    return-object v0
.end method

.method public getParameters()Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    return-object v0
.end method

.method public useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    .line 45
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    return-void
.end method
