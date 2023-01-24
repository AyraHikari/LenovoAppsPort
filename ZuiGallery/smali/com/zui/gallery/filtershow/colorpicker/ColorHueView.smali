.class public Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;
.super Landroid/view/View;
.source "ColorHueView.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


# static fields
.field public static final BORDER_SIZE:F = 20.0f

.field public static final DOT_SIZE:F = 20.0f


# instance fields
.field private mBgcolor:I

.field mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:F

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

.field private mPaint:Landroid/graphics/Paint;

.field mRect:Landroid/graphics/RectF;

.field private mSliderColor:I

.field mTmpBuff:[I

.field mTmpHSV:[F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 47
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBgcolor:I

    const/4 p2, 0x4

    new-array p2, p2, [F

    .line 52
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mHSVO:[F

    .line 54
    iget p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBorder:F

    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotX:F

    .line 55
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotY:F

    .line 59
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mRect:Landroid/graphics/RectF;

    const/4 p2, 0x3

    new-array p2, p2, [F

    .line 61
    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mTmpHSV:[F

    .line 210
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mColorListeners:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 67
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p2, v0

    .line 68
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotRadius:F

    .line 69
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBorder:F

    .line 71
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotPaint:Landroid/graphics/Paint;

    .line 73
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0501a7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mSliderColor:I

    .line 78
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mLinePaint1:Landroid/graphics/Paint;

    const p2, -0x777778

    .line 79
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mLinePaint2:Landroid/graphics/Paint;

    .line 81
    iget p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mSliderColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mLinePaint2:Landroid/graphics/Paint;

    const/high16 p2, 0x40800000    # 4.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 p2, 0x100

    const/4 v0, 0x2

    invoke-static {p2, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBitmap:Landroid/graphics/Bitmap;

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int/2addr p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mTmpBuff:[I

    .line 86
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->fillBitmap()V

    .line 89
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->makeCheckPaint()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private makeCheckPaint()V
    .locals 5

    const/16 v0, 0x400

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 192
    div-int/lit16 v3, v2, 0x200

    .line 193
    div-int/lit8 v4, v2, 0x10

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v3, :cond_0

    const v3, -0x555556

    goto :goto_1

    :cond_0
    const v3, -0xbbbbbc

    .line 194
    :goto_1
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x10

    invoke-static {v1, v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 198
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mCheckPaint:Landroid/graphics/Paint;

    .line 199
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private setupButton()V
    .locals 9

    .line 148
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mHSVO:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v0, v2

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mWidth:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBorder:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    .line 149
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotX:F

    const/4 v0, 0x4

    new-array v6, v0, [I

    .line 151
    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mSliderColor:I

    aput v2, v6, v1

    const/4 v3, 0x1

    aput v2, v6, v3

    const/4 v2, 0x2

    const/high16 v3, 0x66000000

    aput v3, v6, v2

    const/4 v2, 0x3

    aput v1, v6, v2

    .line 153
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotX:F

    iget v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotY:F

    iget v5, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotRadius:F

    new-array v7, v0, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 155
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

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
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method fillBitmap()V
    .locals 9

    .line 93
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 94
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_0

    mul-int/lit16 v2, v1, 0x168

    int-to-float v2, v2

    int-to-float v3, v7

    div-float/2addr v2, v3

    .line 99
    iget-object v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mTmpHSV:[F

    aput v2, v3, v0

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 100
    aput v4, v3, v2

    const/4 v2, 0x2

    .line 101
    aput v4, v3, v2

    .line 102
    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    .line 103
    iget-object v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mTmpBuff:[I

    aput v2, v3, v1

    add-int v4, v1, v7

    .line 104
    aput v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mTmpBuff:[I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method public notifyColorListeners([F)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mColorListeners:Ljava/util/ArrayList;

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
    .locals 6

    .line 169
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 170
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBgcolor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 172
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBorder:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 173
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mWidth:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBorder:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 174
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 175
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mHeight:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 176
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mCheckPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 177
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 180
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotX:F

    iget v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotY:F

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mWidth:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBorder:F

    sub-float v3, v0, v2

    iget-object v5, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mLinePaint1:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 181
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBorder:F

    iget v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotY:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotX:F

    iget-object v5, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mLinePaint2:Landroid/graphics/Paint;

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 182
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotX:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 183
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotY:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotRadius:F

    iget-object v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    int-to-float p1, p1

    .line 160
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mWidth:F

    int-to-float p1, p2

    .line 161
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mHeight:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 162
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotY:F

    .line 163
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->setupButton()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 124
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotX:F

    .line 126
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBorder:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 127
    iput p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotX:F

    .line 130
    :cond_0
    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotX:F

    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mWidth:F

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBorder:F

    sub-float v2, v0, v1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    sub-float/2addr v0, v1

    .line 131
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotX:F

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mHSVO:[F

    const/4 v0, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mDotX:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mBorder:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    div-float/2addr v2, v1

    aput v2, p1, v0

    .line 134
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->notifyColorListeners([F)V

    .line 135
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->setupButton()V

    .line 136
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->fillBitmap()V

    .line 142
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public removeColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setColor([F)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->mHSVO:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->fillBitmap()V

    .line 206
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->setupButton()V

    .line 207
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueView;->invalidate()V

    return-void
.end method
