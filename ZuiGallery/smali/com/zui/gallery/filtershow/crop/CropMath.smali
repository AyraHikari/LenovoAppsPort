.class public Lcom/zui/gallery/filtershow/crop/CropMath;
.super Ljava/lang/Object;
.source "CropMath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closestSide([F[F)[F
    .locals 9

    .line 114
    array-length v0, p1

    const/4 v1, 0x0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v3, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_1

    const/4 v5, 0x4

    new-array v5, v5, [F

    .line 118
    aget v6, p1, v4

    aput v6, v5, v1

    add-int/lit8 v6, v4, 0x1

    rem-int/2addr v6, v0

    aget v6, p1, v6

    const/4 v7, 0x1

    aput v6, v5, v7

    add-int/lit8 v6, v4, 0x2

    rem-int v7, v6, v0

    aget v7, p1, v7

    const/4 v8, 0x2

    aput v7, v5, v8

    add-int/lit8 v4, v4, 0x3

    rem-int/2addr v4, v0

    aget v4, p1, v4

    const/4 v7, 0x3

    aput v4, v5, v7

    .line 123
    invoke-static {p0, v5}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->shortestVectorFromPointToLine([F[F)[F

    move-result-object v4

    .line 122
    invoke-static {v4}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->vectorLength([F)F

    move-result v4

    cmpg-float v7, v4, v2

    if-gez v7, :cond_0

    move v2, v4

    move-object v3, v5

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static constrainedRotation(F)I
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p0, v0

    const/high16 v0, 0x42b40000    # 90.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x4

    :cond_0
    mul-int/lit8 p0, p0, 0x5a

    return p0
.end method

.method public static fixAspectRatio(Landroid/graphics/RectF;FF)V
    .locals 4

    .line 174
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 175
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 176
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    mul-float/2addr p1, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p1, v3

    mul-float/2addr v0, p2

    div-float/2addr v0, v3

    sub-float p2, v1, p1

    sub-float v3, v2, v0

    add-float/2addr v1, p1

    add-float/2addr v2, v0

    .line 179
    invoke-virtual {p0, p2, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public static fixAspectRatioContained(Landroid/graphics/RectF;FF)V
    .locals 3

    .line 191
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 192
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v2, v0, v1

    div-float/2addr p1, p2

    cmpg-float p2, v2, p1

    const/high16 v2, 0x40000000    # 2.0f

    if-gez p2, :cond_0

    div-float/2addr v0, p1

    .line 199
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    div-float p2, v0, v2

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->top:F

    .line 200
    iget p1, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_0
    mul-float/2addr v1, p1

    .line 203
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    div-float p2, v1, v2

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 204
    iget p1, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, v1

    iput p1, p0, Landroid/graphics/RectF;->right:F

    :goto_0
    return-void
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 1

    .line 234
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method public static getCornersFromRect(Landroid/graphics/RectF;)[F
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 43
    iget v1, p0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x6

    aput v1, v0, v2

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    const/4 v1, 0x7

    aput p0, v0, v1

    return-object v0
.end method

.method public static getEdgePoints(Landroid/graphics/RectF;[F)V
    .locals 5

    .line 97
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 100
    aget v1, p1, v0

    iget v2, p0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2, v3}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->clamp(FFF)F

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v1, v0, 0x1

    .line 101
    aget v2, p1, v1

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3, v4}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->clamp(FFF)F

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2

    .line 219
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 220
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 221
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 222
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static getUnrotated([F[FLandroid/graphics/RectF;)F
    .locals 7

    const/4 v0, 0x1

    .line 249
    aget v1, p0, v0

    const/4 v2, 0x3

    aget v2, p0, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    .line 250
    aget v3, p0, v2

    const/4 v4, 0x2

    aget v4, p0, v4

    sub-float/2addr v3, v4

    div-float/2addr v1, v3

    float-to-double v3, v1

    .line 251
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    double-to-float v1, v3

    .line 252
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    neg-float v4, v1

    .line 253
    aget v2, p1, v2

    aget p1, p1, v0

    invoke-virtual {v3, v4, v2, p1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 254
    array-length p1, p0

    new-array p1, p1, [F

    .line 255
    invoke-virtual {v3, p1, p0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 256
    invoke-static {p1}, Lcom/zui/gallery/filtershow/crop/CropMath;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return v1
.end method

.method public static inclusiveContains(Landroid/graphics/RectF;FF)Z
    .locals 1

    .line 63
    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_0

    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_0

    iget p0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float p0, p2, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static pointInRotatedRect([FLandroid/graphics/RectF;F)Z
    .locals 3

    .line 141
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x2

    .line 142
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    .line 143
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 144
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 145
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 147
    :cond_0
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 148
    aget p2, p0, v1

    const/4 v0, 0x1

    aget p0, p0, v0

    invoke-static {p1, p2, p0}, Lcom/zui/gallery/filtershow/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result p0

    return p0
.end method

.method public static pointInRotatedRect([F[F[F)Z
    .locals 1

    .line 160
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 161
    invoke-static {p1, p2, v0}, Lcom/zui/gallery/filtershow/crop/CropMath;->getUnrotated([F[FLandroid/graphics/RectF;)F

    move-result p1

    .line 162
    invoke-static {p0, v0, p1}, Lcom/zui/gallery/filtershow/crop/CropMath;->pointInRotatedRect([FLandroid/graphics/RectF;F)Z

    move-result p0

    return p0
.end method

.method public static trapToRect([F)Landroid/graphics/RectF;
    .locals 5

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x1

    .line 76
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    add-int/lit8 v2, v1, -0x1

    .line 77
    aget v2, p0, v2

    .line 78
    aget v3, p0, v1

    .line 79
    iget v4, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    iget v4, v0, Landroid/graphics/RectF;->left:F

    :goto_1
    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 80
    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    move v4, v3

    goto :goto_2

    :cond_1
    iget v4, v0, Landroid/graphics/RectF;->top:F

    :goto_2
    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 81
    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    goto :goto_3

    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->right:F

    :goto_3
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 82
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_3

    goto :goto_4

    :cond_3
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    :goto_4
    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/RectF;->sort()V

    return-object v0
.end method
