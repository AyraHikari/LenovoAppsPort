.class public Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;
.super Ljava/lang/Object;
.source "ImageFilterDualCamera.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final MAX_VALUE:I

.field private mCurrentValue:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->mPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->mPoint:Landroid/graphics/Point;

    .line 61
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->MAX_VALUE:I

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v2, p3

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 73
    new-instance v3, Landroid/graphics/Point;

    iget-object v5, v0, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->mPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, v0, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->mPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 75
    iget v5, v3, Landroid/graphics/Point;->x:I

    if-lez v5, :cond_e

    iget v5, v3, Landroid/graphics/Point;->y:I

    if-lez v5, :cond_e

    .line 76
    iget v5, v0, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->mCurrentValue:I

    .line 77
    iget v6, v0, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->MAX_VALUE:I

    int-to-float v5, v5

    int-to-float v6, v6

    div-float v14, v5, v6

    const/4 v5, 0x4

    new-array v6, v5, [I

    const/16 v7, 0x780

    const/4 v8, 0x7

    const/4 v15, 0x5

    const/16 v13, 0x8

    const/4 v12, 0x6

    const/4 v11, 0x2

    if-ne v2, v11, :cond_0

    .line 86
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 87
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v8, v16

    goto :goto_3

    .line 90
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    if-eq v4, v12, :cond_2

    if-eq v4, v13, :cond_2

    if-eq v4, v15, :cond_2

    if-ne v4, v8, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v12, v16

    move/from16 v13, v17

    goto :goto_1

    :cond_2
    :goto_0
    move/from16 v13, v16

    move/from16 v12, v17

    .line 104
    :goto_1
    rem-int/lit8 v17, v12, 0x2

    if-nez v17, :cond_4

    rem-int/lit8 v17, v13, 0x2

    if-eqz v17, :cond_3

    goto :goto_2

    :cond_3
    move v7, v12

    move v8, v13

    goto :goto_3

    :cond_4
    :goto_2
    int-to-float v15, v13

    int-to-float v8, v12

    div-float/2addr v15, v8

    if-lt v12, v13, :cond_5

    int-to-float v8, v7

    mul-float/2addr v8, v15

    float-to-int v8, v8

    goto :goto_3

    :cond_5
    int-to-float v8, v7

    div-float/2addr v8, v15

    float-to-int v8, v8

    move/from16 v25, v8

    move v8, v7

    move/from16 v7, v25

    .line 116
    :goto_3
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v12

    invoke-virtual {v12}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getBitmapCache()Lcom/zui/gallery/filtershow/cache/BitmapCache;

    move-result-object v12

    invoke-virtual {v12, v7, v8, v5}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 117
    invoke-static {}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->getInstance()Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;

    move-result-object v12

    iget v13, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    const/16 v18, 0x0

    const/4 v15, 0x1

    move-wide/from16 v20, v9

    move v9, v11

    if-eq v2, v11, :cond_6

    move/from16 v19, v15

    goto :goto_4

    :cond_6
    move/from16 v19, v18

    :goto_4
    move-object v11, v12

    const/4 v10, 0x6

    move v12, v13

    move v13, v3

    const/4 v3, 0x5

    move-object v15, v6

    move/from16 v16, v19

    move-object/from16 v17, v5

    invoke-virtual/range {v11 .. v17}, Lcom/android/gallery3d/filtershow/tools/DualCameraNativeEngine;->applyFocus(IIF[IZLandroid/graphics/Bitmap;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 139
    sget-object v2, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->TAG:Ljava/lang/String;

    const-string v3, "Imagelib API failed"

    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_7
    const/4 v11, 0x3

    if-ne v2, v9, :cond_a

    if-eq v4, v10, :cond_9

    if-eq v4, v11, :cond_9

    const/16 v12, 0x8

    if-eq v4, v12, :cond_9

    if-eq v4, v3, :cond_9

    const/4 v1, 0x7

    if-ne v4, v1, :cond_8

    goto :goto_5

    :cond_8
    return-object v5

    .line 147
    :cond_9
    :goto_5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 148
    invoke-static/range {p2 .. p2}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getRotationForOrientation(I)I

    move-result v2

    int-to-float v2, v2

    div-int/2addr v7, v9

    int-to-float v3, v7

    div-int/2addr v8, v9

    int-to-float v4, v8

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 150
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 151
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    const/16 v24, 0x0

    move-object/from16 v18, v5

    move-object/from16 v23, v1

    .line 150
    invoke-static/range {v18 .. v24}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 152
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1

    :cond_a
    const/16 v12, 0x8

    .line 157
    iget-object v13, v0, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->reset()V

    .line 158
    iget-object v13, v0, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->mPaint:Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-ne v2, v9, :cond_b

    .line 160
    iget-object v2, v0, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 161
    iget-object v2, v0, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setDither(Z)V

    .line 164
    :cond_b
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 169
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 170
    aget v12, v6, v18

    int-to-float v12, v12

    int-to-float v7, v7

    div-float/2addr v12, v7

    iput v12, v3, Landroid/graphics/RectF;->left:F

    .line 171
    aget v12, v6, v14

    int-to-float v12, v12

    int-to-float v8, v8

    div-float/2addr v12, v8

    iput v12, v3, Landroid/graphics/RectF;->top:F

    .line 172
    aget v12, v6, v18

    aget v9, v6, v9

    add-int/2addr v12, v9

    int-to-float v9, v12

    div-float/2addr v9, v7

    iput v9, v3, Landroid/graphics/RectF;->right:F

    .line 173
    aget v9, v6, v14

    aget v6, v6, v11

    add-int/2addr v9, v6

    int-to-float v6, v9

    div-float/2addr v6, v8

    iput v6, v3, Landroid/graphics/RectF;->bottom:F

    if-eq v4, v10, :cond_c

    if-eq v4, v11, :cond_c

    const/16 v6, 0x8

    if-eq v4, v6, :cond_c

    const/4 v6, 0x5

    if-eq v4, v6, :cond_c

    const/4 v6, 0x7

    if-ne v4, v6, :cond_d

    .line 181
    :cond_c
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 182
    invoke-static/range {p2 .. p2}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getRotationForOrientation(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual {v6, v9, v10, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 185
    :cond_d
    new-instance v6, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-direct {v6}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;-><init>()V

    .line 186
    iget-object v9, v6, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    invoke-virtual {v9, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 190
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    int-to-float v10, v2

    int-to-float v11, v15

    move-object v2, v6

    move-object v3, v9

    move/from16 v4, p2

    move-object v12, v5

    move v5, v7

    move v6, v8

    move v7, v10

    move v8, v11

    .line 191
    invoke-static/range {v2 .. v8}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getOriginalToScreen(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Landroid/graphics/RectF;IFFFF)Landroid/graphics/Matrix;

    move-result-object v2

    .line 193
    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    .line 194
    invoke-virtual {v13, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 195
    iget-object v3, v0, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v12, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 196
    invoke-virtual {v13}, Landroid/graphics/Canvas;->restore()V

    .line 197
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getBitmapCache()Lcom/zui/gallery/filtershow/cache/BitmapCache;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->cache(Landroid/graphics/Bitmap;)Z

    .line 198
    sget-object v2, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reFoce spend "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-object v1
.end method

.method public declared-synchronized setFocusParamater(III)V
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->mPoint:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 66
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->mPoint:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 67
    iput p3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;->mCurrentValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
