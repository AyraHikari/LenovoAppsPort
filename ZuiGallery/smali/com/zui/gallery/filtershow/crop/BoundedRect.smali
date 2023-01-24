.class public Lcom/zui/gallery/filtershow/crop/BoundedRect;
.super Ljava/lang/Object;
.source "BoundedRect.java"


# instance fields
.field private inner:Landroid/graphics/RectF;

.field private innerRotated:[F

.field private outer:Landroid/graphics/RectF;

.field private rot:F


# direct methods
.method public constructor <init>(FLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->rot:F

    .line 38
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    .line 39
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    .line 40
    invoke-static {p1}, Lcom/zui/gallery/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 41
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->rotateInner()V

    .line 42
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->isConstrained()Z

    move-result p1

    if-nez p1, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->reconstrain()V

    :cond_0
    return-void
.end method

.method public constructor <init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->rot:F

    .line 48
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    .line 49
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    .line 50
    invoke-static {p1}, Lcom/zui/gallery/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 51
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->rotateInner()V

    .line 52
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->isConstrained()Z

    move-result p1

    if-nez p1, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->reconstrain()V

    :cond_0
    return-void
.end method

.method private getInverseRotMatrix()Landroid/graphics/Matrix;
    .locals 4

    .line 364
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 365
    iget v1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->rot:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    return-object v0
.end method

.method private getRotMatrix()Landroid/graphics/Matrix;
    .locals 4

    .line 358
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 359
    iget v1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->rot:F

    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    return-object v0
.end method

.method private isConstrained()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->innerRotated:[F

    aget v4, v3, v1

    add-int/lit8 v5, v1, 0x1

    aget v3, v3, v5

    invoke-static {v2, v4, v3}, Lcom/zui/gallery/filtershow/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private reconstrain()V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->innerRotated:[F

    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/crop/CropMath;->getEdgePoints(Landroid/graphics/RectF;[F)V

    .line 346
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->getRotMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->innerRotated:[F

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 348
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 349
    invoke-static {v1}, Lcom/zui/gallery/filtershow/crop/CropMath;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    return-void
.end method

.method private rotateInner()V
    .locals 2

    .line 353
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->getInverseRotMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->innerRotated:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method


# virtual methods
.method public fixedAspectResizeInner(Landroid/graphics/RectF;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 246
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->getRotMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->getInverseRotMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 249
    iget-object v4, v0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 250
    iget-object v5, v0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    .line 252
    iget-object v5, v0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v5}, Lcom/zui/gallery/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v5

    .line 254
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 255
    iget-object v2, v0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v2

    .line 256
    invoke-static/range {p1 .. p1}, Lcom/zui/gallery/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v6

    .line 260
    iget-object v7, v0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget v8, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v8

    const/4 v9, -0x1

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-nez v7, :cond_1

    .line 261
    iget-object v7, v0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget v13, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v13

    if-nez v7, :cond_0

    move v7, v12

    goto :goto_0

    .line 263
    :cond_0
    iget-object v7, v0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget v13, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v13

    if-nez v7, :cond_3

    move v7, v11

    goto :goto_0

    .line 265
    :cond_1
    iget-object v7, v0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget v13, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v7, v13

    if-nez v7, :cond_3

    .line 266
    iget-object v7, v0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget v13, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v13

    if-nez v7, :cond_2

    move v7, v10

    goto :goto_0

    .line 268
    :cond_2
    iget-object v7, v0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget v13, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v13

    if-nez v7, :cond_3

    const/4 v7, 0x6

    goto :goto_0

    :cond_3
    move v7, v9

    :goto_0
    if-ne v7, v9, :cond_4

    return-void

    .line 274
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    move v9, v12

    .line 276
    :goto_1
    array-length v13, v6

    if-ge v9, v13, :cond_8

    new-array v13, v11, [F

    .line 277
    aget v14, v6, v9

    aput v14, v13, v12

    add-int/lit8 v14, v9, 0x1

    aget v15, v6, v14

    const/16 v16, 0x1

    aput v15, v13, v16

    .line 280
    invoke-static {v13, v11}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v15

    .line 281
    invoke-virtual {v3, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 282
    iget-object v8, v0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    aget v11, v15, v12

    aget v15, v15, v16

    invoke-static {v8, v11, v15}, Lcom/zui/gallery/filtershow/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v8

    if-nez v8, :cond_7

    if-ne v9, v7, :cond_5

    goto :goto_2

    .line 286
    :cond_5
    invoke-static {v13, v5}, Lcom/zui/gallery/filtershow/crop/CropMath;->closestSide([F[F)[F

    move-result-object v8

    new-array v11, v10, [F

    .line 287
    aget v13, v6, v9

    aput v13, v11, v12

    aget v13, v6, v14

    aput v13, v11, v16

    aget v13, v2, v9

    const/4 v15, 0x2

    aput v13, v11, v15

    const/4 v13, 0x3

    aget v17, v2, v14

    aput v17, v11, v13

    .line 291
    invoke-static {v11, v8}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->lineIntersect([F[F)[F

    move-result-object v8

    if-nez v8, :cond_6

    new-array v8, v15, [F

    .line 296
    aget v11, v2, v9

    aput v11, v8, v12

    .line 297
    aget v11, v2, v14

    aput v11, v8, v16

    .line 301
    :cond_6
    aget v11, v2, v7

    add-int/lit8 v13, v7, 0x1

    .line 302
    aget v13, v2, v13

    .line 303
    aget v14, v8, v12

    sub-float/2addr v11, v14

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 304
    aget v8, v8, v16

    sub-float/2addr v13, v8

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v8, v4

    .line 305
    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpg-float v11, v8, v1

    if-gez v11, :cond_7

    move v1, v8

    :cond_7
    :goto_2
    add-int/lit8 v9, v9, 0x2

    const/4 v11, 0x2

    goto :goto_1

    :cond_8
    div-float v2, v1, v4

    .line 312
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    if-nez v7, :cond_9

    .line 314
    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 315
    iget v1, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    iput v1, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :cond_9
    const/4 v5, 0x2

    if-ne v7, v5, :cond_a

    .line 317
    iget v5, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 318
    iget v1, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    iput v1, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :cond_a
    if-ne v7, v10, :cond_b

    .line 320
    iget v5, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 321
    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    iput v1, v4, Landroid/graphics/RectF;->top:F

    goto :goto_3

    :cond_b
    const/4 v5, 0x6

    if-ne v7, v5, :cond_c

    .line 323
    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 324
    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    iput v1, v4, Landroid/graphics/RectF;->top:F

    .line 326
    :cond_c
    :goto_3
    invoke-static {v4}, Lcom/zui/gallery/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v1

    .line 327
    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 328
    iput-object v1, v0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 330
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->reconstrain()V

    return-void
.end method

.method public getInner()Landroid/graphics/RectF;
    .locals 2

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getOuter()Landroid/graphics/RectF;
    .locals 2

    .line 105
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public moveInner(FF)V
    .locals 8

    .line 114
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->getInverseRotMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 116
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 117
    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 119
    invoke-static {v1}, Lcom/zui/gallery/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object p1

    .line 120
    iget-object p2, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {p2}, Lcom/zui/gallery/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object p2

    .line 122
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 123
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    move v3, v2

    .line 128
    :goto_0
    array-length v4, p1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 129
    aget v4, p1, v3

    aget v6, v1, v2

    add-float/2addr v4, v6

    add-int/lit8 v6, v3, 0x1

    .line 130
    aget v6, p1, v6

    aget v7, v1, v5

    add-float/2addr v6, v7

    .line 131
    iget-object v7, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v7, v4, v6}, Lcom/zui/gallery/filtershow/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v7

    if-nez v7, :cond_0

    new-array v7, v0, [F

    aput v4, v7, v2

    aput v6, v7, v5

    .line 135
    invoke-static {v7, p2}, Lcom/zui/gallery/filtershow/crop/CropMath;->closestSide([F[F)[F

    move-result-object v4

    .line 137
    invoke-static {v7, v4}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->shortestVectorFromPointToLine([F[F)[F

    move-result-object v4

    .line 138
    aget v6, v1, v2

    aget v7, v4, v2

    add-float/2addr v6, v7

    aput v6, v1, v2

    .line 139
    aget v6, v1, v5

    aget v4, v4, v5

    add-float/2addr v6, v4

    aput v6, v1, v5

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    move p2, v2

    .line 143
    :goto_1
    array-length v3, p1

    if-ge p2, v3, :cond_3

    .line 144
    aget v3, p1, p2

    aget v4, v1, v2

    add-float/2addr v3, v4

    add-int/lit8 v4, p2, 0x1

    .line 145
    aget v4, p1, v4

    aget v6, v1, v5

    add-float/2addr v4, v6

    .line 146
    iget-object v6, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v6, v3, v4}, Lcom/zui/gallery/filtershow/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v6

    if-nez v6, :cond_2

    new-array v6, v0, [F

    aput v3, v6, v2

    aput v4, v6, v5

    .line 150
    iget-object v7, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v7, v6}, Lcom/zui/gallery/filtershow/crop/CropMath;->getEdgePoints(Landroid/graphics/RectF;[F)V

    .line 151
    aget v7, v6, v2

    sub-float/2addr v7, v3

    aput v7, v6, v2

    .line 152
    aget v3, v6, v5

    sub-float/2addr v3, v4

    aput v3, v6, v5

    .line 153
    aget v3, v1, v2

    aget v4, v6, v2

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 154
    aget v3, v1, v5

    aget v4, v6, v5

    add-float/2addr v3, v4

    aput v3, v1, v5

    :cond_2
    add-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_3
    move p2, v2

    .line 159
    :goto_2
    array-length v0, p1

    if-ge p2, v0, :cond_4

    .line 160
    aget v0, p1, p2

    aget v3, v1, v2

    add-float/2addr v0, v3

    add-int/lit8 v3, p2, 0x1

    .line 161
    aget v4, p1, v3

    aget v6, v1, v5

    add-float/2addr v4, v6

    .line 163
    aput v0, p1, p2

    .line 164
    aput v4, p1, v3

    add-int/lit8 p2, p2, 0x2

    goto :goto_2

    .line 167
    :cond_4
    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 169
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->reconstrain()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public resetTo(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->rot:F

    .line 58
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 59
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 60
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 61
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->rotateInner()V

    .line 62
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->isConstrained()Z

    move-result p1

    if-nez p1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->reconstrain()V

    :cond_0
    return-void
.end method

.method public resizeInner(Landroid/graphics/RectF;)V
    .locals 13

    .line 177
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->getRotMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 178
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->getInverseRotMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v2

    .line 181
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 182
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    .line 183
    invoke-static {p1}, Lcom/zui/gallery/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v3

    .line 184
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/4 p1, 0x0

    move v5, p1

    .line 186
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_a

    const/4 v6, 0x2

    new-array v7, v6, [F

    .line 187
    aget v8, v3, v5

    aput v8, v7, p1

    add-int/lit8 v8, v5, 0x1

    aget v9, v3, v8

    const/4 v10, 0x1

    aput v9, v7, v10

    .line 190
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v9

    .line 191
    invoke-virtual {v1, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 192
    iget-object v11, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    aget v12, v9, p1

    aget v9, v9, v10

    invoke-static {v11, v12, v9}, Lcom/zui/gallery/filtershow/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v9

    if-nez v9, :cond_9

    .line 193
    invoke-static {v7, v2}, Lcom/zui/gallery/filtershow/crop/CropMath;->closestSide([F[F)[F

    move-result-object v7

    const/4 v9, 0x4

    new-array v9, v9, [F

    .line 194
    aget v11, v3, v5

    aput v11, v9, p1

    aget v11, v3, v8

    aput v11, v9, v10

    aget v11, v0, v5

    aput v11, v9, v6

    const/4 v11, 0x3

    aget v12, v0, v8

    aput v12, v9, v11

    .line 198
    invoke-static {v9, v7}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->lineIntersect([F[F)[F

    move-result-object v7

    if-nez v7, :cond_0

    new-array v7, v6, [F

    .line 202
    aget v6, v0, v5

    aput v6, v7, p1

    .line 203
    aget v6, v0, v8

    aput v6, v7, v10

    :cond_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_9

    .line 225
    :pswitch_0
    aget v6, v7, p1

    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1

    aget v6, v7, p1

    goto :goto_1

    :cond_1
    iget v6, v4, Landroid/graphics/RectF;->left:F

    :goto_1
    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 226
    aget v6, v7, v10

    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_2

    aget v6, v7, v10

    goto :goto_2

    :cond_2
    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    :goto_2
    iput v6, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_9

    .line 220
    :pswitch_1
    aget v6, v7, p1

    iget v8, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_3

    aget v6, v7, p1

    goto :goto_3

    :cond_3
    iget v6, v4, Landroid/graphics/RectF;->right:F

    :goto_3
    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 221
    aget v6, v7, v10

    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_4

    aget v6, v7, v10

    goto :goto_4

    :cond_4
    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    :goto_4
    iput v6, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_9

    .line 215
    :pswitch_2
    aget v6, v7, p1

    iget v8, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_5

    aget v6, v7, p1

    goto :goto_5

    :cond_5
    iget v6, v4, Landroid/graphics/RectF;->right:F

    :goto_5
    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 216
    aget v6, v7, v10

    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_6

    aget v6, v7, v10

    goto :goto_6

    :cond_6
    iget v6, v4, Landroid/graphics/RectF;->top:F

    :goto_6
    iput v6, v4, Landroid/graphics/RectF;->top:F

    goto :goto_9

    .line 210
    :pswitch_3
    aget v6, v7, p1

    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_7

    aget v6, v7, p1

    goto :goto_7

    :cond_7
    iget v6, v4, Landroid/graphics/RectF;->left:F

    :goto_7
    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 211
    aget v6, v7, v10

    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_8

    aget v6, v7, v10

    goto :goto_8

    :cond_8
    iget v6, v4, Landroid/graphics/RectF;->top:F

    :goto_8
    iput v6, v4, Landroid/graphics/RectF;->top:F

    :cond_9
    :goto_9
    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_0

    .line 233
    :cond_a
    invoke-static {v4}, Lcom/zui/gallery/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object p1

    .line 234
    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 235
    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 237
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->reconstrain()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setInner(Landroid/graphics/RectF;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    .line 73
    invoke-static {p1}, Lcom/zui/gallery/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 74
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->rotateInner()V

    .line 75
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->isConstrained()Z

    move-result p1

    if-nez p1, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->reconstrain()V

    :cond_1
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 83
    iget v0, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->rot:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iput p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->rot:F

    .line 86
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 87
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->rotateInner()V

    .line 88
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->isConstrained()Z

    move-result p1

    if-nez p1, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/BoundedRect;->reconstrain()V

    :cond_1
    return-void
.end method

.method public setToInner(Landroid/graphics/RectF;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setToOuter(Landroid/graphics/RectF;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method
