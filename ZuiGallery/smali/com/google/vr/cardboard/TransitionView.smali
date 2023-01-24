.class public Lcom/google/vr/cardboard/TransitionView;
.super Landroid/widget/FrameLayout;
.source "TransitionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ALREADY_LANDSCAPE_LEFT_TRANSITION_DELAY_MS:I = 0x7d0

.field private static final LANDSCAPE_TOLERANCE_DEGREES:I = 0x5

.field private static final PORTRAIT_TOLERANCE_DEGREES:I = 0x2d

.field public static final TRANSITION_ANIMATION_DURATION_MS:I = 0x1f4

.field public static final TRANSITION_BACKGROUND_COLOR:I = -0xbaa59c

.field private static final VIEW_CORRECTION_ROTATION_DEGREES:I = 0x5a


# instance fields
.field private backButton:Landroid/widget/ImageButton;

.field private backButtonListener:Ljava/lang/Runnable;

.field private orientation:I

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private rotationChecked:Z

.field private transitionListener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 69
    iput p1, p0, Lcom/google/vr/cardboard/TransitionView;->orientation:I

    .line 79
    invoke-virtual {p0, p0}, Lcom/google/vr/cardboard/TransitionView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const v0, -0xbaa59c

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/vr/cardboard/TransitionView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    sget p1, Lcom/google/vr/cardboard/R$layout;->transition_view:I

    invoke-direct {p0, p1}, Lcom/google/vr/cardboard/TransitionView;->inflateContentView(I)V

    const/16 p1, 0x8

    .line 85
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/cardboard/TransitionView;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/vr/cardboard/TransitionView;->fadeOutAndRemove(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/vr/cardboard/TransitionView;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/google/vr/cardboard/TransitionView;->orientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/vr/cardboard/TransitionView;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/google/vr/cardboard/TransitionView;->rotationChecked:Z

    return p0
.end method

.method static synthetic access$300(Lcom/google/vr/cardboard/TransitionView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/vr/cardboard/TransitionView;->rotateViewIfNeeded()V

    return-void
.end method

.method static synthetic access$400(I)Z
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/google/vr/cardboard/TransitionView;->isLandscapeLeft(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(I)Z
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/google/vr/cardboard/TransitionView;->isLandscapeRight(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/google/vr/cardboard/TransitionView;)Ljava/lang/Runnable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/google/vr/cardboard/TransitionView;->transitionListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/vr/cardboard/TransitionView;)Ljava/lang/Runnable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/google/vr/cardboard/TransitionView;->backButtonListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method private fadeOutAndRemove(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Lcom/google/vr/cardboard/TransitionView;->stopOrientationMonitor()V

    .line 294
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 298
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 304
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->clearAnimation()V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 307
    :cond_2
    :goto_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 308
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x0

    .line 309
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const-wide/16 v1, 0x1f4

    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p1, :cond_3

    const-wide/16 v1, 0x7d0

    .line 312
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 315
    :cond_3
    new-instance p1, Lcom/google/vr/cardboard/TransitionView$4;

    invoke-direct {p1, p0}, Lcom/google/vr/cardboard/TransitionView$4;-><init>(Lcom/google/vr/cardboard/TransitionView;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 335
    invoke-virtual {p0, v0}, Lcom/google/vr/cardboard/TransitionView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private inflateContentView(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutId"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->removeAllViews()V

    .line 91
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 92
    sget p1, Lcom/google/vr/cardboard/R$id;->transition_switch_action:I

    invoke-virtual {p0, p1}, Lcom/google/vr/cardboard/TransitionView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 93
    new-instance v0, Lcom/google/vr/cardboard/TransitionView$1;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/TransitionView$1;-><init>(Lcom/google/vr/cardboard/TransitionView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget p1, Lcom/google/vr/cardboard/R$id;->transition_icon:I

    invoke-virtual {p0, p1}, Lcom/google/vr/cardboard/TransitionView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 103
    new-instance v0, Lcom/google/vr/cardboard/TransitionView$2;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/TransitionView$2;-><init>(Lcom/google/vr/cardboard/TransitionView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-direct {p0}, Lcom/google/vr/cardboard/TransitionView;->updateBackButtonVisibility()V

    .line 115
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 116
    sget p1, Lcom/google/vr/cardboard/R$id;->transition_bottom_frame:I

    invoke-virtual {p0, p1}, Lcom/google/vr/cardboard/TransitionView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static isLandscapeLeft(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientationDegrees"
        }
    .end annotation

    add-int/lit16 p0, p0, -0x10e

    .line 379
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isLandscapeRight(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientationDegrees"
        }
    .end annotation

    add-int/lit8 p0, p0, -0x5a

    .line 383
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isPortrait(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientationDegrees"
        }
    .end annotation

    add-int/lit16 p0, p0, -0xb4

    .line 375
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 v0, 0x87

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private rotateViewIfNeeded()V
    .locals 9

    .line 222
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getWidth()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getHeight()I

    move-result v0

    if-lez v0, :cond_6

    iget v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/vr/cardboard/TransitionView;->rotationChecked:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 229
    :goto_0
    iget v1, p0, Lcom/google/vr/cardboard/TransitionView;->orientation:I

    invoke-static {v1}, Lcom/google/vr/cardboard/TransitionView;->isPortrait(I)Z

    move-result v1

    if-eq v0, v1, :cond_4

    .line 234
    sget v4, Lcom/google/vr/cardboard/R$id;->transition_frame:I

    invoke-virtual {p0, v4}, Lcom/google/vr/cardboard/TransitionView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 235
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 236
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 241
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getLayoutDirection()I

    move-result v7

    if-ne v7, v3, :cond_2

    int-to-float v7, v6

    .line 243
    invoke-virtual {v4}, Landroid/view/View;->getPivotX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/view/View;->setPivotX(F)V

    int-to-float v7, v5

    .line 244
    invoke-virtual {v4}, Landroid/view/View;->getPivotY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/view/View;->setPivotY(F)V

    :cond_2
    if-eqz v0, :cond_3

    const/high16 v0, 0x42b40000    # 90.0f

    .line 253
    invoke-virtual {v4, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    :cond_3
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 257
    invoke-virtual {v4, v0}, Landroid/view/View;->setRotation(F)V

    :goto_1
    sub-int v0, v5, v6

    .line 260
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    sub-int v0, v6, v5

    .line 261
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 262
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 263
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 264
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 266
    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    :cond_4
    if-nez v1, :cond_5

    .line 274
    sget v0, Lcom/google/vr/cardboard/R$id;->transition_bottom_frame:I

    invoke-virtual {p0, v0}, Lcom/google/vr/cardboard/TransitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 276
    :cond_5
    sget v0, Lcom/google/vr/cardboard/R$id;->transition_bottom_frame:I

    invoke-virtual {p0, v0}, Lcom/google/vr/cardboard/TransitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 281
    :goto_2
    iput-boolean v3, p0, Lcom/google/vr/cardboard/TransitionView;->rotationChecked:Z

    .line 285
    iget v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientation:I

    invoke-static {v0}, Lcom/google/vr/cardboard/TransitionView;->isLandscapeLeft(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 286
    invoke-direct {p0, v3}, Lcom/google/vr/cardboard/TransitionView;->fadeOutAndRemove(Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method private startOrientationMonitor()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    return-void

    .line 168
    :cond_0
    new-instance v0, Lcom/google/vr/cardboard/TransitionView$3;

    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/vr/cardboard/TransitionView$3;-><init>(Lcom/google/vr/cardboard/TransitionView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 187
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method private stopOrientationMonitor()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    .line 195
    iput v1, p0, Lcom/google/vr/cardboard/TransitionView;->orientation:I

    .line 196
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method private updateBackButtonVisibility()V
    .locals 2

    .line 350
    sget v0, Lcom/google/vr/cardboard/R$id;->transition_frame:I

    invoke-virtual {p0, v0}, Lcom/google/vr/cardboard/TransitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 351
    sget v1, Lcom/google/vr/cardboard/R$id;->back_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->backButton:Landroid/widget/ImageButton;

    .line 353
    iget-object v1, p0, Lcom/google/vr/cardboard/TransitionView;->backButtonListener:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 354
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->backButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 358
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 359
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->backButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->backButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/vr/cardboard/TransitionView$5;

    invoke-direct {v1, p0}, Lcom/google/vr/cardboard/TransitionView$5;-><init>(Lcom/google/vr/cardboard/TransitionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 202
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 203
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/cardboard/TransitionView;->rotateViewIfNeeded()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 213
    iput v1, p0, Lcom/google/vr/cardboard/TransitionView;->orientation:I

    .line 214
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 216
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public setBackButtonListener(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/google/vr/cardboard/TransitionView;->backButtonListener:Ljava/lang/Runnable;

    .line 141
    invoke-direct {p0}, Lcom/google/vr/cardboard/TransitionView;->updateBackButtonVisibility()V

    return-void
.end method

.method public setTransitionListener(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/google/vr/cardboard/TransitionView;->transitionListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setViewerName(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewerName"
        }
    .end annotation

    .line 124
    sget v0, Lcom/google/vr/cardboard/R$id;->transition_text:I

    invoke-virtual {p0, v0}, Lcom/google/vr/cardboard/TransitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/vr/cardboard/R$string;->place_your_viewer_into_viewer_format:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/google/vr/cardboard/R$string;->place_your_phone_into_cardboard:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getVisibility()I

    move-result v0

    .line 147
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/google/vr/cardboard/TransitionView;->startOrientationMonitor()V

    return-void

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/cardboard/TransitionView;->stopOrientationMonitor()V

    :cond_1
    return-void
.end method
