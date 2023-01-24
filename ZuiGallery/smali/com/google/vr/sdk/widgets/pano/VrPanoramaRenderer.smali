.class Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;
.super Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;
.source "VrPanoramaRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadImageFromByteArrayRequest;,
        Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadBitmapRequest;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile lastLoadImageRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;FF)V
    .locals 0
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

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;FF)V

    const-string p1, "panorenderer"

    .line 28
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;)J
    .locals 2

    .line 15
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->getNativeRenderer()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;JLandroid/graphics/Bitmap;Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;Lcom/google/vr/sdk/widgets/common/VrEventListener;)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->nativeLoadImageFromBitmap(JLandroid/graphics/Bitmap;Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;Lcom/google/vr/sdk/widgets/common/VrEventListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;)J
    .locals 2

    .line 15
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->getNativeRenderer()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;J[BLcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;Lcom/google/vr/sdk/widgets/common/VrEventListener;)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->nativeLoadImageFromByteArray(J[BLcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;Lcom/google/vr/sdk/widgets/common/VrEventListener;)V

    return-void
.end method

.method private native nativeLoadImageFromBitmap(JLandroid/graphics/Bitmap;Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;Lcom/google/vr/sdk/widgets/common/VrEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeRenderer",
            "bitmap",
            "options",
            "eventListener"
        }
    .end annotation
.end method

.method private native nativeLoadImageFromByteArray(J[BLcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;Lcom/google/vr/sdk/widgets/common/VrEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeRenderer",
            "encodedImageData",
            "options",
            "eventListener"
        }
    .end annotation
.end method


# virtual methods
.method public loadImageFromBitmap(Landroid/graphics/Bitmap;Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;Lcom/google/vr/sdk/widgets/common/VrEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "options",
            "eventListener"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadBitmapRequest;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadBitmapRequest;-><init>(Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;Landroid/graphics/Bitmap;Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;Lcom/google/vr/sdk/widgets/common/VrEventListener;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->lastLoadImageRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;

    .line 43
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->lastLoadImageRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->postApiRequestToGlThread(Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;)V

    return-void
.end method

.method public loadImageFromByteArray([BLcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;Lcom/google/vr/sdk/widgets/common/VrEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "jpegImageData",
            "options",
            "eventListener"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadImageFromByteArrayRequest;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadImageFromByteArrayRequest;-><init>(Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;[BLcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;Lcom/google/vr/sdk/widgets/common/VrEventListener;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->lastLoadImageRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;

    .line 58
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->lastLoadImageRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->postApiRequestToGlThread(Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;)V

    return-void
.end method

.method protected native nativeCreate(Ljava/lang/ClassLoader;Landroid/content/Context;F)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "appContext",
            "initialYaw"
        }
    .end annotation
.end method

.method protected native nativeDestroy(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeRenderer"
        }
    .end annotation
.end method

.method protected native nativeGetHeadRotation(J[F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeRenderer",
            "yawAndPitchOut"
        }
    .end annotation
.end method

.method protected native nativeOnPanningEvent(JFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeRenderer",
            "translationPixelX",
            "translationPixelY"
        }
    .end annotation
.end method

.method protected native nativeOnPause(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeRenderer"
        }
    .end annotation
.end method

.method protected native nativeOnResume(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeRenderer"
        }
    .end annotation
.end method

.method protected native nativeRenderFrame(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeRenderer"
        }
    .end annotation
.end method

.method protected native nativeResize(JIIFFI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeRenderer",
            "widthPixels",
            "heightPixels",
            "xMetersPerPixel",
            "yMetersPerPixel",
            "screenRotation"
        }
    .end annotation
.end method

.method protected native nativeSetPureTouchTracking(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeRenderer",
            "setPureTouchTracking"
        }
    .end annotation
.end method

.method protected native nativeSetStereoMode(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeRenderer",
            "stereoMode"
        }
    .end annotation
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gl",
            "config"
        }
    .end annotation

    .line 63
    invoke-super {p0, p1, p2}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 68
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->lastLoadImageRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->lastLoadImageRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->executeApiRequestOnGlThread(Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;)V

    :cond_0
    return-void
.end method
