.class public Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;
.super Landroid/view/View;
.source "ColorRectView.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


# static fields
.field public static final BORDER_SIZE:F = 10.0f

.field public static final DOT_SIZE:F = 20.0f


# instance fields
.field private mBgcolor:I

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

.field private mColors:[I

.field private mCtrX:F

.field private mCtrY:F

.field private mDotPaint:Landroid/graphics/Paint;

.field private mDotRadus:F

.field private mDotX:F

.field private mDotY:F

.field private mDpToPix:F

.field private mHSVO:[F

.field private mHeight:I

.field private mRadius:F

.field private mSliderColor:I

.field private mWheelPaint1:Landroid/graphics/Paint;

.field private mWheelPaint2:Landroid/graphics/Paint;

.field private mWheelPaint3:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x42a00000    # 80.0f

    .line 39
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mRadius:F

    const/high16 p2, 0x42c80000    # 100.0f

    .line 40
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mCtrY:F

    .line 44
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mCtrX:F

    const/4 p2, 0x0

    .line 48
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBgcolor:I

    const/high16 p2, 0x7fc00000    # Float.NaN

    .line 49
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotX:F

    const p2, -0xcc4a1b

    .line 51
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mSliderColor:I

    const/4 p2, 0x4

    new-array p2, p2, [F

    .line 52
    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mHSVO:[F

    const/4 p2, 0x7

    new-array p2, p2, [I

    .line 53
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mColors:[I

    .line 210
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mColorListeners:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 71
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDpToPix:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v0, p2

    .line 72
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotRadus:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p2, v0

    .line 73
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBorder:F

    .line 75
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mWheelPaint1:Landroid/graphics/Paint;

    .line 76
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mWheelPaint2:Landroid/graphics/Paint;

    .line 77
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mWheelPaint3:Landroid/graphics/Paint;

    .line 78
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotPaint:Landroid/graphics/Paint;

    .line 80
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0501a7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mSliderColor:I

    .line 83
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mWheelPaint1:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mWheelPaint2:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mWheelPaint3:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x10000
    .end array-data
.end method

.method private setUpColorPanel()V
    .locals 23

    move-object/from16 v0, p0

    .line 131
    iget-object v1, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mHSVO:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    const v3, 0x10101

    mul-int/2addr v1, v3

    const/high16 v3, -0x1000000

    or-int/2addr v1, v3

    new-array v8, v2, [I

    const/4 v3, 0x0

    aput v3, v8, v3

    const/4 v4, 0x1

    aput v1, v8, v4

    new-array v14, v2, [I

    .line 135
    fill-array-data v14, :array_0

    .line 137
    iget-object v1, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mColors:[I

    array-length v1, v1

    new-array v4, v1, [I

    const/4 v5, 0x3

    new-array v5, v5, [F

    :goto_0
    if-ge v3, v1, :cond_0

    .line 140
    iget-object v6, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mColors:[I

    aget v6, v6, v3

    invoke-static {v6, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 141
    iget-object v6, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mHSVO:[F

    aget v6, v6, v2

    aput v6, v5, v2

    .line 142
    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->updateDot()V

    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->updateDotPaint()V

    .line 146
    new-instance v1, Landroid/graphics/SweepGradient;

    iget v2, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mCtrX:F

    iget v3, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mCtrY:F

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 147
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBorder:F

    const/16 v17, 0x0

    iget v3, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mWidth:I

    int-to-float v3, v3

    sub-float v18, v3, v2

    const/16 v19, 0x0

    const/16 v21, 0x0

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v15, v1

    move/from16 v16, v2

    move-object/from16 v20, v4

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 150
    iget-object v2, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mWheelPaint1:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 151
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    iget v5, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBorder:F

    const/4 v6, 0x0

    iget v2, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mHeight:I

    int-to-float v2, v2

    sub-float v7, v2, v5

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 153
    iget-object v2, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mWheelPaint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 154
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v10, 0x0

    iget v11, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBorder:F

    const/4 v12, 0x0

    iget v2, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mHeight:I

    int-to-float v2, v2

    sub-float v13, v2, v11

    const/4 v15, 0x0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 156
    iget-object v2, v0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mWheelPaint3:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        0x0
        -0x1000000
    .end array-data
.end method

.method private updateDot()V
    .locals 11

    .line 181
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mHSVO:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-double v1, v1

    const/4 v3, 0x1

    .line 182
    aget v0, v0, v3

    float-to-double v3, v0

    .line 184
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBorder:F

    float-to-double v5, v0

    iget v7, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mHeight:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v0, v8

    sub-float/2addr v7, v0

    float-to-double v9, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    mul-double/2addr v9, v0

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v9, v0

    add-double/2addr v5, v9

    double-to-float v0, v5

    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotX:F

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v3

    .line 185
    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBorder:F

    mul-float/2addr v8, v3

    sub-float/2addr v2, v8

    float-to-double v4, v2

    mul-double/2addr v0, v4

    float-to-double v2, v3

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotY:F

    return-void
.end method

.method private updateDotPaint()V
    .locals 9

    const/4 v0, 0x4

    new-array v5, v0, [I

    .line 190
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mSliderColor:I

    const/4 v2, 0x0

    aput v1, v5, v2

    const/4 v3, 0x1

    aput v1, v5, v3

    const/4 v1, 0x2

    const/high16 v3, 0x66000000

    aput v3, v5, v1

    const/4 v1, 0x3

    aput v2, v5, v1

    .line 192
    new-instance v8, Landroid/graphics/RadialGradient;

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotX:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotY:F

    iget v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotRadus:F

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 194
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotPaint:Landroid/graphics/Paint;

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

    .line 219
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyColorListeners([F)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;

    .line 214
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

    .line 161
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 162
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBgcolor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 163
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 164
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBorder:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 165
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBorder:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 166
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBorder:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 167
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBorder:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 169
    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mWheelPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 170
    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mWheelPaint3:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 171
    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mWheelPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 173
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotX:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 175
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotY:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotRadus:F

    iget-object v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mWidth:I

    .line 123
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mHeight:I

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    .line 124
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mCtrY:F

    int-to-float p1, p1

    div-float/2addr p1, p3

    .line 125
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mCtrX:F

    .line 126
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBorder:F

    mul-float/2addr p2, p3

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mRadius:F

    .line 127
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->setUpColorPanel()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 95
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotX:F

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotRadus:F

    sub-float v2, v0, v1

    float-to-int v2, v2

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotY:F

    sub-float v4, v3, v1

    float-to-int v4, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    add-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {p0, v2, v4, v0, v1}, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->invalidate(IIII)V

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 100
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBorder:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBorder:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 101
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBorder:F

    sub-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBorder:F

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 102
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotX:F

    .line 103
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotY:F

    .line 104
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBorder:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mHeight:I

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

    :goto_0
    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    .line 109
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotX:F

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mBorder:F

    sub-float/2addr p1, v1

    float-to-double v5, p1

    mul-double/2addr v5, v3

    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mHeight:I

    int-to-float p1, p1

    mul-float/2addr v1, v2

    sub-float/2addr p1, v1

    float-to-double v1, p1

    div-double/2addr v5, v1

    .line 110
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mHSVO:[F

    const/4 v1, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    add-float/2addr v2, v3

    rem-float/2addr v2, v3

    aput v2, p1, v1

    .line 111
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mHSVO:[F

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 112
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->notifyColorListeners([F)V

    .line 113
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->updateDotPaint()V

    .line 114
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotX:F

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotRadus:F

    sub-float v2, p1, v0

    float-to-int v2, v2

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mDotY:F

    sub-float v4, v3, v0

    float-to-int v4, v4

    add-float/2addr p1, v0

    float-to-int p1, p1

    add-float/2addr v3, v0

    float-to-int v0, v3

    invoke-virtual {p0, v2, v4, p1, v0}, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->invalidate(IIII)V

    return v1
.end method

.method public removeColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setColor([F)V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->mHSVO:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->setUpColorPanel()V

    .line 203
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->invalidate()V

    .line 205
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->updateDot()V

    .line 206
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorRectView;->updateDotPaint()V

    return-void
.end method
