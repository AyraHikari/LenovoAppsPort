.class public Lcom/zui/gallery/app/MovieControllerOverlay;
.super Lcom/zui/gallery/app/CommonControllerOverlay;
.source "MovieControllerOverlay.java"


# instance fields
.field private fakeActionBarRect:Landroid/graphics/Rect;

.field private fakeBottomBarRect:Landroid/graphics/Rect;

.field private final handler:Landroid/os/Handler;

.field private hidden:Z

.field private isAnimaRuning:Z

.field private final startHidingRunnable:Ljava/lang/Runnable;

.field private titleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)V
    .locals 4

    .line 57
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/CommonControllerOverlay;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->isAnimaRuning:Z

    .line 58
    iput-object p2, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->titleView:Landroid/view/View;

    .line 59
    iput-object p3, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->mActivity:Landroid/app/Activity;

    .line 60
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    .line 61
    new-instance p2, Lcom/zui/gallery/app/MovieControllerOverlay$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/app/MovieControllerOverlay$1;-><init>(Lcom/zui/gallery/app/MovieControllerOverlay;)V

    iput-object p2, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    const-string/jumbo p2, "window"

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 69
    new-instance p3, Landroid/graphics/Rect;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06024e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p3, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->fakeActionBarRect:Landroid/graphics/Rect;

    .line 70
    new-instance p3, Landroid/graphics/Rect;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f06024f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v1, p1

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result p2

    invoke-direct {p3, v0, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->fakeBottomBarRect:Landroid/graphics/Rect;

    .line 72
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieControllerOverlay;->hide()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/MovieControllerOverlay;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/zui/gallery/app/MovieControllerOverlay;->startHiding()V

    return-void
.end method

.method static synthetic access$102(Lcom/zui/gallery/app/MovieControllerOverlay;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->isAnimaRuning:Z

    return p1
.end method

.method private maybeStartHiding()V
    .locals 4

    .line 114
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieControllerOverlay;->cancelHiding()V

    .line 115
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/zui/gallery/app/CommonControllerOverlay$State;->PLAYING:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private startHiding()V
    .locals 3

    .line 121
    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->isAnimaRuning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->titleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->bottomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->titleView:Landroid/view/View;

    iget-object v1, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->bottomView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/gallery/app/MovieControllerOverlay;->startShowOrHideAnimation(Landroid/view/View;Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method private startShowOrHideAnimation(Landroid/view/View;Landroid/view/View;Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 127
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 129
    new-instance v1, Lcom/zui/gallery/app/MovieControllerOverlay$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/zui/gallery/app/MovieControllerOverlay$2;-><init>(Lcom/zui/gallery/app/MovieControllerOverlay;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 158
    new-instance p1, Lcom/zui/gallery/app/MovieControllerOverlay$3;

    invoke-direct {p1, p0, p3}, Lcom/zui/gallery/app/MovieControllerOverlay$3;-><init>(Lcom/zui/gallery/app/MovieControllerOverlay;Z)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 189
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 190
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected cancelHiding()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public currentStateIsPlaying()Z
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->mState:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/zui/gallery/app/CommonControllerOverlay$State;->PLAYING:Lcom/zui/gallery/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hide()V
    .locals 2

    .line 77
    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->hidden:Z

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->hidden:Z

    .line 79
    invoke-super {p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->hide()V

    .line 80
    iget-object v1, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->mListener:Lcom/zui/gallery/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->mListener:Lcom/zui/gallery/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/zui/gallery/app/ControllerOverlay$Listener;->onHidden()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 200
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/app/CommonControllerOverlay;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 244
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieControllerOverlay;->cancelHiding()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 249
    invoke-direct {p0}, Lcom/zui/gallery/app/MovieControllerOverlay;->maybeStartHiding()V

    const/4 v0, 0x0

    .line 250
    iput v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->progressChanged:I

    .line 251
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 252
    iget-object v1, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->mListener:Lcom/zui/gallery/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/zui/gallery/app/ControllerOverlay$Listener;->onExit()V

    .line 255
    :cond_0
    iget v1, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->totleTime:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    mul-int/2addr v1, p1

    div-int/2addr v1, v2

    const/4 p1, -0x1

    invoke-virtual {p0, v1, v0, p1}, Lcom/zui/gallery/app/MovieControllerOverlay;->onScrubbingEnd(III)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->fakeActionBarRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->fakeBottomBarRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->hidden:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 224
    :cond_1
    iget-boolean p1, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->hidden:Z

    if-eqz p1, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieControllerOverlay;->show()V

    goto :goto_0

    .line 227
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/app/MovieControllerOverlay;->startHiding()V

    goto :goto_0

    .line 221
    :cond_3
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieControllerOverlay;->cancelHiding()V

    :goto_0
    return v0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 205
    invoke-super {p0, p1}, Lcom/zui/gallery/app/CommonControllerOverlay;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->isAnimaRuning:Z

    if-eqz v0, :cond_1

    return-void

    .line 102
    :cond_1
    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->hidden:Z

    .line 103
    iput-boolean v1, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->hidden:Z

    .line 104
    invoke-super {p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->show()V

    .line 105
    iget-object v2, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->mListener:Lcom/zui/gallery/app/ControllerOverlay$Listener;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v2, :cond_2

    .line 106
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->mListener:Lcom/zui/gallery/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/zui/gallery/app/ControllerOverlay$Listener;->onShown()V

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->titleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->titleView:Landroid/view/View;

    iget-object v2, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->bottomView:Landroid/view/View;

    invoke-direct {p0, v0, v2, v1}, Lcom/zui/gallery/app/MovieControllerOverlay;->startShowOrHideAnimation(Landroid/view/View;Landroid/view/View;Z)V

    .line 110
    invoke-direct {p0}, Lcom/zui/gallery/app/MovieControllerOverlay;->maybeStartHiding()V

    return-void
.end method

.method public showPaused()V
    .locals 0

    .line 260
    invoke-super {p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->showPaused()V

    .line 261
    invoke-virtual {p0}, Lcom/zui/gallery/app/MovieControllerOverlay;->cancelHiding()V

    return-void
.end method

.method public showPlaying()V
    .locals 0

    .line 266
    invoke-super {p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->showPlaying()V

    .line 267
    invoke-direct {p0}, Lcom/zui/gallery/app/MovieControllerOverlay;->maybeStartHiding()V

    return-void
.end method

.method protected updateViews()V
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/zui/gallery/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-super {p0}, Lcom/zui/gallery/app/CommonControllerOverlay;->updateViews()V

    return-void
.end method
