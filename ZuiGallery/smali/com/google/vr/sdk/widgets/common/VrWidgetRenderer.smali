.class public abstract Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;
.super Ljava/lang/Object;
.source "VrWidgetRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$SetPureTouchTrackingRequest;,
        Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$SetStereoModeRequest;,
        Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;,
        Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final STATE_KEY_CURRENT_YAW:Ljava/lang/String; = "currentYaw"

.field private static final TAG:Ljava/lang/String;

.field public static disableRenderingForTesting:Z


# instance fields
.field private final context:Landroid/content/Context;

.field private currentYaw:F

.field private final display:Landroid/view/Display;

.field private final glThreadScheduler:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;

.field private volatile lastSetPureTouchTrackingRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$SetPureTouchTrackingRequest;

.field private volatile lastSetStereoModeRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$SetStereoModeRequest;

.field private nativeRenderer:J

.field private tmpHeadAngles:[F

.field private xMetersPerPixel:F

.field private yMetersPerPixel:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;FF)V
    .locals 1
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

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 57
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->tmpHeadAngles:[F

    .line 73
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->context:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->glThreadScheduler:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;

    .line 75
    iput p3, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->xMetersPerPixel:F

    .line 76
    iput p4, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->yMetersPerPixel:F

    const-string/jumbo p2, "window"

    .line 78
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 79
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->display:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;)J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeRenderer:J

    return-wide v0
.end method


# virtual methods
.method protected executeApiRequestOnGlThread(Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apiRequest"
        }
    .end annotation

    .line 249
    sget-boolean v0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->disableRenderingForTesting:Z

    if-eqz v0, :cond_0

    .line 250
    sget-object p1, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->TAG:Ljava/lang/String;

    const-string v0, "disableRenderingForTesting"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 254
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeRenderer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 255
    sget-object p1, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->TAG:Ljava/lang/String;

    const-string v0, "Native renderer has just been destroyed. Dropping request."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :cond_1
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;->execute()V

    :goto_0
    return-void
.end method

.method public getHeadRotation([F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "yawAndPitch"
        }
    .end annotation

    .line 198
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeRenderer:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeGetHeadRotation(J[F)V

    :cond_0
    return-void
.end method

.method protected getNativeRenderer()J
    .locals 2

    .line 161
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeRenderer:J

    return-wide v0
.end method

.method protected abstract nativeCreate(Ljava/lang/ClassLoader;Landroid/content/Context;F)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "appContext",
            "currentYaw"
        }
    .end annotation
.end method

.method protected abstract nativeDestroy(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeRenderer"
        }
    .end annotation
.end method

.method protected abstract nativeGetHeadRotation(J[F)V
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

.method protected abstract nativeOnPanningEvent(JFF)V
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

.method protected abstract nativeOnPause(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeRenderer"
        }
    .end annotation
.end method

.method protected abstract nativeOnResume(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeRenderer"
        }
    .end annotation
.end method

.method protected abstract nativeRenderFrame(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeRenderer"
        }
    .end annotation
.end method

.method protected abstract nativeResize(JIIFFI)V
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

.method protected abstract nativeSetPureTouchTracking(JZ)V
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

.method protected abstract nativeSetStereoMode(JZ)V
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

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gl"
        }
    .end annotation

    .line 142
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeRenderer:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeRenderFrame(J)V

    :cond_0
    return-void
.end method

.method public onPanningEvent(FF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "translationPixelX",
            "translationPixelY"
        }
    .end annotation

    .line 188
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeRenderer:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeOnPanningEvent(JFF)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 220
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeRenderer:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeOnPause(J)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string v0, "currentYaw"

    .line 273
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->currentYaw:F

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 232
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeRenderer:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeOnResume(J)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 262
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->updateCurrentYaw()V

    .line 266
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 267
    iget v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->currentYaw:F

    const-string v2, "currentYaw"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gl",
            "w",
            "h"
        }
    .end annotation

    .line 129
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->display:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->getScreenRotationInDegrees(I)I

    move-result v7

    .line 136
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeRenderer:J

    iget v5, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->xMetersPerPixel:F

    iget v6, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->yMetersPerPixel:F

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeResize(JIIFFI)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
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

    .line 111
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeRenderer:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeDestroy(J)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->currentYaw:F

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeCreate(Ljava/lang/ClassLoader;Landroid/content/Context;F)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeRenderer:J

    .line 119
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->lastSetPureTouchTrackingRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$SetPureTouchTrackingRequest;

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->lastSetPureTouchTrackingRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$SetPureTouchTrackingRequest;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->executeApiRequestOnGlThread(Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;)V

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->lastSetStereoModeRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$SetStereoModeRequest;

    if-eqz p1, :cond_2

    .line 123
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->lastSetStereoModeRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$SetStereoModeRequest;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->executeApiRequestOnGlThread(Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;)V

    :cond_2
    return-void
.end method

.method protected onViewDetach()V
    .locals 0

    return-void
.end method

.method protected postApiRequestToGlThread(Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "apiRequest"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->glThreadScheduler:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;

    new-instance v1, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$1;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$1;-><init>(Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;)V

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;->queueGlThreadEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPureTouchTracking(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "setPureTouchTracking"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$SetPureTouchTrackingRequest;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$SetPureTouchTrackingRequest;-><init>(Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;Z)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->lastSetPureTouchTrackingRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$SetPureTouchTrackingRequest;

    .line 102
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->lastSetPureTouchTrackingRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$SetPureTouchTrackingRequest;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->postApiRequestToGlThread(Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;)V

    return-void
.end method

.method public setStereoMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stereoMode"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$SetStereoModeRequest;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$SetStereoModeRequest;-><init>(Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;Z)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->lastSetStereoModeRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$SetStereoModeRequest;

    .line 90
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->lastSetStereoModeRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$SetStereoModeRequest;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->postApiRequestToGlThread(Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;)V

    return-void
.end method

.method public shutdown()V
    .locals 5

    .line 172
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeRenderer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 173
    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeDestroy(J)V

    .line 174
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->nativeRenderer:J

    :cond_0
    return-void
.end method

.method public updateCurrentYaw()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->tmpHeadAngles:[F

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->getHeadRotation([F)V

    .line 153
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->tmpHeadAngles:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->currentYaw:F

    return-void
.end method
