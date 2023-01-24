.class public abstract Lcom/google/vr/sdk/widgets/common/VrWidgetView;
.super Landroid/widget/FrameLayout;
.source "VrWidgetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/common/VrWidgetView$DisplayMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DISPLAY_MODE:I = 0x1

.field private static final INFO_BUTTON_URL:Landroid/net/Uri;

.field private static final METERS_PER_INCH:F = 0.0254f

.field private static final STATE_KEY_DISPLAY_MODE:Ljava/lang/String; = "displayMode"

.field private static final STATE_KEY_ORIENTATION_HELPER:Ljava/lang/String; = "orientationHelperState"

.field private static final STATE_KEY_SUPER_CLASS:Ljava/lang/String; = "superClassState"

.field private static final STATE_KEY_WIDGET_RENDERER:Ljava/lang/String; = "widgetRendererState"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private displayMode:I

.field private enterFullscreenButton:Landroid/widget/ImageButton;

.field private enterStereoModeButton:Landroid/widget/ImageButton;

.field private eventListener:Lcom/google/vr/sdk/widgets/common/VrEventListener;

.field private fullScreenDialog:Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

.field private fullscreenBackButton:Landroid/widget/ImageButton;

.field private infoButton:Landroid/widget/ImageButton;

.field private innerWidgetView:Landroid/view/ViewGroup;

.field private isFullscreenButtonEnabled:Z

.field private isInfoButtonEnabled:Z

.field private isPaused:Z

.field private isPureTouchTrackingEnabled:Z

.field private isStereoModeButtonEnabled:Z

.field private isTouchTrackingEnabled:Z

.field private isTransitionViewEnabled:Z

.field private orientationHelper:Lcom/google/vr/sdk/widgets/common/OrientationHelper;

.field private renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

.field private renderingView:Landroid/opengl/GLSurfaceView;

.field private screenOnFlagHelper:Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;

.field private sensorsHelper:Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;

.field private touchTracker:Lcom/google/vr/sdk/widgets/common/TouchTracker;

.field private uiView:Landroid/view/View;

.field private viewRotator:Lcom/google/vr/sdk/widgets/common/ViewRotator;

.field private viewerParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

.field vrUiLayer:Lcom/google/vr/cardboard/UiLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->TAG:Ljava/lang/String;

    const-string v0, "https://g.co/vr/view"

    .line 54
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->INFO_BUTTON_URL:Landroid/net/Uri;

    return-void
.end method

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

    .line 184
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v0, Lcom/google/vr/sdk/widgets/common/VrEventListener;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/common/VrEventListener;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->eventListener:Lcom/google/vr/sdk/widgets/common/VrEventListener;

    .line 185
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->checkContextIsActivity(Landroid/content/Context;)V

    .line 186
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    new-instance p2, Lcom/google/vr/sdk/widgets/common/VrEventListener;

    invoke-direct {p2}, Lcom/google/vr/sdk/widgets/common/VrEventListener;-><init>()V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->eventListener:Lcom/google/vr/sdk/widgets/common/VrEventListener;

    .line 170
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->checkContextIsActivity(Landroid/content/Context;)V

    .line 176
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/sdk/widgets/common/VrWidgetView;)Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/vr/sdk/widgets/common/VrWidgetView;)Lcom/google/vr/sdk/widgets/common/VrEventListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->eventListener:Lcom/google/vr/sdk/widgets/common/VrEventListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/vr/sdk/widgets/common/VrWidgetView;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderingView:Landroid/opengl/GLSurfaceView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/vr/sdk/widgets/common/VrWidgetView;)Landroid/app/Activity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private checkContextIsActivity(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 200
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 203
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->activity:Landroid/app/Activity;

    return-void

    .line 201
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Context must be an instance of activity"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static getInfoButtonIntent()Landroid/content/Intent;
    .locals 3

    .line 758
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->INFO_BUTTON_URL:Landroid/net/Uri;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method static getScreenRotationInDegrees(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0
.end method

.method private init()V
    .locals 6

    const/4 v0, 0x1

    .line 212
    iput v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    .line 214
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->viewerParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    .line 216
    new-instance v1, Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->sensorsHelper:Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;

    .line 217
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;->areTrackingSensorsAvailable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->sensorsHelper:Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;

    .line 218
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;->showStereoModeButtonForTesting()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isStereoModeButtonEnabled:Z

    .line 219
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isFullscreenButtonEnabled:Z

    .line 220
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isInfoButtonEnabled:Z

    .line 221
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isTouchTrackingEnabled:Z

    .line 222
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isTransitionViewEnabled:Z

    .line 224
    new-instance v1, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->screenOnFlagHelper:Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;

    .line 227
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 228
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 229
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 230
    invoke-virtual {v1, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 234
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->initializeRenderingView()V

    .line 235
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->innerWidgetView:Landroid/view/ViewGroup;

    .line 237
    sget v4, Lcom/google/vr/widgets/common/R$id;->vrwidget_inner_view:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 238
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->innerWidgetView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderingView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 241
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->setPadding(IIII)V

    .line 242
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->innerWidgetView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->addView(Landroid/view/View;)V

    .line 244
    new-instance v2, Lcom/google/vr/sdk/widgets/common/OrientationHelper;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/google/vr/sdk/widgets/common/OrientationHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->orientationHelper:Lcom/google/vr/sdk/widgets/common/OrientationHelper;

    .line 246
    new-instance v2, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->innerWidgetView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;)V

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->fullScreenDialog:Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

    .line 247
    new-instance v3, Lcom/google/vr/sdk/widgets/common/VrWidgetView$1;

    invoke-direct {v3, p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView$1;-><init>(Lcom/google/vr/sdk/widgets/common/VrWidgetView;)V

    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 254
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/vr/widgets/common/R$layout;->ui_view_embed:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->uiView:Landroid/view/View;

    .line 256
    new-instance v2, Lcom/google/vr/sdk/widgets/common/ViewRotator;

    .line 257
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->uiView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->getScreenRotationInDegrees(I)I

    move-result v1

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->sensorsHelper:Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;

    .line 258
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;->areTrackingSensorsAvailable()Z

    move-result v5

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/google/vr/sdk/widgets/common/ViewRotator;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->viewRotator:Lcom/google/vr/sdk/widgets/common/ViewRotator;

    .line 259
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->innerWidgetView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->uiView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 262
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->innerWidgetView:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 264
    new-instance v1, Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/vr/cardboard/UiLayer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->vrUiLayer:Lcom/google/vr/cardboard/UiLayer;

    .line 267
    invoke-virtual {v1, v0}, Lcom/google/vr/cardboard/UiLayer;->setPortraitSupportEnabled(Z)V

    .line 268
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->vrUiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v1, v0}, Lcom/google/vr/cardboard/UiLayer;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->innerWidgetView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->vrUiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v1}, Lcom/google/vr/cardboard/UiLayer;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 271
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateTouchTracker()V

    .line 272
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->initializeUiButtons()V

    return-void
.end method

.method private initializeRenderingView()V
    .locals 9

    .line 312
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderingView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x2

    .line 313
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 314
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderingView:Landroid/opengl/GLSurfaceView;

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x10

    const/16 v8, 0x8

    invoke-virtual/range {v2 .. v8}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 315
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderingView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 317
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const v1, 0x3cd013a9    # 0.0254f

    div-float v0, v1, v0

    .line 318
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v1, v2

    .line 320
    new-instance v2, Lcom/google/vr/sdk/widgets/common/VrWidgetView$3;

    invoke-direct {v2, p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView$3;-><init>(Lcom/google/vr/sdk/widgets/common/VrWidgetView;)V

    .line 327
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->createRenderer(Landroid/content/Context;Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;FF)Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    .line 328
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderingView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method private initializeUiButtons()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->uiView:Landroid/view/View;

    sget v1, Lcom/google/vr/widgets/common/R$id;->fullscreen_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->enterFullscreenButton:Landroid/widget/ImageButton;

    .line 342
    new-instance v1, Lcom/google/vr/sdk/widgets/common/VrWidgetView$4;

    invoke-direct {v1, p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView$4;-><init>(Lcom/google/vr/sdk/widgets/common/VrWidgetView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->uiView:Landroid/view/View;

    sget v1, Lcom/google/vr/widgets/common/R$id;->vr_mode_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->enterStereoModeButton:Landroid/widget/ImageButton;

    .line 350
    new-instance v1, Lcom/google/vr/sdk/widgets/common/VrWidgetView$5;

    invoke-direct {v1, p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView$5;-><init>(Lcom/google/vr/sdk/widgets/common/VrWidgetView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->uiView:Landroid/view/View;

    sget v1, Lcom/google/vr/widgets/common/R$id;->fullscreen_back_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->fullscreenBackButton:Landroid/widget/ImageButton;

    .line 358
    new-instance v1, Lcom/google/vr/sdk/widgets/common/VrWidgetView$6;

    invoke-direct {v1, p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView$6;-><init>(Lcom/google/vr/sdk/widgets/common/VrWidgetView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->uiView:Landroid/view/View;

    sget v1, Lcom/google/vr/widgets/common/R$id;->info_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->infoButton:Landroid/widget/ImageButton;

    .line 366
    new-instance v1, Lcom/google/vr/sdk/widgets/common/VrWidgetView$7;

    invoke-direct {v1, p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView$7;-><init>(Lcom/google/vr/sdk/widgets/common/VrWidgetView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateButtonVisibility()V

    return-void
.end method

.method private isFullScreen()Z
    .locals 2

    .line 276
    iget v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private updateButtonVisibility()V
    .locals 6

    .line 503
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isFullscreenButtonEnabled:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 504
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->enterFullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->enterFullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 509
    :goto_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isStereoModeButtonEnabled:Z

    const/4 v3, 0x3

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    if-eq v0, v3, :cond_1

    .line 510
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->enterStereoModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->enterStereoModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 515
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->vrUiLayer:Lcom/google/vr/cardboard/UiLayer;

    iget v4, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    const/4 v5, 0x1

    if-ne v4, v3, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {v0, v4}, Lcom/google/vr/cardboard/UiLayer;->setSettingsButtonEnabled(Z)V

    .line 516
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->vrUiLayer:Lcom/google/vr/cardboard/UiLayer;

    iget v4, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    if-ne v4, v3, :cond_3

    move v4, v5

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    invoke-virtual {v0, v4}, Lcom/google/vr/cardboard/UiLayer;->setAlignmentMarkerEnabled(Z)V

    .line 517
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->vrUiLayer:Lcom/google/vr/cardboard/UiLayer;

    iget v4, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    if-ne v4, v3, :cond_4

    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isTransitionViewEnabled:Z

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    invoke-virtual {v0, v5}, Lcom/google/vr/cardboard/UiLayer;->setTransitionViewEnabled(Z)V

    .line 520
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isFullScreen()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_5

    .line 522
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->fullscreenBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->vrUiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0, v4}, Lcom/google/vr/cardboard/UiLayer;->setBackButtonListener(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 525
    :cond_5
    iget v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    if-ne v0, v3, :cond_6

    .line 530
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->fullscreenBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->vrUiLayer:Lcom/google/vr/cardboard/UiLayer;

    new-instance v4, Lcom/google/vr/sdk/widgets/common/VrWidgetView$8;

    invoke-direct {v4, p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView$8;-><init>(Lcom/google/vr/sdk/widgets/common/VrWidgetView;)V

    invoke-virtual {v0, v4}, Lcom/google/vr/cardboard/UiLayer;->setBackButtonListener(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 539
    :cond_6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->fullscreenBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->vrUiLayer:Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0, v4}, Lcom/google/vr/cardboard/UiLayer;->setBackButtonListener(Ljava/lang/Runnable;)V

    .line 544
    :goto_5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->infoButton:Landroid/widget/ImageButton;

    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isInfoButtonEnabled:Z

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    if-eq v4, v3, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private updateControlsLayout()V
    .locals 7

    .line 461
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->innerWidgetView:Landroid/view/ViewGroup;

    sget v1, Lcom/google/vr/widgets/common/R$id;->control_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 463
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 468
    iget v2, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->orientationHelper:Lcom/google/vr/sdk/widgets/common/OrientationHelper;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->isInPortraitOrientation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 471
    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 473
    :cond_0
    invoke-virtual {v1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 474
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 476
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    iget v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 480
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->viewRotator:Lcom/google/vr/sdk/widgets/common/ViewRotator;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/common/ViewRotator;->enable()V

    goto :goto_1

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->viewRotator:Lcom/google/vr/sdk/widgets/common/ViewRotator;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/common/ViewRotator;->disable()V

    :goto_1
    return-void
.end method

.method private updateStereoMode()V
    .locals 5

    .line 487
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    iget v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->setStereoMode(Z)V

    .line 489
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->activity:Landroid/app/Activity;

    iget v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v0, v2, v3}, Lcom/google/vr/cardboard/AndroidNCompat;->setVrModeEnabled(Landroid/app/Activity;ZI)Z

    .line 492
    iget v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    if-ne v0, v4, :cond_2

    .line 493
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->screenOnFlagHelper:Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->start()V

    goto :goto_2

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->screenOnFlagHelper:Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->stop()V

    .line 498
    :goto_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateButtonVisibility()V

    .line 499
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateViewerName()V

    return-void
.end method

.method private updateTouchTracker()V
    .locals 5

    .line 282
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->touchTracker:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lcom/google/vr/sdk/widgets/common/TouchTracker;

    .line 284
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/vr/sdk/widgets/common/VrWidgetView$2;

    invoke-direct {v2, p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView$2;-><init>(Lcom/google/vr/sdk/widgets/common/VrWidgetView;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/google/vr/sdk/widgets/common/TouchTracker;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/google/vr/sdk/widgets/common/TouchTracker$TouchEnabledVrView;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->touchTracker:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    .line 298
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->touchTracker:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isTouchTrackingEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/common/TouchTracker;->setTouchTrackingEnabled(Z)V

    .line 308
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->touchTracker:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isFullScreen()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isPureTouchTrackingEnabled:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/common/TouchTracker;->setVerticalTrackingEnabled(Z)V

    return-void
.end method

.method private updateViewerName()V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->viewerParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->readDeviceParams()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    .line 763
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->vrUiLayer:Lcom/google/vr/cardboard/UiLayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->getModel()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/vr/cardboard/UiLayer;->setViewerName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract createRenderer(Landroid/content/Context;Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;FF)Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "glThreadScheduler",
            "xMetersPerPixel",
            "yMetersPerPixel"
        }
    .end annotation
.end method

.method public getDisplayMode()I
    .locals 1

    .line 457
    iget v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    return v0
.end method

.method public getHeadRotation([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "yawAndPitch"
        }
    .end annotation

    .line 401
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->getHeadRotation([F)V

    return-void

    .line 402
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array should have at least 2 elements."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->onViewDetach()V

    .line 196
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 747
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 748
    check-cast p1, Landroid/os/Bundle;

    .line 749
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->orientationHelper:Lcom/google/vr/sdk/widgets/common/OrientationHelper;

    const-string v1, "orientationHelperState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 750
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    const-string/jumbo v1, "widgetRendererState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "displayMode"

    .line 751
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    const-string/jumbo v0, "superClassState"

    .line 752
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 754
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 734
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 735
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string/jumbo v2, "superClassState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 736
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->orientationHelper:Lcom/google/vr/sdk/widgets/common/OrientationHelper;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "orientationHelperState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 737
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "widgetRendererState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 738
    iget v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    const-string v2, "displayMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public pauseRendering()V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderingView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 585
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->onPause()V

    .line 586
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->screenOnFlagHelper:Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->stop()V

    const/4 v0, 0x1

    .line 587
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isPaused:Z

    .line 588
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->viewRotator:Lcom/google/vr/sdk/widgets/common/ViewRotator;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/common/ViewRotator;->disable()V

    return-void
.end method

.method public resumeRendering()V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderingView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 601
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->onResume()V

    .line 602
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateStereoMode()V

    .line 603
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->fullScreenDialog:Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->show()V

    .line 606
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateButtonVisibility()V

    .line 607
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateControlsLayout()V

    const/4 v0, 0x0

    .line 608
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isPaused:Z

    return-void
.end method

.method public setDisplayMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newDisplayMode"
        }
    .end annotation

    .line 418
    iget v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->updateCurrentYaw()V

    if-lez p1, :cond_1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_2

    .line 427
    :cond_1
    sget-object v0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->TAG:Ljava/lang/String;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid DisplayMode value: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 431
    :cond_2
    iput p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    .line 433
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateStereoMode()V

    .line 435
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isFullScreen()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 437
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->orientationHelper:Lcom/google/vr/sdk/widgets/common/OrientationHelper;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->lockOrientation()V

    .line 439
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->fullScreenDialog:Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->show()V

    goto :goto_0

    .line 441
    :cond_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->fullScreenDialog:Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->dismiss()V

    .line 442
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->orientationHelper:Lcom/google/vr/sdk/widgets/common/OrientationHelper;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/common/OrientationHelper;->restoreOriginalOrientation()V

    .line 445
    :goto_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateControlsLayout()V

    .line 446
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateTouchTracker()V

    .line 448
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->eventListener:Lcom/google/vr/sdk/widgets/common/VrEventListener;

    iget v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->displayMode:I

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/common/VrEventListener;->onDisplayModeChanged(I)V

    return-void
.end method

.method protected setEventListener(Lcom/google/vr/sdk/widgets/common/VrEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventListener"
        }
    .end annotation

    .line 572
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->eventListener:Lcom/google/vr/sdk/widgets/common/VrEventListener;

    return-void
.end method

.method public setFlingingEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->touchTracker:Lcom/google/vr/sdk/widgets/common/TouchTracker;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/common/TouchTracker;->setFlingingEnabled(Z)V

    return-void
.end method

.method public setFullscreenButtonEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 656
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isFullscreenButtonEnabled:Z

    .line 657
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateButtonVisibility()V

    return-void
.end method

.method public setInfoButtonEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 693
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isInfoButtonEnabled:Z

    .line 694
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateButtonVisibility()V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchListener"
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->innerWidgetView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setPureTouchTracking(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 720
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isPureTouchTrackingEnabled:Z

    .line 721
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateTouchTracker()V

    .line 722
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->setPureTouchTracking(Z)V

    return-void
.end method

.method public setStereoModeButtonEnabled(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->sensorsHelper:Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/common/TrackingSensorsHelper;->areTrackingSensorsAvailable()Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 643
    sget-object v1, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->TAG:Ljava/lang/String;

    const-string v2, "This phone doesn\'t have the necessary sensors for head tracking, stereo Mode button will be disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 646
    :goto_0
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isStereoModeButtonEnabled:Z

    .line 647
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateButtonVisibility()V

    return-void
.end method

.method public setTouchTrackingEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 669
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isTouchTrackingEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 672
    :cond_0
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isTouchTrackingEnabled:Z

    .line 673
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateTouchTracker()V

    return-void
.end method

.method public setTransitionViewEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 683
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isTransitionViewEnabled:Z

    .line 684
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateButtonVisibility()V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 624
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->isPaused:Z

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->viewerParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    .line 629
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->renderer:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->shutdown()V

    return-void

    .line 625
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pauseRendering() must be called before calling shutdown()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
