.class public Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;
.super Landroid/view/View;
.source "ColorSVRectView.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


# static fields
.field public static final BORDER_SIZE:F = 20.0f

.field public static final DOT_SIZE:F = 20.0f


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:F

.field mColorListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/colorpicker/ColorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCtrX:F

.field private mCtrY:F

.field private mDotPaint:Landroid/graphics/Paint;

.field private mDotRadus:F

.field private mDotX:F

.field private mDotY:F

.field private mDpToPix:F

.field private mHSVO:[F

.field private mHeight:I

.field private mPaint1:Landroid/graphics/Paint;

.field mRect:Landroid/graphics/RectF;

.field private mSliderColor:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x42c80000    # 100.0f

    .line 42
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mCtrY:F

    .line 45
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mCtrX:F

    .line 46
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x7fc00000    # Float.NaN

    .line 50
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotX:F

    const p2, -0xcc4a1b

    .line 52
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mSliderColor:I

    const/4 p2, 0x4

    new-array p2, p2, [F

    .line 53
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mHSVO:[F

    .line 54
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mRect:Landroid/graphics/RectF;

    .line 218
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mColorListeners:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 66
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDpToPix:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float v1, p2, v0

    .line 67
    iput v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotRadus:F

    mul-float/2addr p2, v0

    .line 68
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mBorder:F

    .line 70
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mPaint1:Landroid/graphics/Paint;

    .line 73
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 75
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotPaint:Landroid/graphics/Paint;

    const p2, 0x646464

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const p1, 0x888888

    .line 76
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mSliderColor:I

    goto :goto_0

    .line 78
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0501a7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mSliderColor:I

    .line 81
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mPaint1:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mPaint1:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/16 p1, 0x40

    const/16 p2, 0x2e

    .line 85
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mBitmap:Landroid/graphics/Bitmap;

    .line 86
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->fillBitmap()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setUpColorPanel()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->updateDot()V

    .line 112
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->updateDotPaint()V

    .line 113
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->fillBitmap()V

    return-void
.end method

.method private updateDot()V
    .locals 12

    .line 181
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mHSVO:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v1, 0x1

    .line 182
    aget v1, v0, v1

    float-to-double v1, v1

    const/4 v3, 0x2

    .line 183
    aget v3, v0, v3

    float-to-double v3, v3

    const/4 v5, 0x3

    .line 184
    aget v0, v0, v5

    .line 186
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mBorder:F

    float-to-double v5, v0

    iget v7, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mHeight:I

    int-to-float v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v10, v0, v9

    sub-float/2addr v8, v10

    float-to-double v10, v8

    mul-double/2addr v10, v1

    add-double/2addr v5, v10

    double-to-float v1, v5

    iput v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotX:F

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    int-to-float v3, v7

    mul-float/2addr v9, v0

    sub-float/2addr v3, v9

    float-to-double v3, v3

    mul-double/2addr v1, v3

    float-to-double v3, v0

    add-double/2addr v1, v3

    double-to-float v0, v1

    .line 187
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotY:F

    return-void
.end method

.method private updateDotPaint()V
    .locals 9

    const/4 v0, 0x4

    new-array v5, v0, [I

    .line 192
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mSliderColor:I

    const/4 v2, 0x0

    aput v1, v5, v2

    const/4 v3, 0x1

    aput v1, v5, v3

    const/4 v1, 0x2

    const/high16 v3, 0x66000000

    aput v3, v5, v1

    const/4 v1, 0x3

    aput v2, v5, v1

    .line 194
    new-instance v8, Landroid/graphics/RadialGradient;

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotX:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotY:F

    iget v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotRadus:F

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 196
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3e9eb852    # 0.31f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method fillBitmap()V
    .locals 9

    .line 95
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 96
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int v0, v7, v8

    .line 97
    new-array v2, v0, [I

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 99
    iget-object v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mHSVO:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v1, v4

    :goto_0
    if-ge v4, v0, :cond_0

    .line 101
    rem-int v3, v4, v7

    int-to-float v3, v3

    int-to-float v5, v7

    div-float/2addr v3, v5

    .line 102
    div-int v6, v4, v7

    sub-int v6, v7, v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    const/4 v5, 0x1

    aput v3, v1, v5

    const/4 v3, 0x2

    aput v6, v1, v3

    .line 105
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method public notifyColorListeners([F)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;

    .line 222
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
    .locals 4

    .line 120
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 123
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mBorder:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 124
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mBorder:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 125
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mBorder:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 126
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mBorder:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 127
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mPaint1:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 129
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotX:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 131
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotY:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotRadus:F

    iget-object v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 91
    invoke-super {p0, p1, p1}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mWidth:I

    .line 171
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mHeight:I

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    .line 172
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mCtrY:F

    int-to-float p1, p1

    div-float/2addr p1, p3

    .line 173
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mCtrX:F

    .line 175
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->setUpColorPanel()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 143
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotX:F

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotRadus:F

    sub-float v2, v0, v1

    float-to-int v2, v2

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotY:F

    sub-float v4, v3, v1

    float-to-int v4, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    add-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {p0, v2, v4, v0, v1}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->invalidate(IIII)V

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 148
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mBorder:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mBorder:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 149
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mBorder:F

    sub-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mBorder:F

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 150
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotX:F

    .line 151
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotY:F

    .line 152
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mBorder:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 157
    :goto_0
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotX:F

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mBorder:F

    sub-float/2addr p1, v1

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v1, v2

    sub-float/2addr v3, v1

    div-float/2addr p1, v3

    .line 158
    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mHSVO:[F

    const/4 v2, 0x2

    aput v0, v1, v2

    const/4 v0, 0x1

    .line 159
    aput p1, v1, v0

    .line 160
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->notifyColorListeners([F)V

    .line 161
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->updateDotPaint()V

    .line 162
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotX:F

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotRadus:F

    sub-float v2, p1, v1

    float-to-int v2, v2

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mDotY:F

    sub-float v4, v3, v1

    float-to-int v4, v4

    add-float/2addr p1, v1

    float-to-int p1, p1

    add-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {p0, v2, v4, p1, v1}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->invalidate(IIII)V

    return v0
.end method

.method public removeColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setColor([F)V
    .locals 4

    const/4 v0, 0x0

    .line 202
    aget v1, p1, v0

    iget-object v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mHSVO:[F

    aget v3, v2, v0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget v3, p1, v1

    aget v1, v2, v1

    cmpl-float v1, v3, v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aget v3, p1, v1

    aget v1, v2, v1

    cmpl-float v1, v3, v1

    if-nez v1, :cond_0

    const/4 v0, 0x3

    .line 205
    aget p1, p1, v0

    aput p1, v2, v0

    return-void

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->mHSVO:[F

    array-length v2, v1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->setUpColorPanel()V

    .line 211
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->invalidate()V

    .line 213
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->updateDot()V

    .line 214
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSVRectView;->updateDotPaint()V

    return-void
.end method
