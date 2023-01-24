.class public Lcom/zui/gallery/ui/IndicatorView;
.super Landroid/view/View;
.source "IndicatorView.java"


# static fields
.field private static INTERVALE:I = 0x19

.field private static TAG:Ljava/lang/String; = "IndicatiorView"

.field private static mRadius:F = 6.0f

.field private static scale_limit:F = 0.5f


# instance fields
.field private mCenterX:F

.field private mCircleCount:I

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mOffset:F

.field private mPaintBlack:Landroid/graphics/Paint;

.field private mPaintGray:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/zui/gallery/ui/IndicatorView;->mCircleCount:I

    .line 22
    iput v0, p0, Lcom/zui/gallery/ui/IndicatorView;->mCurrentIndex:I

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/zui/gallery/ui/IndicatorView;->mOffset:F

    .line 47
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/IndicatorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/zui/gallery/ui/IndicatorView;->mCircleCount:I

    .line 22
    iput p2, p0, Lcom/zui/gallery/ui/IndicatorView;->mCurrentIndex:I

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/zui/gallery/ui/IndicatorView;->mOffset:F

    .line 42
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/IndicatorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/zui/gallery/ui/IndicatorView;->mCircleCount:I

    .line 22
    iput p2, p0, Lcom/zui/gallery/ui/IndicatorView;->mCurrentIndex:I

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/zui/gallery/ui/IndicatorView;->mOffset:F

    .line 37
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/IndicatorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/zui/gallery/ui/IndicatorView;->mCircleCount:I

    .line 22
    iput p2, p0, Lcom/zui/gallery/ui/IndicatorView;->mCurrentIndex:I

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/zui/gallery/ui/IndicatorView;->mOffset:F

    .line 32
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/IndicatorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 51
    iput-object p1, p0, Lcom/zui/gallery/ui/IndicatorView;->mContext:Landroid/content/Context;

    .line 52
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/IndicatorView;->mPaintBlack:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/zui/gallery/ui/IndicatorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object p1, p0, Lcom/zui/gallery/ui/IndicatorView;->mPaintBlack:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object p1, p0, Lcom/zui/gallery/ui/IndicatorView;->mPaintBlack:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/zui/gallery/ui/IndicatorView;->mPaintBlack:Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/IndicatorView;->mPaintGray:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/zui/gallery/ui/IndicatorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 75
    iget v0, p0, Lcom/zui/gallery/ui/IndicatorView;->mCircleCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/zui/gallery/ui/IndicatorView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/zui/gallery/ui/IndicatorView;->mRadius:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    .line 78
    :goto_0
    iget v2, p0, Lcom/zui/gallery/ui/IndicatorView;->mCircleCount:I

    if-ge v1, v2, :cond_0

    .line 79
    iget v2, p0, Lcom/zui/gallery/ui/IndicatorView;->mCenterX:F

    sget v3, Lcom/zui/gallery/ui/IndicatorView;->INTERVALE:I

    mul-int/2addr v3, v1

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 80
    sget v3, Lcom/zui/gallery/ui/IndicatorView;->mRadius:F

    iget-object v4, p0, Lcom/zui/gallery/ui/IndicatorView;->mPaintGray:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 84
    iget v1, p0, Lcom/zui/gallery/ui/IndicatorView;->mCenterX:F

    iget v2, p0, Lcom/zui/gallery/ui/IndicatorView;->mCurrentIndex:I

    sget v3, Lcom/zui/gallery/ui/IndicatorView;->INTERVALE:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 85
    iget v2, p0, Lcom/zui/gallery/ui/IndicatorView;->mOffset:F

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 87
    sget v3, Lcom/zui/gallery/ui/IndicatorView;->scale_limit:F

    cmpl-float v3, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-ltz v3, :cond_1

    sub-float v3, v4, v2

    mul-float/2addr v3, v1

    sub-float/2addr v4, v2

    mul-float/2addr v4, v0

    .line 88
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 89
    iget v2, p0, Lcom/zui/gallery/ui/IndicatorView;->mOffset:F

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    :cond_1
    mul-float v3, v1, v2

    mul-float/2addr v2, v0

    .line 92
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 93
    iget v2, p0, Lcom/zui/gallery/ui/IndicatorView;->mOffset:F

    sub-float v3, v4, v2

    sub-float/2addr v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 96
    :goto_1
    sget v2, Lcom/zui/gallery/ui/IndicatorView;->mRadius:F

    iget-object v3, p0, Lcom/zui/gallery/ui/IndicatorView;->mPaintBlack:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 69
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 70
    div-int/lit8 p4, p4, 0x2

    sget p1, Lcom/zui/gallery/ui/IndicatorView;->INTERVALE:I

    sub-int/2addr p4, p1

    int-to-float p1, p4

    sget p2, Lcom/zui/gallery/ui/IndicatorView;->mRadius:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/zui/gallery/ui/IndicatorView;->mCenterX:F

    return-void
.end method

.method public onPageChange(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/zui/gallery/ui/IndicatorView;->mCurrentIndex:I

    .line 104
    invoke-virtual {p0}, Lcom/zui/gallery/ui/IndicatorView;->invalidate()V

    return-void
.end method

.method public onScroll(IF)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/zui/gallery/ui/IndicatorView;->mCurrentIndex:I

    .line 110
    iput p2, p0, Lcom/zui/gallery/ui/IndicatorView;->mOffset:F

    .line 111
    invoke-virtual {p0}, Lcom/zui/gallery/ui/IndicatorView;->invalidate()V

    return-void
.end method

.method public setCircleCount(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/zui/gallery/ui/IndicatorView;->mCircleCount:I

    return-void
.end method
