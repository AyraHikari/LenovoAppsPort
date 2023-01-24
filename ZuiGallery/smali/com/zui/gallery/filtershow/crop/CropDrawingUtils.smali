.class public abstract Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;
.super Ljava/lang/Object;
.source "CropDrawingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawCropRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 55
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, -0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 57
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V
    .locals 1

    float-to-int p3, p3

    .line 90
    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p3, v0

    float-to-int p4, p4

    sub-int/2addr p4, v0

    add-int v0, p3, p2

    add-int/2addr p2, p4

    .line 92
    invoke-virtual {p1, p3, p4, v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static drawIndicatorForLooks(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V
    .locals 2

    float-to-int p3, p3

    .line 98
    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p3, v0

    float-to-int v0, p4

    add-int v1, p3, p2

    int-to-float p2, p2

    add-float/2addr p4, p2

    float-to-int p2, p4

    .line 101
    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 102
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static drawIndicators(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;ZI)V
    .locals 5

    if-nez p5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    const/16 v2, 0x9

    const/4 v3, 0x6

    const/4 v4, 0x3

    if-eqz p4, :cond_8

    if-eq p5, v4, :cond_1

    if-eqz v0, :cond_2

    .line 121
    :cond_1
    iget p4, p3, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->top:F

    invoke-static {p0, p1, p2, p4, v4}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_2
    if-eq p5, v3, :cond_3

    if-eqz v0, :cond_4

    .line 124
    :cond_3
    iget p4, p3, Landroid/graphics/RectF;->right:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    invoke-static {p0, p1, p2, p4, v3}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_4
    if-eq p5, v2, :cond_5

    if-eqz v0, :cond_6

    .line 127
    :cond_5
    iget p4, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p1, p2, p4, v2}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_6
    if-eq p5, v1, :cond_7

    if-eqz v0, :cond_10

    .line 130
    :cond_7
    iget p4, p3, Landroid/graphics/RectF;->right:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p1, p2, p4, p3}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    goto :goto_1

    :cond_8
    if-eq p5, v4, :cond_9

    if-eqz v0, :cond_a

    .line 135
    :cond_9
    iget p4, p3, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->top:F

    invoke-static {p0, p1, p2, p4, v4}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_a
    if-eq p5, v3, :cond_b

    if-eqz v0, :cond_c

    .line 138
    :cond_b
    iget p4, p3, Landroid/graphics/RectF;->right:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    invoke-static {p0, p1, p2, p4, v3}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_c
    if-eq p5, v2, :cond_d

    if-eqz v0, :cond_e

    .line 141
    :cond_d
    iget p4, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p1, p2, p4, v2}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_e
    if-eq p5, v1, :cond_f

    if-eqz v0, :cond_10

    .line 144
    :cond_f
    iget p4, p3, Landroid/graphics/RectF;->right:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p1, p2, p4, p3}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_10
    :goto_1
    return-void
.end method

.method public static drawIndicators(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIILandroid/graphics/RectF;ZI)V
    .locals 11

    move-object v6, p0

    move-object v0, p1

    move v1, p4

    move-object/from16 v7, p7

    move/from16 v8, p9

    if-nez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v9, v2

    const/16 v2, 0xc

    const/16 v3, 0x9

    const/4 v4, 0x6

    const/4 v5, 0x3

    if-eqz p8, :cond_8

    if-eq v8, v5, :cond_1

    if-eqz v9, :cond_2

    .line 155
    :cond_1
    iget v5, v7, Landroid/graphics/RectF;->left:F

    iget v10, v7, Landroid/graphics/RectF;->top:F

    invoke-static {p0, p1, p4, v5, v10}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_2
    if-eq v8, v4, :cond_3

    if-eqz v9, :cond_4

    .line 158
    :cond_3
    iget v4, v7, Landroid/graphics/RectF;->right:F

    iget v5, v7, Landroid/graphics/RectF;->top:F

    invoke-static {p0, p1, p4, v4, v5}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_4
    if-eq v8, v3, :cond_5

    if-eqz v9, :cond_6

    .line 161
    :cond_5
    iget v3, v7, Landroid/graphics/RectF;->left:F

    iget v4, v7, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p1, p4, v3, v4}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_6
    if-eq v8, v2, :cond_7

    if-eqz v9, :cond_18

    .line 164
    :cond_7
    iget v2, v7, Landroid/graphics/RectF;->right:F

    iget v3, v7, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p1, p4, v2, v3}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    goto/16 :goto_1

    :cond_8
    if-eq v8, v5, :cond_9

    if-eqz v9, :cond_a

    .line 169
    :cond_9
    iget v5, v7, Landroid/graphics/RectF;->left:F

    iget v10, v7, Landroid/graphics/RectF;->top:F

    invoke-static {p0, p1, p4, v5, v10}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_a
    if-eq v8, v4, :cond_b

    if-eqz v9, :cond_c

    .line 172
    :cond_b
    iget v4, v7, Landroid/graphics/RectF;->right:F

    iget v5, v7, Landroid/graphics/RectF;->top:F

    invoke-static {p0, p1, p4, v4, v5}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_c
    if-eq v8, v3, :cond_d

    if-eqz v9, :cond_e

    .line 175
    :cond_d
    iget v3, v7, Landroid/graphics/RectF;->left:F

    iget v4, v7, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p1, p4, v3, v4}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_e
    if-eq v8, v2, :cond_f

    if-eqz v9, :cond_10

    .line 178
    :cond_f
    iget v2, v7, Landroid/graphics/RectF;->right:F

    iget v3, v7, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p1, p4, v2, v3}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    :cond_10
    and-int/lit8 v0, v8, 0x2

    if-nez v0, :cond_11

    if-eqz v9, :cond_12

    .line 183
    :cond_11
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, v7, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-static/range {v0 .. v5}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawRectIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFF)V

    :cond_12
    and-int/lit8 v0, v8, 0x8

    if-nez v0, :cond_13

    if-eqz v9, :cond_14

    .line 186
    :cond_13
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, v7, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-static/range {v0 .. v5}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawRectIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFF)V

    :cond_14
    and-int/lit8 v0, v8, 0x1

    if-nez v0, :cond_15

    if-eqz v9, :cond_16

    .line 189
    :cond_15
    iget v4, v7, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v0, p0

    move-object v1, p3

    move/from16 v2, p6

    move/from16 v3, p5

    invoke-static/range {v0 .. v5}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawRectIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFF)V

    :cond_16
    and-int/lit8 v0, v8, 0x4

    if-nez v0, :cond_17

    if-eqz v9, :cond_18

    .line 192
    :cond_17
    iget v4, v7, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v0, p0

    move-object v1, p3

    move/from16 v2, p6

    move/from16 v3, p5

    invoke-static/range {v0 .. v5}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawRectIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFF)V

    :cond_18
    :goto_1
    return-void
.end method

.method public static drawRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 63
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, -0x1

    .line 64
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 65
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static drawRectIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIFF)V
    .locals 1

    float-to-int p4, p4

    .line 108
    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p4, v0

    float-to-int p5, p5

    .line 109
    div-int/lit8 v0, p3, 0x2

    sub-int/2addr p5, v0

    add-int/2addr p2, p4

    add-int/2addr p3, p5

    .line 110
    invoke-virtual {p1, p4, p5, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 113
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 14

    .line 35
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 36
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, 0x80

    const/16 v1, 0xff

    .line 37
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 38
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float v7, v0, v1

    .line 40
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v8, v0, v1

    .line 41
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v7

    .line 42
    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float v9, v1, v8

    const/4 v10, 0x0

    move v11, v0

    move v12, v10

    :goto_0
    const/4 v13, 0x2

    if-ge v12, v13, :cond_0

    .line 44
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v1, v11

    move v3, v11

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v11, v7

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v10, v13, :cond_1

    .line 48
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    move-object v0, p0

    move v2, v9

    move v4, v9

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v9, v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static drawShade(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 7

    .line 71
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 72
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 73
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 74
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, -0x78000000

    .line 75
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    int-to-float v0, v0

    .line 78
    iget v4, p1, Landroid/graphics/RectF;->top:F

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 79
    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 80
    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    invoke-virtual {v3, v5, v4, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 81
    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 82
    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 83
    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 84
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v1, v4, v0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 85
    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 11

    .line 235
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 236
    iget v6, p2, Landroid/graphics/RectF;->right:F

    iget v7, p3, Landroid/graphics/RectF;->top:F

    iget v8, p3, Landroid/graphics/RectF;->right:F

    iget v9, p2, Landroid/graphics/RectF;->bottom:F

    move-object v5, p0

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 238
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 240
    iget v6, p3, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->top:F

    iget v8, p2, Landroid/graphics/RectF;->left:F

    iget v9, p3, Landroid/graphics/RectF;->bottom:F

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawWallpaperSelectionFrame(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 7

    .line 199
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, p2

    .line 200
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p2

    mul-float/2addr p2, p3

    .line 201
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    .line 202
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 203
    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float v4, p3, v0

    div-float/2addr p2, v3

    sub-float v3, v1, p2

    add-float v5, p3, v0

    add-float v6, v1, p2

    invoke-direct {v2, v4, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 207
    new-instance v3, Landroid/graphics/RectF;

    sub-float v4, p3, p2

    sub-float v5, v1, v0

    add-float/2addr p3, p2

    add-float/2addr v1, v0

    invoke-direct {v3, v4, v5, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 208
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 209
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 210
    sget-object p1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, v2, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 211
    sget-object p1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, v3, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 212
    invoke-virtual {p0, p5}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 213
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 214
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 215
    iget p2, v2, Landroid/graphics/RectF;->left:F

    iget p3, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 216
    iget p2, v2, Landroid/graphics/RectF;->right:F

    iget p3, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 217
    iget p2, v2, Landroid/graphics/RectF;->left:F

    iget p3, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 218
    iget p2, v2, Landroid/graphics/RectF;->left:F

    iget p3, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    iget p2, v2, Landroid/graphics/RectF;->left:F

    iget p3, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 220
    iget p2, v2, Landroid/graphics/RectF;->right:F

    iget p3, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 221
    iget p2, v2, Landroid/graphics/RectF;->right:F

    iget p3, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 222
    iget p2, v2, Landroid/graphics/RectF;->right:F

    iget p3, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 223
    iget p2, v3, Landroid/graphics/RectF;->left:F

    iget p3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 224
    iget p2, v3, Landroid/graphics/RectF;->right:F

    iget p3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 225
    iget p2, v3, Landroid/graphics/RectF;->right:F

    iget p3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 226
    iget p2, v3, Landroid/graphics/RectF;->right:F

    iget p3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    iget p2, v3, Landroid/graphics/RectF;->left:F

    iget p3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 228
    iget p2, v3, Landroid/graphics/RectF;->right:F

    iget p3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 229
    iget p2, v3, Landroid/graphics/RectF;->left:F

    iget p3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 230
    iget p2, v3, Landroid/graphics/RectF;->left:F

    iget p3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 231
    invoke-virtual {p0, p1, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static getBitmapToDisplayMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 1

    .line 244
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 245
    invoke-static {v0, p0, p1}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->setBitmapToDisplayMatrix(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public static setBitmapToDisplayMatrix(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1

    .line 251
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    .line 252
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result p0

    return p0
.end method

.method public static setImageToScreenMatrix(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;I)Z
    .locals 3

    .line 257
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    int-to-float p3, p3

    .line 258
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p0, p3, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 259
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 263
    :cond_0
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p0, v0, p2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result p2

    .line 264
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {p0, p3, v0, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    move-result p0

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
