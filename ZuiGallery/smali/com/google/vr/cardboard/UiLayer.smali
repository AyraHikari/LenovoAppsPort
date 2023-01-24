.class public Lcom/google/vr/cardboard/UiLayer;
.super Ljava/lang/Object;
.source "UiLayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UiLayer"


# instance fields
.field private alignmentMarker:Landroid/widget/RelativeLayout;

.field private backButton:Landroid/widget/ImageButton;

.field private volatile backButtonListener:Ljava/lang/Runnable;

.field private volatile buttonClickCallbackOverride:Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;

.field private volatile isAlignmentMarkerEnabled:Z

.field private volatile isEnabled:Z

.field private volatile isSettingsButtonEnabled:Z

.field private rootLayout:Landroid/widget/RelativeLayout;

.field private settingsButton:Landroid/widget/ImageButton;

.field private volatile settingsButtonListener:Ljava/lang/Runnable;

.field private volatile transitionListener:Ljava/lang/Runnable;

.field private transitionView:Lcom/google/vr/cardboard/TransitionView;

.field private volatile transitionViewEnabled:Z

.field private volatile viewerName:Ljava/lang/String;


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

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isEnabled:Z

    .line 56
    iput-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isSettingsButtonEnabled:Z

    .line 57
    iput-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isAlignmentMarkerEnabled:Z

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->buttonClickCallbackOverride:Ljava/lang/Runnable;

    .line 63
    iput-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonListener:Ljava/lang/Runnable;

    .line 69
    iput-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionListener:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionViewEnabled:Z

    .line 82
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    .line 83
    sget p1, Lcom/google/vr/cardboard/R$layout;->ui_layer:I

    invoke-direct {p0, p1}, Lcom/google/vr/cardboard/UiLayer;->initializeViewsWithLayoutId(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/cardboard/UiLayer;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/vr/cardboard/UiLayer;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButtonListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/vr/cardboard/UiLayer;)Lcom/google/vr/cardboard/TransitionView;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/vr/cardboard/UiLayer;->getTransitionView()Lcom/google/vr/cardboard/TransitionView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/vr/cardboard/UiLayer;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->buttonClickCallbackOverride:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/vr/cardboard/UiLayer;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Z)I
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/ImageButton;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/ImageButton;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->backButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/vr/cardboard/UiLayer;)Lcom/google/vr/cardboard/TransitionView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/vr/cardboard/UiLayer;->alignmentMarker:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private static computeVisibility(Z)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0
.end method

.method private getTransitionView()Lcom/google/vr/cardboard/TransitionView;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    if-nez v0, :cond_2

    .line 158
    new-instance v0, Lcom/google/vr/cardboard/TransitionView;

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/vr/cardboard/TransitionView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    .line 159
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 162
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    invoke-virtual {v1, v0}, Lcom/google/vr/cardboard/TransitionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    iget-boolean v1, p0, Lcom/google/vr/cardboard/UiLayer;->transitionViewEnabled:Z

    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/TransitionView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->viewerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->viewerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/TransitionView;->setViewerName(Ljava/lang/String;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->transitionListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/TransitionView;->setTransitionListener(Ljava/lang/Runnable;)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/TransitionView;->setBackButtonListener(Ljava/lang/Runnable;)V

    .line 171
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    return-object v0
.end method

.method private initializeViewsWithLayoutId(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutId"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    .line 103
    new-instance p1, Lcom/google/vr/cardboard/UiLayer$1;

    invoke-direct {p1, p0}, Lcom/google/vr/cardboard/UiLayer$1;-><init>(Lcom/google/vr/cardboard/UiLayer;)V

    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButtonListener:Ljava/lang/Runnable;

    .line 109
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/google/vr/cardboard/R$id;->ui_settings_button:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButton:Landroid/widget/ImageButton;

    .line 110
    iget-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isSettingsButtonEnabled:Z

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 114
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButton:Landroid/widget/ImageButton;

    const-string v0, "Settings"

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/google/vr/cardboard/UiLayer$2;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/UiLayer$2;-><init>(Lcom/google/vr/cardboard/UiLayer;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/google/vr/cardboard/R$id;->ui_back_button:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->backButton:Landroid/widget/ImageButton;

    .line 132
    invoke-virtual {p0}, Lcom/google/vr/cardboard/UiLayer;->getBackButtonEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->backButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/google/vr/cardboard/UiLayer$3;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/UiLayer$3;-><init>(Lcom/google/vr/cardboard/UiLayer;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/google/vr/cardboard/R$id;->ui_alignment_marker:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->alignmentMarker:Landroid/widget/RelativeLayout;

    .line 148
    invoke-virtual {p0}, Lcom/google/vr/cardboard/UiLayer;->getAlignmentMarkerEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public static scaleAlignmentMarkerLayoutParams(Landroid/content/Context;FLandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "scale",
            "layoutParams"
        }
    .end annotation

    .line 302
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 305
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/vr/cardboard/R$dimen;->alignment_marker_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    const/16 p1, 0xf

    .line 309
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 310
    iput p0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    return-void

    .line 312
    :cond_1
    iput p0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public getAlignmentMarkerEnabled()Z
    .locals 1

    .line 444
    iget-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isAlignmentMarkerEnabled:Z

    return v0
.end method

.method public getBackButtonEnabled()Z
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBackButtonListener()Ljava/lang/Runnable;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getSettingsButtonEnabled()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isSettingsButtonEnabled:Z

    return v0
.end method

.method public getTransitionViewEnabled()Z
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionViewEnabled:Z

    return v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getViewerName()Ljava/lang/String;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->viewerName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isEnabled:Z

    return v0
.end method

.method public isTransitionViewVisible()Z
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/vr/cardboard/TransitionView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAlignmentMarkerEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 281
    iput-boolean p1, p0, Lcom/google/vr/cardboard/UiLayer;->isAlignmentMarkerEnabled:Z

    .line 282
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$7;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$7;-><init>(Lcom/google/vr/cardboard/UiLayer;Z)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAlignmentMarkerScale(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "scale"
        }
    .end annotation

    .line 326
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 329
    :cond_0
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$8;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$8;-><init>(Lcom/google/vr/cardboard/UiLayer;F)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBackButtonListener(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonListener:Ljava/lang/Runnable;

    .line 265
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$6;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$6;-><init>(Lcom/google/vr/cardboard/UiLayer;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setButtonClickCallbackOverride(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buttonClickCallbackOverride"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->buttonClickCallbackOverride:Ljava/lang/Runnable;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 199
    iput-boolean p1, p0, Lcom/google/vr/cardboard/UiLayer;->isEnabled:Z

    .line 200
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$4;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$4;-><init>(Lcom/google/vr/cardboard/UiLayer;Z)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPortraitSupportEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 97
    sget p1, Lcom/google/vr/cardboard/R$layout;->ui_layer_with_portrait_support:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/google/vr/cardboard/R$layout;->ui_layer:I

    .line 96
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/vr/cardboard/UiLayer;->initializeViewsWithLayoutId(I)V

    return-void
.end method

.method public setSettingsButtonEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 219
    iput-boolean p1, p0, Lcom/google/vr/cardboard/UiLayer;->isSettingsButtonEnabled:Z

    .line 223
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$5;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$5;-><init>(Lcom/google/vr/cardboard/UiLayer;Z)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSettingsButtonListener(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButtonListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setTransitionViewEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 346
    iput-boolean p1, p0, Lcom/google/vr/cardboard/UiLayer;->transitionViewEnabled:Z

    .line 347
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$9;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$9;-><init>(Lcom/google/vr/cardboard/UiLayer;Z)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTransitionViewListener(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->transitionListener:Ljava/lang/Runnable;

    .line 382
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$10;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$10;-><init>(Lcom/google/vr/cardboard/UiLayer;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setViewerName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "viewerName"
        }
    .end annotation

    .line 399
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->viewerName:Ljava/lang/String;

    .line 400
    new-instance v0, Lcom/google/vr/cardboard/UiLayer$11;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/cardboard/UiLayer$11;-><init>(Lcom/google/vr/cardboard/UiLayer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
