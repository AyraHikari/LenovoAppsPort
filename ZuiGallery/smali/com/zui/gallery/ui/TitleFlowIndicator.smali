.class public Lcom/zui/gallery/ui/TitleFlowIndicator;
.super Landroid/widget/TextView;
.source "TitleFlowIndicator.java"


# static fields
.field private static FOOTER_COLOR:I = 0x0

.field private static final FOOTER_LINE_HEIGHT:F = 0.0f

.field private static final FOOTER_TRIANGLE_HEIGHT:F = 10.0f

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SELECTED_BOLD:Z = false

.field private static SELECTED_COLOR:I = 0x0

.field private static final SERIF:I = 0x2

.field private static TEXT_COLOR:I = 0x0

.field private static final TEXT_SIZE:I = 0xf


# instance fields
.field private currentPosition:I

.field private footerLineHeight:F

.field private footerTriangleHeight:F

.field private paintFooterLine:Landroid/graphics/Paint;

.field private paintFooterTriangle:Landroid/graphics/Paint;

.field private paintSelected:Landroid/graphics/Paint;

.field private paintText:Landroid/graphics/Paint;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->currentPosition:I

    .line 53
    invoke-direct {p0}, Lcom/zui/gallery/ui/TitleFlowIndicator;->initColors()V

    .line 54
    sget v1, Lcom/zui/gallery/ui/TitleFlowIndicator;->TEXT_COLOR:I

    sget v3, Lcom/zui/gallery/ui/TitleFlowIndicator;->SELECTED_COLOR:I

    sget v7, Lcom/zui/gallery/ui/TitleFlowIndicator;->FOOTER_COLOR:I

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41700000    # 15.0f

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/zui/gallery/ui/TitleFlowIndicator;->initDraw(IFIZFFI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->currentPosition:I

    .line 65
    invoke-direct {p0}, Lcom/zui/gallery/ui/TitleFlowIndicator;->initColors()V

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "typeface"

    .line 66
    invoke-interface {p2, v0, v1, p1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "textStyle"

    .line 67
    invoke-interface {p2, v0, v2, p1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 69
    sget v9, Lcom/zui/gallery/ui/TitleFlowIndicator;->FOOTER_COLOR:I

    const/4 v8, 0x0

    .line 70
    iput v8, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->footerLineHeight:F

    const/high16 p2, 0x41200000    # 10.0f

    .line 71
    iput p2, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->footerTriangleHeight:F

    .line 72
    sget v5, Lcom/zui/gallery/ui/TitleFlowIndicator;->SELECTED_COLOR:I

    .line 74
    sget v3, Lcom/zui/gallery/ui/TitleFlowIndicator;->TEXT_COLOR:I

    const/high16 v7, 0x41700000    # 15.0f

    const/4 v6, 0x0

    move-object v2, p0

    move v4, v7

    .line 77
    invoke-direct/range {v2 .. v9}, Lcom/zui/gallery/ui/TitleFlowIndicator;->initDraw(IFIZFFI)V

    .line 78
    invoke-direct {p0, v1}, Lcom/zui/gallery/ui/TitleFlowIndicator;->getTypefaceByIndex(I)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->typeface:Landroid/graphics/Typeface;

    .line 79
    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method private getTypefaceByIndex(I)Landroid/graphics/Typeface;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 219
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object p1

    .line 217
    :cond_0
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    return-object p1

    .line 214
    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    return-object p1

    .line 211
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    return-object p1
.end method

.method private initColors()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TitleFlowIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/zui/gallery/ui/TitleFlowIndicator;->SELECTED_COLOR:I

    .line 106
    sput v0, Lcom/zui/gallery/ui/TitleFlowIndicator;->FOOTER_COLOR:I

    .line 107
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TitleFlowIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/zui/gallery/ui/TitleFlowIndicator;->TEXT_COLOR:I

    return-void
.end method

.method private initDraw(IFIZFFI)V
    .locals 1

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->paintText:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object p1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->paintText:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    iget-object p1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->paintText:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->paintSelected:Landroid/graphics/Paint;

    .line 91
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object p1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->paintSelected:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 93
    iget-object p1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->paintSelected:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 94
    iget-object p1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->paintSelected:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->paintFooterLine:Landroid/graphics/Paint;

    .line 96
    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object p1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->paintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {p1, p6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iget-object p1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->paintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {p1, p7}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->paintFooterTriangle:Landroid/graphics/Paint;

    .line 100
    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object p1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->paintFooterTriangle:Landroid/graphics/Paint;

    invoke-virtual {p1, p7}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private measureHeight(I)I
    .locals 2

    .line 190
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 191
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    return p1

    .line 200
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 201
    iget-object v0, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->paintText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 202
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->footerTriangleHeight:F

    float-to-int p1, p1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->footerLineHeight:F

    float-to-int p1, p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private measureWidth(I)I
    .locals 2

    .line 171
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 172
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    return p1

    .line 175
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewFlow can only be used in EXACTLY mode."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 117
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TitleFlowIndicator;->getHeight()I

    move-result v0

    .line 122
    iget v1, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->currentPosition:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    move v1, v2

    move v3, v1

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TitleFlowIndicator;->getWidth()I

    move-result v1

    mul-int/2addr v1, v3

    .line 140
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TitleFlowIndicator;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TitleFlowIndicator;->getWidth()I

    move-result v1

    mul-int/2addr v1, v4

    .line 135
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TitleFlowIndicator;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TitleFlowIndicator;->getWidth()I

    move-result v1

    .line 130
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TitleFlowIndicator;->getWidth()I

    move-result v3

    mul-int/2addr v3, v4

    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {p0}, Lcom/zui/gallery/ui/TitleFlowIndicator;->getWidth()I

    move-result v3

    move v1, v2

    .line 147
    :goto_0
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/zui/gallery/ui/TitleFlowIndicator;->paintFooterTriangle:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/TitleFlowIndicator;->measureWidth(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/TitleFlowIndicator;->measureHeight(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/ui/TitleFlowIndicator;->setMeasuredDimension(II)V

    return-void
.end method
