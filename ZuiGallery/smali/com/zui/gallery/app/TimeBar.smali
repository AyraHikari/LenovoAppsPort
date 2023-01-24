.class public Lcom/zui/gallery/app/TimeBar;
.super Landroid/view/View;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/TimeBar$Listener;
    }
.end annotation


# static fields
.field private static final SCRUBBER_PADDING_IN_DP:I = 0xa

.field private static final TEXT_SIZE_IN_DP:I = 0xe

.field private static final V_PADDING_IN_DP:I = 0x1e


# instance fields
.field protected mCurrentTime:I

.field protected final mListener:Lcom/zui/gallery/app/TimeBar$Listener;

.field protected final mPlayedBar:Landroid/graphics/Rect;

.field protected final mPlayedPaint:Landroid/graphics/Paint;

.field protected final mProgressBar:Landroid/graphics/Rect;

.field protected final mProgressPaint:Landroid/graphics/Paint;

.field protected final mScrubber:Landroid/graphics/Bitmap;

.field protected mScrubberCorrection:I

.field protected mScrubberLeft:I

.field protected mScrubberPadding:I

.field protected mScrubberTop:I

.field protected mScrubbing:Z

.field protected mShowScrubber:Z

.field protected mShowTimes:Z

.field protected final mTimeBounds:Landroid/graphics/Rect;

.field protected final mTimeTextPaint:Landroid/graphics/Paint;

.field protected mTotalTime:I

.field protected mVPaddingInPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/gallery/app/TimeBar$Listener;)V
    .locals 4

    .line 83
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-static {p2}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/app/TimeBar$Listener;

    iput-object p2, p0, Lcom/zui/gallery/app/TimeBar;->mListener:Lcom/zui/gallery/app/TimeBar$Listener;

    const/4 p2, 0x1

    .line 86
    iput-boolean p2, p0, Lcom/zui/gallery/app/TimeBar;->mShowTimes:Z

    .line 87
    iput-boolean p2, p0, Lcom/zui/gallery/app/TimeBar;->mShowScrubber:Z

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/TimeBar;->mProgressPaint:Landroid/graphics/Paint;

    const v1, -0x7f7f80

    .line 93
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/TimeBar;->mPlayedPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 95
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 98
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41600000    # 14.0f

    mul-float/2addr v0, v1

    .line 99
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/zui/gallery/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    const p2, -0x313132

    .line 100
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object p2, p0, Lcom/zui/gallery/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 102
    iget-object p2, p0, Lcom/zui/gallery/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 104
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    .line 105
    iget-object v0, p0, Lcom/zui/gallery/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    const-string v1, "0:00:00"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 107
    invoke-virtual {p0}, Lcom/zui/gallery/app/TimeBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07033e

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    .line 108
    iget p2, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberPadding:I

    .line 110
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41f00000    # 30.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/gallery/app/TimeBar;->mVPaddingInPx:I

    return-void
.end method

.method private clampScrubber()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/zui/gallery/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 162
    iget-object v1, p0, Lcom/zui/gallery/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    .line 163
    iget-object v2, p0, Lcom/zui/gallery/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    .line 164
    iget v0, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberLeft:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberLeft:I

    return-void
.end method

.method private getScrubberTime()I
    .locals 4

    .line 168
    iget v0, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberLeft:I

    iget-object v1, p0, Lcom/zui/gallery/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/zui/gallery/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/zui/gallery/app/TimeBar;->mTotalTime:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/zui/gallery/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    .line 169
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private inScrubber(FF)Z
    .locals 4

    .line 154
    iget v0, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberLeft:I

    iget-object v1, p0, Lcom/zui/gallery/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    iget v1, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberTop:I

    iget-object v2, p0, Lcom/zui/gallery/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 156
    iget v2, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberLeft:I

    iget v3, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    add-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget p1, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberTop:I

    sub-int/2addr p1, v3

    int-to-float p1, p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    add-int/2addr v1, v3

    int-to-float p1, v1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private update()V
    .locals 6

    .line 114
    iget-object v0, p0, Lcom/zui/gallery/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/gallery/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 116
    iget v0, p0, Lcom/zui/gallery/app/TimeBar;->mTotalTime:I

    if-lez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/zui/gallery/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/zui/gallery/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    .line 118
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lcom/zui/gallery/app/TimeBar;->mCurrentTime:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iget v4, p0, Lcom/zui/gallery/app/TimeBar;->mTotalTime:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/gallery/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 123
    :goto_0
    iget-boolean v0, p0, Lcom/zui/gallery/app/TimeBar;->mScrubbing:Z

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/zui/gallery/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/zui/gallery/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberLeft:I

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/app/TimeBar;->invalidate()V

    return-void
.end method


# virtual methods
.method public getBarHeight()I
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/zui/gallery/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/zui/gallery/app/TimeBar;->mVPaddingInPx:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPreferredHeight()I
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/zui/gallery/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/zui/gallery/app/TimeBar;->mVPaddingInPx:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/zui/gallery/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/gallery/app/TimeBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 196
    iget-object v0, p0, Lcom/zui/gallery/app/TimeBar;->mPlayedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/gallery/app/TimeBar;->mPlayedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 199
    iget-boolean v0, p0, Lcom/zui/gallery/app/TimeBar;->mShowScrubber:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/zui/gallery/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberTop:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 202
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/app/TimeBar;->mShowTimes:Z

    if-eqz v0, :cond_1

    .line 203
    iget v0, p0, Lcom/zui/gallery/app/TimeBar;->mCurrentTime:I

    int-to-long v0, v0

    .line 204
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/app/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    .line 205
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/zui/gallery/app/TimeBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zui/gallery/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    .line 206
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/zui/gallery/app/TimeBar;->mVPaddingInPx:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberPadding:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/gallery/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    .line 203
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 208
    iget v0, p0, Lcom/zui/gallery/app/TimeBar;->mTotalTime:I

    int-to-long v0, v0

    .line 209
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/app/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Lcom/zui/gallery/app/TimeBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/gallery/app/TimeBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/zui/gallery/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zui/gallery/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    .line 211
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/zui/gallery/app/TimeBar;->mVPaddingInPx:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberPadding:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/gallery/app/TimeBar;->mTimeTextPaint:Landroid/graphics/Paint;

    .line 208
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 176
    iget-boolean p1, p0, Lcom/zui/gallery/app/TimeBar;->mShowTimes:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/zui/gallery/app/TimeBar;->mShowScrubber:Z

    if-nez p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/zui/gallery/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    .line 180
    iget-boolean p2, p0, Lcom/zui/gallery/app/TimeBar;->mShowTimes:Z

    if-eqz p2, :cond_1

    .line 181
    iget-object p2, p0, Lcom/zui/gallery/app/TimeBar;->mTimeBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p1, p2

    .line 183
    :cond_1
    iget p2, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberPadding:I

    add-int/2addr p5, p2

    div-int/lit8 p5, p5, 0x2

    .line 184
    iget-object p2, p0, Lcom/zui/gallery/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int p2, p5, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberTop:I

    .line 185
    iget-object p2, p0, Lcom/zui/gallery/app/TimeBar;->mProgressBar:Landroid/graphics/Rect;

    .line 186
    invoke-virtual {p0}, Lcom/zui/gallery/app/TimeBar;->getPaddingLeft()I

    move-result p3

    add-int/2addr p3, p1

    .line 187
    invoke-virtual {p0}, Lcom/zui/gallery/app/TimeBar;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    sub-int/2addr p4, p1

    add-int/lit8 p1, p5, 0x4

    .line 185
    invoke-virtual {p2, p3, p5, p4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 189
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/app/TimeBar;->update()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 218
    iget-boolean v0, p0, Lcom/zui/gallery/app/TimeBar;->mShowScrubber:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/TimeBar;->mListener:Lcom/zui/gallery/app/TimeBar$Listener;

    invoke-direct {p0}, Lcom/zui/gallery/app/TimeBar;->getScrubberTime()I

    move-result v0

    invoke-interface {p1, v0, v1, v1}, Lcom/zui/gallery/app/TimeBar$Listener;->onScrubbingEnd(III)V

    .line 242
    iput-boolean v1, p0, Lcom/zui/gallery/app/TimeBar;->mScrubbing:Z

    return v4

    :cond_1
    int-to-float p1, v0

    int-to-float v1, v2

    .line 224
    invoke-direct {p0, p1, v1}, Lcom/zui/gallery/app/TimeBar;->inScrubber(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 225
    iget p1, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberLeft:I

    sub-int p1, v0, p1

    goto :goto_0

    .line 226
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/TimeBar;->mScrubber:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/2addr p1, v3

    :goto_0
    iput p1, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberCorrection:I

    .line 227
    iput-boolean v4, p0, Lcom/zui/gallery/app/TimeBar;->mScrubbing:Z

    .line 228
    iget-object p1, p0, Lcom/zui/gallery/app/TimeBar;->mListener:Lcom/zui/gallery/app/TimeBar$Listener;

    invoke-interface {p1}, Lcom/zui/gallery/app/TimeBar$Listener;->onScrubbingStart()V

    .line 232
    :cond_3
    iget p1, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberCorrection:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/zui/gallery/app/TimeBar;->mScrubberLeft:I

    .line 233
    invoke-direct {p0}, Lcom/zui/gallery/app/TimeBar;->clampScrubber()V

    .line 234
    invoke-direct {p0}, Lcom/zui/gallery/app/TimeBar;->getScrubberTime()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/TimeBar;->mCurrentTime:I

    .line 235
    iget-object v0, p0, Lcom/zui/gallery/app/TimeBar;->mListener:Lcom/zui/gallery/app/TimeBar$Listener;

    invoke-interface {v0, p1}, Lcom/zui/gallery/app/TimeBar$Listener;->onScrubbingMove(I)V

    .line 236
    invoke-virtual {p0}, Lcom/zui/gallery/app/TimeBar;->invalidate()V

    return v4

    :cond_4
    :goto_1
    return v1
.end method

.method public setSeekable(Z)V
    .locals 0

    .line 263
    iput-boolean p1, p0, Lcom/zui/gallery/app/TimeBar;->mShowScrubber:Z

    return-void
.end method

.method public setTime(IIII)V
    .locals 0

    .line 145
    iget p3, p0, Lcom/zui/gallery/app/TimeBar;->mCurrentTime:I

    if-ne p3, p1, :cond_0

    iget p3, p0, Lcom/zui/gallery/app/TimeBar;->mTotalTime:I

    if-ne p3, p2, :cond_0

    return-void

    .line 148
    :cond_0
    iput p1, p0, Lcom/zui/gallery/app/TimeBar;->mCurrentTime:I

    .line 149
    iput p2, p0, Lcom/zui/gallery/app/TimeBar;->mTotalTime:I

    .line 150
    invoke-direct {p0}, Lcom/zui/gallery/app/TimeBar;->update()V

    return-void
.end method

.method protected stringForTime(J)Ljava/lang/String;
    .locals 5

    long-to-int p1, p1

    .line 251
    div-int/lit16 p1, p1, 0x3e8

    .line 252
    rem-int/lit8 p2, p1, 0x3c

    .line 253
    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    .line 254
    div-int/lit16 p1, p1, 0xe10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lez p1, :cond_0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 256
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "%d:%02d:%02d"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v3, [Ljava/lang/Object;

    .line 258
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "%02d:%02d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
