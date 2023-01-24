.class public Lcom/zui/gallery/ui/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/EdgeEffect$Drawable;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 0.001f

.field private static final HELD_EDGE_ALPHA:F = 0.7f

.field private static final HELD_EDGE_SCALE_Y:F = 0.5f

.field private static final HELD_GLOW_ALPHA:F = 0.5f

.field private static final HELD_GLOW_SCALE_Y:F = 0.5f

.field private static final MAX_ALPHA:F = 0.8f

.field private static final MAX_GLOW_HEIGHT:F = 4.0f

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 1.1f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x7

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x7

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0x10


# instance fields
.field private final MIN_WIDTH:I

.field private mDuration:F

.field private final mEdge:Lcom/zui/gallery/ui/EdgeEffect$Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Lcom/zui/gallery/ui/EdgeEffect$Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMinWidth:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 88
    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->MIN_WIDTH:I

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mState:I

    .line 137
    new-instance v0, Lcom/zui/gallery/ui/EdgeEffect$Drawable;

    const v1, 0x7f0702d8

    invoke-direct {v0, p1, v1}, Lcom/zui/gallery/ui/EdgeEffect$Drawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdge:Lcom/zui/gallery/ui/EdgeEffect$Drawable;

    .line 138
    new-instance v0, Lcom/zui/gallery/ui/EdgeEffect$Drawable;

    const v1, 0x7f0702d9

    invoke-direct {v0, p1, v1}, Lcom/zui/gallery/ui/EdgeEffect$Drawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlow:Lcom/zui/gallery/ui/EdgeEffect$Drawable;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43960000    # 300.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mMinWidth:I

    .line 141
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private update()V
    .locals 9

    .line 349
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 350
    iget-wide v2, p0, Lcom/zui/gallery/ui/EdgeEffect;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mDuration:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 352
    iget-object v2, p0, Lcom/zui/gallery/ui/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 354
    iget v3, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlphaStart:F

    iget v4, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlphaFinish:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlpha:F

    .line 355
    iget v3, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleYStart:F

    iget v4, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleYFinish:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleY:F

    .line 356
    iget v3, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlphaStart:F

    iget v4, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlphaFinish:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlpha:F

    .line 357
    iget v3, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleYStart:F

    iget v4, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleYFinish:F

    sub-float v5, v4, v3

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    iput v3, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleY:F

    const v3, 0x3f7fbe77    # 0.999f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    .line 360
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mState:I

    const/4 v3, 0x1

    const/high16 v5, 0x447a0000    # 1000.0f

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    const/4 v8, 0x3

    if-eq v0, v3, :cond_3

    if-eq v0, v8, :cond_2

    if-eq v0, v6, :cond_0

    goto :goto_1

    :cond_0
    cmpl-float v0, v4, v7

    if-eqz v0, :cond_1

    mul-float/2addr v4, v4

    div-float/2addr v1, v4

    goto :goto_0

    :cond_1
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 399
    :goto_0
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleYStart:F

    iget v3, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleYFinish:F

    sub-float/2addr v3, v0

    mul-float/2addr v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleY:F

    .line 402
    iput v8, p0, Lcom/zui/gallery/ui/EdgeEffect;->mState:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 405
    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mState:I

    goto :goto_1

    .line 362
    :cond_3
    iput v8, p0, Lcom/zui/gallery/ui/EdgeEffect;->mState:I

    .line 363
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mStartTime:J

    .line 364
    iput v5, p0, Lcom/zui/gallery/ui/EdgeEffect;->mDuration:F

    .line 366
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlphaStart:F

    .line 367
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleYStart:F

    .line 368
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlphaStart:F

    .line 369
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleYStart:F

    .line 372
    iput v7, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 373
    iput v7, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 374
    iput v7, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 375
    iput v7, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_1

    .line 378
    :cond_4
    iput v6, p0, Lcom/zui/gallery/ui/EdgeEffect;->mState:I

    .line 379
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mStartTime:J

    .line 380
    iput v5, p0, Lcom/zui/gallery/ui/EdgeEffect;->mDuration:F

    .line 382
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlphaStart:F

    .line 383
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleYStart:F

    .line 384
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlphaStart:F

    .line 385
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleYStart:F

    .line 388
    iput v7, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 389
    iput v7, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 390
    iput v7, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 391
    iput v7, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleYFinish:F

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;)Z
    .locals 9

    .line 309
    invoke-direct {p0}, Lcom/zui/gallery/ui/EdgeEffect;->update()V

    .line 311
    iget-object v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdge:Lcom/zui/gallery/ui/EdgeEffect$Drawable;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdge:Lcom/zui/gallery/ui/EdgeEffect$Drawable;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->getIntrinsicWidth()I

    .line 313
    iget-object v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlow:Lcom/zui/gallery/ui/EdgeEffect$Drawable;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 314
    iget-object v2, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlow:Lcom/zui/gallery/ui/EdgeEffect$Drawable;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 316
    iget-object v3, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlow:Lcom/zui/gallery/ui/EdgeEffect$Drawable;

    iget v4, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlpha:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->setAlpha(I)V

    int-to-float v1, v1

    .line 318
    iget v3, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleY:F

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    int-to-float v2, v2

    div-float/2addr v3, v2

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v2

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 321
    iget v2, p0, Lcom/zui/gallery/ui/EdgeEffect;->mWidth:I

    iget v3, p0, Lcom/zui/gallery/ui/EdgeEffect;->mMinWidth:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    sub-int v3, v2, v3

    .line 323
    div-int/lit8 v3, v3, 0x2

    .line 324
    iget-object v8, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlow:Lcom/zui/gallery/ui/EdgeEffect$Drawable;

    sub-int/2addr v2, v3

    invoke-virtual {v8, v3, v4, v2, v1}, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v3, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlow:Lcom/zui/gallery/ui/EdgeEffect$Drawable;

    invoke-virtual {v3, v4, v4, v2, v1}, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->setBounds(IIII)V

    .line 330
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlow:Lcom/zui/gallery/ui/EdgeEffect$Drawable;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 332
    iget-object v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdge:Lcom/zui/gallery/ui/EdgeEffect$Drawable;

    iget v2, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlpha:F

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->setAlpha(I)V

    int-to-float v0, v0

    .line 334
    iget v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 335
    iget v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mWidth:I

    iget v2, p0, Lcom/zui/gallery/ui/EdgeEffect;->mMinWidth:I

    if-ge v1, v2, :cond_1

    sub-int v2, v1, v2

    .line 337
    div-int/lit8 v2, v2, 0x2

    .line 338
    iget-object v3, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdge:Lcom/zui/gallery/ui/EdgeEffect$Drawable;

    sub-int/2addr v1, v2

    invoke-virtual {v3, v2, v4, v1, v0}, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdge:Lcom/zui/gallery/ui/EdgeEffect$Drawable;

    invoke-virtual {v2, v4, v4, v1, v0}, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->setBounds(IIII)V

    .line 343
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdge:Lcom/zui/gallery/ui/EdgeEffect$Drawable;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/EdgeEffect$Drawable;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 345
    iget p1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mState:I

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mState:I

    return-void
.end method

.method public isFinished()Z
    .locals 1

    .line 163
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAbsorb(I)V
    .locals 4

    const/4 v0, 0x2

    .line 265
    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mState:I

    .line 266
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 268
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mStartTime:J

    int-to-float v0, p1

    const v1, 0x3cf5c28f    # 0.03f

    mul-float/2addr v0, v1

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    .line 269
    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mDuration:F

    const/4 v0, 0x0

    .line 273
    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlphaStart:F

    .line 274
    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleYStart:F

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleY:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 277
    iput v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlphaStart:F

    .line 278
    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleYStart:F

    mul-int/lit8 v0, p1, 0x8

    const/4 v2, 0x1

    .line 282
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlphaFinish:F

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 285
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 284
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 291
    div-int/lit8 v0, p1, 0x64

    mul-int/2addr v0, p1

    int-to-float v0, v0

    const v1, 0x391d4952    # 1.5E-4f

    mul-float/2addr v0, v1

    const v1, 0x3ccccccd    # 0.025f

    add-float/2addr v0, v1

    const/high16 v1, 0x3fe00000    # 1.75f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleYFinish:F

    .line 293
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 p1, p1, 0x10

    int-to-float p1, p1

    const v1, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr p1, v1

    const v1, 0x3f4ccccd    # 0.8f

    .line 294
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 293
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlphaFinish:F

    return-void
.end method

.method public onPull(F)V
    .locals 5

    .line 185
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 186
    iget v2, p0, Lcom/zui/gallery/ui/EdgeEffect;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/zui/gallery/ui/EdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/zui/gallery/ui/EdgeEffect;->mDuration:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    return-void

    .line 189
    :cond_0
    iget v2, p0, Lcom/zui/gallery/ui/EdgeEffect;->mState:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    .line 190
    iput v3, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleY:F

    .line 192
    :cond_1
    iput v4, p0, Lcom/zui/gallery/ui/EdgeEffect;->mState:I

    .line 194
    iput-wide v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x43270000    # 167.0f

    .line 195
    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mDuration:F

    .line 197
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mPullDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mPullDistance:F

    .line 198
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f4ccccd    # 0.8f

    .line 200
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlphaStart:F

    iput v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlpha:F

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v4, 0x40e00000    # 7.0f

    mul-float/2addr v0, v4

    .line 202
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 201
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleYStart:F

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleY:F

    .line 204
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlpha:F

    .line 206
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 204
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlphaStart:F

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlpha:F

    .line 208
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    .line 209
    iget p1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mPullDistance:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    neg-float v0, v0

    .line 212
    :cond_2
    iget p1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mPullDistance:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    .line 213
    iput v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleY:F

    :cond_3
    const/high16 p1, 0x40800000    # 4.0f

    .line 217
    iget v2, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleY:F

    mul-float/2addr v0, v4

    add-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleYStart:F

    iput p1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleY:F

    .line 220
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 221
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 222
    iget v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 223
    iput p1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleYFinish:F

    return-void
.end method

.method public onRelease()V
    .locals 3

    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mPullDistance:F

    .line 235
    iget v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 239
    iput v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mState:I

    .line 240
    iget v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlpha:F

    iput v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlphaStart:F

    .line 241
    iget v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleY:F

    iput v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleYStart:F

    .line 242
    iget v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlpha:F

    iput v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlphaStart:F

    .line 243
    iget v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleY:F

    iput v1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleYStart:F

    .line 245
    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 246
    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 247
    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 248
    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mGlowScaleYFinish:F

    .line 250
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 251
    iput v0, p0, Lcom/zui/gallery/ui/EdgeEffect;->mDuration:F

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 151
    iput p1, p0, Lcom/zui/gallery/ui/EdgeEffect;->mWidth:I

    .line 152
    iput p2, p0, Lcom/zui/gallery/ui/EdgeEffect;->mHeight:I

    return-void
.end method
