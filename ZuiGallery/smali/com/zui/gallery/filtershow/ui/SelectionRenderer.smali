.class public Lcom/zui/gallery/filtershow/ui/SelectionRenderer;
.super Ljava/lang/Object;
.source "SelectionRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawSelection(Landroid/graphics/Canvas;IIIIILandroid/graphics/Paint;)V
    .locals 9

    int-to-float v6, p1

    int-to-float v7, p2

    int-to-float v8, p3

    add-int/2addr p2, p5

    int-to-float v4, p2

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v5, p6

    .line 30
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int p2, p4, p5

    int-to-float v2, p2

    int-to-float p4, p4

    move v4, p4

    .line 31
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/2addr p1, p5

    int-to-float v3, p1

    move v2, v7

    .line 32
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int/2addr p3, p5

    int-to-float p1, p3

    move p2, v7

    move p3, v8

    move-object p5, p6

    .line 33
    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawSelection(Landroid/graphics/Canvas;IIIIILandroid/graphics/Paint;ILandroid/graphics/Paint;)V
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-float v10, v0

    int-to-float v11, v1

    int-to-float v12, v2

    add-int v13, v1, p5

    int-to-float v14, v13

    move-object/from16 v4, p0

    move v5, v10

    move v6, v11

    move v7, v12

    move v8, v14

    move-object/from16 v9, p6

    .line 38
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v9, v3, p5

    int-to-float v15, v9

    int-to-float v1, v3

    move-object/from16 v3, p0

    move v4, v10

    move v5, v15

    move v6, v12

    move v7, v1

    move-object/from16 v8, p6

    .line 39
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v0, v0, p5

    int-to-float v8, v0

    move v5, v11

    move v6, v8

    move v10, v8

    move-object/from16 v8, p6

    .line 40
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v6, v2, p5

    int-to-float v7, v6

    move v8, v0

    move-object/from16 v0, p0

    move v4, v1

    move v1, v7

    move v2, v11

    move v3, v12

    move-object/from16 v5, p6

    .line 41
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v13, v13, p7

    int-to-float v0, v13

    move-object/from16 p1, p0

    move/from16 p2, v10

    move/from16 p3, v14

    move/from16 p4, v7

    move/from16 p5, v0

    move-object/from16 p6, p8

    .line 42
    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v9, v9, p7

    int-to-float v0, v9

    move/from16 p3, v0

    move/from16 p5, v15

    .line 44
    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v0, v8, p7

    int-to-float v0, v0

    move/from16 p3, v14

    move/from16 p4, v0

    .line 46
    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v6, v6, p7

    int-to-float v0, v6

    move/from16 p1, v0

    move/from16 p2, v14

    move/from16 p3, v7

    move/from16 p4, v15

    move-object/from16 p5, p8

    .line 48
    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawSelection(Landroid/graphics/Canvas;IIIIILandroid/graphics/Paint;ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    sub-int p4, p3, p1

    add-int/2addr p3, p1

    .line 55
    div-int/lit8 p3, p3, 0x2

    int-to-float p1, p3

    int-to-float p2, p2

    invoke-static {p0, p9, p4, p1, p2}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicatorForLooks(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    return-void
.end method

.method public static drawUnSelection(Landroid/graphics/Canvas;IIIILandroid/graphics/drawable/Drawable;)V
    .locals 0

    sub-int p4, p3, p1

    add-int/2addr p3, p1

    .line 60
    div-int/lit8 p3, p3, 0x2

    int-to-float p1, p3

    int-to-float p2, p2

    invoke-static {p0, p5, p4, p1, p2}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicatorForLooks(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IFF)V

    return-void
.end method
