.class public Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;
.super Landroid/view/View;
.source "ColorSaturationView.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


# static fields
.field public static final BORDER_SIZE:F = 20.0f

.field private static final DOT_SIZE:F = 20.0f


# instance fields
.field private mBarPaint1:Landroid/graphics/Paint;

.field private mBgcolor:I

.field private mBorder:F

.field private mCheckPaint:Landroid/graphics/Paint;

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
    .locals 3

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 49
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mBgcolor:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 54
    iput-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mHSVO:[F

    .line 56
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mBorder:F

    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotX:F

    .line 57
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotY:F

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mColorListeners:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 66
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    .line 67
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotRadius:F

    .line 68
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mBorder:F

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mBarPaint1:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotPaint:Landroid/graphics/Paint;

    .line 73
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0501a7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mSliderColor:I

    .line 77
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mBarPaint1:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mLinePaint1:Landroid/graphics/Paint;

    const v0, -0x777778

    .line 80
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mLinePaint2:Landroid/graphics/Paint;

    .line 82
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mSliderColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mLinePaint2:Landroid/graphics/Paint;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 p1, 0x100

    new-array v0, p1, [I

    :goto_0
    if-ge p2, p1, :cond_1

    .line 87
    div-int/lit16 v1, p2, 0x80

    .line 88
    div-int/lit8 v2, p2, 0x8

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v1, :cond_0

    const v1, -0x555556

    goto :goto_1

    :cond_0
    const v1, -0xbbbbbc

    .line 89
    :goto_1
    aput v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 91
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 p2, 0x10

    invoke-static {v0, p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 92
    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p1, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 93
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mCheckPaint:Landroid/graphics/Paint;

    .line 94
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private setupButton()V
    .locals 9

    .line 131
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mHSVO:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mWidth:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mBorder:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    .line 132
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotX:F

    const/4 v0, 0x4

    new-array v6, v0, [I

    .line 134
    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mSliderColor:I

    const/4 v3, 0x0

    aput v2, v6, v3

    const/4 v4, 0x1

    aput v2, v6, v4

    const/4 v2, 0x2

    const/high16 v4, 0x66000000

    aput v4, v6, v2

    aput v3, v6, v1

    .line 136
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotX:F

    iget v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotY:F

    iget v5, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotRadius:F

    new-array v7, v0, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 138
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotPaint:Landroid/graphics/Paint;

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

    .line 151
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mHSVO:[F

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 152
    aput v2, v0, v1

    const/4 v1, 0x2

    .line 153
    aput v2, v0, v1

    const/4 v1, 0x1

    .line 154
    aput v2, v0, v1

    .line 155
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    const/4 v2, 0x0

    .line 156
    aput v2, v0, v1

    .line 157
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v8

    .line 158
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v7, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mBorder:F

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mWidth:F

    sub-float v6, v1, v7

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v0

    move v4, v7

    move v5, v7

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 161
    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mBarPaint1:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyColorListeners([F)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;

    .line 191
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

    .line 167
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 168
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mBgcolor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 169
    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mBorder:F

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mWidth:F

    sub-float v4, v0, v3

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mHeight:F

    sub-float v5, v0, v3

    iget-object v6, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mCheckPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 170
    iget v9, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mBorder:F

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mWidth:F

    sub-float v10, v0, v9

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mHeight:F

    sub-float v11, v0, v9

    iget-object v12, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mBarPaint1:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, v9

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 171
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotX:F

    iget v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotY:F

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mWidth:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mBorder:F

    sub-float v3, v0, v2

    iget-object v5, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mLinePaint1:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 172
    iget v7, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mBorder:F

    iget v10, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotY:F

    iget v9, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotX:F

    iget-object v11, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mLinePaint2:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 173
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotX:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 174
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotY:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotRadius:F

    iget-object v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    int-to-float p1, p1

    .line 143
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mWidth:F

    int-to-float p1, p2

    .line 144
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mHeight:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 145
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotY:F

    .line 146
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->updatePaint()V

    .line 147
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->setupButton()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 103
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotX:F

    .line 104
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotY:F

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 109
    iput v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotX:F

    .line 111
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mBorder:F

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    .line 112
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotX:F

    .line 115
    :cond_0
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotX:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mWidth:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mBorder:F

    sub-float v4, v2, v3

    cmpl-float p1, p1, v4

    if-lez p1, :cond_1

    sub-float/2addr v2, v3

    .line 116
    iput v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotX:F

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mHSVO:[F

    const/4 v2, 0x3

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotX:F

    iget v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mBorder:F

    sub-float/2addr v3, v4

    iget v5, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    sub-float/2addr v5, v4

    div-float/2addr v3, v5

    aput v3, p1, v2

    .line 119
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->notifyColorListeners([F)V

    .line 120
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->setupButton()V

    .line 121
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotRadius:F

    sub-float v2, v0, p1

    float-to-int v2, v2

    sub-float v3, v1, p1

    float-to-int v3, v3

    add-float/2addr v0, p1

    float-to-int v0, v0

    add-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {p0, v2, v3, v0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->invalidate(IIII)V

    .line 123
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotX:F

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotRadius:F

    sub-float v1, p1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mDotY:F

    sub-float v3, v2, v0

    float-to-int v3, v3

    add-float/2addr p1, v0

    float-to-int p1, p1

    add-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p0, v1, v3, p1, v0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->invalidate(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public removeColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setColor([F)V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->mHSVO:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->updatePaint()V

    .line 185
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->setupButton()V

    .line 186
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorSaturationView;->invalidate()V

    return-void
.end method
