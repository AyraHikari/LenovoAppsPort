.class public Lzui/widget/AnimTextView;
.super Landroid/widget/TextView;
.source "AnimTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/AnimTextView$AnimationType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HALF_PI:F = 1.5707964f

.field private static final IN:Landroid/view/animation/Interpolator;

.field private static final MESH_COUNT:I = 0x28b

.field private static final MESH_HEIGHT:I = 0x1e

.field private static final MESH_WIDTH:I = 0x14

.field private static final TAG:Ljava/lang/String; = "AnimTextView"


# instance fields
.field private cache:Landroid/graphics/Bitmap;

.field private drawCache:Z

.field private mAnim:Landroid/animation/ValueAnimator;

.field private mCacheHeight:F

.field private mCacheWidth:F

.field private mDuration:J

.field private mHalfHeight:F

.field private mHalfWidth:F

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mMaxDistance:F

.field private final mOrig:[F

.field private mRotateAreaWidth:F

.field private mRotateAreaWidthValue:F

.field private mRotateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mStartDelay:J

.field private mTweakUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mVerts:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lzui/view/animation/QuadInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzui/view/animation/QuadInterpolator;-><init>(B)V

    sput-object v0, Lzui/widget/AnimTextView;->IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lzui/widget/AnimTextView;->drawCache:Z

    const/16 p1, 0x516

    new-array v0, p1, [F

    .line 52
    iput-object v0, p0, Lzui/widget/AnimTextView;->mVerts:[F

    new-array p1, p1, [F

    .line 53
    iput-object p1, p0, Lzui/widget/AnimTextView;->mOrig:[F

    const p1, 0x3e99999a    # 0.3f

    .line 129
    iput p1, p0, Lzui/widget/AnimTextView;->mRotateAreaWidthValue:F

    const-wide/16 v0, 0x2bc

    .line 195
    iput-wide v0, p0, Lzui/widget/AnimTextView;->mDuration:J

    const-wide/16 v0, 0x0

    .line 196
    iput-wide v0, p0, Lzui/widget/AnimTextView;->mStartDelay:J

    .line 197
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lzui/widget/AnimTextView;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 199
    new-instance p1, Lzui/widget/AnimTextView$1;

    invoke-direct {p1, p0}, Lzui/widget/AnimTextView$1;-><init>(Lzui/widget/AnimTextView;)V

    iput-object p1, p0, Lzui/widget/AnimTextView;->mTweakUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 207
    new-instance p1, Lzui/widget/AnimTextView$2;

    invoke-direct {p1, p0}, Lzui/widget/AnimTextView$2;-><init>(Lzui/widget/AnimTextView;)V

    iput-object p1, p0, Lzui/widget/AnimTextView;->mRotateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lzui/widget/AnimTextView;->drawCache:Z

    const/16 p1, 0x516

    new-array p2, p1, [F

    .line 52
    iput-object p2, p0, Lzui/widget/AnimTextView;->mVerts:[F

    new-array p1, p1, [F

    .line 53
    iput-object p1, p0, Lzui/widget/AnimTextView;->mOrig:[F

    const p1, 0x3e99999a    # 0.3f

    .line 129
    iput p1, p0, Lzui/widget/AnimTextView;->mRotateAreaWidthValue:F

    const-wide/16 p1, 0x2bc

    .line 195
    iput-wide p1, p0, Lzui/widget/AnimTextView;->mDuration:J

    const-wide/16 p1, 0x0

    .line 196
    iput-wide p1, p0, Lzui/widget/AnimTextView;->mStartDelay:J

    .line 197
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lzui/widget/AnimTextView;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 199
    new-instance p1, Lzui/widget/AnimTextView$1;

    invoke-direct {p1, p0}, Lzui/widget/AnimTextView$1;-><init>(Lzui/widget/AnimTextView;)V

    iput-object p1, p0, Lzui/widget/AnimTextView;->mTweakUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 207
    new-instance p1, Lzui/widget/AnimTextView$2;

    invoke-direct {p1, p0}, Lzui/widget/AnimTextView$2;-><init>(Lzui/widget/AnimTextView;)V

    iput-object p1, p0, Lzui/widget/AnimTextView;->mRotateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lzui/widget/AnimTextView;->drawCache:Z

    const/16 p1, 0x516

    new-array p2, p1, [F

    .line 52
    iput-object p2, p0, Lzui/widget/AnimTextView;->mVerts:[F

    new-array p1, p1, [F

    .line 53
    iput-object p1, p0, Lzui/widget/AnimTextView;->mOrig:[F

    const p1, 0x3e99999a    # 0.3f

    .line 129
    iput p1, p0, Lzui/widget/AnimTextView;->mRotateAreaWidthValue:F

    const-wide/16 p1, 0x2bc

    .line 195
    iput-wide p1, p0, Lzui/widget/AnimTextView;->mDuration:J

    const-wide/16 p1, 0x0

    .line 196
    iput-wide p1, p0, Lzui/widget/AnimTextView;->mStartDelay:J

    .line 197
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lzui/widget/AnimTextView;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 199
    new-instance p1, Lzui/widget/AnimTextView$1;

    invoke-direct {p1, p0}, Lzui/widget/AnimTextView$1;-><init>(Lzui/widget/AnimTextView;)V

    iput-object p1, p0, Lzui/widget/AnimTextView;->mTweakUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 207
    new-instance p1, Lzui/widget/AnimTextView$2;

    invoke-direct {p1, p0}, Lzui/widget/AnimTextView$2;-><init>(Lzui/widget/AnimTextView;)V

    iput-object p1, p0, Lzui/widget/AnimTextView;->mRotateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method static synthetic access$000(Lzui/widget/AnimTextView;F)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lzui/widget/AnimTextView;->updateMeshTweak(F)V

    return-void
.end method

.method static synthetic access$100(Lzui/widget/AnimTextView;F)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lzui/widget/AnimTextView;->updateMeshRotate(F)V

    return-void
.end method

.method private buildCahe()Z
    .locals 6

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lzui/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    .line 76
    invoke-virtual {p0}, Lzui/widget/AnimTextView;->buildDrawingCache()V

    .line 77
    invoke-virtual {p0}, Lzui/widget/AnimTextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 79
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 80
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 79
    invoke-virtual {p0, v0, v2}, Lzui/widget/AnimTextView;->measure(II)V

    .line 81
    invoke-virtual {p0}, Lzui/widget/AnimTextView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lzui/widget/AnimTextView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lzui/widget/AnimTextView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lzui/widget/AnimTextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lzui/widget/AnimTextView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lzui/widget/AnimTextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v0, v2, v3, v4}, Lzui/widget/AnimTextView;->layout(IIII)V

    .line 82
    invoke-virtual {p0}, Lzui/widget/AnimTextView;->buildDrawingCache()V

    .line 83
    invoke-virtual {p0}, Lzui/widget/AnimTextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    .line 85
    :cond_0
    iget-object v0, p0, Lzui/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lzui/widget/AnimTextView;->drawCache:Z

    goto :goto_0

    .line 89
    :cond_1
    iput-boolean v1, p0, Lzui/widget/AnimTextView;->drawCache:Z

    .line 92
    :goto_0
    invoke-virtual {p0}, Lzui/widget/AnimTextView;->invalidate()V

    .line 93
    iget-boolean v0, p0, Lzui/widget/AnimTextView;->drawCache:Z

    return v0
.end method

.method private destroyCache()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lzui/widget/AnimTextView;->drawCache:Z

    .line 99
    invoke-virtual {p0}, Lzui/widget/AnimTextView;->destroyDrawingCache()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lzui/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    .line 101
    invoke-virtual {p0}, Lzui/widget/AnimTextView;->invalidate()V

    return-void
.end method

.method private static final echo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AnimTextView"

    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initMesh()V
    .locals 9

    .line 112
    iget-object v0, p0, Lzui/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 113
    iget-object v1, p0, Lzui/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x1e

    if-gt v3, v5, :cond_1

    int-to-float v5, v3

    mul-float/2addr v5, v1

    const/high16 v6, 0x41f00000    # 30.0f

    div-float/2addr v5, v6

    move v6, v2

    :goto_1
    const/16 v7, 0x14

    if-gt v6, v7, :cond_0

    int-to-float v7, v6

    mul-float/2addr v7, v0

    const/high16 v8, 0x41a00000    # 20.0f

    div-float/2addr v7, v8

    .line 120
    iget-object v8, p0, Lzui/widget/AnimTextView;->mVerts:[F

    invoke-static {v8, v4, v7, v5}, Lzui/widget/AnimTextView;->setXY([FIFF)V

    .line 121
    iget-object v8, p0, Lzui/widget/AnimTextView;->mOrig:[F

    invoke-static {v8, v4, v7, v5}, Lzui/widget/AnimTextView;->setXY([FIFF)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p0, v0, v1}, Lzui/widget/AnimTextView;->initializeAnimation(FF)V

    return-void
.end method

.method private static setXY([FIFF)V
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    .line 107
    aput p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    .line 108
    aput p3, p0, p1

    return-void
.end method

.method private updateMeshRotate(F)V
    .locals 10

    .line 178
    iget-object v0, p0, Lzui/widget/AnimTextView;->mOrig:[F

    .line 179
    iget-object v1, p0, Lzui/widget/AnimTextView;->mVerts:[F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v2

    if-gez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v2

    const/high16 v3, -0x3db80000    # -50.0f

    mul-float/2addr p1, v3

    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x516

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x0

    .line 182
    aget v5, v0, v4

    add-int/lit8 v6, v3, 0x1

    .line 183
    aget v6, v0, v6

    .line 184
    iget v7, p0, Lzui/widget/AnimTextView;->mHalfHeight:F

    sub-float/2addr v7, v6

    .line 185
    iget v6, p0, Lzui/widget/AnimTextView;->mCacheWidth:F

    sub-float v8, v6, v5

    div-float/2addr v8, v6

    mul-float/2addr v8, p1

    sub-float v9, v6, v5

    div-float/2addr v9, v6

    mul-float/2addr v8, v9

    sget-object v6, Lzui/widget/AnimTextView;->IN:Landroid/view/animation/Interpolator;

    .line 187
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lzui/widget/AnimTextView;->mHalfHeight:F

    div-float/2addr v7, v9

    invoke-interface {v6, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    sub-float v6, v2, v6

    mul-float/2addr v8, v6

    add-float/2addr v5, v8

    .line 188
    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateMeshTweak(F)V
    .locals 10

    .line 156
    iget-object v0, p0, Lzui/widget/AnimTextView;->mOrig:[F

    .line 157
    iget-object v1, p0, Lzui/widget/AnimTextView;->mVerts:[F

    .line 158
    iget v2, p0, Lzui/widget/AnimTextView;->mMaxDistance:F

    mul-float/2addr v2, p1

    const/4 p1, 0x0

    :goto_0
    const/16 v3, 0x516

    if-ge p1, v3, :cond_2

    .line 160
    aget v3, v0, p1

    add-int/lit8 v4, p1, 0x1

    .line 161
    aget v5, v0, v4

    cmpl-float v6, v3, v2

    if-lez v6, :cond_0

    .line 163
    aput v3, v1, p1

    .line 164
    iget v3, p0, Lzui/widget/AnimTextView;->mHalfHeight:F

    aput v3, v1, v4

    goto :goto_1

    .line 165
    :cond_0
    iget v6, p0, Lzui/widget/AnimTextView;->mRotateAreaWidth:F

    sub-float v7, v2, v6

    cmpg-float v7, v3, v7

    if-gez v7, :cond_1

    .line 166
    aput v3, v1, p1

    .line 167
    aput v5, v1, v4

    goto :goto_1

    :cond_1
    sub-float v7, v2, v3

    div-float/2addr v7, v6

    .line 170
    iget v6, p0, Lzui/widget/AnimTextView;->mHalfHeight:F

    sub-float/2addr v5, v6

    const v6, 0x3fc90fdb

    mul-float/2addr v7, v6

    float-to-double v6, v7

    .line 171
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v5

    const v9, 0x3eb33333    # 0.35f

    mul-float/2addr v8, v9

    sub-float/2addr v3, v8

    aput v3, v1, p1

    .line 172
    iget v3, p0, Lzui/widget/AnimTextView;->mHalfHeight:F

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    aput v3, v1, v4

    :goto_1
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public cancelMeshAnimation()V
    .locals 1

    .line 274
    iget-object v0, p0, Lzui/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lzui/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lzui/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    .line 278
    invoke-direct {p0}, Lzui/widget/AnimTextView;->destroyCache()V

    return-void
.end method

.method public initializeAnimation(FF)V
    .locals 1

    .line 147
    iput p1, p0, Lzui/widget/AnimTextView;->mCacheWidth:F

    .line 148
    iput p2, p0, Lzui/widget/AnimTextView;->mCacheHeight:F

    .line 149
    iget v0, p0, Lzui/widget/AnimTextView;->mRotateAreaWidthValue:F

    mul-float/2addr v0, p1

    iput v0, p0, Lzui/widget/AnimTextView;->mRotateAreaWidth:F

    add-float/2addr v0, p1

    .line 150
    iput v0, p0, Lzui/widget/AnimTextView;->mMaxDistance:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    .line 151
    iput p1, p0, Lzui/widget/AnimTextView;->mHalfWidth:F

    mul-float/2addr p2, v0

    .line 152
    iput p2, p0, Lzui/widget/AnimTextView;->mHalfHeight:F

    return-void
.end method

.method public isDrawCahe()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lzui/widget/AnimTextView;->drawCache:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 283
    iget-boolean v0, p0, Lzui/widget/AnimTextView;->drawCache:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v2, p0, Lzui/widget/AnimTextView;->cache:Landroid/graphics/Bitmap;

    const/16 v3, 0x14

    const/16 v4, 0x1e

    iget-object v5, p0, Lzui/widget/AnimTextView;->mVerts:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    goto :goto_0

    .line 286
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public setDuration(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 222
    iput-wide p1, p0, Lzui/widget/AnimTextView;->mDuration:J

    return-void

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 227
    iput-object p1, p0, Lzui/widget/AnimTextView;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 229
    :cond_0
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lzui/widget/AnimTextView;->mInterpolator:Landroid/animation/TimeInterpolator;

    :goto_0
    return-void
.end method

.method public setRotateAreaWidth(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const p1, 0x3e99999a    # 0.3f

    .line 140
    iput p1, p0, Lzui/widget/AnimTextView;->mRotateAreaWidthValue:F

    goto :goto_0

    .line 142
    :cond_0
    iput p1, p0, Lzui/widget/AnimTextView;->mRotateAreaWidthValue:F

    :goto_0
    return-void
.end method

.method public setStartDelay(J)V
    .locals 0

    .line 234
    iput-wide p1, p0, Lzui/widget/AnimTextView;->mStartDelay:J

    return-void
.end method

.method public startMeshAnimation(Lzui/widget/AnimTextView$AnimationType;)V
    .locals 5

    .line 242
    iget-object v0, p0, Lzui/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lzui/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lzui/widget/AnimTextView;->isDrawCahe()Z

    move-result v0

    if-nez v0, :cond_2

    .line 246
    invoke-direct {p0}, Lzui/widget/AnimTextView;->buildCahe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-direct {p0}, Lzui/widget/AnimTextView;->initMesh()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 252
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lzui/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    .line 253
    iget-wide v2, p0, Lzui/widget/AnimTextView;->mDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 254
    iget-object v1, p0, Lzui/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lzui/widget/AnimTextView;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 255
    iget-wide v1, p0, Lzui/widget/AnimTextView;->mStartDelay:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 256
    iget-object v3, p0, Lzui/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 258
    :cond_3
    sget-object v1, Lzui/widget/AnimTextView$3;->$SwitchMap$zui$widget$AnimTextView$AnimationType:[I

    invoke-virtual {p1}, Lzui/widget/AnimTextView$AnimationType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    goto :goto_1

    .line 265
    :cond_4
    iget p1, p0, Lzui/widget/AnimTextView;->mCacheWidth:F

    invoke-virtual {p0, p1}, Lzui/widget/AnimTextView;->setPivotX(F)V

    .line 266
    iget p1, p0, Lzui/widget/AnimTextView;->mHalfHeight:F

    invoke-virtual {p0, p1}, Lzui/widget/AnimTextView;->setPivotY(F)V

    .line 267
    iget-object p1, p0, Lzui/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lzui/widget/AnimTextView;->mRotateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 260
    :cond_5
    iget p1, p0, Lzui/widget/AnimTextView;->mHalfWidth:F

    invoke-virtual {p0, p1}, Lzui/widget/AnimTextView;->setPivotX(F)V

    .line 261
    iget p1, p0, Lzui/widget/AnimTextView;->mHalfHeight:F

    invoke-virtual {p0, p1}, Lzui/widget/AnimTextView;->setPivotY(F)V

    .line 262
    iget-object p1, p0, Lzui/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lzui/widget/AnimTextView;->mTweakUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 270
    :goto_1
    iget-object p1, p0, Lzui/widget/AnimTextView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
