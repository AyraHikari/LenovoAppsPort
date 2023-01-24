.class public Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;
.super Landroid/widget/ImageView;
.source "HighEditSeekBarImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage$SeekbarListener;
    }
.end annotation


# instance fields
.field private mCurrentBallIndex:I

.field private mCurrentIndex:I

.field private mDotPaint:Landroid/graphics/Paint;

.field private mGuidePosX:F

.field private mGuidePosY:F

.field private mLastIndex:I

.field private mOverlayPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mSeekBarBalls:[Landroid/graphics/Bitmap;

.field private mSeekbarListener:Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage$SeekbarListener;

.field private mSliderColor:I

.field private mSliderHeight:I

.field private mSliderWidth:F

.field private mSupportedValueNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mPaint:Landroid/graphics/Paint;

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mOverlayPaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mLastIndex:I

    return-void
.end method

.method private updateSliderColor(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0500dc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0500db

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderColor:I

    .line 181
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->invalidate()V

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentIndex:I

    return v0
.end method

.method public initializeParams(III[IILcom/zui/gallery/filtershow/controller/HighEditSeekBarImage$SeekbarListener;)V
    .locals 3

    .line 40
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSupportedValueNum:I

    int-to-float p1, p3

    .line 41
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderWidth:F

    .line 42
    array-length p1, p4

    new-array p1, p1, [Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    move p3, p1

    .line 44
    :goto_0
    array-length v0, p4

    if-ge p3, v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget v2, p4, p3

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 47
    :cond_0
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    .line 48
    iget-object p3, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    aget-object p1, p3, p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mGuidePosY:F

    .line 49
    iget p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderWidth:F

    iget-object p3, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget p4, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object p3, p3, p4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p1, p3

    iget p3, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSupportedValueNum:I

    add-int/lit8 p3, p3, -0x1

    int-to-float p3, p3

    div-float/2addr p1, p3

    int-to-float p3, p2

    mul-float/2addr p1, p3

    iget-object p3, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget p4, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object p3, p3, p4

    .line 51
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    add-float/2addr p1, p3

    iput p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mGuidePosX:F

    .line 52
    iput p2, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentIndex:I

    .line 53
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0602da

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderHeight:I

    .line 54
    iput p5, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderColor:I

    .line 55
    iput-object p6, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekbarListener:Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage$SeekbarListener;

    .line 56
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mDotPaint:Landroid/graphics/Paint;

    .line 57
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0500d8

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 70
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 71
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 75
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mOverlayPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mOverlayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 79
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderWidth:F

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v1, v1, v4

    .line 81
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v4, v0, v1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 79
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 84
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v0, v1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v2

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget v5, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mGuidePosX:F

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v2

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    iget-object v7, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mOverlayPaint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 84
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 89
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderWidth:F

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderHeight:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 90
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v2, v0, v1

    iget v3, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mGuidePosX:F

    aget-object v0, v0, v1

    .line 92
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v3, v0

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mGuidePosY:F

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v1, v1, v4

    .line 93
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mPaint:Landroid/graphics/Paint;

    .line 91
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekbarListener:Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage$SeekbarListener;

    invoke-interface {v0}, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage$SeekbarListener;->onTouchDown()V

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->updateBallPosition(I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public releaseResource()V
    .locals 3

    const/4 v0, 0x0

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 161
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 162
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 2

    .line 148
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentIndex:I

    .line 149
    iget p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderWidth:F

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSupportedValueNum:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentIndex:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mGuidePosX:F

    .line 152
    iget p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mLastIndex:I

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentIndex:I

    if-eq p1, v0, :cond_0

    .line 153
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mLastIndex:I

    .line 154
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekbarListener:Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage$SeekbarListener;

    invoke-interface {p1, v0}, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage$SeekbarListener;->onValueChanged(I)V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->invalidate()V

    return-void
.end method

.method public setSliderEnabled(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 174
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    .line 175
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->updateSliderColor(Z)V

    return-void
.end method

.method public updateBallPosition(I)V
    .locals 6

    .line 97
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_0

    .line 98
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    int-to-float v0, p1

    .line 99
    iget v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderWidth:F

    iget-object v2, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 100
    iget p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderWidth:F

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 103
    :cond_1
    :goto_0
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderWidth:F

    const/4 v1, 0x0

    .line 104
    :goto_1
    iget v2, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSupportedValueNum:I

    if-ge v1, v2, :cond_2

    int-to-float v2, p1

    .line 105
    iget v3, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderWidth:F

    iget-object v4, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v4, v4, v5

    .line 106
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSupportedValueNum:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v4, v4, v5

    .line 108
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 106
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 111
    iput v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_1

    .line 116
    :cond_2
    iget p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSliderWidth:F

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSupportedValueNum:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentIndex:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    .line 118
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mGuidePosX:F

    .line 119
    iget p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mLastIndex:I

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mCurrentIndex:I

    if-eq p1, v0, :cond_3

    .line 120
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mLastIndex:I

    .line 121
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->mSeekbarListener:Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage$SeekbarListener;

    invoke-interface {p1, v0}, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage$SeekbarListener;->onValueChanged(I)V

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/HighEditSeekBarImage;->invalidate()V

    return-void
.end method
