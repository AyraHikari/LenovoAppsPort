.class public Lcom/zui/gallery/filtershow/imageshow/GradControl;
.super Ljava/lang/Object;
.source "GradControl.java"


# static fields
.field public static final HAN_CENTER:I = 0x0

.field public static final HAN_NORTH:I = 0x2

.field public static final HAN_SOUTH:I = 0x1


# instance fields
.field private handlex:[F

.field private handley:[F

.field private mCenterDotSize:I

.field mDash:Landroid/graphics/DashPathEffect;

.field private mDownPoint1X:F

.field private mDownPoint1Y:F

.field private mDownPoint2X:F

.field private mDownPoint2Y:F

.field private mDownX:F

.field private mDownY:F

.field private mGrayPointColorPatern:[I

.field mImageBounds:Landroid/graphics/Rect;

.field mImageHeight:I

.field private mLineColor:I

.field private mMinTouchDist:I

.field mPaint:Landroid/graphics/Paint;

.field private mPoint1X:F

.field private mPoint1Y:F

.field private mPoint2X:F

.field private mPoint2Y:F

.field private mPointColorPatern:[I

.field private mPointRadialPos:[F

.field private mScrToImg:Landroid/graphics/Matrix;

.field private mShowReshapeHandles:Z

.field private mSliderColor:I

.field private mlineShadowColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 33
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint1X:F

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint1Y:F

    const/high16 v1, 0x43480000    # 200.0f

    .line 35
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint2X:F

    const/high16 v1, 0x43960000    # 300.0f

    .line 36
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint2Y:F

    const/16 v1, 0x50

    .line 37
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mMinTouchDist:I

    const/4 v1, 0x3

    new-array v2, v1, [F

    .line 39
    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->handlex:[F

    new-array v2, v1, [F

    .line 40
    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->handley:[F

    .line 52
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-direct {v2, v4, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDash:Landroid/graphics/DashPathEffect;

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mShowReshapeHandles:Z

    const/4 v2, 0x4

    new-array v4, v2, [F

    .line 60
    fill-array-data v4, :array_1

    iput-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPointRadialPos:[F

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f0601b6

    .line 67
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mCenterDotSize:I

    const v4, 0x7f0601b7

    .line 68
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mMinTouchDist:I

    const v4, 0x7f0500fd

    .line 69
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const v5, 0x7f0500fe

    .line 70
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const v6, 0x7f050101

    .line 71
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v7, 0x7f050102

    .line 72
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    const v8, 0x7f050104

    .line 73
    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    const v9, 0x7f050103

    .line 74
    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    new-array v10, v2, [I

    const/4 v11, 0x0

    aput v6, v10, v11

    aput v7, v10, v0

    aput v8, v10, v3

    aput v9, v10, v1

    .line 75
    iput-object v10, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPointColorPatern:[I

    new-array v2, v2, [I

    aput v4, v2, v11

    aput v5, v2, v0

    aput v8, v2, v3

    aput v9, v2, v1

    .line 77
    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mGrayPointColorPatern:[I

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mSliderColor:I

    const v0, 0x7f0500ff

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mLineColor:I

    const v0, 0x7f050100

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mlineShadowColor:I

    return-void

    nop

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3e9eb852    # 0.31f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private centerIsOutside(FFFF)Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mImageBounds:Landroid/graphics/Rect;

    add-float/2addr p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    float-to-int p1, p1

    add-float/2addr p2, p4

    div-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public actionDown(FFLcom/zui/gallery/filtershow/imageshow/Line;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 131
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mScrToImg:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 132
    aget p2, v0, v1

    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownX:F

    .line 133
    aget p1, v0, p1

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownY:F

    .line 134
    invoke-interface {p3}, Lcom/zui/gallery/filtershow/imageshow/Line;->getPoint1X()F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint1X:F

    .line 135
    invoke-interface {p3}, Lcom/zui/gallery/filtershow/imageshow/Line;->getPoint1Y()F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint1Y:F

    .line 136
    invoke-interface {p3}, Lcom/zui/gallery/filtershow/imageshow/Line;->getPoint2X()F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint2X:F

    .line 137
    invoke-interface {p3}, Lcom/zui/gallery/filtershow/imageshow/Line;->getPoint2Y()F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint2Y:F

    return-void
.end method

.method public actionMove(IFFLcom/zui/gallery/filtershow/imageshow/Line;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p3, v1, p2

    .line 143
    iget-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mScrToImg:Landroid/graphics/Matrix;

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 144
    aget p3, v1, v2

    .line 145
    aget v3, v1, p2

    const/4 v4, 0x0

    aput v4, v1, v2

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v1, p2

    .line 150
    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mScrToImg:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 151
    aget v1, v1, v2

    cmpl-float v1, v1, v4

    .line 155
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownX:F

    sub-float/2addr p3, v1

    .line 156
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownY:F

    sub-float/2addr v3, v1

    if-eqz p1, :cond_4

    if-eq p1, p2, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint1X:F

    iget p2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint1Y:F

    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint2X:F

    add-float/2addr v0, p3

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint2Y:F

    add-float/2addr v1, v3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->centerIsOutside(FFFF)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint2X:F

    add-float/2addr p1, p3

    iget p2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint2Y:F

    add-float/2addr p2, v3

    invoke-interface {p4, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/Line;->setPoint2(FF)V

    goto :goto_0

    .line 167
    :cond_2
    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint1X:F

    add-float/2addr p1, p3

    iget p2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint1Y:F

    add-float/2addr p2, v3

    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint2X:F

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint2Y:F

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->centerIsOutside(FFFF)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 171
    :cond_3
    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint1X:F

    add-float/2addr p1, p3

    iget p2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint1Y:F

    add-float/2addr p2, v3

    invoke-interface {p4, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/Line;->setPoint1(FF)V

    goto :goto_0

    .line 159
    :cond_4
    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint1X:F

    add-float/2addr p1, p3

    iget p2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint1Y:F

    add-float/2addr p2, v3

    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint2X:F

    add-float/2addr v0, p3

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint2Y:F

    add-float/2addr v1, v3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->centerIsOutside(FFFF)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 163
    :cond_5
    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint1X:F

    add-float/2addr p1, p3

    iget p2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint1Y:F

    add-float/2addr p2, v3

    invoke-interface {p4, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/Line;->setPoint1(FF)V

    .line 164
    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint2X:F

    add-float/2addr p1, p3

    iget p2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDownPoint2Y:F

    add-float/2addr p2, v3

    invoke-interface {p4, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/Line;->setPoint2(FF)V

    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 260
    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint1X:F

    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint1Y:F

    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint2X:F

    iget v5, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint2Y:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->paintLines(Landroid/graphics/Canvas;FFFF)V

    .line 261
    iget v8, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint1X:F

    iget v9, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint1Y:F

    iget v10, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint2X:F

    iget v11, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint2Y:F

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->fillHandles(Landroid/graphics/Canvas;FFFF)V

    .line 262
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint2X:F

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint2Y:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->paintPoint(Landroid/graphics/Canvas;FF)V

    .line 263
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint1X:F

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint1Y:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->paintPoint(Landroid/graphics/Canvas;FF)V

    .line 264
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint1X:F

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint2X:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint1Y:F

    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint2Y:F

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-virtual {p0, p1, v0, v2}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->paintPoint(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method public fillHandles(Landroid/graphics/Canvas;FFFF)V
    .locals 3

    add-float p1, p2, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float v1, p3, p5

    div-float/2addr v1, v0

    .line 250
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->handlex:[F

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 251
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->handley:[F

    aput v1, p1, v2

    const/4 v1, 0x1

    .line 252
    aput p2, v0, v1

    .line 253
    aput p3, p1, v1

    const/4 p2, 0x2

    .line 254
    aput p4, v0, p2

    .line 255
    aput p5, p1, p2

    return-void
.end method

.method public getCloseHandle(FF)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v0

    move v4, v1

    .line 97
    :goto_0
    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->handlex:[F

    array-length v6, v5

    if-ge v3, v6, :cond_1

    .line 98
    aget v5, v5, v3

    sub-float/2addr v5, p1

    .line 99
    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->handley:[F

    aget v6, v6, v3

    sub-float/2addr v6, p2

    mul-float/2addr v5, v5

    mul-float/2addr v6, v6

    add-float/2addr v5, v6

    cmpg-float v6, v5, v2

    if-gez v6, :cond_0

    move v4, v3

    move v2, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_1
    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mMinTouchDist:I

    mul-int/2addr v3, v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    return v4

    .line 110
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->handlex:[F

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 111
    aget v2, v2, v0

    sub-float/2addr v2, p1

    .line 112
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->handley:[F

    aget v3, v3, v0

    sub-float/2addr v3, p2

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 113
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public isUndefined()Z
    .locals 1

    .line 268
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint1X:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public paintGrayPoint(Landroid/graphics/Canvas;FF)V
    .locals 9

    .line 184
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->isUndefined()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 188
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 189
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mCenterDotSize:I

    int-to-float v5, v2

    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mGrayPointColorPatern:[I

    iget-object v7, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPointRadialPos:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    move v3, p2

    move v4, p3

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 192
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 193
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mCenterDotSize:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method paintLines(Landroid/graphics/Canvas;FFFF)V
    .locals 9

    .line 210
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->isUndefined()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 215
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 217
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 218
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mlineShadowColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDash:Landroid/graphics/DashPathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 220
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPaint:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->paintOvallines(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFF)V

    .line 222
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 223
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mDash:Landroid/graphics/DashPathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 225
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v8}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->paintOvallines(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFF)V

    return-void
.end method

.method public paintOvallines(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFF)V
    .locals 13

    move-object v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p2

    .line 233
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v0, p3, p5

    sub-float v1, p4, p6

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 239
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x45000000    # 2048.0f

    div-float/2addr v3, v2

    mul-float/2addr v0, v3

    mul-float/2addr v1, v3

    add-float v3, p3, v1

    sub-float v4, p4, v0

    sub-float v5, p3, v1

    add-float v6, p4, v0

    move-object v2, p1

    move-object v7, p2

    .line 243
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v8, p5, v1

    sub-float v9, p6, v0

    sub-float v10, p5, v1

    add-float v11, p6, v0

    move-object v7, p1

    move-object v12, p2

    .line 244
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public paintPoint(Landroid/graphics/Canvas;FF)V
    .locals 9

    .line 197
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/GradControl;->isUndefined()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 201
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 202
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mCenterDotSize:I

    int-to-float v5, v2

    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPointColorPatern:[I

    iget-object v7, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPointRadialPos:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    move v3, p2

    move v4, p3

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 205
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 206
    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mCenterDotSize:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setPoint1(FF)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint1X:F

    .line 91
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint1Y:F

    return-void
.end method

.method public setPoint2(FF)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint2X:F

    .line 86
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mPoint2Y:F

    return-void
.end method

.method public setScrImageInfo(Landroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mScrToImg:Landroid/graphics/Matrix;

    .line 121
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mImageBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setShowReshapeHandles(Z)V
    .locals 0

    .line 272
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/GradControl;->mShowReshapeHandles:Z

    return-void
.end method
