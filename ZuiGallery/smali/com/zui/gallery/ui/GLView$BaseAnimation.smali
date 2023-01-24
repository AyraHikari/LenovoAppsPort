.class public abstract Lcom/zui/gallery/ui/GLView$BaseAnimation;
.super Ljava/lang/Object;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseAnimation"
.end annotation


# instance fields
.field private animator:Landroid/animation/ObjectAnimator;

.field private mDuration:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field protected mProgress:F

.field private mSelectPath:Lcom/zui/gallery/data/Path;

.field private mStartDelay:I

.field private steps:[F


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;)V
    .locals 1

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-object p1, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->mSelectPath:Lcom/zui/gallery/data/Path;

    .line 526
    new-instance p1, Landroid/animation/ObjectAnimator;

    invoke-direct {p1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    const-string v0, "GLView"

    .line 527
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 528
    iget-object p1, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/ui/GLView$BaseAnimation;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 491
    iget-object p0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method


# virtual methods
.method protected abstract animate(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V
.end method

.method public apply(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->mProgress:F

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 568
    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animate(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V

    return-void
.end method

.method public apply(Lcom/zui/gallery/glrenderer/GLCanvas;I)V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->mProgress:F

    const/4 v0, 0x0

    .line 561
    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animate(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V

    return-void
.end method

.method public apply(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 0

    .line 551
    iget-object p1, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 553
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->mProgress:F

    return-void
.end method

.method public apply(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->mProgress:F

    .line 547
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animate(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V

    return-void
.end method

.method public forceStop()V
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    return-void
.end method

.method public getSelectPath()Lcom/zui/gallery/data/Path;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->mSelectPath:Lcom/zui/gallery/data/Path;

    return-object v0
.end method

.method public initProgress([F)V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setDelayTime(J)V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    return-void
.end method

.method public setDuration(I)V
    .locals 3

    .line 505
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setStartDelay(I)V
    .locals 3

    .line 509
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView$BaseAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
