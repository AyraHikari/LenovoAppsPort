.class public Lcom/zui/gallery/filtershow/imageshow/Spline;
.super Ljava/lang/Object;
.source "Spline.java"


# static fields
.field public static final BLUE:I = 0x3

.field public static final GREEN:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "Spline"

.field public static final RED:I = 0x1

.field public static final RGB:I

.field private static mCurveHandle:Landroid/graphics/drawable/Drawable;

.field private static mCurveHandleSize:I

.field private static mCurveWidth:I


# instance fields
.field private final gPaint:Landroid/graphics/Paint;

.field private mCurrentControlPoint:Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

.field private final mPoints:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/imageshow/ControlPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->gPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mCurrentControlPoint:Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/imageshow/Spline;)V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->gPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mCurrentControlPoint:Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 51
    :goto_0
    iget-object v1, p1, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 52
    iget-object v1, p1, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    .line 53
    new-instance v2, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    invoke-direct {v2, v1}, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;-><init>(Lcom/zui/gallery/filtershow/imageshow/ControlPoint;)V

    .line 54
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v3, p1, Lcom/zui/gallery/filtershow/imageshow/Spline;->mCurrentControlPoint:Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    if-ne v3, v1, :cond_0

    .line 56
    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mCurrentControlPoint:Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public static colorForCurve(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const p0, -0xffff01

    return p0

    :cond_1
    const p0, -0xff0100

    return p0

    :cond_2
    const/high16 p0, -0x10000

    return p0
.end method

.method public static curveHandleSize()I
    .locals 1

    .line 72
    sget v0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mCurveHandleSize:I

    return v0
.end method

.method private didMovePoint(Lcom/zui/gallery/filtershow/imageshow/ControlPoint;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mCurrentControlPoint:Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    return-void
.end method

.method private drawGrid(Landroid/graphics/Canvas;FF)V
    .locals 10

    .line 216
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->gPaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 217
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->gPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 223
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->gPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 224
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->gPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 225
    iget-object v8, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->gPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move v5, p3

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 227
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->gPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 228
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->gPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x40400000    # 3.0f

    div-float v7, p3, v0

    div-float v0, p2, v0

    const/4 v1, 0x1

    move v8, v1

    :goto_0
    const/4 v1, 0x3

    if-ge v8, v1, :cond_0

    const/4 v2, 0x0

    int-to-float v9, v8

    mul-float v5, v9, v7

    .line 232
    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->gPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v5

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-float v4, v9, v0

    const/4 v3, 0x0

    .line 233
    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->gPaint:Landroid/graphics/Paint;

    move v2, v4

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 235
    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->gPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 236
    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->gPaint:Landroid/graphics/Paint;

    move v2, p2

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 237
    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->gPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 238
    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->gPaint:Landroid/graphics/Paint;

    move v3, p3

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHandles(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V
    .locals 2

    float-to-int p3, p3

    .line 143
    sget v0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mCurveHandleSize:I

    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p3, v1

    float-to-int p4, p4

    .line 144
    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p4, v1

    add-int v1, p3, v0

    add-int/2addr v0, p4

    .line 145
    invoke-virtual {p2, p3, p4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static setCurveHandle(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 63
    sput-object p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mCurveHandle:Landroid/graphics/drawable/Drawable;

    .line 64
    sput p1, Lcom/zui/gallery/filtershow/imageshow/Spline;->mCurveHandleSize:I

    return-void
.end method

.method public static setCurveWidth(I)V
    .locals 0

    .line 68
    sput p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mCurveWidth:I

    return-void
.end method


# virtual methods
.method public addPoint(FF)I
    .locals 1

    .line 393
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    invoke-direct {v0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/imageshow/Spline;->addPoint(Lcom/zui/gallery/filtershow/imageshow/ControlPoint;)I

    move-result p1

    return p1
.end method

.method public addPoint(Lcom/zui/gallery/filtershow/imageshow/ControlPoint;)I
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 399
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public copy()Lcom/zui/gallery/filtershow/imageshow/Spline;
    .locals 3

    .line 435
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/Spline;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/imageshow/Spline;-><init>()V

    const/4 v1, 0x0

    .line 436
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 437
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    .line 438
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->copy()Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/imageshow/Spline;->addPoint(Lcom/zui/gallery/filtershow/imageshow/ControlPoint;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public deletePoint(I)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 404
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/Spline;->reset()V

    .line 407
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;IIIZZ)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 243
    sget v1, Lcom/zui/gallery/filtershow/imageshow/Spline;->mCurveHandleSize:I

    sub-int v2, p3, v1

    int-to-float v2, v2

    sub-int v3, p4, v1

    int-to-float v9, v3

    .line 245
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    .line 246
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 268
    iget-object v4, v0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v10

    new-array v11, v10, [Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    const/4 v12, 0x0

    move v4, v12

    .line 269
    :goto_0
    iget-object v5, v0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 270
    iget-object v5, v0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    .line 271
    new-instance v6, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    iget v13, v5, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    mul-float/2addr v13, v2

    iget v5, v5, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    mul-float/2addr v5, v9

    invoke-direct {v6, v13, v5}, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;-><init>(FF)V

    aput-object v6, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {v0, v11}, Lcom/zui/gallery/filtershow/imageshow/Spline;->solveSystem([Lcom/zui/gallery/filtershow/imageshow/ControlPoint;)[D

    move-result-object v4

    .line 275
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    const/4 v5, 0x0

    .line 276
    aget-object v6, v11, v12

    iget v6, v6, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    invoke-virtual {v13, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move v5, v12

    :goto_1
    add-int/lit8 v6, v10, -0x1

    if-ge v5, v6, :cond_4

    .line 278
    aget-object v6, v11, v5

    iget v6, v6, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    float-to-double v14, v6

    add-int/lit8 v6, v5, 0x1

    .line 279
    aget-object v12, v11, v6

    iget v12, v12, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    move/from16 p4, v1

    float-to-double v0, v12

    .line 280
    aget-object v12, v11, v5

    iget v12, v12, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    move/from16 v16, v2

    move/from16 v17, v3

    float-to-double v2, v12

    .line 281
    aget-object v12, v11, v6

    iget v12, v12, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    move/from16 v18, v10

    move-object/from16 v19, v11

    float-to-double v10, v12

    move-wide v7, v14

    :goto_2
    cmpg-double v12, v7, v0

    if-gez v12, :cond_3

    sub-double v20, v0, v14

    mul-double v22, v20, v20

    sub-double v24, v7, v14

    div-double v24, v24, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v20, v20, v24

    mul-double v26, v20, v2

    mul-double v28, v24, v10

    mul-double v30, v20, v20

    mul-double v30, v30, v20

    sub-double v30, v30, v20

    .line 292
    aget-wide v20, v4, v5

    mul-double v30, v30, v20

    mul-double v20, v24, v24

    mul-double v20, v20, v24

    sub-double v20, v20, v24

    .line 293
    aget-wide v24, v4, v6

    mul-double v20, v20, v24

    add-double v26, v26, v28

    const-wide/high16 v24, 0x4018000000000000L    # 6.0

    div-double v22, v22, v24

    add-double v30, v30, v20

    mul-double v22, v22, v30

    add-double v26, v26, v22

    move-wide/from16 v20, v0

    float-to-double v0, v9

    cmpl-double v12, v26, v0

    if-lez v12, :cond_1

    move-wide/from16 v26, v0

    :cond_1
    const-wide/16 v0, 0x0

    cmpg-double v12, v26, v0

    if-gez v12, :cond_2

    goto :goto_3

    :cond_2
    move-wide/from16 v0, v26

    :goto_3
    double-to-float v12, v7

    double-to-float v0, v0

    .line 301
    invoke-virtual {v13, v12, v0}, Landroid/graphics/Path;->lineTo(FF)V

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    add-double/2addr v7, v0

    move-wide/from16 v0, v20

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v1, p4

    move v5, v6

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v10, v18

    move-object/from16 v11, v19

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_4
    move/from16 p4, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v10

    move-object/from16 v19, v11

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p1

    move/from16 v2, p4

    move/from16 v1, v17

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v7, p0

    move/from16 v1, v16

    .line 306
    invoke-direct {v7, v0, v1, v9}, Lcom/zui/gallery/filtershow/imageshow/Spline;->drawGrid(Landroid/graphics/Canvas;FF)V

    .line 307
    aget-object v2, v19, v6

    .line 308
    iget v3, v2, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    iget v4, v2, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 309
    iget v2, v2, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 310
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    .line 311
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 312
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 313
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 314
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 315
    sget v2, Lcom/zui/gallery/filtershow/imageshow/Spline;->mCurveWidth:I

    if-eqz p5, :cond_5

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    :cond_5
    move v10, v2

    add-int/lit8 v2, v10, 0x2

    int-to-float v2, v2

    .line 319
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, -0x1000000

    .line 320
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    invoke-virtual {v0, v13, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p6, :cond_6

    .line 323
    iget-object v3, v7, Lcom/zui/gallery/filtershow/imageshow/Spline;->mCurrentControlPoint:Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    if-eqz v3, :cond_6

    .line 324
    iget v3, v3, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    mul-float v11, v3, v1

    .line 325
    iget-object v1, v7, Lcom/zui/gallery/filtershow/imageshow/Spline;->mCurrentControlPoint:Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    iget v1, v1, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    mul-float v12, v1, v9

    const/high16 v1, 0x40400000    # 3.0f

    .line 326
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 327
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    move v4, v11

    move v5, v9

    move-object v6, v8

    .line 328
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    move v5, v12

    .line 329
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 330
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move/from16 v14, p2

    .line 331
    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v1, p1

    move v2, v11

    move v5, v9

    .line 332
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    move v5, v12

    .line 333
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_6
    move/from16 v14, p2

    :goto_4
    int-to-float v1, v10

    .line 336
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 337
    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
    invoke-virtual {v0, v13, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p5, :cond_7

    move/from16 v1, v18

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v1, :cond_7

    .line 341
    aget-object v2, v19, v12

    iget v2, v2, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    .line 342
    aget-object v3, v19, v12

    iget v3, v3, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    .line 343
    sget-object v4, Lcom/zui/gallery/filtershow/imageshow/Spline;->mCurveHandle:Landroid/graphics/drawable/Drawable;

    invoke-direct {v7, v0, v4, v2, v3}, Lcom/zui/gallery/filtershow/imageshow/Spline;->drawHandles(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 346
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAppliedCurve()[F
    .locals 23

    move-object/from16 v0, p0

    const/16 v1, 0x100

    new-array v2, v1, [F

    .line 151
    iget-object v3, v0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v4, v3, [Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    const/4 v5, 0x0

    move v6, v5

    .line 152
    :goto_0
    iget-object v7, v0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 153
    iget-object v7, v0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    .line 154
    new-instance v8, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    iget v9, v7, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    iget v7, v7, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    invoke-direct {v8, v9, v7}, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;-><init>(FF)V

    aput-object v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0, v4}, Lcom/zui/gallery/filtershow/imageshow/Spline;->solveSystem([Lcom/zui/gallery/filtershow/imageshow/ControlPoint;)[D

    move-result-object v6

    .line 159
    aget-object v7, v4, v5

    iget v7, v7, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    const/high16 v8, 0x43800000    # 256.0f

    if-eqz v7, :cond_1

    .line 160
    aget-object v7, v4, v5

    iget v7, v7, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 162
    aget-object v9, v4, v3

    iget v9, v9, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_2

    .line 163
    aget-object v9, v4, v3

    iget v9, v9, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    mul-float/2addr v9, v8

    float-to-int v8, v9

    goto :goto_2

    :cond_2
    move v8, v1

    :goto_2
    move v9, v5

    :goto_3
    if-ge v9, v7, :cond_3

    .line 166
    aget-object v11, v4, v5

    iget v11, v11, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    sub-float v11, v10, v11

    aput v11, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    move v9, v8

    :goto_4
    if-ge v9, v1, :cond_4

    .line 169
    aget-object v11, v4, v3

    iget v11, v11, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    sub-float v11, v10, v11

    aput v11, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v7, v8, :cond_a

    int-to-double v11, v7

    const-wide/high16 v13, 0x4070000000000000L    # 256.0

    div-double/2addr v11, v13

    move v1, v5

    move v9, v1

    :goto_6
    if-ge v1, v3, :cond_6

    .line 177
    aget-object v13, v4, v1

    iget v13, v13, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    float-to-double v13, v13

    cmpl-double v13, v11, v13

    if-ltz v13, :cond_5

    add-int/lit8 v13, v1, 0x1

    aget-object v13, v4, v13

    iget v13, v13, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    float-to-double v13, v13

    cmpg-double v13, v11, v13

    if-gtz v13, :cond_5

    move v9, v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 181
    :cond_6
    aget-object v1, v4, v9

    add-int/lit8 v13, v9, 0x1

    .line 182
    aget-object v14, v4, v13

    .line 183
    iget v15, v14, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    move-object/from16 v16, v6

    float-to-double v5, v15

    cmpg-double v5, v11, v5

    if-gtz v5, :cond_9

    .line 184
    iget v5, v1, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    float-to-double v5, v5

    .line 185
    iget v15, v14, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    move-wide/from16 v17, v11

    float-to-double v10, v15

    .line 186
    iget v1, v1, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    float-to-double v0, v1

    .line 187
    iget v12, v14, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    float-to-double v14, v12

    sub-double/2addr v10, v5

    mul-double v19, v10, v10

    sub-double v5, v17, v5

    div-double/2addr v5, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v17, v10, v5

    mul-double v0, v0, v17

    mul-double/2addr v14, v5

    mul-double v21, v17, v17

    mul-double v21, v21, v17

    sub-double v21, v21, v17

    .line 197
    aget-wide v17, v16, v9

    mul-double v21, v21, v17

    mul-double v17, v5, v5

    mul-double v17, v17, v5

    sub-double v17, v17, v5

    .line 198
    aget-wide v5, v16, v13

    mul-double v17, v17, v5

    add-double/2addr v0, v14

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    div-double v19, v19, v5

    add-double v21, v21, v17

    mul-double v19, v19, v21

    add-double v0, v0, v19

    cmpl-double v5, v0, v10

    if-lez v5, :cond_7

    move-wide v0, v10

    :cond_7
    const-wide/16 v5, 0x0

    cmpg-double v9, v0, v5

    if-gez v9, :cond_8

    move-wide v0, v5

    :cond_8
    sub-double/2addr v10, v0

    double-to-float v0, v10

    .line 206
    aput v0, v2, v7

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_7

    .line 208
    :cond_9
    iget v0, v14, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v10, v1, v0

    aput v10, v2, v7

    :goto_7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move v10, v1

    move-object/from16 v6, v16

    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_a
    return-object v2
.end method

.method public getNbPoints()I
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getPoint(I)Lcom/zui/gallery/filtershow/imageshow/ControlPoint;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    return-object p1
.end method

.method public isOriginal()Z
    .locals 5

    .line 124
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/Spline;->getNbPoints()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    iget v0, v0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    iget v0, v0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    iget v0, v0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    iget v0, v0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    :goto_0
    return v1
.end method

.method public isPointContained(FI)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 420
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    .line 421
    iget v2, v2, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    add-int/2addr p2, v1

    .line 425
    :goto_1
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge p2, v2, :cond_3

    .line 426
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    .line 427
    iget v2, v2, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    cmpg-float v2, v2, p1

    if-gez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public movePoint(IFF)V
    .locals 1

    if-ltz p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    .line 118
    iput p2, p1, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    .line 119
    iput p3, p1, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    .line 120
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/Spline;->didMovePoint(Lcom/zui/gallery/filtershow/imageshow/ControlPoint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/Spline;->addPoint(FF)I

    .line 139
    invoke-virtual {p0, v1, v0}, Lcom/zui/gallery/filtershow/imageshow/Spline;->addPoint(FF)I

    return-void
.end method

.method public sameValues(Lcom/zui/gallery/filtershow/imageshow/Spline;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/Spline;->getNbPoints()I

    move-result v2

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/Spline;->getNbPoints()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move v2, v1

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/Spline;->getNbPoints()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 100
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    .line 101
    iget-object v4, p1, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    .line 102
    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->sameValues(Lcom/zui/gallery/filtershow/imageshow/ControlPoint;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public show()V
    .locals 5

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show curve "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Spline"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 445
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/Spline;->mPoints:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "point "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method solveSystem([Lcom/zui/gallery/filtershow/imageshow/ControlPoint;)[D
    .locals 24

    move-object/from16 v0, p1

    .line 350
    array-length v1, v0

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    const/4 v5, 0x3

    aput v5, v3, v4

    const/4 v5, 0x0

    aput v1, v3, v5

    .line 351
    const-class v6, D

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 352
    new-array v6, v1, [D

    .line 353
    new-array v7, v1, [D

    .line 354
    aget-object v8, v3, v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v8, v4

    add-int/lit8 v8, v1, -0x1

    .line 355
    aget-object v11, v3, v8

    aput-wide v9, v11, v4

    move v9, v4

    :goto_0
    if-ge v9, v8, :cond_0

    .line 363
    aget-object v10, v0, v9

    iget v10, v10, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    add-int/lit8 v11, v9, -0x1

    aget-object v12, v0, v11

    iget v12, v12, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    sub-float/2addr v10, v12

    float-to-double v12, v10

    add-int/lit8 v10, v9, 0x1

    .line 364
    aget-object v14, v0, v10

    iget v14, v14, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    aget-object v15, v0, v11

    iget v15, v15, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    sub-float/2addr v14, v15

    float-to-double v14, v14

    .line 365
    aget-object v2, v0, v10

    iget v2, v2, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    aget-object v4, v0, v9

    iget v4, v4, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    sub-float/2addr v2, v4

    move-object/from16 v16, v6

    float-to-double v5, v2

    .line 366
    aget-object v2, v0, v10

    iget v2, v2, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    aget-object v4, v0, v9

    iget v4, v4, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    sub-float/2addr v2, v4

    move-object/from16 v17, v7

    move/from16 v18, v8

    float-to-double v7, v2

    .line 367
    aget-object v2, v0, v9

    iget v2, v2, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    aget-object v4, v0, v11

    iget v4, v4, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    sub-float/2addr v2, v4

    move/from16 v19, v10

    float-to-double v10, v2

    .line 368
    aget-object v2, v3, v9

    const-wide v20, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double v22, v20, v12

    const/4 v4, 0x0

    aput-wide v22, v2, v4

    .line 369
    aget-object v2, v3, v9

    const-wide v22, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double v22, v22, v14

    const/4 v14, 0x1

    aput-wide v22, v2, v14

    .line 370
    aget-object v2, v3, v9

    mul-double v20, v20, v5

    const/4 v14, 0x2

    aput-wide v20, v2, v14

    div-double/2addr v7, v5

    div-double/2addr v10, v12

    sub-double/2addr v7, v10

    .line 371
    aput-wide v7, v16, v9

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v8

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 377
    aget-object v2, v3, v0

    const/4 v4, 0x0

    aget-wide v5, v2, v4

    add-int/lit8 v2, v0, -0x1

    aget-object v7, v3, v2

    const/4 v8, 0x1

    aget-wide v9, v7, v8

    div-double/2addr v5, v9

    .line 379
    aget-object v7, v3, v0

    aget-object v9, v3, v0

    aget-wide v9, v9, v8

    aget-object v11, v3, v2

    const/4 v12, 0x2

    aget-wide v13, v11, v12

    mul-double/2addr v13, v5

    sub-double/2addr v9, v13

    aput-wide v9, v7, v8

    .line 381
    aget-wide v9, v16, v0

    aget-wide v11, v16, v2

    mul-double/2addr v5, v11

    sub-double/2addr v9, v5

    aput-wide v9, v16, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    .line 385
    aget-wide v4, v16, v18

    aget-object v0, v3, v18

    aget-wide v6, v0, v8

    div-double/2addr v4, v6

    aput-wide v4, v17, v18

    const/4 v0, 0x2

    sub-int/2addr v1, v0

    :goto_2
    if-ltz v1, :cond_2

    .line 387
    aget-wide v4, v16, v1

    aget-object v2, v3, v1

    aget-wide v6, v2, v0

    add-int/lit8 v2, v1, 0x1

    aget-wide v8, v17, v2

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    aget-object v2, v3, v1

    const/4 v6, 0x1

    aget-wide v7, v2, v6

    div-double/2addr v4, v7

    aput-wide v4, v17, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    return-object v17
.end method
