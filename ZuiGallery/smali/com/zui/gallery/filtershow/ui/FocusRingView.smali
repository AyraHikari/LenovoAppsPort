.class public Lcom/zui/gallery/filtershow/ui/FocusRingView;
.super Landroid/view/View;
.source "FocusRingView.java"


# static fields
.field private static final ALPHA_VALUE_DARKER:I = 0x64

.field private static final ALPHA_VALUE_NORMAL:I = 0xff

.field private static final FOCUS_DURATION_MS:I = 0xc8

.field private static final FOCUS_INDICATOR_SCALE_DEGREES:F = 1.4f

.field private static final MARGIN:I = 0x82

.field private static final MAX_FOCUS_POSITION:I = 0x64

.field private static final MIN_FOCUS_POSITION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FocusRingView"


# instance fields
.field private focusRegin:Landroid/graphics/RectF;

.field private mAlpha:I

.field private mAvailablePreviewRect:Landroid/graphics/RectF;

.field private mCameraMode:I

.field private mClearRunnable:Ljava/lang/Runnable;

.field private mCurExposureCompensation:I

.field private mCurrentFocusPosition:I

.field private mExposureBarEndPoint:Landroid/graphics/Point;

.field private mExposureBarLength:I

.field private mExposureBarStartPoint:Landroid/graphics/Point;

.field private mExposurePaddingSize:I

.field private mExposurePaint:Landroid/graphics/Paint;

.field private mExposureStep:I

.field private mExposureThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mExposureThumbPadingSize:I

.field private mExposureThumbSize:I

.field private mFirstStartActiveFocus:Z

.field private mFocusCameraDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusHeartSize:F

.field private mFocusRingSize:F

.field private mFocusUIEnabled:Z

.field private mFocusValueTextPaint:Landroid/graphics/Paint;

.field private mIsPassiveScan:Z

.field private mMagnifierScale:F

.field private mMaxExposureCompensation:I

.field private mMinExposureCompensation:I

.field private mNormalFocusDrawable:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private mPositionX:F

.field private mPositionY:F

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mScaleBitmap:Landroid/graphics/Bitmap;

.field private mScaleRunnable:Ljava/lang/Runnable;

.field private mScaleValue:F

.field private mShowExposureBar:Z

.field private mShowFocusPositionText:Z

.field private mShowIndicator:Z

.field private mThumbPoint:Landroid/graphics/Point;

.field private mTotalDistance:I

.field private mTouchCaptureEnabled:Z

.field private mTouchFocusAnimation:Landroid/view/animation/AnimationSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xff

    .line 52
    iput p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAlpha:I

    .line 60
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarStartPoint:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarEndPoint:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    .line 62
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->focusRegin:Landroid/graphics/RectF;

    const/16 p1, 0x9

    .line 64
    iput p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureStep:I

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mIsPassiveScan:Z

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 77
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x0

    .line 78
    iput p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mCameraMode:I

    .line 79
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFirstStartActiveFocus:Z

    .line 80
    iput p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTotalDistance:I

    const/16 p2, 0x32

    .line 81
    iput p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mCurrentFocusPosition:I

    const/4 p2, 0x0

    .line 84
    iput-object p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleBitmap:Landroid/graphics/Bitmap;

    const/high16 p2, 0x40000000    # 2.0f

    .line 86
    iput p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mMagnifierScale:F

    .line 92
    new-instance p2, Lcom/zui/gallery/filtershow/ui/FocusRingView$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView$1;-><init>(Lcom/zui/gallery/filtershow/ui/FocusRingView;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mClearRunnable:Ljava/lang/Runnable;

    .line 100
    new-instance p2, Lcom/zui/gallery/filtershow/ui/FocusRingView$2;

    invoke-direct {p2, p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView$2;-><init>(Lcom/zui/gallery/filtershow/ui/FocusRingView;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleRunnable:Ljava/lang/Runnable;

    .line 112
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposurePaint:Landroid/graphics/Paint;

    .line 113
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposurePaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposurePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposurePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060195

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposurePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 119
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 120
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 121
    new-instance p2, Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAvailablePreviewRect:Landroid/graphics/RectF;

    .line 122
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->initSacleAnimator()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$002(Lcom/zui/gallery/filtershow/ui/FocusRingView;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mShowIndicator:Z

    return p1
.end method

.method static synthetic access$102(Lcom/zui/gallery/filtershow/ui/FocusRingView;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchCaptureEnabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/zui/gallery/filtershow/ui/FocusRingView;F)F
    .locals 0

    .line 44
    iput p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/zui/gallery/filtershow/ui/FocusRingView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private centerAutofocusRing()V
    .locals 7

    .line 355
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->computeCenter()Landroid/graphics/Point;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mNormalFocusDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v5, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v6, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    div-float/2addr v6, v4

    add-float/2addr v0, v6

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private computeCenter()Landroid/graphics/Point;
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAvailablePreviewRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAvailablePreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 370
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAvailablePreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAvailablePreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_0
    const-string v0, "FocusRingView"

    const-string v1, "Computing center via view bounds."

    .line 372
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private drawExposureUI(Landroid/graphics/Canvas;)V
    .locals 7

    .line 398
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 399
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 401
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposurePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 402
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbPadingSize:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarStartPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbPadingSize:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposurePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbPadingSize:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarEndPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_1

    .line 411
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbPadingSize:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarEndPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarEndPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposurePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private initSacleAnimator()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 127
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 128
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zui/gallery/filtershow/ui/FocusRingView$3;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView$3;-><init>(Lcom/zui/gallery/filtershow/ui/FocusRingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private is16by9AspectRatio(FF)Z
    .locals 1

    cmpl-float v0, p2, p1

    if-lez v0, :cond_0

    div-float/2addr p2, p1

    goto :goto_0

    :cond_0
    div-float p2, p1, p2

    :goto_0
    const p1, 0x3fe38e39

    sub-float/2addr p2, p1

    .line 611
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3a83126f    # 0.001f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private updateExposureBarPosition()V
    .locals 6

    .line 377
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mNormalFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposurePaddingSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAvailablePreviewRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mNormalFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposurePaddingSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionY:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mNormalFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposurePaddingSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionY:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 386
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarStartPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionY:F

    float-to-int v2, v2

    iget v3, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarLength:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 387
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarEndPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionY:F

    float-to-int v2, v2

    iget v3, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarLength:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 391
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbSize:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbSize:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateExposureIndicatorPosition(I)V
    .locals 5

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "zzzzzzzzzzzzzzzz498"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zhaozeng"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarEndPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_1

    .line 480
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarEndPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    if-lez p1, :cond_0

    .line 482
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    add-int/lit16 v0, v0, 0xa28

    rem-int/lit16 v0, v0, 0x2710

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/16 :goto_0

    :cond_0
    if-gez p1, :cond_5

    .line 484
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    add-int/lit16 v0, v0, -0x258

    rem-int/lit16 v0, v0, 0x2710

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_3

    .line 487
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarStartPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    if-lez p1, :cond_2

    .line 489
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    add-int/lit16 v0, v0, 0x258

    rem-int/lit16 v0, v0, 0x2710

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    :cond_2
    if-gez p1, :cond_5

    .line 491
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    add-int/lit16 v0, v0, -0xa28

    rem-int/lit16 v0, v0, 0x2710

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 494
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    if-lez p1, :cond_4

    .line 496
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    add-int/lit16 v0, v0, 0x258

    rem-int/lit16 v0, v0, 0x2710

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    :cond_4
    if-gez p1, :cond_5

    .line 498
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    add-int/lit16 v0, v0, -0x258

    rem-int/lit16 v0, v0, 0x2710

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 501
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mThumbPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbSize:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 505
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->invalidate()V

    return-void
.end method


# virtual methods
.method public centerFocusLocation()V
    .locals 0

    .line 287
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->centerAutofocusRing()V

    .line 288
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->invalidate()V

    return-void
.end method

.method public configurePreviewDimensions(Landroid/graphics/RectF;)V
    .locals 2

    const-string v0, "FocusRingView"

    const-string v1, "configurePreviewDimensions : "

    .line 297
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iput-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAvailablePreviewRect:Landroid/graphics/RectF;

    return-void
.end method

.method public darkenFocusUI()V
    .locals 1

    const/16 v0, 0x64

    .line 424
    iput v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAlpha:I

    const/4 v0, 0x0

    .line 425
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mShowExposureBar:Z

    .line 426
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->invalidate()V

    return-void
.end method

.method public getMagnifierPositionX(ILandroid/graphics/Bitmap;)I
    .locals 3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    iget v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mMagnifierScale:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    if-le p1, v0, :cond_1

    .line 640
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    iget v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mMagnifierScale:F

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    float-to-int p1, p1

    :cond_1
    :goto_0
    return p1
.end method

.method public getMagnifierPositionY(ILandroid/graphics/Bitmap;)I
    .locals 3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 654
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    iget v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mMagnifierScale:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    if-le p1, v0, :cond_1

    .line 655
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    iget v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mMagnifierScale:F

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    float-to-int p1, p1

    :cond_1
    :goto_0
    return p1
.end method

.method public highLightFocusUI()V
    .locals 1

    const/16 v0, 0xff

    .line 431
    iput v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAlpha:I

    .line 432
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->invalidate()V

    return-void
.end method

.method public isActiveFocusRunning()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mIsPassiveScan:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    .line 173
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPassiveFocusRunning()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mIsPassiveScan:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    .line 167
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPassiveScan()Z
    .locals 1

    .line 516
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mIsPassiveScan:Z

    return v0
.end method

.method public isShowExposureBar()Z
    .locals 1

    .line 627
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mShowExposureBar:Z

    return v0
.end method

.method public isTouchCaptureAction(II)Z
    .locals 1

    .line 510
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusUIEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mShowIndicator:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchCaptureEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusCameraDrawable:Landroid/graphics/drawable/Drawable;

    .line 511
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 310
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 311
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mShowIndicator:Z

    if-eqz v0, :cond_4

    .line 312
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mIsPassiveScan:Z

    if-eqz v0, :cond_0

    .line 314
    iget v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mCameraMode:I

    if-nez v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mNormalFocusDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 316
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mNormalFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 320
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchCaptureEnabled:Z

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 322
    iget v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleValue:F

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionX:F

    iget v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionY:F

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 323
    iget v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionX:F

    iget v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 332
    :cond_1
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchCaptureEnabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    goto :goto_0

    .line 341
    :cond_2
    iget v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mCameraMode:I

    if-nez v0, :cond_3

    .line 342
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mNormalFocusDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 343
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mNormalFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 348
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->drawExposureUI(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 139
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 140
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070131

    const/4 v2, 0x0

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mNormalFocusDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0701f0

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0601b5

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    .line 148
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060196

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposurePaddingSize:I

    .line 149
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060193

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarLength:I

    .line 152
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060194

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbSize:I

    .line 153
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060197

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureThumbPadingSize:I

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusValueTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 157
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusValueTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusValueTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 160
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusValueTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 161
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->centerFocusLocation()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 521
    iput p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mOrientation:I

    .line 522
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->invalidate()V

    return-void
.end method

.method public onScroll(F)Z
    .locals 3

    const/16 v0, 0xff

    .line 463
    iput v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAlpha:I

    const/4 v0, 0x1

    .line 464
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mShowExposureBar:Z

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    .line 466
    iget p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureStep:I

    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->updateExposureIndicatorPosition(I)V

    .line 467
    iget p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTotalDistance:I

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureStep:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTotalDistance:I

    goto :goto_0

    :cond_0
    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    .line 469
    iget p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureStep:I

    neg-int p1, p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->updateExposureIndicatorPosition(I)V

    .line 470
    iget p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTotalDistance:I

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureStep:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTotalDistance:I

    :goto_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setCurrentFocusPosition(IZ)V
    .locals 0

    .line 453
    iput p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mCurrentFocusPosition:I

    .line 454
    iget p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mCameraMode:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 455
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mShowExposureBar:Z

    .line 456
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setExposureCompensation(II)V
    .locals 1

    .line 437
    iget v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarLength:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p1, p2

    div-int/2addr v0, p1

    iput v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureStep:I

    return-void
.end method

.method public setFirstStartActiveFocus(Z)V
    .locals 0

    .line 563
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFirstStartActiveFocus:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 565
    iput p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTotalDistance:I

    :cond_0
    return-void
.end method

.method public setFocusLocation(FF)V
    .locals 6

    .line 251
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAvailablePreviewRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x43020000    # 130.0f

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 252
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAvailablePreviewRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    div-float/2addr v0, v2

    add-float/2addr p1, v0

    add-float/2addr p1, v1

    iput p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionX:F

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAvailablePreviewRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 254
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAvailablePreviewRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionX:F

    goto :goto_0

    .line 256
    :cond_1
    iput p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionX:F

    .line 258
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAvailablePreviewRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    div-float/2addr v0, v2

    add-float/2addr p1, v0

    add-float/2addr p1, v1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    .line 259
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAvailablePreviewRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    div-float/2addr p2, v2

    add-float/2addr p1, p2

    add-float/2addr p1, v1

    iput p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionY:F

    goto :goto_1

    .line 260
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAvailablePreviewRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    sub-float/2addr p1, v1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    .line 261
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAvailablePreviewRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    div-float/2addr p2, v2

    sub-float/2addr p1, p2

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionY:F

    goto :goto_1

    .line 263
    :cond_3
    iput p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionY:F

    .line 265
    :goto_1
    iget p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionY:F

    float-to-int p2, p1

    iget v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarLength:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    if-gtz p2, :cond_4

    neg-int p2, p2

    add-int/lit8 p2, p2, 0xa

    int-to-float p2, p2

    add-float/2addr p1, p2

    .line 267
    iput p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionY:F

    .line 269
    :cond_4
    iget p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionY:F

    float-to-int p1, p1

    iget p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarLength:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    .line 270
    iget-object p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAvailablePreviewRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_5

    .line 271
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mAvailablePreviewRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mExposureBarLength:I

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    const/high16 p2, 0x41200000    # 10.0f

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionY:F

    .line 273
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mNormalFocusDrawable:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionX:F

    iget v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    div-float v1, v0, v2

    sub-float v1, p2, v1

    float-to-int v1, v1

    iget v3, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionY:F

    div-float v4, v0, v2

    sub-float v4, v3, v4

    float-to-int v4, v4

    div-float v5, v0, v2

    add-float/2addr p2, v5

    float-to-int p2, p2

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    float-to-int v0, v3

    invoke-virtual {p1, v1, v4, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 277
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->updateExposureBarPosition()V

    .line 278
    iget p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mCameraMode:I

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 279
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mShowExposureBar:Z

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    .line 281
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mShowExposureBar:Z

    .line 283
    :goto_2
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->invalidate()V

    return-void
.end method

.method public setFocusUIEnabled(Z)V
    .locals 0

    .line 527
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusUIEnabled:Z

    .line 528
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->stopFocusAnimations()V

    return-void
.end method

.method public setMagnifierBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 4

    .line 573
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 575
    iput-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleBitmap:Landroid/graphics/Bitmap;

    .line 577
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mShowExposureBar:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mCameraMode:I

    if-eqz v0, :cond_3

    .line 578
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060278

    .line 579
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 580
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    goto :goto_0

    .line 583
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-direct {p0, v1, p2}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->is16by9AspectRatio(FF)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 587
    :cond_2
    :goto_0
    iget p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionX:F

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mMagnifierScale:F

    div-float/2addr v1, v3

    sub-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {p0, p2, p1}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->getMagnifierPositionX(ILandroid/graphics/Bitmap;)I

    move-result p2

    .line 589
    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionY:F

    iget v3, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    div-float/2addr v3, v2

    iget v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mMagnifierScale:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->getMagnifierPositionY(ILandroid/graphics/Bitmap;)I

    move-result v0

    .line 591
    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    iget v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mMagnifierScale:F

    div-float v3, v1, v2

    float-to-int v3, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1, p2, v0, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 595
    iget p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    float-to-int v0, p2

    float-to-int p2, p2

    const/4 v1, 0x1

    invoke-static {p1, v0, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleBitmap:Landroid/graphics/Bitmap;

    .line 597
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 599
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public setMagnifierImageViewPos(Landroid/widget/ImageView;)V
    .locals 3

    .line 618
    iget v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionX:F

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 619
    iget v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionY:F

    iget v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mFocusRingSize:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method public setRadiusRatio(F)V
    .locals 0

    return-void
.end method

.method public setShowExposureBar(Z)V
    .locals 0

    .line 443
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mShowExposureBar:Z

    return-void
.end method

.method public setShowFocusPositionText(Z)V
    .locals 0

    .line 448
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mShowFocusPositionText:Z

    return-void
.end method

.method public startActiveFocus(Z)V
    .locals 11

    .line 207
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mClearRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 208
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 209
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mIsPassiveScan:Z

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mShowIndicator:Z

    .line 211
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchCaptureEnabled:Z

    .line 212
    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    .line 216
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 219
    :cond_1
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, p1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    .line 220
    iget p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionX:F

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v8, p1, v1

    .line 221
    iget p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mPositionY:F

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v10, p1, v1

    .line 222
    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3fb33333    # 1.4f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3fb33333    # 1.4f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 225
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v1, 0xc8

    .line 227
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 228
    iget-object v3, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 229
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {p1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 230
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 232
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 233
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 234
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startPassiveFocus()V
    .locals 12

    .line 177
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mClearRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 178
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mIsPassiveScan:Z

    .line 180
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mShowIndicator:Z

    const/4 v1, 0x0

    .line 181
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchCaptureEnabled:Z

    .line 182
    iget-object v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    .line 186
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 189
    :cond_1
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    .line 190
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v4, 0x3fb33333    # 1.4f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3fb33333    # 1.4f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 193
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 194
    invoke-virtual {v1, v0}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0xc8

    .line 195
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 196
    iget-object v4, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 197
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 198
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 199
    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 200
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 201
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 202
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 203
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mClearRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopFocusAnimations()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    .line 242
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mTouchFocusAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mIsPassiveScan:Z

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/FocusRingView;->mShowIndicator:Z

    .line 247
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/FocusRingView;->invalidate()V

    return-void
.end method
