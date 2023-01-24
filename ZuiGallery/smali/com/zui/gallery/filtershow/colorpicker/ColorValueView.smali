.class public Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;
.super Landroid/view/View;
.source "ColorValueView.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


# static fields
.field private static final BORDER_SIZE:F = 20.0f

.field private static final DOT_SIZE:F = 20.0f


# instance fields
.field private dotRadus:F

.field private mBarPaint1:Landroid/graphics/Paint;

.field private mBgcolor:I

.field private mBorder:F

.field private mColorListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/colorpicker/ColorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDotPaint:Landroid/graphics/Paint;

.field private mDotX:F

.field private mDotY:F

.field private mHSVO:[F

.field private mHeight:F

.field private mLinePaint1:Landroid/graphics/Paint;

.field private mLinePaint2:Landroid/graphics/Paint;

.field private mRadius:F

.field private mSliderColor:I

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 43
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mBgcolor:I

    const/4 p2, 0x4

    new-array p2, p2, [F

    .line 48
    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mHSVO:[F

    .line 51
    iget p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mBorder:F

    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotY:F

    .line 55
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mColorListeners:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 60
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p2, v0

    .line 61
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->dotRadus:F

    .line 62
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mBorder:F

    .line 64
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mBarPaint1:Landroid/graphics/Paint;

    .line 66
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotPaint:Landroid/graphics/Paint;

    .line 68
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mBarPaint1:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mLinePaint1:Landroid/graphics/Paint;

    const v0, -0x777778

    .line 74
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mLinePaint2:Landroid/graphics/Paint;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0501a7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mSliderColor:I

    .line 77
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mLinePaint2:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mLinePaint2:Landroid/graphics/Paint;

    const/high16 p2, 0x40800000    # 4.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private setupButton()V
    .locals 9

    .line 113
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mHSVO:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mHeight:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mBorder:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    .line 114
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotY:F

    const/4 v0, 0x4

    new-array v6, v0, [I

    .line 116
    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mSliderColor:I

    const/4 v3, 0x0

    aput v2, v6, v3

    const/4 v4, 0x1

    aput v2, v6, v4

    const/high16 v2, 0x66000000

    aput v2, v6, v1

    const/4 v1, 0x3

    aput v3, v6, v1

    .line 118
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotX:F

    iget v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotY:F

    iget v5, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->dotRadus:F

    new-array v7, v0, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 120
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3e9eb852    # 0.31f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updatePaint()V
    .locals 11

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 133
    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mHSVO:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 135
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v8

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v2

    .line 137
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    .line 139
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v6, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mBorder:F

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mHeight:F

    sub-float v7, v1, v6

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v0

    move v4, v6

    move v5, v6

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 141
    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mBarPaint1:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyColorListeners([F)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;

    .line 169
    invoke-interface {v1, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;->setColor([F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 146
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 147
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mBgcolor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 148
    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mBorder:F

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mWidth:F

    sub-float v4, v0, v3

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mHeight:F

    sub-float v5, v0, v3

    iget-object v6, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mBarPaint1:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 149
    iget v10, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotX:F

    iget v9, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotY:F

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mHeight:F

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mBorder:F

    sub-float v11, v0, v1

    iget-object v12, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mLinePaint2:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, v10

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 150
    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotX:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mBorder:F

    iget v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotY:F

    iget-object v5, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mLinePaint1:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 151
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotX:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 152
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotY:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->dotRadus:F

    iget-object v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    int-to-float p1, p1

    .line 125
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mWidth:F

    int-to-float p2, p2

    .line 126
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mHeight:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 127
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotX:F

    .line 128
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->updatePaint()V

    .line 129
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->setupButton()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 86
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotX:F

    .line 87
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotY:F

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 92
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotY:F

    .line 94
    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mBorder:F

    cmpg-float p1, p1, v2

    if-gez p1, :cond_0

    .line 95
    iput v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotY:F

    .line 98
    :cond_0
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotY:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mHeight:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mBorder:F

    sub-float v4, v2, v3

    cmpl-float p1, p1, v4

    if-lez p1, :cond_1

    sub-float/2addr v2, v3

    .line 99
    iput v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotY:F

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mHSVO:[F

    const/4 v2, 0x2

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotY:F

    iget v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mBorder:F

    sub-float/2addr v3, v4

    iget v5, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    sub-float/2addr v5, v4

    div-float/2addr v3, v5

    aput v3, p1, v2

    .line 102
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->notifyColorListeners([F)V

    .line 103
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->setupButton()V

    .line 104
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->dotRadus:F

    sub-float v2, v0, p1

    float-to-int v2, v2

    sub-float v3, v1, p1

    float-to-int v3, v3

    add-float/2addr v0, p1

    float-to-int v0, v0

    add-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {p0, v2, v3, v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->invalidate(IIII)V

    .line 106
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotX:F

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->dotRadus:F

    sub-float v1, p1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mDotY:F

    sub-float v3, v2, v0

    float-to-int v3, v3

    add-float/2addr p1, v0

    float-to-int p1, p1

    add-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p0, v1, v3, p1, v0}, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->invalidate(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public removeColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setColor([F)V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->mHSVO:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->updatePaint()V

    .line 162
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->setupButton()V

    .line 163
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorValueView;->invalidate()V

    return-void
.end method
