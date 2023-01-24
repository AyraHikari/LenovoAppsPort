.class public Lcom/zui/gallery/common/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# static fields
.field private static ALPHA:F = 0.0f

.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static END_TENSION:F = 0.0f

.field private static final FLING_MODE:I = 0x1

.field private static final NB_SAMPLES:I = 0x64

.field private static final SCROLL_MODE:I

.field private static final SPLINE:[F

.field private static START_TENSION:F

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/zui/gallery/common/Scroller;->DECELERATION_RATE:F

    const/high16 v0, 0x44480000    # 800.0f

    .line 66
    sput v0, Lcom/zui/gallery/common/Scroller;->ALPHA:F

    const v0, 0x3ecccccd    # 0.4f

    .line 67
    sput v0, Lcom/zui/gallery/common/Scroller;->START_TENSION:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 68
    sput v0, Lcom/zui/gallery/common/Scroller;->END_TENSION:F

    const/16 v0, 0x65

    new-array v0, v0, [F

    .line 70
    sput-object v0, Lcom/zui/gallery/common/Scroller;->SPLINE:[F

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x64

    if-gt v2, v3, :cond_2

    int-to-float v3, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v4, v3, v4

    move v3, v1

    :goto_1
    sub-float v5, v3, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v5

    sub-float v7, v1, v5

    mul-float/2addr v6, v7

    .line 84
    sget v8, Lcom/zui/gallery/common/Scroller;->START_TENSION:F

    mul-float/2addr v7, v8

    sget v8, Lcom/zui/gallery/common/Scroller;->END_TENSION:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    mul-float/2addr v7, v6

    mul-float v8, v5, v5

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    sub-float v9, v7, v4

    .line 85
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    const-wide v11, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v9, v9, v11

    if-gez v9, :cond_0

    add-float/2addr v6, v8

    .line 90
    sget-object v3, Lcom/zui/gallery/common/Scroller;->SPLINE:[F

    aput v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    cmpl-float v6, v7, v4

    if-lez v6, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v0, v5

    goto :goto_1

    .line 92
    :cond_2
    sget-object v0, Lcom/zui/gallery/common/Scroller;->SPLINE:[F

    aput v1, v0, v3

    const/high16 v0, 0x41000000    # 8.0f

    .line 95
    sput v0, Lcom/zui/gallery/common/Scroller;->sViscousFluidScale:F

    .line 97
    sput v1, Lcom/zui/gallery/common/Scroller;->sViscousFluidNormalize:F

    .line 98
    invoke-static {v1}, Lcom/zui/gallery/common/Scroller;->viscousFluid(F)F

    move-result v0

    div-float/2addr v1, v0

    sput v1, Lcom/zui/gallery/common/Scroller;->sViscousFluidNormalize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/common/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/zui/gallery/common/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/zui/gallery/common/Scroller;->mFinished:Z

    .line 128
    iput-object p2, p0, Lcom/zui/gallery/common/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43200000    # 160.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/zui/gallery/common/Scroller;->mPpi:F

    .line 130
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/common/Scroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/common/Scroller;->mDeceleration:F

    .line 131
    iput-boolean p3, p0, Lcom/zui/gallery/common/Scroller;->mFlywheel:Z

    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2

    .line 146
    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mPpi:F

    const v1, 0x43c10b3d

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method static viscousFluid(F)F
    .locals 4

    .line 425
    sget v0, Lcom/zui/gallery/common/Scroller;->sViscousFluidScale:F

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    neg-float v1, p0

    float-to-double v1, v1

    .line 427
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p0, v0

    goto :goto_0

    :cond_0
    const v1, 0x3ebc5ab2

    sub-float p0, v0, p0

    float-to-double v2, p0

    .line 430
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float p0, v2

    sub-float/2addr v0, p0

    const p0, 0x3f21d2a7

    mul-float/2addr v0, p0

    add-float p0, v0, v1

    .line 433
    :goto_0
    sget v0, Lcom/zui/gallery/common/Scroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 445
    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mFinalX:I

    iput v0, p0, Lcom/zui/gallery/common/Scroller;->mCurrX:I

    .line 446
    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mFinalY:I

    iput v0, p0, Lcom/zui/gallery/common/Scroller;->mCurrY:I

    const/4 v0, 0x1

    .line 447
    iput-boolean v0, p0, Lcom/zui/gallery/common/Scroller;->mFinished:Z

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 7

    .line 250
    iget-boolean v0, p0, Lcom/zui/gallery/common/Scroller;->mFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 254
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/gallery/common/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 256
    iget v1, p0, Lcom/zui/gallery/common/Scroller;->mDuration:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_4

    .line 257
    iget v3, p0, Lcom/zui/gallery/common/Scroller;->mMode:I

    if-eqz v3, :cond_2

    if-eq v3, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v3, v0, v1

    float-to-int v3, v3

    int-to-float v4, v3

    div-float/2addr v4, v1

    add-int/lit8 v5, v3, 0x1

    int-to-float v6, v5

    div-float/2addr v6, v1

    .line 274
    sget-object v1, Lcom/zui/gallery/common/Scroller;->SPLINE:[F

    aget v3, v1, v3

    .line 275
    aget v1, v1, v5

    sub-float/2addr v0, v4

    sub-float/2addr v6, v4

    div-float/2addr v0, v6

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    .line 278
    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mStartX:I

    iget v1, p0, Lcom/zui/gallery/common/Scroller;->mFinalX:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/common/Scroller;->mCurrX:I

    .line 280
    iget v1, p0, Lcom/zui/gallery/common/Scroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/common/Scroller;->mCurrX:I

    .line 281
    iget v1, p0, Lcom/zui/gallery/common/Scroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/common/Scroller;->mCurrX:I

    .line 283
    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mStartY:I

    iget v1, p0, Lcom/zui/gallery/common/Scroller;->mFinalY:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/common/Scroller;->mCurrY:I

    .line 285
    iget v1, p0, Lcom/zui/gallery/common/Scroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/common/Scroller;->mCurrY:I

    .line 286
    iget v1, p0, Lcom/zui/gallery/common/Scroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/common/Scroller;->mCurrY:I

    .line 288
    iget v1, p0, Lcom/zui/gallery/common/Scroller;->mCurrX:I

    iget v3, p0, Lcom/zui/gallery/common/Scroller;->mFinalX:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/zui/gallery/common/Scroller;->mFinalY:I

    if-ne v0, v1, :cond_5

    .line 289
    iput-boolean v2, p0, Lcom/zui/gallery/common/Scroller;->mFinished:Z

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    .line 259
    iget v1, p0, Lcom/zui/gallery/common/Scroller;->mDurationReciprocal:F

    mul-float/2addr v0, v1

    .line 261
    iget-object v1, p0, Lcom/zui/gallery/common/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_3

    .line 262
    invoke-static {v0}, Lcom/zui/gallery/common/Scroller;->viscousFluid(F)F

    move-result v0

    goto :goto_0

    .line 264
    :cond_3
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 266
    :goto_0
    iget v1, p0, Lcom/zui/gallery/common/Scroller;->mStartX:I

    iget v3, p0, Lcom/zui/gallery/common/Scroller;->mDeltaX:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/zui/gallery/common/Scroller;->mCurrX:I

    .line 267
    iget v1, p0, Lcom/zui/gallery/common/Scroller;->mStartY:I

    iget v3, p0, Lcom/zui/gallery/common/Scroller;->mDeltaY:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/zui/gallery/common/Scroller;->mCurrY:I

    goto :goto_1

    .line 296
    :cond_4
    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mFinalX:I

    iput v0, p0, Lcom/zui/gallery/common/Scroller;->mCurrX:I

    .line 297
    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mFinalY:I

    iput v0, p0, Lcom/zui/gallery/common/Scroller;->mCurrY:I

    .line 298
    iput-boolean v2, p0, Lcom/zui/gallery/common/Scroller;->mFinished:Z

    :cond_5
    :goto_1
    return v2
.end method

.method public extendDuration(I)V
    .locals 1

    .line 459
    invoke-virtual {p0}, Lcom/zui/gallery/common/Scroller;->timePassed()I

    move-result v0

    add-int/2addr v0, p1

    .line 460
    iput v0, p0, Lcom/zui/gallery/common/Scroller;->mDuration:I

    int-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 461
    iput v0, p0, Lcom/zui/gallery/common/Scroller;->mDurationReciprocal:F

    const/4 p1, 0x0

    .line 462
    iput-boolean p1, p0, Lcom/zui/gallery/common/Scroller;->mFinished:Z

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 370
    iget-boolean v3, v0, Lcom/zui/gallery/common/Scroller;->mFlywheel:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/zui/gallery/common/Scroller;->mFinished:Z

    if-nez v3, :cond_0

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/common/Scroller;->getCurrVelocity()F

    move-result v3

    .line 373
    iget v4, v0, Lcom/zui/gallery/common/Scroller;->mFinalX:I

    iget v5, v0, Lcom/zui/gallery/common/Scroller;->mStartX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 374
    iget v5, v0, Lcom/zui/gallery/common/Scroller;->mFinalY:I

    iget v6, v0, Lcom/zui/gallery/common/Scroller;->mStartY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    .line 375
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v4, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v3

    mul-float/2addr v5, v3

    move/from16 v3, p3

    int-to-float v6, v3

    .line 382
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    move/from16 v7, p4

    int-to-float v8, v7

    .line 383
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v9

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-nez v9, :cond_2

    add-float/2addr v6, v4

    float-to-int v3, v6

    add-float/2addr v8, v5

    float-to-int v4, v8

    move v7, v4

    goto :goto_0

    :cond_0
    move/from16 v3, p3

    :cond_1
    move/from16 v7, p4

    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 389
    iput v4, v0, Lcom/zui/gallery/common/Scroller;->mMode:I

    const/4 v4, 0x0

    .line 390
    iput-boolean v4, v0, Lcom/zui/gallery/common/Scroller;->mFinished:Z

    mul-int v4, v3, v3

    mul-int v5, v7, v7

    add-int/2addr v4, v5

    int-to-double v4, v4

    .line 392
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 394
    iput v4, v0, Lcom/zui/gallery/common/Scroller;->mVelocity:F

    .line 395
    sget v5, Lcom/zui/gallery/common/Scroller;->START_TENSION:F

    mul-float/2addr v5, v4

    sget v6, Lcom/zui/gallery/common/Scroller;->ALPHA:F

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 396
    sget v10, Lcom/zui/gallery/common/Scroller;->DECELERATION_RATE:F

    float-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v12

    div-double v10, v5, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    double-to-int v8, v10

    iput v8, v0, Lcom/zui/gallery/common/Scroller;->mDuration:I

    .line 397
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/zui/gallery/common/Scroller;->mStartTime:J

    .line 398
    iput v1, v0, Lcom/zui/gallery/common/Scroller;->mStartX:I

    .line 399
    iput v2, v0, Lcom/zui/gallery/common/Scroller;->mStartY:I

    const/4 v8, 0x0

    cmpl-float v8, v4, v8

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v8, :cond_3

    move v3, v9

    goto :goto_1

    :cond_3
    int-to-float v3, v3

    div-float/2addr v3, v4

    :goto_1
    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    int-to-float v7, v7

    div-float v9, v7, v4

    .line 404
    :goto_2
    sget v4, Lcom/zui/gallery/common/Scroller;->ALPHA:F

    float-to-double v7, v4

    sget v4, Lcom/zui/gallery/common/Scroller;->DECELERATION_RATE:F

    float-to-double v10, v4

    float-to-double v14, v4

    sub-double/2addr v14, v12

    div-double/2addr v10, v14

    mul-double/2addr v10, v5

    .line 405
    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v7, v4

    double-to-int v4, v7

    move/from16 v5, p5

    .line 407
    iput v5, v0, Lcom/zui/gallery/common/Scroller;->mMinX:I

    move/from16 v5, p6

    .line 408
    iput v5, v0, Lcom/zui/gallery/common/Scroller;->mMaxX:I

    move/from16 v5, p7

    .line 409
    iput v5, v0, Lcom/zui/gallery/common/Scroller;->mMinY:I

    move/from16 v5, p8

    .line 410
    iput v5, v0, Lcom/zui/gallery/common/Scroller;->mMaxY:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 412
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Lcom/zui/gallery/common/Scroller;->mFinalX:I

    .line 414
    iget v3, v0, Lcom/zui/gallery/common/Scroller;->mMaxX:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/common/Scroller;->mFinalX:I

    .line 415
    iget v3, v0, Lcom/zui/gallery/common/Scroller;->mMinX:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/common/Scroller;->mFinalX:I

    mul-float/2addr v4, v9

    .line 417
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/zui/gallery/common/Scroller;->mFinalY:I

    .line 419
    iget v2, v0, Lcom/zui/gallery/common/Scroller;->mMaxY:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/common/Scroller;->mFinalY:I

    .line 420
    iget v2, v0, Lcom/zui/gallery/common/Scroller;->mMinY:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/zui/gallery/common/Scroller;->mFinalY:I

    return-void
.end method

.method public final forceFinished(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/zui/gallery/common/Scroller;->mFinished:Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .line 205
    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mVelocity:F

    iget v1, p0, Lcom/zui/gallery/common/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Lcom/zui/gallery/common/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/zui/gallery/common/Scroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 2

    .line 504
    iget-boolean v0, p0, Lcom/zui/gallery/common/Scroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mFinalX:I

    iget v1, p0, Lcom/zui/gallery/common/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 505
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget p2, p0, Lcom/zui/gallery/common/Scroller;->mFinalY:I

    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mStartY:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setFinalX(I)V
    .locals 1

    .line 482
    iput p1, p0, Lcom/zui/gallery/common/Scroller;->mFinalX:I

    .line 483
    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mStartX:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/gallery/common/Scroller;->mDeltaX:F

    const/4 p1, 0x0

    .line 484
    iput-boolean p1, p0, Lcom/zui/gallery/common/Scroller;->mFinished:Z

    return-void
.end method

.method public setFinalY(I)V
    .locals 1

    .line 495
    iput p1, p0, Lcom/zui/gallery/common/Scroller;->mFinalY:I

    .line 496
    iget v0, p0, Lcom/zui/gallery/common/Scroller;->mStartY:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/gallery/common/Scroller;->mDeltaY:F

    const/4 p1, 0x0

    .line 497
    iput-boolean p1, p0, Lcom/zui/gallery/common/Scroller;->mFinished:Z

    return-void
.end method

.method public final setFriction(F)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/zui/gallery/common/Scroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/common/Scroller;->mDeceleration:F

    return-void
.end method

.method public startScroll(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 318
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/common/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2

    const/4 v0, 0x0

    .line 335
    iput v0, p0, Lcom/zui/gallery/common/Scroller;->mMode:I

    .line 336
    iput-boolean v0, p0, Lcom/zui/gallery/common/Scroller;->mFinished:Z

    .line 337
    iput p5, p0, Lcom/zui/gallery/common/Scroller;->mDuration:I

    .line 338
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/common/Scroller;->mStartTime:J

    .line 339
    iput p1, p0, Lcom/zui/gallery/common/Scroller;->mStartX:I

    .line 340
    iput p2, p0, Lcom/zui/gallery/common/Scroller;->mStartY:I

    add-int/2addr p1, p3

    .line 341
    iput p1, p0, Lcom/zui/gallery/common/Scroller;->mFinalX:I

    add-int/2addr p2, p4

    .line 342
    iput p2, p0, Lcom/zui/gallery/common/Scroller;->mFinalY:I

    int-to-float p1, p3

    .line 343
    iput p1, p0, Lcom/zui/gallery/common/Scroller;->mDeltaX:F

    int-to-float p1, p4

    .line 344
    iput p1, p0, Lcom/zui/gallery/common/Scroller;->mDeltaY:F

    .line 345
    iget p1, p0, Lcom/zui/gallery/common/Scroller;->mDuration:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    iput p2, p0, Lcom/zui/gallery/common/Scroller;->mDurationReciprocal:F

    return-void
.end method

.method public timePassed()I
    .locals 4

    .line 471
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/gallery/common/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
