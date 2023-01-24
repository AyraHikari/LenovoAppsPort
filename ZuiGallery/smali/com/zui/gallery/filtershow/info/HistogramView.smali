.class public Lcom/zui/gallery/filtershow/info/HistogramView;
.super Landroid/view/View;
.source "HistogramView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/info/HistogramView$ComputeHistogramTask;
    }
.end annotation


# instance fields
.field private blueHistogram:[I

.field private greenHistogram:[I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHistoPath:Landroid/graphics/Path;

.field private mPaint:Landroid/graphics/Paint;

.field private redHistogram:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    const/16 p1, 0x100

    new-array p2, p1, [I

    .line 35
    iput-object p2, p0, Lcom/zui/gallery/filtershow/info/HistogramView;->redHistogram:[I

    new-array p2, p1, [I

    .line 36
    iput-object p2, p0, Lcom/zui/gallery/filtershow/info/HistogramView;->greenHistogram:[I

    new-array p1, p1, [I

    .line 37
    iput-object p1, p0, Lcom/zui/gallery/filtershow/info/HistogramView;->blueHistogram:[I

    .line 38
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/info/HistogramView;->mHistoPath:Landroid/graphics/Path;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/info/HistogramView;)[I
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zui/gallery/filtershow/info/HistogramView;->redHistogram:[I

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/info/HistogramView;)[I
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zui/gallery/filtershow/info/HistogramView;->greenHistogram:[I

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/filtershow/info/HistogramView;)[I
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zui/gallery/filtershow/info/HistogramView;->blueHistogram:[I

    return-object p0
.end method

.method private drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 83
    :goto_0
    array-length v3, v8

    if-ge v1, v3, :cond_1

    .line 84
    aget v3, v8, v1

    if-le v3, v2, :cond_0

    .line 85
    aget v2, v8, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/info/HistogramView;->getWidth()I

    move-result v1

    int-to-float v10, v1

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/info/HistogramView;->getHeight()I

    move-result v1

    int-to-float v11, v1

    .line 91
    array-length v1, v8

    int-to-float v1, v1

    div-float v12, v10, v1

    int-to-float v1, v2

    div-float v13, v11, v1

    .line 94
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 95
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0x64

    const/16 v15, 0xff

    invoke-virtual {v1, v2, v15, v15, v15}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 97
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    float-to-double v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    add-float v4, v10, v6

    .line 101
    iget-object v5, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move-object/from16 v16, v5

    move v5, v11

    move v9, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v16, 0x40400000    # 3.0f

    div-float v1, v10, v16

    add-float v4, v1, v9

    .line 102
    iget-object v6, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v1, v10, v6

    div-float v1, v1, v16

    add-float v4, v1, v9

    .line 103
    iget-object v5, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    move-object/from16 v16, v5

    move v5, v11

    move v14, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 105
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    move-object/from16 v3, p4

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 109
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mHistoPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 110
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mHistoPath:Landroid/graphics/Path;

    invoke-virtual {v1, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, v9

    move v6, v1

    const/4 v2, 0x0

    const/16 v17, 0x0

    .line 114
    :goto_1
    array-length v3, v8

    if-ge v2, v3, :cond_4

    int-to-float v3, v2

    mul-float/2addr v3, v12

    add-float/2addr v3, v9

    .line 116
    aget v4, v8, v2

    int-to-float v4, v4

    mul-float/2addr v4, v13

    cmpl-float v5, v4, v9

    if-eqz v5, :cond_3

    add-float/2addr v1, v4

    div-float/2addr v1, v14

    sub-float v1, v11, v1

    if-nez v17, :cond_2

    .line 120
    iget-object v5, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mHistoPath:Landroid/graphics/Path;

    invoke-virtual {v5, v3, v11}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v17, 0x1

    .line 123
    :cond_2
    iget-object v5, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mHistoPath:Landroid/graphics/Path;

    invoke-virtual {v5, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move v6, v3

    move v1, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 128
    :cond_4
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mHistoPath:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 129
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mHistoPath:Landroid/graphics/Path;

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mHistoPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 131
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mHistoPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 132
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 133
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc8

    invoke-virtual {v1, v15, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 135
    iget-object v1, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mHistoPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/zui/gallery/filtershow/info/HistogramView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 140
    iget-object v0, p0, Lcom/zui/gallery/filtershow/info/HistogramView;->redHistogram:[I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    const/high16 v2, -0x10000

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/zui/gallery/filtershow/info/HistogramView;->drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    .line 141
    iget-object v0, p0, Lcom/zui/gallery/filtershow/info/HistogramView;->greenHistogram:[I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    const v2, -0xff0100

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/zui/gallery/filtershow/info/HistogramView;->drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    .line 142
    iget-object v0, p0, Lcom/zui/gallery/filtershow/info/HistogramView;->blueHistogram:[I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    const v2, -0xffff01

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/zui/gallery/filtershow/info/HistogramView;->drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 77
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/info/HistogramView;->mBitmap:Landroid/graphics/Bitmap;

    .line 78
    new-instance p1, Lcom/zui/gallery/filtershow/info/HistogramView$ComputeHistogramTask;

    invoke-direct {p1, p0}, Lcom/zui/gallery/filtershow/info/HistogramView$ComputeHistogramTask;-><init>(Lcom/zui/gallery/filtershow/info/HistogramView;)V

    new-array v0, v1, [Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/info/HistogramView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/info/HistogramView$ComputeHistogramTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
