.class public abstract Lcom/zui/gallery/app/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/ActivityState$ResultEntry;
    }
.end annotation


# static fields
.field protected static final FLAG_ALLOW_LOCK_WHILE_SCREEN_ON:I = 0x10

.field protected static final FLAG_HIDE_ACTION_BAR:I = 0x1

.field protected static final FLAG_HIDE_STATUS_BAR:I = 0x2

.field protected static final FLAG_SCREEN_ON_ALWAYS:I = 0x8

.field protected static final FLAG_SCREEN_ON_WHEN_PLUGGED:I = 0x4

.field protected static final FLAG_SHOW_WHEN_LOCKED:I = 0x20

.field public static final KEY_TRANSITION_IN:Ljava/lang/String; = "transition-in"

.field public static final KEY_TRANSITION_IN_PATH:Ljava/lang/String; = "transition-in-path"

.field public static final KEY_TRANSITION_IN_RECT:Ljava/lang/String; = "transition-in-rect"


# instance fields
.field protected mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field protected mBackgroundColor:[F

.field private mContentPane:Lcom/zui/gallery/ui/GLView;

.field protected mData:Landroid/os/Bundle;

.field private mDestroyed:Z

.field protected mFlags:I

.field mHasTranslate:Z

.field private mIntroAnimation:Lcom/zui/gallery/anim/StateTransitionAnimation;

.field mIsFinishing:Z

.field private mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

.field private mPlugged:Z

.field mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mReceivedResults:Lcom/zui/gallery/app/ActivityState$ResultEntry;

.field protected mResult:Lcom/zui/gallery/app/ActivityState$ResultEntry;

.field protected mStatusBarHeight:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/zui/gallery/app/ActivityState;->mDestroyed:Z

    .line 73
    iput-boolean v0, p0, Lcom/zui/gallery/app/ActivityState;->mPlugged:Z

    .line 74
    iput-boolean v0, p0, Lcom/zui/gallery/app/ActivityState;->mIsFinishing:Z

    .line 86
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 164
    new-instance v0, Lcom/zui/gallery/app/ActivityState$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/ActivityState$1;-><init>(Lcom/zui/gallery/app/ActivityState;)V

    iput-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lcom/zui/gallery/app/ActivityState;->mHasTranslate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/ActivityState;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/zui/gallery/app/ActivityState;->mPlugged:Z

    return p0
.end method

.method static synthetic access$002(Lcom/zui/gallery/app/ActivityState;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/zui/gallery/app/ActivityState;->mPlugged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/ActivityState;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/zui/gallery/app/ActivityState;->setScreenFlags()V

    return-void
.end method

.method private resetBottomBarPadding()V
    .locals 5

    .line 421
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f0801bc

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 424
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 425
    iget-object v2, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isNavigationBarHidden()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isNavigationShowing(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 427
    iget-object v2, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getOrientationManager()Lcom/zui/gallery/app/OrientationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/app/OrientationManager;->getDisplayRotation()I

    move-result v2

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 428
    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getOrientationManager()Lcom/zui/gallery/app/OrientationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/app/OrientationManager;->getDisplayRotation()I

    move-result v2

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 430
    :cond_1
    :goto_0
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 435
    :cond_2
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 437
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_3
    return-void
.end method

.method private setScreenFlags()V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 183
    iget v2, p0, Lcom/zui/gallery/app/ActivityState;->mFlags:I

    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/zui/gallery/app/ActivityState;->mPlugged:Z

    if-eqz v3, :cond_0

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 185
    :cond_1
    :goto_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 189
    :goto_1
    iget v2, p0, Lcom/zui/gallery/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 190
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 192
    :cond_2
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 194
    :goto_2
    iget v2, p0, Lcom/zui/gallery/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_3

    .line 195
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_3

    .line 197
    :cond_3
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 199
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected clearStateResult()V
    .locals 0

    return-void
.end method

.method public freeResources()V
    .locals 0

    return-void
.end method

.method protected getBackgroundColor()[F
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mBackgroundColor:[F

    return-object v0
.end method

.method protected getBackgroundColorId(Landroid/os/Bundle;)I
    .locals 0

    const p1, 0x7f0500b3

    return p1
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getItemRect(Lcom/zui/gallery/data/Path;)Landroid/graphics/Rect;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getStatusBarHeight()I
    .locals 1

    .line 478
    iget v0, p0, Lcom/zui/gallery/app/ActivityState;->mStatusBarHeight:I

    return v0
.end method

.method protected getSupportMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public initStatusBarColor()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setDarkStatusIcon(Z)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setDarkStatusIcon(Z)V

    :goto_0
    return-void
.end method

.method initialize(Lcom/zui/gallery/app/AbstractGalleryActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 105
    iput-object p2, p0, Lcom/zui/gallery/app/ActivityState;->mData:Landroid/os/Bundle;

    return-void
.end method

.method isDestroyed()Z
    .locals 1

    .line 456
    iget-boolean v0, p0, Lcom/zui/gallery/app/ActivityState;->mDestroyed:Z

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/zui/gallery/app/ActivityState;->mIsFinishing:Z

    return v0
.end method

.method protected onBackPressed()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    return-void
.end method

.method protected onBottombarClicked(I)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 144
    iget-object p2, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 145
    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/ActivityState;->getBackgroundColorId(Landroid/os/Bundle;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 144
    invoke-static {p1}, Lcom/zui/gallery/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/ActivityState;->mBackgroundColor:[F

    .line 146
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 147
    iget-object p2, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    .line 148
    invoke-virtual {p2, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 149
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lcom/zui/gallery/app/ActivityState;->mStatusBarHeight:I

    .line 150
    invoke-virtual {p0}, Lcom/zui/gallery/app/ActivityState;->initStatusBarColor()V

    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onCustomScrollBarPostionChange(II)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 452
    iput-boolean v0, p0, Lcom/zui/gallery/app/ActivityState;->mDestroyed:Z

    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 263
    iget v0, p0, Lcom/zui/gallery/app/ActivityState;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 267
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/app/ActivityState;->mHasTranslate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    sget-object v1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    if-eq v0, v1, :cond_1

    .line 272
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const-string/jumbo v2, "transition-in"

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/ActivityState;->mContentPane:Lcom/zui/gallery/ui/GLView;

    invoke-static {v0, v1}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->prepareFadeOutTexture(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/GLView;)V

    .line 276
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showScrollBar(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 381
    iget-boolean v0, p0, Lcom/zui/gallery/app/ActivityState;->mHasTranslate:Z

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v0

    const-string v1, "fade_texture"

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/glrenderer/RawTexture;

    .line 388
    iget-object v1, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v1

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const-string/jumbo v3, "transition-in"

    invoke-virtual {v1, v3, v2}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object v1, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 390
    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    if-eq v1, v2, :cond_3

    .line 391
    new-instance v1, Lcom/zui/gallery/anim/StateTransitionAnimation;

    iget-object v2, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-direct {v1, v2, v0}, Lcom/zui/gallery/anim/StateTransitionAnimation;-><init>(Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;Lcom/zui/gallery/glrenderer/RawTexture;)V

    iput-object v1, p0, Lcom/zui/gallery/app/ActivityState;->mIntroAnimation:Lcom/zui/gallery/anim/StateTransitionAnimation;

    .line 394
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v0

    const-string/jumbo v1, "transition-in-rect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v0

    .line 398
    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v0

    const-string/jumbo v1, "transition-in-path"

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/Path;

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v0

    .line 405
    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->pop(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 414
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showScrollBar(Z)V

    .line 418
    invoke-virtual {p0}, Lcom/zui/gallery/app/ActivityState;->initStatusBarColor()V

    return-void
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onScrollBarMaxLengthAvailable(I)V
    .locals 0

    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected performHapticFeedback(I)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 256
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 258
    invoke-virtual {v0, p1, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    return-void
.end method

.method resume()V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 298
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 300
    iget v3, p0, Lcom/zui/gallery/app/ActivityState;->mFlags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    .line 305
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/app/StateManager;->getStateCount()I

    .line 337
    :cond_1
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    .line 339
    invoke-direct {p0}, Lcom/zui/gallery/app/ActivityState;->setScreenFlags()V

    .line 341
    iget v1, p0, Lcom/zui/gallery/app/ActivityState;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 342
    :goto_1
    iget-object v1, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/zui/gallery/ui/GLRoot;->setLightsOutMode(Z)V

    .line 344
    iget-object v1, p0, Lcom/zui/gallery/app/ActivityState;->mReceivedResults:Lcom/zui/gallery/app/ActivityState$ResultEntry;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    .line 346
    iput-object v2, p0, Lcom/zui/gallery/app/ActivityState;->mReceivedResults:Lcom/zui/gallery/app/ActivityState$ResultEntry;

    .line 347
    iget v2, v1, Lcom/zui/gallery/app/ActivityState$ResultEntry;->requestCode:I

    iget v3, v1, Lcom/zui/gallery/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v1, v1, Lcom/zui/gallery/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {p0, v2, v3, v1}, Lcom/zui/gallery/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    .line 350
    :cond_3
    iget v1, p0, Lcom/zui/gallery/app/ActivityState;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 353
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 354
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Lcom/zui/gallery/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    :cond_4
    invoke-virtual {p0}, Lcom/zui/gallery/app/ActivityState;->onResume()V

    .line 361
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/TransitionStore;->clear()V

    return-void
.end method

.method protected setContentPane(Lcom/zui/gallery/ui/GLView;)V
    .locals 1

    .line 94
    iput-object p1, p0, Lcom/zui/gallery/app/ActivityState;->mContentPane:Lcom/zui/gallery/ui/GLView;

    .line 95
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mIntroAnimation:Lcom/zui/gallery/anim/StateTransitionAnimation;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/GLView;->setIntroAnimation(Lcom/zui/gallery/anim/StateTransitionAnimation;)V

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/zui/gallery/app/ActivityState;->mIntroAnimation:Lcom/zui/gallery/anim/StateTransitionAnimation;

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/ActivityState;->mContentPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p0}, Lcom/zui/gallery/app/ActivityState;->getBackgroundColor()[F

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/GLView;->setBackgroundColor([F)V

    .line 100
    iget-object p1, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mContentPane:Lcom/zui/gallery/ui/GLView;

    invoke-interface {p1, v0}, Lcom/zui/gallery/ui/GLRoot;->setContentPane(Lcom/zui/gallery/ui/GLView;)V

    return-void
.end method

.method protected setContentPaneRect(Lcom/zui/gallery/data/Path;Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 285
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v0

    const-string/jumbo v1, "transition-in-rect"

    invoke-virtual {v0, v1, p2}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 289
    iget-object p2, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object p2

    const-string/jumbo v0, "transition-in-path"

    invoke-virtual {p2, v0, p1}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setHasTranslate(Z)V
    .locals 0

    .line 373
    iput-boolean p1, p0, Lcom/zui/gallery/app/ActivityState;->mHasTranslate:Z

    return-void
.end method

.method protected setStateResult(ILandroid/content/Intent;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mResult:Lcom/zui/gallery/app/ActivityState$ResultEntry;

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iput p1, v0, Lcom/zui/gallery/app/ActivityState$ResultEntry;->resultCode:I

    .line 120
    iget-object p1, p0, Lcom/zui/gallery/app/ActivityState;->mResult:Lcom/zui/gallery/app/ActivityState$ResultEntry;

    iput-object p2, p1, Lcom/zui/gallery/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    return-void
.end method

.method protected stopScroll()V
    .locals 0

    return-void
.end method

.method protected transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/zui/gallery/app/ActivityState;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/zui/gallery/app/ActivityState;",
            ">;",
            "Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;",
            ")V"
        }
    .end annotation

    .line 208
    iget-object p3, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    if-eq p3, v0, :cond_0

    .line 209
    iget-object p3, p0, Lcom/zui/gallery/app/ActivityState;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-static {p3, v0}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->push(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)V

    .line 221
    :cond_0
    const-class p3, Lcom/zui/gallery/app/AlbumSetPage;

    if-ne p1, p3, :cond_1

    const-class p3, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    if-eq p2, p3, :cond_2

    :cond_1
    const-class p3, Lcom/zui/gallery/app/AlbumPage;

    if-ne p1, p3, :cond_3

    const-class p3, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    if-ne p2, p3, :cond_3

    .line 223
    :cond_2
    sget-object p1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object p1, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    goto/16 :goto_0

    .line 224
    :cond_3
    const-class p3, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    if-ne p1, p3, :cond_4

    const-class p3, Lcom/zui/gallery/app/AlbumSetPage;

    if-eq p2, p3, :cond_5

    :cond_4
    const-class p3, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    if-ne p1, p3, :cond_6

    const-class p3, Lcom/zui/gallery/app/AlbumPage;

    if-ne p2, p3, :cond_6

    .line 226
    :cond_5
    sget-object p1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object p1, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    goto/16 :goto_0

    .line 227
    :cond_6
    const-class p3, Lcom/zui/gallery/app/AlbumSetPage;

    if-ne p1, p3, :cond_7

    const-class p3, Lcom/zui/gallery/app/AlbumPage;

    if-ne p2, p3, :cond_7

    .line 228
    sget-object p1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->SlidingLeft:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object p1, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    goto/16 :goto_0

    .line 229
    :cond_7
    const-class p3, Lcom/zui/gallery/app/AlbumPage;

    if-ne p1, p3, :cond_8

    const-class p3, Lcom/zui/gallery/app/AlbumSetPage;

    if-ne p2, p3, :cond_8

    .line 230
    sget-object p1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->SlidingRight:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object p1, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    goto :goto_0

    .line 231
    :cond_8
    const-class p3, Lcom/zui/gallery/app/AlbumSetPage;

    if-ne p1, p3, :cond_9

    const-class p3, Lcom/zui/gallery/app/AlbumPage;

    if-eq p2, p3, :cond_b

    :cond_9
    const-class p3, Lcom/zui/gallery/app/AlbumSetMorePage;

    if-ne p1, p3, :cond_a

    const-class p3, Lcom/zui/gallery/app/AlbumPage;

    if-eq p2, p3, :cond_b

    :cond_a
    const-class p3, Lcom/zui/gallery/app/AlbumSetPage;

    if-ne p1, p3, :cond_c

    const-class p3, Lcom/zui/gallery/app/AlbumSetMorePage;

    if-ne p2, p3, :cond_c

    .line 234
    :cond_b
    sget-object p1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->FadeIn:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object p1, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    goto :goto_0

    .line 235
    :cond_c
    const-class p3, Lcom/zui/gallery/app/AlbumPage;

    if-ne p1, p3, :cond_d

    const-class p3, Lcom/zui/gallery/app/AlbumSetPage;

    if-eq p2, p3, :cond_f

    :cond_d
    const-class p3, Lcom/zui/gallery/app/AlbumPage;

    if-ne p1, p3, :cond_e

    const-class p3, Lcom/zui/gallery/app/AlbumSetMorePage;

    if-eq p2, p3, :cond_f

    :cond_e
    const-class p3, Lcom/zui/gallery/app/AlbumSetMorePage;

    if-ne p1, p3, :cond_10

    const-class p3, Lcom/zui/gallery/app/AlbumSetPage;

    if-ne p2, p3, :cond_10

    .line 238
    :cond_f
    sget-object p1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->FadeOut:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object p1, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    goto :goto_0

    .line 239
    :cond_10
    const-class p3, Lcom/zui/gallery/app/SinglePhotoPage;

    if-ne p2, p3, :cond_12

    .line 242
    invoke-static {}, Lcom/zui/gallery/util/DeviceTypeUtils;->isOnyx()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 243
    sget-object p1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->FadeIn:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object p1, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    goto :goto_0

    .line 245
    :cond_11
    sget-object p1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoPickIn:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object p1, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    goto :goto_0

    .line 247
    :cond_12
    const-class p2, Lcom/zui/gallery/app/SinglePhotoPage;

    if-ne p1, p2, :cond_13

    .line 248
    sget-object p1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoPickOut:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object p1, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    goto :goto_0

    .line 250
    :cond_13
    sget-object p1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object p1, p0, Lcom/zui/gallery/app/ActivityState;->mNextTransition:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    :goto_0
    return-void
.end method

.method protected updateScrollPostion(II)V
    .locals 0

    return-void
.end method
