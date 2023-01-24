.class public Lcom/zui/gallery/filtershow/imageshow/ImageDraw;
.super Lcom/zui/gallery/filtershow/imageshow/ImageShow;
.source "ImageDraw.java"


# static fields
.field static final INITAL_STROKE_RADIUS:F = 40.0f

.field private static final LOGTAG:Ljava/lang/String; = "ImageDraw"

.field public static drawTouchPaddingX:F

.field public static drawTouchPaddingY:F


# instance fields
.field private DISPLAY_TIME:I

.field private displayColor:Ljava/lang/Boolean;

.field private displaySize:Ljava/lang/Boolean;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderShadowSize:I

.field private mCheckerdPaint:Landroid/graphics/Paint;

.field private mColorPaint:Landroid/graphics/Paint;

.field private mCurrentColor:I

.field private mCurrentSize:F

.field private mDisplayBorder:F

.field private mDisplayRound:F

.field private mEditorDraw:Lcom/zui/gallery/filtershow/editors/EditorDraw;

.field private mFRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

.field private mHandler:Landroid/os/Handler;

.field private mIconPaint:Landroid/graphics/Paint;

.field private mRotateToScreen:Landroid/graphics/Matrix;

.field private mShadow:Landroid/graphics/drawable/NinePatchDrawable;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mTimeout:J

.field mTmpPoint:[F

.field private mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

.field public mToOrig:Landroid/graphics/Matrix;

.field private mType:B

.field mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 74
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x10000

    .line 30
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mCurrentColor:I

    const/high16 v0, 0x42200000    # 40.0f

    .line 32
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mCurrentSize:F

    const/4 v0, 0x0

    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 33
    iput-byte v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mType:B

    .line 37
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->makeCheckedPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mCheckerdPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mShadowPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mIconPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mBorderPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mColorPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    const/16 v0, 0x1f4

    .line 48
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->DISPLAY_TIME:I

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mRotateToScreen:Landroid/graphics/Matrix;

    .line 54
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->displaySize:Ljava/lang/Boolean;

    .line 55
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->displayColor:Ljava/lang/Boolean;

    .line 58
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw$1;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageDraw;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mUpdateRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 140
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    .line 75
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->resetParameter()V

    .line 76
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->setupConstants(Landroid/content/Context;)V

    .line 77
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->setupTimer()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x10000

    .line 30
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mCurrentColor:I

    const/high16 p2, 0x42200000    # 40.0f

    .line 32
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mCurrentSize:F

    const/4 p2, 0x0

    .line 54
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 33
    iput-byte p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mType:B

    .line 37
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->makeCheckedPaint()Landroid/graphics/Paint;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mCheckerdPaint:Landroid/graphics/Paint;

    .line 38
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mShadowPaint:Landroid/graphics/Paint;

    .line 39
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mIconPaint:Landroid/graphics/Paint;

    .line 40
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mBorderPaint:Landroid/graphics/Paint;

    .line 41
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mColorPaint:Landroid/graphics/Paint;

    .line 43
    new-instance p2, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    invoke-direct {p2}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    const/16 p2, 0x1f4

    .line 48
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->DISPLAY_TIME:I

    .line 49
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mRotateToScreen:Landroid/graphics/Matrix;

    .line 54
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->displaySize:Ljava/lang/Boolean;

    .line 55
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->displayColor:Ljava/lang/Boolean;

    .line 58
    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/ImageDraw$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw$1;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageDraw;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mUpdateRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 140
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    .line 68
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->resetParameter()V

    .line 69
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->setupConstants(Landroid/content/Context;)V

    .line 70
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->setupTimer()V

    return-void
.end method

.method private calcScreenMapping()V
    .locals 2

    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->getScreenToImageMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mToOrig:Landroid/graphics/Matrix;

    .line 204
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mRotateToScreen:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public static drawErrorPadding([F)V
    .locals 1

    const/4 v0, 0x0

    .line 361
    aget v0, p0, v0

    sput v0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->drawTouchPaddingX:F

    const/4 v0, 0x1

    .line 362
    aget p0, p0, v0

    sput p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->drawTouchPaddingY:F

    return-void
.end method

.method private static makeCheckedPaint()Landroid/graphics/Paint;
    .locals 5

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 210
    div-int/lit16 v3, v2, 0x80

    .line 211
    div-int/lit8 v4, v2, 0x8

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v3, :cond_0

    const v3, -0x888889

    goto :goto_1

    :cond_0
    const v3, -0xddddde

    .line 212
    :goto_1
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x10

    invoke-static {v1, v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 215
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 216
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 217
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-object v0
.end method

.method private scheduleWakeup(I)V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mUpdateRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setupConstants(Landroid/content/Context;)V
    .locals 5

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060179

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mDisplayRound:F

    const v0, 0x7f060177

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mDisplayBorder:F

    const v0, 0x7f06017a

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mBorderShadowSize:I

    const v0, 0x7f060178

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f0500cd

    .line 87
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mBorderColor:I

    .line 88
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mShadowPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mShadowPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mBorderShadowSize:I

    int-to-float v3, v2

    int-to-float v4, v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const v0, 0x7f0701f9

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    return-void
.end method

.method private setupTimer()V
    .locals 2

    .line 222
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 4

    .line 241
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p2

    .line 242
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 243
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 244
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 246
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 247
    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 248
    invoke-virtual {p3, p1, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object p2
.end method

.method public displayDrawLook()V
    .locals 8

    .line 255
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mFRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v0, v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    .line 259
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget-byte v1, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mType:B

    .line 262
    sget-boolean v1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->isMosaic:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v0, v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadiusMosaic:F

    .line 264
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mFRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    invoke-virtual {v1, v4}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->fillStrokeParameters(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;)V

    .line 266
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v1, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadiusMosaic:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 267
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->DISPLAY_TIME:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTimeout:J

    .line 268
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->DISPLAY_TIME:I

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->scheduleWakeup(I)V

    .line 269
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->displaySize:Ljava/lang/Boolean;

    .line 270
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->displayColor:Ljava/lang/Boolean;

    goto :goto_0

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v1, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    .line 274
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mFRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    invoke-virtual {v4, v5}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->fillStrokeParameters(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;)V

    .line 276
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v4, v4, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    .line 277
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->DISPLAY_TIME:I

    int-to-long v4, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTimeout:J

    .line 278
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->DISPLAY_TIME:I

    invoke-direct {p0, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->scheduleWakeup(I)V

    .line 279
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->displaySize:Ljava/lang/Boolean;

    .line 280
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->displayColor:Ljava/lang/Boolean;

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v1, v1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    if-eq v0, v1, :cond_3

    .line 283
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->DISPLAY_TIME:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTimeout:J

    .line 284
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->DISPLAY_TIME:I

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->scheduleWakeup(I)V

    .line 285
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->displayColor:Ljava/lang/Boolean;

    .line 286
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->displaySize:Ljava/lang/Boolean;

    :cond_3
    :goto_0
    return-void
.end method

.method public drawLook(Landroid/graphics/Canvas;)V
    .locals 11

    .line 293
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mFRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 298
    div-int/lit8 v0, v0, 0x2

    .line 299
    div-int/lit8 v1, v1, 0x2

    .line 302
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mIconPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 303
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mIconPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    sget-boolean v2, Lcom/zui/gallery/filtershow/editors/EditorDraw;->isMosaic:Z

    if-eqz v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mRotateToScreen:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v4, v4, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadiusMosaic:F

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v2

    goto :goto_0

    .line 309
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mRotateToScreen:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v4, v4, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v2

    .line 313
    :goto_0
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float v4, v0, v2

    int-to-float v1, v1

    sub-float v6, v1, v2

    add-float v7, v0, v2

    add-float/2addr v2, v1

    .line 314
    invoke-virtual {v5, v4, v6, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 322
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v2, v2, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    const/high16 v10, -0x10000

    if-nez v2, :cond_2

    .line 323
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 325
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mIconPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v4, v4, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    :goto_1
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mIconPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 327
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->displaySize:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v3, :cond_6

    .line 328
    sget-boolean v2, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    if-eqz v2, :cond_3

    .line 329
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mIconPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x1

    .line 330
    iget-object v9, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mIconPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_3

    .line 331
    :cond_3
    sget-boolean v2, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/zui/gallery/filtershow/editors/EditorDraw;->isMosaic:Z

    if-eqz v2, :cond_4

    .line 332
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mIconPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x1

    .line 333
    iget-object v9, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mIconPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_3

    .line 335
    :cond_4
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v2, v2, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    if-nez v2, :cond_5

    .line 336
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 338
    :cond_5
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mIconPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v4, v4, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    const/4 v6, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x1

    .line 339
    iget-object v9, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mIconPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 342
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v2, v2, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    if-nez v2, :cond_7

    .line 343
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    .line 345
    :cond_7
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mColorPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    iget v4, v4, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    :goto_4
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mColorPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 347
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->displayColor:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v3, :cond_8

    const/high16 v2, 0x42340000    # 45.0f

    .line 348
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_8
    return-void
.end method

.method public getBrush(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 232
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 233
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 234
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mCurrentSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getStyle()I
    .locals 1

    .line 133
    iget-byte v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mType:B

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 353
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    .line 354
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->calcScreenMapping()V

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTimeout:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 356
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->drawLook(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 145
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 146
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mFRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getCurrentDrawing()Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mFRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->clearCurrentSection()V

    .line 148
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mEditorDraw:Lcom/zui/gallery/filtershow/editors/EditorDraw;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->commitLocalRepresentation()V

    :cond_0
    return p1

    .line 152
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mFRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->getCurrentDrawing()Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    move-result-object v0

    if-nez v0, :cond_2

    .line 154
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 158
    :cond_2
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getScaleFactor()F

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 162
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->calcScreenMapping()V

    .line 163
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sget v4, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->drawTouchPaddingX:F

    add-float/2addr v3, v4

    aput v3, v0, v2

    .line 164
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sget v4, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->drawTouchPaddingY:F

    add-float/2addr v3, v4

    aput v3, v0, v1

    .line 165
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mToOrig:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 167
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mFRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    if-eqz v0, :cond_3

    .line 168
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    aget v4, v3, v2

    aget v3, v3, v1

    sget-boolean v5, Lcom/zui/gallery/filtershow/editors/EditorDraw;->isMosaic:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sget-boolean v6, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->isEarsea:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v3, v5, v6}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->startNewSection(FFLjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 169
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    aget v3, v0, v2

    aget v0, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->setmCurrentPotin(FF)V

    goto :goto_0

    :cond_3
    return v2

    .line 175
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    .line 181
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v5

    sget v6, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->drawTouchPaddingX:F

    add-float/2addr v5, v6

    aput v5, v4, v2

    .line 182
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v5

    sget v6, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->drawTouchPaddingY:F

    add-float/2addr v5, v6

    aput v5, v4, v1

    .line 183
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mToOrig:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 184
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mFRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    aget v6, v5, v2

    aget v5, v5, v1

    invoke-virtual {v4, v6, v5}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->addPoint(FF)V

    .line 185
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    aget v5, v4, v2

    aget v4, v4, v1

    invoke-virtual {p0, v5, v4}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->setmCurrentPotin(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 190
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 191
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sget v4, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->drawTouchPaddingX:F

    add-float/2addr v3, v4

    aput v3, v0, v2

    .line 192
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sget v3, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->drawTouchPaddingY:F

    add-float/2addr p1, v3

    aput p1, v0, v1

    .line 193
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mToOrig:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 194
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mFRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    aget v3, v0, v2

    aget v0, v0, v1

    invoke-virtual {p1, v3, v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->endSection(FF)V

    .line 195
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    aget v0, p1, v2

    aget p1, p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->setmCurrentPotin(FF)V

    .line 197
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mEditorDraw:Lcom/zui/gallery/filtershow/editors/EditorDraw;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorDraw;->commitLocalRepresentation()V

    .line 198
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->invalidate()V

    return v1
.end method

.method public resetParameter()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mFRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;->clear()V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mCurrentColor:I

    return-void
.end method

.method public setEditor(Lcom/zui/gallery/filtershow/editors/EditorDraw;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mEditorDraw:Lcom/zui/gallery/filtershow/editors/EditorDraw;

    return-void
.end method

.method public setFilterDrawRepresentation(Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mFRep:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    .line 104
    new-instance p1, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mTmpStrokData:Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation$StrokeData;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    int-to-float p1, p1

    .line 125
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mCurrentSize:F

    return-void
.end method

.method public setStyle(B)V
    .locals 0

    .line 129
    rem-int/lit8 p1, p1, 0x3

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mType:B

    return-void
.end method
