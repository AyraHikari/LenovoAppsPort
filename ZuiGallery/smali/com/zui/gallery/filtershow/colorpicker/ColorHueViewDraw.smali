.class public Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;
.super Landroid/view/View;
.source "ColorHueViewDraw.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


# static fields
.field public static final BORDER_SIZE:F = 20.0f

.field public static final DOT_SIZE:F = 6.0f

.field public static colorPos:F = 60.0f


# instance fields
.field private isTouch:Z

.field private layoutWidth:I

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

.field private mContext:Landroid/content/Context;

.field private mDotPaint:Landroid/graphics/Paint;

.field private mDotPaintL:Landroid/graphics/Paint;

.field private mDotPaintR:Landroid/graphics/Paint;

.field private mDotPaintshow:Landroid/graphics/Paint;

.field private mDotRadius:F

.field private mDotX:F

.field private mDotY:F

.field private mHSVO:[F

.field private mHSVOL:[F

.field private mHSVOR:[F

.field private mHeight:F

.field private mPaint:Landroid/graphics/Paint;

.field mRect:Landroid/graphics/RectF;

.field private mSeekBarBalls:Landroid/graphics/Bitmap;

.field private mSliderColor:I

.field mTmpBuff:[I

.field mTmpHSV:[F

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x4

    new-array v0, p2, [F

    .line 54
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mHSVOL:[F

    new-array v0, p2, [F

    .line 55
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mHSVOR:[F

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBgcolor:I

    new-array p2, p2, [F

    .line 61
    fill-array-data p2, :array_2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mHSVO:[F

    .line 63
    iget p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBorder:F

    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotX:F

    .line 64
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotY:F

    .line 69
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->isTouch:Z

    .line 70
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mRect:Landroid/graphics/RectF;

    const/4 p2, 0x3

    new-array p2, p2, [F

    .line 72
    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mTmpHSV:[F

    .line 271
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mColorListeners:Ljava/util/ArrayList;

    .line 77
    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 79
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v0, p2

    .line 80
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotRadius:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p2, v0

    .line 81
    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBorder:F

    .line 83
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotPaint:Landroid/graphics/Paint;

    .line 84
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotPaintshow:Landroid/graphics/Paint;

    .line 85
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotPaintL:Landroid/graphics/Paint;

    .line 86
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotPaintR:Landroid/graphics/Paint;

    .line 88
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotPaintshow:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotPaintshow:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotPaintL:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotPaintL:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotPaintR:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotPaintR:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0501a7

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mSliderColor:I

    .line 99
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v0, 0x100

    const/4 v1, 0x2

    invoke-static {v0, v1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBitmap:Landroid/graphics/Bitmap;

    .line 100
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr p2, v0

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mTmpBuff:[I

    .line 101
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object p2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07013f

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mSeekBarBalls:Landroid/graphics/Bitmap;

    .line 104
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->fillBitmap()V

    .line 105
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->makeCheckPaint()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x43b40000    # 360.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
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

    .line 253
    div-int/lit16 v3, v2, 0x200

    .line 254
    div-int/lit8 v4, v2, 0x10

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v3, :cond_0

    const v3, -0x555556

    goto :goto_1

    :cond_0
    const v3, -0xbbbbbc

    .line 255
    :goto_1
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x10

    invoke-static {v1, v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 258
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 259
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mCheckPaint:Landroid/graphics/Paint;

    .line 260
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private setupButton()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mHSVO:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mWidth:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBorder:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 184
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotX:F

    return-void
.end method


# virtual methods
.method public addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method fillBitmap()V
    .locals 9

    .line 109
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 110
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBitmap:Landroid/graphics/Bitmap;

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

    .line 115
    iget-object v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mTmpHSV:[F

    aput v2, v3, v0

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 116
    aput v4, v3, v2

    const/4 v2, 0x2

    .line 117
    aput v4, v3, v2

    .line 118
    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    .line 119
    iget-object v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mTmpBuff:[I

    aput v2, v3, v1

    add-int v4, v1, v7

    .line 120
    aput v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mTmpBuff:[I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method public notifyColorListeners([F)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/colorpicker/ColorListener;

    .line 275
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
    .locals 8

    .line 214
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 215
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBgcolor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 217
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBorder:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 218
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mWidth:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBorder:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 219
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 220
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mHeight:F

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 221
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    const-string v1, "onDraw: "

    if-eqz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    .line 222
    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBorder:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotY:F

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBorder:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "colorDraw"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 224
    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBorder:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->layoutWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mCheckPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 227
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 229
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotPaintL:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mHSVOL:[F

    const/4 v3, 0x3

    aget v4, v2, v3

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBorder:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotY:F

    iget-object v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    iget-object v7, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotPaintL:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 231
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotPaintR:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mHSVOR:[F

    aget v3, v2, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v3, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mWidth:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBorder:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotY:F

    iget-object v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotPaintR:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 233
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotX:F

    const/high16 v2, 0x7fc00000    # Float.NaN

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->colorPos:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "colorXXX"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mSeekBarBalls:Landroid/graphics/Bitmap;

    sget v1, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->colorPos:F

    .line 236
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotY:F

    iget-object v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mSeekBarBalls:Landroid/graphics/Bitmap;

    .line 237
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mPaint:Landroid/graphics/Paint;

    .line 235
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mContext:Landroid/content/Context;

    const/16 v1, 0x3a

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->layoutWidth:I

    int-to-float v0, p1

    .line 199
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mWidth:F

    .line 200
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x43160000    # 150.0f

    .line 201
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mHeight:F

    goto :goto_0

    :cond_0
    int-to-float v0, p2

    .line 203
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mHeight:F

    .line 205
    :goto_0
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotY:F

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " oldwid "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " oldh "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " layoutWid "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->layoutWidth:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "colorDraw"

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->setupButton()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 138
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 143
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 144
    sput v0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->colorPos:F

    .line 145
    iput v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotX:F

    .line 147
    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBorder:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 148
    sput v1, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->colorPos:F

    .line 151
    :cond_1
    sget v0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->colorPos:F

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mWidth:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBorder:F

    sub-float v3, v1, v2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    sub-float/2addr v1, v2

    .line 152
    sput v1, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->colorPos:F

    .line 155
    :cond_2
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotX:F

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBorder:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 156
    iput v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotX:F

    .line 159
    :cond_3
    iget v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotX:F

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mWidth:F

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBorder:F

    sub-float v3, v1, v2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    sub-float/2addr v1, v2

    .line 160
    iput v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotX:F

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mHSVO:[F

    const/high16 v1, 0x43b40000    # 360.0f

    iget v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mDotX:F

    iget v3, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mBorder:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    div-float/2addr v2, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 163
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->notifyColorListeners([F)V

    .line 164
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->setupButton()V

    .line 165
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->fillBitmap()V

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 172
    iput-boolean v2, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->isTouch:Z

    .line 174
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v2, :cond_6

    .line 175
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->isTouch:Z

    .line 177
    :cond_6
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->invalidate()V

    return v2
.end method

.method public removeColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setColor([F)V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->mHSVO:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->fillBitmap()V

    .line 267
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->setupButton()V

    .line 268
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/colorpicker/ColorHueViewDraw;->invalidate()V

    return-void
.end method
