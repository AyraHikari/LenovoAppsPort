.class public Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;
.super Landroid/view/View;
.source "ColorOpacityView.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


# static fields
.field public static final BORDER_SIZE:F = 20.0f

.field private static final DOT_SIZE:F = 20.0f


# instance fields
.field private mBarPaint1:Landroid/graphics/Paint;

.field private mBgcolor:I

.field private mBorder:F

.field private mCheckDim:I

.field private mCheckPaint:Landroid/graphics/Paint;

.field mColorListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/colorpicker/ColorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDotPaint:Landroid/graphics/Paint;

.field private mDotRadius:F

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
    .locals 1

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 49
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mBgcolor:I

    const/4 p2, 0x4

    new-array p2, p2, [F

    .line 54
    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mHSVO:[F

    .line 56
    iget p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    .line 57
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    const/16 p2, 0x8

    .line 60
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mCheckDim:I

    .line 188
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mColorListeners:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 64
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p2, v0

    .line 65
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotRadius:F

    .line 66
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    .line 67
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mBarPaint1:Landroid/graphics/Paint;

    .line 69
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotPaint:Landroid/graphics/Paint;

    .line 71
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060175

    .line 73
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mCheckDim:I

    .line 74
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotPaint:Landroid/graphics/Paint;

    const v0, 0x7f0501a6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const p2, 0x7f0501a7

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mSliderColor:I

    .line 77
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mBarPaint1:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mLinePaint1:Landroid/graphics/Paint;

    const p2, -0x777778

    .line 80
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mLinePaint2:Landroid/graphics/Paint;

    .line 82
    iget p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mSliderColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mLinePaint2:Landroid/graphics/Paint;

    const/high16 p2, 0x40800000    # 4.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->makeCheckPaint()V

    return-void
.end method

.method private makeCheckPaint()V
    .locals 6

    .line 89
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mCheckDim:I

    mul-int/lit8 v0, v0, 0x2

    mul-int v1, v0, v0

    .line 90
    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 92
    iget v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mCheckDim:I

    mul-int v5, v0, v4

    div-int v5, v3, v5

    .line 93
    div-int v4, v3, v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v5, :cond_0

    const v4, -0x555556

    goto :goto_1

    :cond_0
    const v4, -0xbbbbbc

    .line 94
    :goto_1
    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mCheckPaint:Landroid/graphics/Paint;

    .line 99
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private setupButton()V
    .locals 9

    .line 136
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mHSVO:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mWidth:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    .line 137
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    const/4 v0, 0x4

    new-array v6, v0, [I

    .line 139
    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mSliderColor:I

    const/4 v3, 0x0

    aput v2, v6, v3

    const/4 v4, 0x1

    aput v2, v6, v4

    const/4 v2, 0x2

    const/high16 v4, 0x66000000

    aput v4, v6, v2

    aput v3, v6, v1

    .line 141
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    iget v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    iget v5, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotRadius:F

    new-array v7, v0, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 143
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotPaint:Landroid/graphics/Paint;

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
    .locals 9

    .line 157
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mHSVO:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    const v0, 0xffffff

    and-int v6, v7, v0

    .line 160
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v5, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mWidth:F

    sub-float v4, v1, v5

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    move v2, v5

    move v3, v5

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 162
    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mBarPaint1:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyColorListeners([F)V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;

    .line 192
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

    .line 168
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 169
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mBgcolor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 170
    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mWidth:F

    sub-float v4, v0, v2

    iget v5, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mHeight:F

    iget-object v6, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mCheckPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 171
    iget v8, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mWidth:F

    sub-float v10, v0, v8

    iget v11, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mHeight:F

    iget-object v12, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mBarPaint1:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 172
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    iget v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mWidth:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    sub-float v3, v0, v2

    iget-object v5, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mLinePaint1:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 173
    iget v7, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    iget v10, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    iget v9, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    iget-object v11, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mLinePaint2:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 174
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 175
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotRadius:F

    iget-object v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    int-to-float p1, p1

    .line 148
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mWidth:F

    int-to-float p1, p2

    .line 149
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mHeight:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 150
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    .line 151
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->updatePaint()V

    .line 152
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->setupButton()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 108
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    .line 109
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 114
    iput v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    .line 116
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    .line 117
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    .line 120
    :cond_0
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mWidth:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    sub-float v4, v2, v3

    cmpl-float p1, p1, v4

    if-lez p1, :cond_1

    sub-float/2addr v2, v3

    .line 121
    iput v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mHSVO:[F

    const/4 v2, 0x3

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    iget v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    sub-float/2addr v3, v4

    iget v5, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    sub-float/2addr v5, v4

    div-float/2addr v3, v5

    aput v3, p1, v2

    .line 124
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->notifyColorListeners([F)V

    .line 125
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->setupButton()V

    .line 126
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotRadius:F

    sub-float v2, v0, p1

    float-to-int v2, v2

    sub-float v3, v1, p1

    float-to-int v3, v3

    add-float/2addr v0, p1

    float-to-int v0, v0

    add-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {p0, v2, v3, v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->invalidate(IIII)V

    .line 128
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotRadius:F

    sub-float v1, p1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    sub-float v3, v2, v0

    float-to-int v3, v3

    add-float/2addr p1, v0

    float-to-int p1, p1

    add-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p0, v1, v3, p1, v0}, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->invalidate(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public removeColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setColor([F)V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->mHSVO:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->updatePaint()V

    .line 184
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->setupButton()V

    .line 185
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorOpacityView;->invalidate()V

    return-void
.end method
