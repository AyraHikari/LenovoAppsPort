.class public Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;
.super Landroid/widget/ImageView;
.source "DrawSeekBarImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;
    }
.end annotation


# instance fields
.field private mCurrentBallIndex:I

.field private mCurrentIndex:I

.field private mGuidePosX:F

.field private mGuidePosY:F

.field private mLastIndex:I

.field private mOverlayPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mSeekBarBalls:[Landroid/graphics/Bitmap;

.field private mSeekbarListener:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;

.field private mSliderColor:I

.field private mSliderHeight:I

.field private mSliderWidth:F

.field private mSupportedValueNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mPaint:Landroid/graphics/Paint;

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mOverlayPaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mLastIndex:I

    return-void
.end method

.method private updateSliderColor(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0500dc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0500db

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSliderColor:I

    .line 198
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->invalidate()V

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentIndex:I

    return v0
.end method

.method public initializeParams(III[IILcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;)V
    .locals 3

    .line 43
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSupportedValueNum:I

    int-to-float p1, p3

    .line 44
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSliderWidth:F

    .line 45
    array-length p1, p4

    new-array p1, p1, [Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    move p3, p1

    .line 47
    :goto_0
    array-length v0, p4

    if-ge p3, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget v2, p4, p3

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    .line 51
    iget-object p3, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    aget-object p1, p3, p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mGuidePosY:F

    .line 52
    iget p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSliderWidth:F

    iget-object p3, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget p4, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object p3, p3, p4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p1, p3

    iget p3, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSupportedValueNum:I

    add-int/lit8 p3, p3, -0x1

    int-to-float p3, p3

    div-float/2addr p1, p3

    int-to-float p3, p2

    mul-float/2addr p1, p3

    iget-object p3, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget p4, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object p3, p3, p4

    .line 54
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    add-float/2addr p1, p3

    iput p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mGuidePosX:F

    .line 55
    iput p2, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentIndex:I

    .line 57
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0602da

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSliderHeight:I

    .line 58
    iput p5, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSliderColor:I

    .line 59
    iput-object p6, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekbarListener:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 71
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSliderHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSliderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 77
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mOverlayPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSliderHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mOverlayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mOverlayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 82
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 83
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    .line 84
    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSliderWidth:F

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v1, v1, v4

    .line 88
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v4, v0, v1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 86
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 91
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    .line 92
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v4, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mGuidePosX:F

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    .line 94
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mOverlayPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 91
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 96
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v2, v0, v1

    iget v3, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mGuidePosX:F

    aget-object v0, v0, v1

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v3, v0

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mGuidePosY:F

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v1, v1, v4

    .line 99
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mPaint:Landroid/graphics/Paint;

    .line 97
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekbarListener:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;

    invoke-interface {v0}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;->onTouchDown()V

    .line 147
    :cond_1
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->updateBallPosition(I)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->updateBallPosition(I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public releaseResource()V
    .locals 3

    const/4 v0, 0x0

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 178
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 179
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

    .line 164
    iput p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentIndex:I

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCurrentIndex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mCurrentIndex"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSliderWidth:F

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSupportedValueNum:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentIndex:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    .line 168
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mGuidePosX:F

    .line 169
    iget p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mLastIndex:I

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentIndex:I

    if-eq p1, v0, :cond_0

    .line 170
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mLastIndex:I

    .line 171
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekbarListener:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;

    invoke-interface {p1, v0}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;->onValueChanged(I)V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->invalidate()V

    return-void
.end method

.method public setSliderEnabled(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 191
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    .line 192
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->updateSliderColor(Z)V

    return-void
.end method

.method public updateBallPosition(I)V
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_0

    .line 107
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    int-to-float v0, p1

    .line 108
    iget v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSliderWidth:F

    iget-object v2, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 109
    iget p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSliderWidth:F

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 112
    :cond_1
    :goto_0
    iget v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSliderWidth:F

    const/4 v1, 0x0

    .line 113
    :goto_1
    iget v2, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSupportedValueNum:I

    if-ge v1, v2, :cond_2

    int-to-float v2, p1

    .line 114
    iget v3, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSliderWidth:F

    iget-object v4, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v4, v4, v5

    .line 115
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSupportedValueNum:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v4, v4, v5

    .line 117
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 115
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 120
    iput v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_1

    .line 126
    :cond_2
    iget p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSliderWidth:F

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSupportedValueNum:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentIndex:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekBarBalls:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentBallIndex:I

    aget-object v0, v0, v1

    .line 128
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mGuidePosX:F

    .line 129
    iget p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mLastIndex:I

    iget v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mCurrentIndex:I

    if-eq p1, v0, :cond_3

    .line 130
    iput v0, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mLastIndex:I

    .line 131
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->mSeekbarListener:Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;

    invoke-interface {p1, v0}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;->onValueChanged(I)V

    .line 133
    :cond_3
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage;->invalidate()V

    return-void
.end method
