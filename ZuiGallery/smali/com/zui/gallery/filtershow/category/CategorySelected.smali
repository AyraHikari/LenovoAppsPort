.class public Lcom/zui/gallery/filtershow/category/CategorySelected;
.super Landroid/view/View;
.source "CategorySelected.java"


# instance fields
.field private mMargin:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/CategorySelected;->mPaint:Landroid/graphics/Paint;

    const/16 p1, 0x14

    .line 14
    iput p1, p0, Lcom/zui/gallery/filtershow/category/CategorySelected;->mMargin:I

    .line 18
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategorySelected;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060358

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/category/CategorySelected;->mMargin:I

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategorySelected;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 23
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategorySelected;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/category/CategorySelected;->mMargin:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategorySelected;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategorySelected;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/CategorySelected;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategorySelected;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategorySelected;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 28
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/CategorySelected;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/zui/gallery/filtershow/category/CategorySelected;->mMargin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/CategorySelected;->mPaint:Landroid/graphics/Paint;

    .line 27
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
