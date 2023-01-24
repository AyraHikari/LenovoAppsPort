.class public Lcom/google/vr/cardboard/ScanlineRacingRenderer;
.super Ljava/lang/Object;
.source "ScanlineRacingRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScanlineRacingRenderer"


# instance fields
.field private final gvrApi:Lcom/google/vr/ndk/base/GvrApi;

.field private gvrSurfaceView:Lcom/google/vr/ndk/base/GvrSurfaceView;


# direct methods
.method public constructor <init>(Lcom/google/vr/ndk/base/GvrApi;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "api"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 28
    iput-object p1, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GvrApi must be supplied for proper scanline rendering"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/google/vr/cardboard/ScanlineRacingRenderer;)Lcom/google/vr/ndk/base/GvrSurfaceView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->gvrSurfaceView:Lcom/google/vr/ndk/base/GvrSurfaceView;

    return-object p0
.end method


# virtual methods
.method public onDestroySurface()V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->onPause()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gl10"
        }
    .end annotation

    .line 67
    iget-object p1, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {p1}, Lcom/google/vr/ndk/base/GvrApi;->renderReprojectionThread()Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->setSurfaceSize(II)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->onPauseReprojectionThread()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gl10",
            "i",
            "i2"
        }
    .end annotation

    .line 62
    iget-object p1, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {p1}, Lcom/google/vr/ndk/base/GvrApi;->onSurfaceChangedReprojectionThread()V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gl10",
            "eglConfig"
        }
    .end annotation

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setPriority(I)V

    .line 52
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-static {p1}, Lcom/google/vr/cardboard/AndroidNCompat;->setVrThread(I)V

    .line 54
    iget-object p1, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {p1}, Lcom/google/vr/ndk/base/GvrApi;->onSurfaceCreatedReprojectionThread()V

    return-void
.end method

.method public setSurfaceSize(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "surfaceWidthPixels",
            "surfaceHeightPixels"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/google/vr/cardboard/ScanlineRacingRenderer$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/vr/cardboard/ScanlineRacingRenderer$1;-><init>(Lcom/google/vr/cardboard/ScanlineRacingRenderer;II)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSurfaceView(Lcom/google/vr/ndk/base/GvrSurfaceView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceView"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 46
    iput-object p1, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->gvrSurfaceView:Lcom/google/vr/ndk/base/GvrSurfaceView;

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GvrSurfaceView must be supplied for proper scanline rendering"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
