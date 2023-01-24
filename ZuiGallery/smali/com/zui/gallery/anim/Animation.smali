.class public abstract Lcom/zui/gallery/anim/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# static fields
.field private static final ANIMATION_START:J = -0x1L

.field private static final NO_ANIMATION:J = -0x2L


# instance fields
.field private mDelay:I

.field private mDuration:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x2

    .line 54
    iput-wide v0, p0, Lcom/zui/gallery/anim/Animation;->mStartTime:J

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/zui/gallery/anim/Animation;->mDelay:I

    return-void
.end method


# virtual methods
.method public calculate(J)Z
    .locals 8

    .line 95
    iget-wide v0, p0, Lcom/zui/gallery/anim/Animation;->mStartTime:J

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    .line 96
    iput-wide p1, p0, Lcom/zui/gallery/anim/Animation;->mStartTime:J

    .line 97
    :cond_1
    iget-wide v0, p0, Lcom/zui/gallery/anim/Animation;->mStartTime:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    .line 100
    iget p2, p0, Lcom/zui/gallery/anim/Animation;->mDelay:I

    if-lez p2, :cond_3

    if-ge p1, p2, :cond_2

    move p1, v5

    goto :goto_0

    :cond_2
    sub-int/2addr p1, p2

    :cond_3
    :goto_0
    int-to-float p2, p1

    .line 105
    iget v0, p0, Lcom/zui/gallery/anim/Animation;->mDuration:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, v0, v1}, Lcom/zui/gallery/common/Utils;->clamp(FFF)F

    move-result p2

    .line 106
    iget-object v0, p0, Lcom/zui/gallery/anim/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_4

    .line 107
    invoke-interface {v0, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    :cond_4
    invoke-virtual {p0, p2}, Lcom/zui/gallery/anim/Animation;->onCalculate(F)V

    .line 108
    iget p2, p0, Lcom/zui/gallery/anim/Animation;->mDuration:I

    if-lt p1, p2, :cond_5

    .line 109
    iput-wide v2, p0, Lcom/zui/gallery/anim/Animation;->mStartTime:J

    .line 110
    invoke-virtual {p0}, Lcom/zui/gallery/anim/Animation;->onComplete()V

    .line 112
    :cond_5
    iget-wide p1, p0, Lcom/zui/gallery/anim/Animation;->mStartTime:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_6

    const/4 v5, 0x1

    :cond_6
    return v5
.end method

.method public forceStop()V
    .locals 2

    const-wide/16 v0, -0x2

    .line 90
    iput-wide v0, p0, Lcom/zui/gallery/anim/Animation;->mStartTime:J

    return-void
.end method

.method public isActive()Z
    .locals 4

    .line 86
    iget-wide v0, p0, Lcom/zui/gallery/anim/Animation;->mStartTime:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract onCalculate(F)V
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public setDelay(I)V
    .locals 2

    .line 61
    iget v0, p0, Lcom/zui/gallery/anim/Animation;->mDelay:I

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    .line 62
    iput-wide v0, p0, Lcom/zui/gallery/anim/Animation;->mStartTime:J

    .line 65
    :cond_0
    iput p1, p0, Lcom/zui/gallery/anim/Animation;->mDelay:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/zui/gallery/anim/Animation;->mDuration:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/zui/gallery/anim/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/zui/gallery/anim/Animation;->mStartTime:J

    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 78
    iput-wide v0, p0, Lcom/zui/gallery/anim/Animation;->mStartTime:J

    return-void
.end method
