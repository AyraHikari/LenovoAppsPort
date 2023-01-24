.class public Lcom/zui/gallery/filtershow/imageshow/ImageCurves;
.super Lcom/zui/gallery/filtershow/imageshow/ImageShow;
.source "ImageCurves.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/imageshow/ImageCurves$ComputeHistogramTask;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageCurves"


# instance fields
.field applyButton:Landroid/widget/ImageButton;

.field blueHistogram:[I

.field cancelButton:Landroid/widget/ImageButton;

.field curvesEditor:Landroid/widget/LinearLayout;

.field gHistoPath:Landroid/graphics/Path;

.field gPaint:Landroid/graphics/Paint;

.field gPathSpline:Landroid/graphics/Path;

.field greenHistogram:[I

.field mBlueButton:Landroid/widget/RadioButton;

.field mColorIndicate:Landroid/widget/ImageView;

.field private mCurrentControlPoint:Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

.field private mCurrentCurveIndex:I

.field private mCurrentPick:I

.field private mDidAddPoint:Z

.field private mDidDelete:Z

.field mDoingTouchMove:Z

.field private mEditorCurves:Lcom/zui/gallery/filtershow/editors/EditorCurves;

.field private mFilterCurvesRepresentation:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

.field mGreenButton:Landroid/widget/RadioButton;

.field mIdStrLut:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field mRadioGroup:Landroid/widget/RadioGroup;

.field mRedButton:Landroid/widget/RadioButton;

.field mRgbButton:Landroid/widget/RadioButton;

.field redHistogram:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 85
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gPaint:Landroid/graphics/Paint;

    .line 58
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gPathSpline:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    .line 62
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mDidAddPoint:Z

    .line 63
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mDidDelete:Z

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentControlPoint:Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    const/4 v1, -0x1

    .line 65
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentPick:I

    .line 66
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mLastPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 67
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->redHistogram:[I

    new-array v1, v0, [I

    .line 68
    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->greenHistogram:[I

    new-array v0, v0, [I

    .line 69
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->blueHistogram:[I

    .line 70
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    .line 72
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mDoingTouchMove:Z

    .line 86
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->setLayerType(ILandroid/graphics/Paint;)V

    .line 87
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->resetCurve()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gPaint:Landroid/graphics/Paint;

    .line 58
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gPathSpline:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    .line 62
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mDidAddPoint:Z

    .line 63
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mDidDelete:Z

    const/4 p2, 0x0

    .line 64
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentControlPoint:Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentPick:I

    .line 66
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mLastPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    const/16 p2, 0x100

    new-array v0, p2, [I

    .line 67
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->redHistogram:[I

    new-array v0, p2, [I

    .line 68
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->greenHistogram:[I

    new-array p2, p2, [I

    .line 69
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->blueHistogram:[I

    .line 70
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    .line 72
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mDoingTouchMove:Z

    .line 92
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->setLayerType(ILandroid/graphics/Paint;)V

    .line 93
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->resetCurve()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/imageshow/ImageCurves;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/zui/gallery/filtershow/imageshow/ImageCurves;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/imageshow/ImageCurves;)Lcom/zui/gallery/filtershow/editors/EditorCurves;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mEditorCurves:Lcom/zui/gallery/filtershow/editors/EditorCurves;

    return-object p0
.end method

.method private curves()Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;
    .locals 2

    .line 195
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getFilterName()Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getFilter(Ljava/lang/Class;)Lcom/zui/gallery/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 417
    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 418
    aget v6, v2, v4

    if-le v6, v5, :cond_0

    .line 419
    aget v5, v2, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getWidth()I

    move-result v4

    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/Spline;->curveHandleSize()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/Spline;->curveHandleSize()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 424
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/Spline;->curveHandleSize()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    .line 425
    array-length v9, v2

    int-to-float v9, v9

    div-float v9, v4, v9

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v10, v6

    int-to-float v5, v5

    div-float/2addr v10, v5

    .line 427
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/16 v11, 0x64

    const/16 v12, 0xff

    .line 428
    invoke-virtual {v5, v11, v12, v12, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    float-to-double v13, v9

    .line 429
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v11, v13

    int-to-float v11, v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 431
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move/from16 v11, p3

    .line 432
    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v11, 0x40c00000    # 6.0f

    .line 433
    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 434
    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    move-object/from16 v13, p4

    invoke-direct {v11, v13}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 435
    iget-object v11, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 436
    iget-object v11, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    invoke-virtual {v11, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v11, 0x0

    move v13, v3

    move v14, v11

    move v15, v14

    .line 440
    :goto_1
    array-length v12, v2

    if-ge v3, v12, :cond_4

    int-to-float v12, v3

    mul-float/2addr v12, v9

    add-float/2addr v12, v7

    .line 442
    aget v8, v2, v3

    int-to-float v8, v8

    mul-float/2addr v8, v10

    cmpl-float v16, v8, v11

    if-eqz v16, :cond_3

    add-float/2addr v15, v8

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v15, v14

    sub-float v14, v6, v15

    if-nez v13, :cond_2

    .line 446
    iget-object v13, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    invoke-virtual {v13, v12, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v13, 0x1

    .line 449
    :cond_2
    iget-object v15, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    invoke-virtual {v15, v12, v14}, Landroid/graphics/Path;->lineTo(FF)V

    move v15, v8

    move v14, v12

    :cond_3
    add-int/lit8 v3, v3, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_1

    .line 454
    :cond_4
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    invoke-virtual {v2, v14, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 455
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 456
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 457
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 458
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 459
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v2, 0xc8

    const/16 v3, 0xff

    .line 460
    invoke-virtual {v5, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 461
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getFilterName()Ljava/lang/String;
    .locals 1

    const-string v0, "Curves"

    return-object v0
.end method

.method private getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mFilterCurvesRepresentation:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;

    move-result-object p1

    return-object p1
.end method

.method private pickControlPoint(FF)I
    .locals 8

    .line 270
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;

    move-result-object v0

    const/4 v1, 0x0

    .line 271
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/Spline;->getPoint(I)Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    move-result-object v2

    iget v2, v2, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    .line 272
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/Spline;->getPoint(I)Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    move-result-object v3

    iget v3, v3, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    sub-float/2addr v2, p1

    mul-float/2addr v2, v2

    sub-float/2addr v3, p2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 273
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const/4 v4, 0x1

    .line 274
    :goto_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/Spline;->getNbPoints()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 275
    invoke-virtual {v0, v4}, Lcom/zui/gallery/filtershow/imageshow/Spline;->getPoint(I)Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    move-result-object v5

    iget v5, v5, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    .line 276
    invoke-virtual {v0, v4}, Lcom/zui/gallery/filtershow/imageshow/Spline;->getPoint(I)Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    move-result-object v6

    iget v6, v6, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    sub-float/2addr v5, p1

    mul-float/2addr v5, v5

    sub-float/2addr v6, p2

    mul-float/2addr v6, v6

    add-float/2addr v5, v6

    float-to-double v5, v5

    .line 277
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    cmpg-double v7, v5, v2

    if-gez v7, :cond_0

    move v1, v4

    move-wide v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 285
    :cond_1
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mDidAddPoint:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getWidth()I

    move-result p1

    int-to-double p1, p1

    mul-double/2addr v2, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    cmpl-double p1, v2, p1

    if-lez p1, :cond_2

    .line 286
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/Spline;->getNbPoints()I

    move-result p1

    const/16 p2, 0xa

    if-ge p1, p2, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    return v1
.end method

.method private showPopupMenu(Landroid/widget/LinearLayout;)V
    .locals 4

    const v0, 0x7f080060

    .line 112
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-nez p1, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mIdStrLut:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mIdStrLut:Ljava/util/HashMap;

    const v1, 0x7f08011f

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 120
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1000b2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mIdStrLut:Ljava/util/HashMap;

    const v1, 0x7f08011e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 122
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1000b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mIdStrLut:Ljava/util/HashMap;

    const v1, 0x7f08011d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 124
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1000b0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mIdStrLut:Ljava/util/HashMap;

    const v1, 0x7f08011c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 126
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1000af

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_1
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 129
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0c0003

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 130
    new-instance v1, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$1;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$1;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageCurves;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 139
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->hackFixStrings(Landroid/view/Menu;)V

    .line 140
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 141
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->onShowMenu(Landroid/widget/PopupMenu;)V

    return-void
.end method


# virtual methods
.method protected enableComparison()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextChannel()V
    .locals 1

    .line 190
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    .line 191
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 224
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    .line 225
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mFilterCurvesRepresentation:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->gPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 231
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mLastPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$ComputeHistogramTask;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$ComputeHistogramTask;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageCurves;)V

    new-array v2, v1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$ComputeHistogramTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 233
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mLastPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->curves()Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 240
    :cond_2
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_4

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->redHistogram:[I

    const/high16 v1, -0x10000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    .line 243
    :cond_4
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->greenHistogram:[I

    const v1, -0xff0100

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    .line 246
    :cond_6
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    if-eqz v0, :cond_7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 247
    :cond_7
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->blueHistogram:[I

    const v1, -0xffff01

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    .line 250
    :cond_8
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    if-nez v0, :cond_a

    :goto_0
    const/4 v0, 0x4

    if-ge v3, v0, :cond_a

    .line 252
    invoke-direct {p0, v3}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;

    move-result-object v4

    .line 253
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    if-eq v3, v0, :cond_9

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/imageshow/Spline;->isOriginal()Z

    move-result v0

    if-nez v0, :cond_9

    .line 256
    invoke-static {v3}, Lcom/zui/gallery/filtershow/imageshow/Spline;->colorForCurve(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getWidth()I

    move-result v7

    .line 257
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mDoingTouchMove:Z

    move-object v5, p1

    .line 256
    invoke-virtual/range {v4 .. v10}, Lcom/zui/gallery/filtershow/imageshow/Spline;->draw(Landroid/graphics/Canvas;IIIZZ)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 262
    :cond_a
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;

    move-result-object v1

    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    .line 263
    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/Spline;->colorForCurve(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mDoingTouchMove:Z

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/zui/gallery/filtershow/imageshow/Spline;->draw(Landroid/graphics/Canvas;IIIZZ)V

    return-void
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    monitor-enter p0

    .line 299
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 300
    monitor-exit p0

    return v1

    .line 303
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->didFinishScalingOperation()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 304
    monitor-exit p0

    return v1

    .line 307
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/Spline;->curveHandleSize()I

    move-result v0

    const/4 v2, 0x2

    div-int/2addr v0, v2

    int-to-float v0, v0

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpg-float v4, v3, v0

    if-gez v4, :cond_2

    move v3, v0

    .line 312
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpg-float v5, v4, v0

    if-gez v5, :cond_3

    move v4, v0

    .line 316
    :cond_3
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_4

    .line 317
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    .line 319
    :cond_4
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    .line 320
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    :cond_5
    sub-float/2addr v3, v0

    .line 322
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    div-float/2addr v3, v5

    sub-float/2addr v4, v0

    .line 323
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v6

    div-float/2addr v4, v0

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v1, :cond_7

    const/4 p1, 0x0

    .line 326
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentControlPoint:Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    .line 327
    iput v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentPick:I

    .line 328
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->updateCachedImage()V

    const/4 p1, 0x0

    .line 329
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mDidAddPoint:Z

    .line 330
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mDidDelete:Z

    if-eqz v0, :cond_6

    .line 331
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mDidDelete:Z

    .line 333
    :cond_6
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mDoingTouchMove:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    monitor-exit p0

    return v1

    .line 337
    :cond_7
    :try_start_3
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mDidDelete:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_8

    .line 338
    monitor-exit p0

    return v1

    .line 341
    :cond_8
    :try_start_4
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->curves()Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_9

    .line 342
    monitor-exit p0

    return v1

    .line 345
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_e

    .line 346
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mDoingTouchMove:Z

    .line 347
    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;

    move-result-object p1

    .line 348
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentPick:I

    .line 349
    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentControlPoint:Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    if-nez v6, :cond_b

    .line 350
    invoke-direct {p0, v3, v4}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->pickControlPoint(FF)I

    move-result v0

    if-ne v0, v5, :cond_a

    .line 352
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    invoke-direct {v0, v3, v4}, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentControlPoint:Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    .line 353
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/Spline;->addPoint(Lcom/zui/gallery/filtershow/imageshow/ControlPoint;)I

    move-result v0

    .line 354
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mDidAddPoint:Z

    goto :goto_0

    .line 356
    :cond_a
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/Spline;->getPoint(I)Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    move-result-object v6

    iput-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentControlPoint:Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    .line 358
    :goto_0
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentPick:I

    .line 361
    :cond_b
    invoke-virtual {p1, v3, v0}, Lcom/zui/gallery/filtershow/imageshow/Spline;->isPointContained(FI)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 362
    invoke-virtual {p1, v0, v3, v4}, Lcom/zui/gallery/filtershow/imageshow/Spline;->movePoint(IFF)V

    goto :goto_1

    :cond_c
    if-eq v0, v5, :cond_d

    .line 363
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/Spline;->getNbPoints()I

    move-result v3

    if-le v3, v2, :cond_d

    .line 364
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/Spline;->deletePoint(I)V

    .line 365
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mDidDelete:Z

    .line 367
    :cond_d
    :goto_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->updateCachedImage()V

    .line 368
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->invalidate()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 370
    :cond_e
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 2

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f080122

    .line 148
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mRadioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f080126

    .line 149
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mRgbButton:Landroid/widget/RadioButton;

    const v1, 0x7f080125

    .line 150
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mRedButton:Landroid/widget/RadioButton;

    const v1, 0x7f080123

    .line 151
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mGreenButton:Landroid/widget/RadioButton;

    const v1, 0x7f080121

    .line 152
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mBlueButton:Landroid/widget/RadioButton;

    .line 154
    sget p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->curvesIndex:I

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 155
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    .line 156
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mRgbButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 157
    :cond_0
    sget p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->curvesIndex:I

    if-ne p1, v1, :cond_1

    .line 158
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    .line 159
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mRedButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 160
    :cond_1
    sget p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->curvesIndex:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 161
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    .line 162
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mGreenButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 163
    :cond_2
    sget p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->curvesIndex:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 164
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    .line 165
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mBlueButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 167
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$2;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageCurves;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public resetCurve()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mFilterCurvesRepresentation:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->reset()V

    .line 218
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->updateCachedImage()V

    :cond_0
    return-void
.end method

.method public resetParameter()V
    .locals 1

    .line 209
    invoke-super {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->resetParameter()V

    .line 210
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->resetCurve()V

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mLastPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 212
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->invalidate()V

    return-void
.end method

.method public setChannel(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    .line 467
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 471
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x2

    .line 475
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x3

    .line 479
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    .line 483
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mEditorCurves:Lcom/zui/gallery/filtershow/editors/EditorCurves;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorCurves;->commitLocalRepresentation()V

    .line 484
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f08011c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCurveIndex(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 97
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mCurrentCurveIndex:I

    :cond_0
    return-void
.end method

.method public setEditor(Lcom/zui/gallery/filtershow/editors/EditorCurves;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mEditorCurves:Lcom/zui/gallery/filtershow/editors/EditorCurves;

    return-void
.end method

.method public setFilterDrawRepresentation(Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mFilterCurvesRepresentation:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    return-void
.end method

.method public declared-synchronized updateCachedImage()V
    .locals 1

    monitor-enter p0

    .line 374
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {p0, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->resetImageCaches(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V

    .line 376
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mEditorCurves:Lcom/zui/gallery/filtershow/editors/EditorCurves;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mEditorCurves:Lcom/zui/gallery/filtershow/editors/EditorCurves;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/EditorCurves;->commitLocalRepresentation()V

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public useUtilityPanel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
