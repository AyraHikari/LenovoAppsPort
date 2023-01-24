.class public Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;
.super Lcom/zui/gallery/filtershow/imageshow/ImagePoint;
.source "ImageRedEye.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageRedEyes"


# instance fields
.field private mCurrentRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImagePoint;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected drawPoint(Lcom/zui/gallery/filtershow/filters/FilterPoint;Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 8

    .line 111
    move-object v0, p1

    check-cast v0, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;

    .line 112
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 113
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 114
    invoke-virtual {p3, v6, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 115
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 116
    invoke-virtual {p4, v7, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    const v0, -0xffff01

    .line 117
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    invoke-virtual {p2, v7, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 119
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, v7, Landroid/graphics/RectF;->top:F

    .line 120
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v7, Landroid/graphics/RectF;->bottom:F

    move-object v0, p2

    move-object v5, p5

    .line 119
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 121
    iget v1, v7, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, v7, Landroid/graphics/RectF;->right:F

    .line 122
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    .line 121
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v0, -0xff0100

    .line 123
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 125
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 126
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v0, v3

    sub-float/2addr v2, v4

    .line 127
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    div-float v3, v1, v3

    sub-float/2addr v4, v3

    add-float/2addr v0, v2

    add-float/2addr v1, v4

    .line 128
    invoke-virtual {v6, v2, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 129
    invoke-virtual {p2, v6, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 130
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, v6, Landroid/graphics/RectF;->top:F

    .line 131
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v6, Landroid/graphics/RectF;->bottom:F

    move-object v0, p2

    .line 130
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 132
    iget v1, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, v6, Landroid/graphics/RectF;->right:F

    .line 133
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    .line 132
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 134
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sget v2, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mTouchPadding:F

    invoke-virtual {p2, v0, v1, v2, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 96
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImagePoint;->onDraw(Landroid/graphics/Canvas;)V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 98
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, -0x10000

    .line 99
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 100
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 104
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 48
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImagePoint;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->didFinishScalingOperation()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 63
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    .line 64
    sget v4, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mTouchPadding:F

    sub-float v4, v0, v4

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 65
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    sget v4, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mTouchPadding:F

    sub-float v4, v2, v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 67
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 68
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    sget v4, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mTouchPadding:F

    add-float/2addr v0, v4

    iput v0, v3, Landroid/graphics/RectF;->right:F

    .line 69
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    sget v3, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mTouchPadding:F

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 71
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 72
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->getImageToScreenMatrix(Z)Landroid/graphics/Matrix;

    move-result-object p1

    .line 75
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->getImageToScreenMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v0

    .line 76
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 77
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 79
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 80
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 81
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 82
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 83
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 84
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mRedEyeRep:Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;

    invoke-virtual {p1, v0, v3}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;->addRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 85
    invoke-virtual {p0, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->resetImageCaches(Lcom/zui/gallery/filtershow/imageshow/ImageShow;)V

    :cond_4
    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    .line 89
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->mEditorRedEye:Lcom/zui/gallery/filtershow/editors/EditorRedEye;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorRedEye;->commitLocalRepresentation()V

    .line 90
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->invalidate()V

    return v1
.end method

.method public resetParameter()V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/zui/gallery/filtershow/imageshow/ImagePoint;->resetParameter()V

    .line 42
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageRedEye;->invalidate()V

    return-void
.end method
