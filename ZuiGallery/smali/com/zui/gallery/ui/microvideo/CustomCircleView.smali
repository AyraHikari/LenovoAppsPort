.class public Lcom/zui/gallery/ui/microvideo/CustomCircleView;
.super Landroid/widget/ImageView;
.source "CustomCircleView.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x190

.field private static final CIRCLE_COLOR:I = -0x1

.field private static final CIRCLE_START_ENGLE:I = 0x10e

.field private static final CIRCLE_SWEEP_ENGLE:I = 0x12c

.field private static final DOT_COLOR:I = -0x1

.field private static final DOT_START_ANELG:I = 0xf0

.field private static final DOT_SWEEP_ANGLE:I = 0x1

.field private static final STORKE_WIDTH:I = 0x8

.field private static TAG:Ljava/lang/String; = "CustomCircleView"


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private centerX:I

.field private centerY:I

.field private height:I

.field private inited:Z

.field private oval:Landroid/graphics/RectF;

.field private paint1:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field volatile rotate:F

.field private volatile start:Z

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->rotate:F

    .line 41
    invoke-direct {p0}, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->rotate:F

    .line 46
    invoke-direct {p0}, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->rotate:F

    .line 51
    invoke-direct {p0}, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->rotate:F

    .line 56
    invoke-direct {p0}, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->paint1:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->paint1:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->paint1:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->paint1:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->paint1:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->paint1:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->paint2:Landroid/graphics/Paint;

    .line 79
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 81
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 83
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zui/gallery/ui/microvideo/CustomCircleView$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/ui/microvideo/CustomCircleView$1;-><init>(Lcom/zui/gallery/ui/microvideo/CustomCircleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 115
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 116
    iget v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->height:I

    if-nez v0, :cond_1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->width:I

    .line 118
    invoke-virtual {p0}, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->height:I

    .line 120
    :cond_1
    iget v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->width:I

    if-lez v0, :cond_3

    iget v1, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->height:I

    if-lez v1, :cond_3

    .line 121
    iget-object v2, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->oval:Landroid/graphics/RectF;

    if-nez v2, :cond_2

    const/16 v2, 0xf

    .line 123
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->centerX:I

    .line 124
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->centerY:I

    .line 126
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, v2

    iget v3, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->width:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    iget v4, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->height:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->oval:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->inited:Z

    .line 130
    :cond_2
    iget-boolean v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->inited:Z

    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 132
    iget v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->rotate:F

    iget v1, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->centerX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->centerY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 133
    iget-object v4, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->oval:Landroid/graphics/RectF;

    const/high16 v5, 0x43870000    # 270.0f

    const/high16 v6, 0x43960000    # 300.0f

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->paint1:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 134
    iget-object v4, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->oval:Landroid/graphics/RectF;

    const/high16 v5, 0x43700000    # 240.0f

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v8, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->paint2:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method public playAnim()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const v0, 0x7f0702f2

    .line 110
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->setImageResource(I)V

    return-void
.end method

.method public startAnim()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->inited:Z

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-boolean v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->start:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->start:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->start:Z

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public stopAnim()V
    .locals 0

    return-void
.end method
