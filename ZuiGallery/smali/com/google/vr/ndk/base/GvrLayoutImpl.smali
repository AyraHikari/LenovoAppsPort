.class Lcom/google/vr/ndk/base/GvrLayoutImpl;
.super Landroid/widget/FrameLayout;
.source "GvrLayoutImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;,
        Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;,
        Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;,
        Lcom/google/vr/ndk/base/GvrLayoutImpl$FrameFlushWorkaround;,
        Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationListener;,
        Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationFactory;
    }
.end annotation


# static fields
.field private static final ASYNC_REPROJECTION_FLAGS_UNKNOWN:I = -0x1

.field private static final DEBUG:Z = false

.field private static final EXTERNAL_PRESENTATION_MIN_API:I = 0x10

.field private static final SHOW_RENDERING_VIEWS_DELAY_FOR_FADE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "GvrLayoutImpl"

.field private static sOptionalPresentationFactory:Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationFactory;


# instance fields
.field private asyncReprojectionFlags:I

.field private attachedToWindow:Z

.field private autoFadeEnabled:Z

.field private cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

.field private daydreamTouchListener:Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;

.field private daydreamUtils:Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

.field private displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

.field private eglFactory:Lcom/google/vr/cardboard/EglFactory;

.field private eglReadyListener:Lcom/google/vr/cardboard/EglReadyListener;

.field private extensionManager:Lcom/google/vr/ndk/base/ExtensionManager;

.field private fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

.field private frameFlushWorkaround:Lcom/google/vr/ndk/base/GvrLayoutImpl$FrameFlushWorkaround;

.field private gvrApi:Lcom/google/vr/ndk/base/GvrApi;

.field private isResumed:Z

.field private presentationHelper:Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;

.field private presentationLayout:Landroid/widget/FrameLayout;

.field private presentationView:Landroid/view/View;

.field private scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

.field private scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

.field private screenOnManager:Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

.field private final showRenderingViewsRunnable:Ljava/lang/Runnable;

.field private stereoModeEnabled:Z

.field private uiLayout:Lcom/google/vr/ndk/base/GvrUiLayoutImpl;

.field private videoSurface:Lcom/google/vr/ndk/base/ExternalSurface;

.field private vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p1, v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;-><init>(Landroid/content/Context;Lcom/google/vr/ndk/base/ExtensionManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/ndk/base/ExtensionManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "extensionManager"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->asyncReprojectionFlags:I

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->autoFadeEnabled:Z

    const/4 v1, 0x0

    .line 95
    iput-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->isResumed:Z

    .line 99
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->stereoModeEnabled:Z

    .line 101
    new-instance v0, Lcom/google/vr/ndk/base/GvrLayoutImpl$1;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$1;-><init>(Lcom/google/vr/ndk/base/GvrLayoutImpl;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->showRenderingViewsRunnable:Ljava/lang/Runnable;

    .line 175
    instance-of v0, p1, Lcom/google/vr/cardboard/VrContextWrapper;

    if-nez v0, :cond_1

    .line 176
    invoke-static {p1}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An Activity Context is required for VR functionality."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->init(Lcom/google/vr/ndk/base/ExtensionManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/cardboard/DisplaySynchronizer;Lcom/google/vr/cardboard/EglReadyListener;Lcom/google/vr/ndk/base/FadeOverlayView;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;Lcom/google/vr/ndk/base/ExtensionManager;Lcom/google/vr/ndk/base/GvrUiLayoutImpl;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "gvrApi",
            "synchronizer",
            "eglReadyListener",
            "fadeOverlayView",
            "daydreamUtils",
            "extensionManager",
            "uiLayout"
        }
    .end annotation

    move-object v8, p0

    .line 200
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 61
    iput v0, v8, Lcom/google/vr/ndk/base/GvrLayoutImpl;->asyncReprojectionFlags:I

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, v8, Lcom/google/vr/ndk/base/GvrLayoutImpl;->autoFadeEnabled:Z

    const/4 v1, 0x0

    .line 95
    iput-boolean v1, v8, Lcom/google/vr/ndk/base/GvrLayoutImpl;->isResumed:Z

    .line 99
    iput-boolean v0, v8, Lcom/google/vr/ndk/base/GvrLayoutImpl;->stereoModeEnabled:Z

    .line 101
    new-instance v0, Lcom/google/vr/ndk/base/GvrLayoutImpl$1;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$1;-><init>(Lcom/google/vr/ndk/base/GvrLayoutImpl;)V

    iput-object v0, v8, Lcom/google/vr/ndk/base/GvrLayoutImpl;->showRenderingViewsRunnable:Ljava/lang/Runnable;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 201
    invoke-direct/range {v0 .. v7}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->initWithInjectedObjects(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/cardboard/DisplaySynchronizer;Lcom/google/vr/cardboard/EglReadyListener;Lcom/google/vr/ndk/base/FadeOverlayView;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;Lcom/google/vr/ndk/base/ExtensionManager;Lcom/google/vr/ndk/base/GvrUiLayoutImpl;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/ndk/base/GvrLayoutImpl;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->updateRenderingViewsVisibility(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/vr/ndk/base/GvrLayoutImpl;)Lcom/google/vr/ndk/base/VrCoreSdkClient;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/vr/ndk/base/GvrLayoutImpl;)Lcom/google/vr/cardboard/ScanlineRacingRenderer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/vr/ndk/base/GvrLayoutImpl;)Lcom/google/vr/ndk/base/GvrUiLayoutImpl;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayoutImpl;

    return-object p0
.end method

.method static synthetic access$500()Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationFactory;
    .locals 1

    .line 43
    sget-object v0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->sOptionalPresentationFactory:Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationFactory;

    return-object v0
.end method

.method private addScanlineRacingView()V
    .locals 4

    .line 773
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    if-eqz v0, :cond_0

    return-void

    .line 777
    :cond_0
    new-instance v0, Lcom/google/vr/cardboard/EglFactory;

    invoke-direct {v0}, Lcom/google/vr/cardboard/EglFactory;-><init>()V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    const/4 v1, 0x1

    .line 778
    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/EglFactory;->setUsePriorityContext(Z)V

    .line 779
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    iget v2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->asyncReprojectionFlags:I

    and-int/2addr v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/vr/cardboard/EglFactory;->setUseProtectedBuffers(Z)V

    .line 785
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/vr/cardboard/EglFactory;->setEGLContextClientVersion(I)V

    .line 787
    new-instance v0, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    .line 788
    new-instance v2, Lcom/google/vr/cardboard/MutableEglConfigChooser;

    invoke-direct {v2}, Lcom/google/vr/cardboard/MutableEglConfigChooser;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 789
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 790
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    invoke-virtual {v0, v2}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 791
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->eglFactory:Lcom/google/vr/cardboard/EglFactory;

    invoke-virtual {v0, v2}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V

    .line 793
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->isContextSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 794
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->eglReadyListener:Lcom/google/vr/cardboard/EglReadyListener;

    invoke-virtual {v0, v2}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->setEglReadyListener(Lcom/google/vr/cardboard/EglReadyListener;)V

    .line 797
    :cond_2
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->stereoModeEnabled:Z

    if-nez v0, :cond_3

    const-string v0, "GvrLayoutImpl"

    const-string v2, "Disabling stereo mode with async reprojection enabled may not work properly."

    .line 800
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->setVisibility(I)V

    .line 804
    :cond_3
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    if-nez v0, :cond_4

    .line 805
    new-instance v0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-direct {v0, v2}, Lcom/google/vr/cardboard/ScanlineRacingRenderer;-><init>(Lcom/google/vr/ndk/base/GvrApi;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    .line 807
    :cond_4
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    invoke-virtual {v0, v2}, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->setSurfaceView(Lcom/google/vr/ndk/base/GvrSurfaceView;)V

    .line 808
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    invoke-virtual {v0, v2}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->setRenderer(Lcom/google/vr/cardboard/ScanlineRacingRenderer;)V

    .line 809
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->setSwapMode(I)V

    .line 817
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->isResumed:Z

    if-nez v0, :cond_5

    .line 818
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->onPause()V

    .line 824
    :cond_5
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private init(Lcom/google/vr/ndk/base/ExtensionManager;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extensionManager"
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrApi;->createDefaultDisplaySynchronizer(Landroid/content/Context;)Lcom/google/vr/cardboard/DisplaySynchronizer;

    move-result-object v3

    .line 215
    new-instance v0, Lcom/google/vr/ndk/base/GvrLayoutImpl$2;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$2;-><init>(Lcom/google/vr/ndk/base/GvrLayoutImpl;)V

    .line 225
    new-instance v2, Lcom/google/vr/ndk/base/GvrApi;

    .line 226
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1, v3}, Lcom/google/vr/ndk/base/GvrApi;-><init>(Landroid/content/Context;Lcom/google/vr/cardboard/DisplaySynchronizer;)V

    new-instance v4, Lcom/google/vr/cardboard/EglReadyListener;

    invoke-direct {v4}, Lcom/google/vr/cardboard/EglReadyListener;-><init>()V

    new-instance v6, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

    invoke-direct {v6}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;-><init>()V

    new-instance v8, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;

    .line 232
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v8, v1, v0}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v7, p1

    .line 225
    invoke-direct/range {v1 .. v8}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->initWithInjectedObjects(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/cardboard/DisplaySynchronizer;Lcom/google/vr/cardboard/EglReadyListener;Lcom/google/vr/ndk/base/FadeOverlayView;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;Lcom/google/vr/ndk/base/ExtensionManager;Lcom/google/vr/ndk/base/GvrUiLayoutImpl;)V

    return-void
.end method

.method private initWithInjectedObjects(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/cardboard/DisplaySynchronizer;Lcom/google/vr/cardboard/EglReadyListener;Lcom/google/vr/ndk/base/FadeOverlayView;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;Lcom/google/vr/ndk/base/ExtensionManager;Lcom/google/vr/ndk/base/GvrUiLayoutImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gvrApi",
            "synchronizer",
            "eglReadyListener",
            "fadeOverlayView",
            "daydreamUtils",
            "extensionManager",
            "uiLayout"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 248
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->isContextSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p1, p3}, Lcom/google/vr/ndk/base/GvrApi;->requestContextSharing(Lcom/google/vr/cardboard/EglReadyListener;)V

    .line 253
    :cond_0
    iput-object p5, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->daydreamUtils:Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

    .line 254
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationLayout:Landroid/widget/FrameLayout;

    .line 255
    iput-object p7, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayoutImpl;

    .line 256
    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    .line 257
    iput-object p3, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->eglReadyListener:Lcom/google/vr/cardboard/EglReadyListener;

    .line 258
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->tryCreatePresentationHelper()Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;

    .line 259
    new-instance p2, Lcom/google/vr/ndk/base/GvrLayoutImpl$FrameFlushWorkaround;

    invoke-direct {p2}, Lcom/google/vr/ndk/base/GvrLayoutImpl$FrameFlushWorkaround;-><init>()V

    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->frameFlushWorkaround:Lcom/google/vr/ndk/base/GvrLayoutImpl$FrameFlushWorkaround;

    .line 263
    iget-object p2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationLayout:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->addView(Landroid/view/View;I)V

    .line 264
    invoke-virtual {p7}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->getRoot()Landroid/view/ViewGroup;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->addView(Landroid/view/View;I)V

    .line 265
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->updateUiLayout()V

    .line 268
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->isDaydreamPhone(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->createDaydreamTouchListener()Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->daydreamTouchListener:Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;

    .line 272
    invoke-virtual {p7}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->getRoot()Landroid/view/ViewGroup;

    move-result-object p7

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->daydreamTouchListener:Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;

    invoke-virtual {p7, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object p7

    invoke-virtual {p5, p7}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->getComponentDaydreamCompatibility(Landroid/content/Context;)I

    move-result p7

    if-eq p7, v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, p3

    :goto_0
    const/4 v2, 0x3

    if-ne p7, v2, :cond_3

    move p7, v0

    goto :goto_1

    :cond_3
    move p7, p3

    :goto_1
    if-nez p2, :cond_4

    if-eqz p7, :cond_5

    :cond_4
    move p3, v0

    :cond_5
    if-eqz p3, :cond_9

    if-eqz v1, :cond_8

    .line 286
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Lcom/google/vr/cardboard/VrContextWrapper;

    if-eqz p2, :cond_6

    .line 287
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/google/vr/cardboard/VrContextWrapper;

    invoke-virtual {p2}, Lcom/google/vr/cardboard/VrContextWrapper;->autoFadeEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->autoFadeEnabled:Z

    :cond_6
    if-eqz p4, :cond_7

    goto :goto_2

    .line 292
    :cond_7
    new-instance p4, Lcom/google/vr/ndk/base/FadeOverlayView;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean p3, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->autoFadeEnabled:Z

    invoke-direct {p4, p2, p3}, Lcom/google/vr/ndk/base/FadeOverlayView;-><init>(Landroid/content/Context;Z)V

    :goto_2
    iput-object p4, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    const/4 p2, 0x2

    .line 293
    invoke-virtual {p0, p4, p2}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->addView(Landroid/view/View;I)V

    .line 296
    :cond_8
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    invoke-virtual {p0, p2, p1, p5, p3}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->createVrCoreSdkClient(Landroid/content/Context;Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;Lcom/google/vr/ndk/base/FadeOverlayView;)Lcom/google/vr/ndk/base/VrCoreSdkClient;

    move-result-object p2

    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    .line 299
    :cond_9
    new-instance p2, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

    invoke-direct {p2, p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->screenOnManager:Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

    .line 300
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->isDeviceDetectionEnabled()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 301
    iget-object p2, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->screenOnManager:Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

    invoke-virtual {p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->setIdleListener(Lcom/google/vr/ndk/base/GvrApi$IdleListener;)V

    .line 304
    :cond_a
    iput-object p6, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->extensionManager:Lcom/google/vr/ndk/base/ExtensionManager;

    if-eqz p6, :cond_b

    .line 306
    invoke-interface {p6, p0, p1}, Lcom/google/vr/ndk/base/ExtensionManager;->initialize(Landroid/view/ViewGroup;Lcom/google/vr/ndk/base/GvrApi;)V

    :cond_b
    return-void
.end method

.method private isContextSharingEnabled()Z
    .locals 6

    .line 745
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    if-eqz v0, :cond_2

    .line 749
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->getSdkConfigurationParams()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->asyncReprojectionConfig:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 750
    iget-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->flags:Ljava/lang/Long;

    if-nez v2, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    iget-object v0, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->flags:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1

    .line 746
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GvrApi must be ready before isContextSharingEnabled is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isDeviceDetectionEnabled()Z
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->getSdkConfigurationParams()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useDeviceIdleDetection:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->getSdkConfigurationParams()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->useDeviceIdleDetection:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isDimUiEnabled()Z
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 765
    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->getSdkConfigurationParams()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->dimUiLayer:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    return v1

    .line 769
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static setPresentationFactory(Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factory"
        }
    .end annotation

    .line 690
    sput-object p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->sOptionalPresentationFactory:Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationFactory;

    return-void
.end method

.method private setStereoModeEnabledImpl(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 631
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->stereoModeEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 635
    :cond_0
    iput-boolean p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->stereoModeEnabled:Z

    .line 638
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayoutImpl;

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->setEnabled(Z)V

    .line 644
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->setEnabled(Z)V

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    if-eqz v0, :cond_2

    .line 648
    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/FadeOverlayView;->setEnabled(Z)V

    .line 650
    :cond_2
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->daydreamTouchListener:Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;

    if-eqz v0, :cond_3

    .line 651
    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->setEnabled(Z)V

    .line 653
    :cond_3
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->extensionManager:Lcom/google/vr/ndk/base/ExtensionManager;

    if-eqz v0, :cond_4

    .line 654
    invoke-interface {v0, p1}, Lcom/google/vr/ndk/base/ExtensionManager;->setEnabled(Z)V

    .line 656
    :cond_4
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->screenOnManager:Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->setEnabled(Z)V

    const/4 p1, 0x0

    .line 659
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->updateRenderingViewsVisibility(I)V

    return-void
.end method

.method private tryCreatePresentationHelper()Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;
    .locals 8

    .line 834
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-gt v0, v2, :cond_0

    return-object v1

    .line 838
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/cardboard/DisplayUtils;->getExternalDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v0, "GvrLayoutImpl"

    const-string v2, "HDMI display name could not be found, disabling external presentation support"

    .line 840
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 844
    :cond_1
    new-instance v0, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;

    .line 845
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/view/View;Lcom/google/vr/cardboard/DisplaySynchronizer;Ljava/lang/String;)V

    return-object v0
.end method

.method private updateFadeVisibility()V
    .locals 3

    .line 871
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    if-nez v0, :cond_0

    return-void

    .line 875
    :cond_0
    iget-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->autoFadeEnabled:Z

    if-nez v1, :cond_2

    .line 876
    iget-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->isResumed:Z

    if-eqz v1, :cond_1

    .line 877
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->onVisible()V

    return-void

    .line 879
    :cond_1
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->onInvisible()V

    return-void

    .line 892
    :cond_2
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->attachedToWindow:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 893
    iget-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->isResumed:Z

    if-eqz v1, :cond_4

    .line 894
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->onVisible()V

    .line 898
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->showRenderingViewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 899
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->showRenderingViewsRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    if-nez v0, :cond_5

    .line 900
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->isResumed:Z

    if-nez v0, :cond_5

    .line 901
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->onInvisible()V

    const/4 v0, 0x4

    .line 908
    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->updateRenderingViewsVisibility(I)V

    .line 910
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->showRenderingViewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method private updateRenderingViewsVisibility(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 858
    iget-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->stereoModeEnabled:Z

    if-eqz v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    if-eqz v0, :cond_3

    .line 862
    iget-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->stereoModeEnabled:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private updateUiLayout()V
    .locals 2

    .line 916
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->getViewerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 917
    :goto_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayoutImpl;

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->setDaydreamModeEnabled(Z)V

    return-void
.end method


# virtual methods
.method addPresentationListener(Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->addListener(Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationListener;)V

    :cond_0
    return-void
.end method

.method createDaydreamTouchListener()Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;
    .locals 1

    .line 728
    new-instance v0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;-><init>(Lcom/google/vr/ndk/base/GvrLayoutImpl;)V

    return-object v0
.end method

.method protected createVrCoreSdkClient(Landroid/content/Context;Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;Lcom/google/vr/ndk/base/FadeOverlayView;)Lcom/google/vr/ndk/base/VrCoreSdkClient;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "gvrApi",
            "daydreamUtils",
            "fadeOverlayView"
        }
    .end annotation

    .line 612
    invoke-static {p1}, Lcom/google/vr/cardboard/ContextUtils;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    .line 613
    new-instance v5, Lcom/google/vr/ndk/base/GvrLayoutImpl$4;

    invoke-direct {v5, p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$4;-><init>(Lcom/google/vr/ndk/base/GvrLayoutImpl;)V

    .line 620
    new-instance v7, Lcom/google/vr/ndk/base/VrCoreSdkClient;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/ndk/base/VrCoreSdkClient;-><init>(Landroid/content/Context;Lcom/google/vr/ndk/base/GvrApi;Landroid/content/ComponentName;Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;Ljava/lang/Runnable;Lcom/google/vr/ndk/base/FadeOverlayView;)V

    return-object v7
.end method

.method public enableAsyncReprojection(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 527
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 533
    iget v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->asyncReprojectionFlags:I

    const/4 v1, -0x1

    const-string v2, "GvrLayoutImpl"

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    and-int v1, v0, p1

    if-ne v1, p1, :cond_0

    const/16 p1, 0x3a

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Async reprojection already enabled with flags: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 535
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Async reprojection flags cannot be added once initialized."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    if-eqz v0, :cond_2

    return v3

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->daydreamUtils:Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->isDaydreamPhone(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    return v1

    .line 552
    :cond_3
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0, v3}, Lcom/google/vr/ndk/base/GvrApi;->setAsyncReprojectionEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "Failed to initialize async reprojection, unsupported device."

    .line 553
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 557
    :cond_4
    iput p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->asyncReprojectionFlags:I

    .line 558
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {p1}, Lcom/google/vr/ndk/base/GvrApi;->usingVrDisplayService()Z

    move-result p1

    if-nez p1, :cond_5

    .line 559
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->addScanlineRacingView()V

    :cond_5
    return v3

    .line 528
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Async reprojection may only be enabled from the UI thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enableCardboardTriggerEmulation(Ljava/lang/Runnable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cardboardTriggerListener"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 570
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->daydreamUtils:Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/vr/ndk/base/DaydreamUtilsWrapper;->isDaydreamPhone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 587
    :cond_1
    new-instance v0, Lcom/google/vr/ndk/base/CardboardEmulator;

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/google/vr/ndk/base/CardboardEmulator;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

    return v1

    .line 567
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Cardboard trigger listener must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getFadeOverlayView()Lcom/google/vr/ndk/base/FadeOverlayView;
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->fadeOverlayView:Lcom/google/vr/ndk/base/FadeOverlayView;

    return-object v0
.end method

.method public getGvrApi()Lcom/google/vr/ndk/base/GvrApi;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    return-object v0
.end method

.method public getUiLayoutImpl()Lcom/google/vr/ndk/base/GvrUiLayoutImpl;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayoutImpl;

    return-object v0
.end method

.method getVrCoreSdkClient()Lcom/google/vr/ndk/base/VrCoreSdkClient;
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    return-object v0
.end method

.method isPresenting()Z
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->isPresenting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final synthetic lambda$setStereoModeEnabled$0$GvrLayoutImpl(Z)V
    .locals 0

    .line 627
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->setStereoModeEnabledImpl(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 479
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->attachedToWindow:Z

    .line 481
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->updateFadeVisibility()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayoutImpl;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->invokeCloseButtonListener()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 496
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 497
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    invoke-virtual {p1}, Lcom/google/vr/cardboard/DisplaySynchronizer;->onConfigurationChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 486
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->attachedToWindow:Z

    .line 487
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->updateFadeVisibility()V

    .line 488
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 489
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->extensionManager:Lcom/google/vr/ndk/base/ExtensionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->getLoggingService()Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->extensionManager:Lcom/google/vr/ndk/base/ExtensionManager;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    invoke-virtual {v1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->getLoggingService()Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/vr/ndk/base/ExtensionManager;->reportTelemetry(Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->pause()V

    .line 351
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    if-eqz v0, :cond_1

    .line 352
    new-instance v1, Lcom/google/vr/ndk/base/GvrLayoutImpl$3;

    invoke-direct {v1, p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$3;-><init>(Lcom/google/vr/ndk/base/GvrLayoutImpl;)V

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 359
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->onPause()V

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;

    if-eqz v0, :cond_2

    .line 363
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->onPause()V

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->onPause()V

    .line 367
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    if-eqz v0, :cond_3

    .line 368
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->onPause()V

    .line 370
    :cond_3
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

    if-eqz v0, :cond_4

    .line 371
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/CardboardEmulator;->onPause()V

    .line 374
    :cond_4
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->extensionManager:Lcom/google/vr/ndk/base/ExtensionManager;

    if-eqz v0, :cond_5

    .line 375
    invoke-interface {v0}, Lcom/google/vr/ndk/base/ExtensionManager;->onPause()V

    .line 377
    :cond_5
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->screenOnManager:Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->onPause()V

    const/4 v0, 0x0

    .line 379
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->isResumed:Z

    .line 380
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->updateFadeVisibility()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->resume()V

    .line 388
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->daydreamTouchListener:Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->refreshViewerProfile()V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->onResume()V

    .line 392
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;

    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->onResume()V

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    if-eqz v0, :cond_2

    .line 396
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;->onResume()V

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    if-eqz v0, :cond_3

    .line 399
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->onResume()Z

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 402
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->getViewerType()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 403
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/CardboardEmulator;->onResume()V

    .line 406
    :cond_4
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->extensionManager:Lcom/google/vr/ndk/base/ExtensionManager;

    if-eqz v0, :cond_5

    .line 407
    invoke-interface {v0}, Lcom/google/vr/ndk/base/ExtensionManager;->onResume()V

    .line 409
    :cond_5
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->screenOnManager:Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->onResume()V

    .line 410
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->frameFlushWorkaround:Lcom/google/vr/ndk/base/GvrLayoutImpl$FrameFlushWorkaround;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$FrameFlushWorkaround;->onResume()V

    .line 412
    iput-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->isResumed:Z

    .line 413
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->updateFadeVisibility()V

    .line 414
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->updateUiLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->isPresenting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 513
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 325
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 326
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->updateFadeVisibility()V

    .line 327
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->isDimUiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 329
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayoutImpl;

    invoke-virtual {p1}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->delayDimmingUiLayerAfterVisible()V

    return-void

    .line 331
    :cond_0
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayoutImpl;

    invoke-virtual {p1}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->cancelDimmingUiLayer()V

    :cond_1
    return-void
.end method

.method public setPresentationView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 519
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 522
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationView:Landroid/view/View;

    return-void
.end method

.method public setReentryIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reentryIntent"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->setReentryIntent(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public setStereoModeEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 627
    new-instance v0, Lcom/google/vr/ndk/base/GvrLayoutImpl$$Lambda$0;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$$Lambda$0;-><init>(Lcom/google/vr/ndk/base/GvrLayoutImpl;Z)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->shutdown()V

    .line 437
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->daydreamTouchListener:Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->shutdown()V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->removeView(Landroid/view/View;)V

    .line 447
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayoutImpl;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrUiLayoutImpl;->getRoot()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 448
    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingRenderer:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    .line 449
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->videoSurface:Lcom/google/vr/ndk/base/ExternalSurface;

    if-eqz v1, :cond_1

    .line 450
    invoke-virtual {v1}, Lcom/google/vr/ndk/base/ExternalSurface;->shutdown()V

    .line 451
    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->videoSurface:Lcom/google/vr/ndk/base/ExternalSurface;

    .line 453
    :cond_1
    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->scanlineRacingView:Lcom/google/vr/ndk/base/GvrLayoutImpl$AsyncReprojectionSurfaceView;

    .line 454
    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationView:Landroid/view/View;

    .line 455
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;

    if-eqz v1, :cond_2

    .line 456
    invoke-virtual {v1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;->shutdown()V

    .line 457
    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->presentationHelper:Lcom/google/vr/ndk/base/GvrLayoutImpl$PresentationHelper;

    .line 459
    :cond_2
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    if-eqz v1, :cond_3

    .line 460
    invoke-virtual {v1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->onPause()V

    .line 461
    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->vrCoreSdkClient:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    .line 463
    :cond_3
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

    if-eqz v1, :cond_4

    .line 464
    invoke-virtual {v1}, Lcom/google/vr/ndk/base/CardboardEmulator;->onPause()V

    .line 465
    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->cardboardEmulator:Lcom/google/vr/ndk/base/CardboardEmulator;

    .line 467
    :cond_4
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->extensionManager:Lcom/google/vr/ndk/base/ExtensionManager;

    if-eqz v1, :cond_5

    .line 468
    invoke-interface {v1}, Lcom/google/vr/ndk/base/ExtensionManager;->shutdown()V

    .line 469
    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->extensionManager:Lcom/google/vr/ndk/base/ExtensionManager;

    .line 471
    :cond_5
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    if-eqz v1, :cond_6

    .line 472
    invoke-virtual {v1}, Lcom/google/vr/ndk/base/GvrApi;->shutdown()V

    .line 473
    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    :cond_6
    return-void
.end method
