.class public Lcom/zui/gallery/anim/GLAnimation;
.super Lcom/zui/gallery/anim/Animation;
.source "GLAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/anim/GLAnimation$AnimationListener;
    }
.end annotation


# instance fields
.field private mAnimationListener:Lcom/zui/gallery/anim/GLAnimation$AnimationListener;

.field private mDurationCB:I

.field private mSpec:Lcom/zui/gallery/anim/GlAnimaionSpec;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/anim/GlAnimaionSpec;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/zui/gallery/anim/Animation;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/zui/gallery/anim/GLAnimation;->mSpec:Lcom/zui/gallery/anim/GlAnimaionSpec;

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/zui/gallery/anim/GLAnimation;->mDurationCB:I

    .line 10
    iput-object v0, p0, Lcom/zui/gallery/anim/GLAnimation;->mAnimationListener:Lcom/zui/gallery/anim/GLAnimation$AnimationListener;

    .line 29
    iput-object p1, p0, Lcom/zui/gallery/anim/GLAnimation;->mSpec:Lcom/zui/gallery/anim/GlAnimaionSpec;

    .line 30
    iget p1, p1, Lcom/zui/gallery/anim/GlAnimaionSpec;->duration:I

    invoke-virtual {p0, p1}, Lcom/zui/gallery/anim/GLAnimation;->setDuration(I)V

    .line 31
    iget-object p1, p0, Lcom/zui/gallery/anim/GLAnimation;->mSpec:Lcom/zui/gallery/anim/GlAnimaionSpec;

    iget-object p1, p1, Lcom/zui/gallery/anim/GlAnimaionSpec;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/anim/GLAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;Lcom/zui/gallery/glrenderer/Texture;III)V
    .locals 0

    .line 49
    iget-object p2, p0, Lcom/zui/gallery/anim/GLAnimation;->mSpec:Lcom/zui/gallery/anim/GlAnimaionSpec;

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/zui/gallery/anim/GlAnimaionSpec;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;III)V

    return-void
.end method

.method public getSpec()Lcom/zui/gallery/anim/GlAnimaionSpec;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/zui/gallery/anim/GLAnimation;->mSpec:Lcom/zui/gallery/anim/GlAnimaionSpec;

    return-object v0
.end method

.method protected onCalculate(F)V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/zui/gallery/anim/GLAnimation;->mSpec:Lcom/zui/gallery/anim/GlAnimaionSpec;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/anim/GlAnimaionSpec;->onCalculate(F)V

    .line 42
    iget-object v0, p0, Lcom/zui/gallery/anim/GLAnimation;->mAnimationListener:Lcom/zui/gallery/anim/GLAnimation$AnimationListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/zui/gallery/anim/GLAnimation;->mDurationCB:I

    if-lez v1, :cond_0

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, p1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, -0x1

    .line 43
    iput v1, p0, Lcom/zui/gallery/anim/GLAnimation;->mDurationCB:I

    .line 44
    invoke-interface {v0, p1}, Lcom/zui/gallery/anim/GLAnimation$AnimationListener;->onDuration(F)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/zui/gallery/anim/GLAnimation;->mAnimationListener:Lcom/zui/gallery/anim/GLAnimation$AnimationListener;

    if-eqz v0, :cond_1

    .line 54
    iget v1, p0, Lcom/zui/gallery/anim/GLAnimation;->mDurationCB:I

    if-lez v1, :cond_0

    const/4 v1, -0x1

    .line 55
    iput v1, p0, Lcom/zui/gallery/anim/GLAnimation;->mDurationCB:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 56
    invoke-interface {v0, v1}, Lcom/zui/gallery/anim/GLAnimation$AnimationListener;->onDuration(F)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/anim/GLAnimation;->mAnimationListener:Lcom/zui/gallery/anim/GLAnimation$AnimationListener;

    invoke-interface {v0}, Lcom/zui/gallery/anim/GLAnimation$AnimationListener;->onComplete()V

    :cond_1
    return-void
.end method

.method public setAnimationListener(Lcom/zui/gallery/anim/GLAnimation$AnimationListener;I)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/zui/gallery/anim/GLAnimation;->mAnimationListener:Lcom/zui/gallery/anim/GLAnimation$AnimationListener;

    if-lez p2, :cond_0

    const/16 p1, 0x64

    if-ge p2, p1, :cond_0

    .line 19
    iput p2, p0, Lcom/zui/gallery/anim/GLAnimation;->mDurationCB:I

    :cond_0
    return-void
.end method
