.class public Lcom/google/vr/ndk/base/GvrApi;
.super Ljava/lang/Object;
.source "GvrApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/GvrApi$ViewerType;,
        Lcom/google/vr/ndk/base/GvrApi$IdleListener;,
        Lcom/google/vr/ndk/base/GvrApi$Error;,
        Lcom/google/vr/ndk/base/GvrApi$PoseTracker;,
        Lcom/google/vr/ndk/base/GvrApi$Feature;
    }
.end annotation


# static fields
.field private static final IS_ROBOLECTRIC_BUILD:Z

.field private static final TAG:Ljava/lang/String;

.field private static sPoseTrackerForTesting:Lcom/google/vr/ndk/base/GvrApi$PoseTracker;


# instance fields
.field private final context:Landroid/content/Context;

.field private final displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

.field private nativeGvrContext:J

.field private final ownsNativeGvrContext:Z

.field private swapChainRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/vr/ndk/base/SwapChain;",
            ">;>;"
        }
    .end annotation
.end field

.field private userPrefs:Lcom/google/vr/ndk/base/UserPrefs;

.field private final vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    const-class v0, Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/ndk/base/GvrApi;->TAG:Ljava/lang/String;

    .line 62
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "robolectric"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/vr/ndk/base/GvrApi;->IS_ROBOLECTRIC_BUILD:Z

    :try_start_0
    const-string v0, "gvr"

    .line 127
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "nativeNonOwnedGvrContext"
        }
    .end annotation

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 247
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrApi;->context:Landroid/content/Context;

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrApi;->ownsNativeGvrContext:Z

    .line 249
    iput-wide p2, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    .line 250
    invoke-static {p1}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrApi;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    const/4 p2, 0x0

    .line 251
    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrApi;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    .line 252
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/vr/ndk/base/GvrApi;->swapChainRefs:Ljava/util/ArrayList;

    .line 254
    invoke-static {p1}, Lcom/google/vr/ndk/base/GvrApi;->setApplicationState(Landroid/content/Context;)V

    return-void

    .line 244
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid wrapped native GVR context."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/cardboard/DisplaySynchronizer;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "synchronizer"
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v0, p2

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 205
    iput-object v1, v10, Lcom/google/vr/ndk/base/GvrApi;->context:Landroid/content/Context;

    .line 206
    iput-object v0, v10, Lcom/google/vr/ndk/base/GvrApi;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    const-wide/16 v11, 0x0

    if-nez v0, :cond_0

    move-wide v3, v11

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/vr/cardboard/DisplaySynchronizer;->getNativeDisplaySynchronizer()J

    move-result-wide v2

    move-wide v3, v2

    .line 208
    :goto_0
    invoke-static {p1}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object v0

    iput-object v0, v10, Lcom/google/vr/ndk/base/GvrApi;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    .line 209
    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->readPhoneParams()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    move-result-object v0

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Lcom/google/vr/ndk/base/GvrApi;->swapChainRefs:Ljava/util/ArrayList;

    .line 213
    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrApi;->computeCurrentDisplayMetrics(Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;)Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v2, 0x1

    .line 214
    iput-boolean v2, v10, Lcom/google/vr/ndk/base/GvrApi;->ownsNativeGvrContext:Z

    .line 217
    sget-boolean v2, Lcom/google/vr/ndk/base/GvrApi;->IS_ROBOLECTRIC_BUILD:Z

    if-nez v2, :cond_2

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v9, v0, Landroid/util/DisplayMetrics;->ydpi:F

    sget-object v13, Lcom/google/vr/ndk/base/GvrApi;->sPoseTrackerForTesting:Lcom/google/vr/ndk/base/GvrApi$PoseTracker;

    move-object v0, p0

    move-object v1, v2

    move-object v2, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v13

    .line 219
    invoke-direct/range {v0 .. v9}, Lcom/google/vr/ndk/base/GvrApi;->nativeCreate(Ljava/lang/ClassLoader;Landroid/content/Context;JIIFFLcom/google/vr/ndk/base/GvrApi$PoseTracker;)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    cmp-long v0, v0, v11

    if-eqz v0, :cond_1

    goto :goto_1

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native GVR context creation failed, implementation unavailable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method static createDefaultDisplaySynchronizer(Landroid/content/Context;)Lcom/google/vr/cardboard/DisplaySynchronizer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 286
    new-instance v0, Lcom/google/vr/cardboard/DisplaySynchronizer;

    invoke-static {p0}, Lcom/google/vr/cardboard/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/vr/cardboard/DisplaySynchronizer;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    return-object v0
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    .line 413
    invoke-static {p0}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetErrorString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static native nativeAnalyticsCreateSample(J[B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeAnalytics",
            "analyticsRequestBytes"
        }
    .end annotation
.end method

.method static native nativeBufferSpecCreate(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method static native nativeBufferSpecDestroy(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBufferSpec"
        }
    .end annotation
.end method

.method static native nativeBufferSpecGetSamples(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBufferSpec"
        }
    .end annotation
.end method

.method static native nativeBufferSpecGetSize(JLandroid/graphics/Point;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeBufferSpec",
            "size"
        }
    .end annotation
.end method

.method static native nativeBufferSpecSetColorFormat(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeBufferSpec",
            "format"
        }
    .end annotation
.end method

.method static native nativeBufferSpecSetDepthStencilFormat(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeBufferSpec",
            "format"
        }
    .end annotation
.end method

.method static native nativeBufferSpecSetMultiviewLayers(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeBufferSpec",
            "numLayers"
        }
    .end annotation
.end method

.method static native nativeBufferSpecSetSamples(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeBufferSpec",
            "samples"
        }
    .end annotation
.end method

.method static native nativeBufferSpecSetSize(JII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeBufferSpec",
            "width",
            "height"
        }
    .end annotation
.end method

.method static native nativeBufferViewportCreate(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method static native nativeBufferViewportDestroy(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBufferViewport"
        }
    .end annotation
.end method

.method static native nativeBufferViewportEqual(JJ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeA",
            "nativeB"
        }
    .end annotation
.end method

.method static native nativeBufferViewportGetExternalSurfaceId(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBufferViewport"
        }
    .end annotation
.end method

.method static native nativeBufferViewportGetOpacity(J)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBufferViewport"
        }
    .end annotation
.end method

.method static native nativeBufferViewportGetReprojection(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBufferViewport"
        }
    .end annotation
.end method

.method static native nativeBufferViewportGetSourceBufferIndex(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBufferViewport"
        }
    .end annotation
.end method

.method static native nativeBufferViewportGetSourceFov(JLandroid/graphics/RectF;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeBufferViewport",
            "out"
        }
    .end annotation
.end method

.method static native nativeBufferViewportGetSourceUv(JLandroid/graphics/RectF;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeBufferViewport",
            "out"
        }
    .end annotation
.end method

.method static native nativeBufferViewportGetTargetEye(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBufferViewport"
        }
    .end annotation
.end method

.method static native nativeBufferViewportGetTransform(J[F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeBufferViewport",
            "matrix"
        }
    .end annotation
.end method

.method static native nativeBufferViewportGetVignetteFraction(JLandroid/graphics/PointF;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeBufferViewport",
            "out"
        }
    .end annotation
.end method

.method private native nativeBufferViewportListCreate(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method static native nativeBufferViewportListDestroy(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBufferViewportList"
        }
    .end annotation
.end method

.method static native nativeBufferViewportListGetItem(JIJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeBufferViewportList",
            "index",
            "nativeBufferViewport"
        }
    .end annotation
.end method

.method static native nativeBufferViewportListGetSize(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBufferViewportList"
        }
    .end annotation
.end method

.method static native nativeBufferViewportListSetItem(JIJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeBufferViewportList",
            "index",
            "nativeBufferViewport"
        }
    .end annotation
.end method

.method static native nativeBufferViewportSetExternalSurface(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeBufferViewport",
            "nativeExternalSurface"
        }
    .end annotation
.end method

.method static native nativeBufferViewportSetExternalSurfaceId(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeBufferViewport",
            "id"
        }
    .end annotation
.end method

.method static native nativeBufferViewportSetOpacity(JF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeBufferViewport",
            "opacity"
        }
    .end annotation
.end method

.method static native nativeBufferViewportSetReprojection(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeBufferViewport",
            "reprojection"
        }
    .end annotation
.end method

.method static native nativeBufferViewportSetSourceBufferIndex(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeBufferViewport",
            "index"
        }
    .end annotation
.end method

.method static native nativeBufferViewportSetSourceFov(JFFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeBufferViewport",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation
.end method

.method static native nativeBufferViewportSetSourceLayer(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeBufferViewport",
            "layerIndex"
        }
    .end annotation
.end method

.method static native nativeBufferViewportSetSourceUv(JFFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeBufferViewport",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation
.end method

.method static native nativeBufferViewportSetTargetEye(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeBufferViewport",
            "eye"
        }
    .end annotation
.end method

.method static native nativeBufferViewportSetTransform(J[F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeBufferViewport",
            "matrix"
        }
    .end annotation
.end method

.method static native nativeBufferViewportSetVignetteFraction(JFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeBufferViewport",
            "x",
            "y"
        }
    .end annotation
.end method

.method private native nativeClearError(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeComputeDistortedPoint(JI[F)[F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "eyeType",
            "uvIn"
        }
    .end annotation
.end method

.method private native nativeCreate(Ljava/lang/ClassLoader;Landroid/content/Context;JIIFFLcom/google/vr/ndk/base/GvrApi$PoseTracker;)J
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
            "classLoader",
            "context",
            "synchronizer",
            "widthPixels",
            "heightPixels",
            "xDpi",
            "yDpi",
            "optionalPoseTrackingForTesting"
        }
    .end annotation
.end method

.method private native nativeDistortToScreen(JIJ[FJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "textureId",
            "nativeBufferViewportList",
            "headSpaceFromStartSpace",
            "timeNs"
        }
    .end annotation
.end method

.method private native nativeDumpDebugData(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method static native nativeExternalSurfaceCreate(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method static native nativeExternalSurfaceCreateWithListeners(JLjava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "surfaceListener",
            "frameListener",
            "handler"
        }
    .end annotation
.end method

.method static native nativeExternalSurfaceDestroy(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBufferSpec"
        }
    .end annotation
.end method

.method static native nativeExternalSurfaceGetId(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBufferSpec"
        }
    .end annotation
.end method

.method static native nativeExternalSurfaceGetSurface(J)Landroid/view/Surface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBufferSpec"
        }
    .end annotation
.end method

.method static native nativeFrameBindBuffer(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeFrame",
            "bufferIndex"
        }
    .end annotation
.end method

.method static native nativeFrameGetBufferSize(JILandroid/graphics/Point;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeFrame",
            "bufferIndex",
            "size"
        }
    .end annotation
.end method

.method static native nativeFrameGetFramebufferObject(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeFrame",
            "bufferIndex"
        }
    .end annotation
.end method

.method static native nativeFrameSubmit(JJ[F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeFrame",
            "nativeBufferViewportList",
            "headSpaceFromStartSpace"
        }
    .end annotation
.end method

.method static native nativeFrameUnbind(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeFrame"
        }
    .end annotation
.end method

.method private native nativeGetAsyncReprojectionEnabled(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeGetBorderSizeMeters(J)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeGetError(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private static native nativeGetErrorString(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation
.end method

.method private native nativeGetEyeFromHeadMatrix(JI[F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "eye",
            "out"
        }
    .end annotation
.end method

.method private native nativeGetHeadSpaceFromStartSpaceRotation(J[FJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "outRotation",
            "timeNs"
        }
    .end annotation
.end method

.method private native nativeGetHeadSpaceFromStartSpaceTransform(J[FJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "outTransform",
            "timeNs"
        }
    .end annotation
.end method

.method private native nativeGetMaximumEffectiveRenderTargetSize(JLandroid/graphics/Point;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "size"
        }
    .end annotation
.end method

.method private native nativeGetRecommendedBufferViewports(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "nativeBufferViewportList"
        }
    .end annotation
.end method

.method private native nativeGetScreenBufferViewports(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "nativeBufferViewportList"
        }
    .end annotation
.end method

.method private native nativeGetScreenTargetSize(JLandroid/graphics/Point;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "size"
        }
    .end annotation
.end method

.method private native nativeGetUserPrefs(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeGetViewerModel(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeGetViewerType(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeGetViewerVendor(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeGetWindowBounds(J)[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeInitializeGl(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeIsFeatureSupported(JI)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "feature"
        }
    .end annotation
.end method

.method private native nativeOnPauseReprojectionThread(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeOnSurfaceChangedReprojectionThread(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeOnSurfaceCreatedReprojectionThread(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativePause(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativePauseTracking(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativePauseTrackingGetState(J)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeRecenterTracking(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeReconnectSensors(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeReleaseGvrContext(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeRenderReprojectionThread(J)Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeRequestContextSharing(JLcom/google/vr/cardboard/EglReadyListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "eglListener"
        }
    .end annotation
.end method

.method private native nativeResetTracking(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeResume(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeResumeTracking(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeResumeTrackingSetState(J[B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "trackerStateBytes"
        }
    .end annotation
.end method

.method private static native nativeSetApplicationState(Ljava/lang/ClassLoader;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "context"
        }
    .end annotation
.end method

.method private native nativeSetAsyncReprojectionEnabled(JZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "enabled"
        }
    .end annotation
.end method

.method private native nativeSetDefaultFramebufferActive(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private native nativeSetDefaultViewerProfile(JLjava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "viewerProfileUri"
        }
    .end annotation
.end method

.method private native nativeSetDisplayMetrics(JIIFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "widthPixels",
            "heightPixels",
            "xDpi",
            "yDpi"
        }
    .end annotation
.end method

.method private static native nativeSetDynamicLibraryLoadingEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method private native nativeSetIdleListener(JLcom/google/vr/ndk/base/GvrApi$IdleListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "idleListener"
        }
    .end annotation
.end method

.method private native nativeSetIgnoreManualPauseResumeTracker(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "shouldIgnore"
        }
    .end annotation
.end method

.method private native nativeSetLensOffset(JFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "x",
            "y",
            "rotation"
        }
    .end annotation
.end method

.method private native nativeSetSurfaceSize(JII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "surfaceWidthPixels",
            "surfaceHeightPixels"
        }
    .end annotation
.end method

.method private native nativeSetViewerParams(J[B)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeGvrContext",
            "serializedViewerParams"
        }
    .end annotation
.end method

.method static native nativeSwapChainAcquireFrame(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeSwapChain"
        }
    .end annotation
.end method

.method static native nativeSwapChainCreate(J[J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeContext",
            "specs"
        }
    .end annotation
.end method

.method static native nativeSwapChainDestroy(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeContext"
        }
    .end annotation
.end method

.method static native nativeSwapChainGetBufferCount(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeSwapChain"
        }
    .end annotation
.end method

.method static native nativeSwapChainGetBufferSize(JILandroid/graphics/Point;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeSwapChain",
            "bufferIndex",
            "size"
        }
    .end annotation
.end method

.method static native nativeSwapChainResizeBuffer(JIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeSwapChain",
            "bufferIndex",
            "width",
            "height"
        }
    .end annotation
.end method

.method static native nativeUserPrefsGetControllerHandedness(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeUserPrefs"
        }
    .end annotation
.end method

.method static native nativeUserPrefsGetPerformanceHudEnabled(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeUserPrefs"
        }
    .end annotation
.end method

.method static native nativeUserPrefsGetPerformanceMonitoringEnabled(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeUserPrefs"
        }
    .end annotation
.end method

.method private static native nativeUsingDynamicLibrary()Z
.end method

.method private native nativeUsingVrDisplayService(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeGvrContext"
        }
    .end annotation
.end method

.method private static setApplicationState(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1128
    sget-boolean v0, Lcom/google/vr/ndk/base/GvrApi;->IS_ROBOLECTRIC_BUILD:Z

    if-nez v0, :cond_0

    .line 1129
    const-class v0, Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetApplicationState(Ljava/lang/ClassLoader;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static setDynamicLibraryLoadingEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 164
    invoke-static {p0}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetDynamicLibraryLoadingEnabled(Z)V

    return-void
.end method

.method public static setPoseTrackerForTesting(Lcom/google/vr/ndk/base/GvrApi$PoseTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tracker"
        }
    .end annotation

    .line 144
    sput-object p0, Lcom/google/vr/ndk/base/GvrApi;->sPoseTrackerForTesting:Lcom/google/vr/ndk/base/GvrApi$PoseTracker;

    return-void
.end method

.method private setViewerParams([B)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedViewerParams"
        }
    .end annotation

    .line 1111
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetViewerParams(J[B)Z

    move-result p1

    return p1
.end method

.method public static usingDynamicLibrary(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lcom/google/vr/ndk/base/GvrApi;->setApplicationState(Landroid/content/Context;)V

    .line 187
    invoke-static {}, Lcom/google/vr/ndk/base/GvrApi;->nativeUsingDynamicLibrary()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clearError()I
    .locals 2

    .line 403
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeClearError(J)I

    move-result v0

    return v0
.end method

.method computeCurrentDisplayMetrics(Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;)Landroid/util/DisplayMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "phoneParams"
        }
    .end annotation

    .line 1056
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->displaySynchronizer:Lcom/google/vr/cardboard/DisplaySynchronizer;

    if-nez v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/vr/cardboard/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    goto :goto_0

    .line 1059
    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1061
    :goto_0
    invoke-static {v0, p1}, Lcom/google/vr/cardboard/DisplayUtils;->getDisplayMetricsLandscapeWithOverride(Landroid/view/Display;Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;)Landroid/util/DisplayMetrics;

    move-result-object p1

    return-object p1
.end method

.method public computeDistortedPoint(I[F)[F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eye",
            "uvIn"
        }
    .end annotation

    .line 956
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeComputeDistortedPoint(JI[F)[F

    move-result-object p1

    .line 957
    array-length p2, p1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    return-object p1

    .line 958
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Implementation error: invalid UV coordinates output."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public createBufferSpec()Lcom/google/vr/ndk/base/BufferSpec;
    .locals 3

    .line 481
    new-instance v0, Lcom/google/vr/ndk/base/BufferSpec;

    iget-wide v1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-static {v1, v2}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferSpecCreate(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/vr/ndk/base/BufferSpec;-><init>(J)V

    return-object v0
.end method

.method public createBufferViewport()Lcom/google/vr/ndk/base/BufferViewport;
    .locals 3

    .line 541
    new-instance v0, Lcom/google/vr/ndk/base/BufferViewport;

    iget-wide v1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-static {v1, v2}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportCreate(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/vr/ndk/base/BufferViewport;-><init>(J)V

    return-object v0
.end method

.method public createBufferViewportList()Lcom/google/vr/ndk/base/BufferViewportList;
    .locals 3

    .line 532
    new-instance v0, Lcom/google/vr/ndk/base/BufferViewportList;

    iget-wide v1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v1, v2}, Lcom/google/vr/ndk/base/GvrApi;->nativeBufferViewportListCreate(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/vr/ndk/base/BufferViewportList;-><init>(J)V

    return-object v0
.end method

.method public createExternalSurface(Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;)Lcom/google/vr/ndk/base/ExternalSurface;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "listener",
            "handler"
        }
    .end annotation

    .line 503
    new-instance v0, Lcom/google/vr/ndk/base/ExternalSurface;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/vr/ndk/base/ExternalSurface;-><init>(Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;)V

    return-object v0
.end method

.method public createSwapChain([Lcom/google/vr/ndk/base/BufferSpec;)Lcom/google/vr/ndk/base/SwapChain;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "specs"
        }
    .end annotation

    .line 510
    array-length v0, p1

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 511
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 512
    aget-object v2, p1, v1

    iget-wide v2, v2, Lcom/google/vr/ndk/base/BufferSpec;->nativeBufferSpec:J

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    :cond_0
    new-instance p1, Lcom/google/vr/ndk/base/SwapChain;

    iget-wide v1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-static {v1, v2, v0}, Lcom/google/vr/ndk/base/GvrApi;->nativeSwapChainCreate(J[J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/google/vr/ndk/base/SwapChain;-><init>(J)V

    .line 515
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->swapChainRefs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public distortToScreen(ILcom/google/vr/ndk/base/BufferViewportList;[FJ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureId",
            "bufferViewportList",
            "headSpaceFromStartSpace",
            "texturePresentationTimeNs"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    .line 617
    iget-wide v1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    iget-wide v4, p2, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    move-object v0, p0

    move v3, p1

    move-object v6, p3

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/vr/ndk/base/GvrApi;->nativeDistortToScreen(JIJ[FJ)V

    return-void

    .line 614
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Head transform must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method dumpDebugData()V
    .locals 2

    .line 439
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeDumpDebugData(J)V

    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 300
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Lcom/google/vr/ndk/base/GvrApi;->TAG:Ljava/lang/String;

    const-string v1, "GvrApi.shutdown() should be called to ensure resource cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrApi;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAsyncReprojectionEnabled()Z
    .locals 2

    .line 995
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetAsyncReprojectionEnabled(J)Z

    move-result v0

    return v0
.end method

.method public getBorderSizeMeters()F
    .locals 2

    .line 1095
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetBorderSizeMeters(J)F

    move-result v0

    return v0
.end method

.method public getError()I
    .locals 2

    .line 393
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetError(J)I

    move-result v0

    return v0
.end method

.method public getEyeFromHeadMatrix(I[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eye",
            "matrixOut"
        }
    .end annotation

    .line 923
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetEyeFromHeadMatrix(JI[F)V

    return-void
.end method

.method public getEyeFromHeadMatrix(I)[F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eye"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 911
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/ndk/base/GvrApi;->getEyeFromHeadMatrix(I[F)V

    return-object v0
.end method

.method public getHeadSpaceFromStartSpaceRotation([FJ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headSpaceFromStartSpaceRotationOut",
            "timeNs"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 676
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 680
    iget-wide v3, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetHeadSpaceFromStartSpaceRotation(J[FJ)V

    return-void

    .line 678
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid head rotation argument, must be a float[16]."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHeadSpaceFromStartSpaceTransform([FJ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headSpaceFromStartSpaceTransformOut",
            "timeNs"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 699
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 703
    iget-wide v3, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetHeadSpaceFromStartSpaceTransform(J[FJ)V

    return-void

    .line 701
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid head transform argument, must be a float[16]."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaximumEffectiveRenderTargetSize(Landroid/graphics/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 574
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetMaximumEffectiveRenderTargetSize(JLandroid/graphics/Point;)V

    return-void
.end method

.method public getNativeGvrContext()J
    .locals 2

    .line 375
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    return-wide v0
.end method

.method public getRecommendedBufferViewports(Lcom/google/vr/ndk/base/BufferViewportList;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferViewportOut"
        }
    .end annotation

    .line 549
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    iget-wide v2, p1, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetRecommendedBufferViewports(JJ)V

    return-void
.end method

.method public getScreenBufferViewports(Lcom/google/vr/ndk/base/BufferViewportList;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferViewportOut"
        }
    .end annotation

    .line 558
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    iget-wide v2, p1, Lcom/google/vr/ndk/base/BufferViewportList;->nativeBufferViewportList:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetScreenBufferViewports(JJ)V

    return-void
.end method

.method public getScreenTargetSize(Landroid/graphics/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 584
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetScreenTargetSize(JLandroid/graphics/Point;)V

    return-void
.end method

.method getSdkConfigurationParams()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/vr/ndk/base/SdkConfigurationReader;->getParams(Landroid/content/Context;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrefs()Lcom/google/vr/ndk/base/UserPrefs;
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->userPrefs:Lcom/google/vr/ndk/base/UserPrefs;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Lcom/google/vr/ndk/base/UserPrefs;

    iget-wide v1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v1, v2}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetUserPrefs(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/vr/ndk/base/UserPrefs;-><init>(J)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->userPrefs:Lcom/google/vr/ndk/base/UserPrefs;

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->userPrefs:Lcom/google/vr/ndk/base/UserPrefs;

    return-object v0
.end method

.method public getViewerModel()Ljava/lang/String;
    .locals 2

    .line 862
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetViewerModel(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewerType()I
    .locals 2

    .line 894
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetViewerType(J)I

    move-result v0

    return v0
.end method

.method public getViewerVendor()Ljava/lang/String;
    .locals 2

    .line 857
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetViewerVendor(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowBounds()[I
    .locals 3

    .line 932
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeGetWindowBounds(J)[I

    move-result-object v0

    .line 933
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    return-object v0

    .line 934
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Implementation error: invalid window bounds."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public initializeGl()V
    .locals 2

    .line 454
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeInitializeGl(J)V

    return-void
.end method

.method public isFeatureSupported(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "feature"
        }
    .end annotation

    .line 1030
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeIsFeatureSupported(JI)Z

    move-result p1

    return p1
.end method

.method public onPauseReprojectionThread()V
    .locals 2

    .line 645
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeOnPauseReprojectionThread(J)V

    return-void
.end method

.method public onSurfaceChangedReprojectionThread()V
    .locals 2

    .line 476
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeOnSurfaceChangedReprojectionThread(J)V

    return-void
.end method

.method public onSurfaceCreatedReprojectionThread()V
    .locals 2

    .line 464
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeOnSurfaceCreatedReprojectionThread(J)V

    return-void
.end method

.method pause()V
    .locals 2

    .line 330
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativePause(J)V

    return-void
.end method

.method public pauseTracking()V
    .locals 2

    .line 720
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativePauseTracking(J)V

    return-void
.end method

.method public pauseTrackingGetState()[B
    .locals 2

    .line 738
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativePauseTrackingGetState(J)[B

    move-result-object v0

    return-object v0
.end method

.method public recenterTracking()V
    .locals 2

    .line 765
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeRecenterTracking(J)V

    return-void
.end method

.method public reconnectSensors()V
    .locals 2

    .line 776
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeReconnectSensors(J)V

    return-void
.end method

.method public refreshDisplayMetrics()V
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->readPhoneParams()Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrApi;->computeCurrentDisplayMetrics(Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;)Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrApi;->setDisplayMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public refreshViewerProfile()V
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->readDeviceParams()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 851
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/GvrApi;->setViewerParams([B)Z

    :cond_0
    return-void
.end method

.method public renderReprojectionThread()Landroid/graphics/Point;
    .locals 2

    .line 634
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeRenderReprojectionThread(J)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method requestContextSharing(Lcom/google/vr/cardboard/EglReadyListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eglListener"
        }
    .end annotation

    .line 272
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeRequestContextSharing(JLcom/google/vr/cardboard/EglReadyListener;)V

    return-void
.end method

.method public resetTracking()V
    .locals 2

    .line 760
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeResetTracking(J)V

    return-void
.end method

.method resume()V
    .locals 2

    .line 339
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeResume(J)V

    return-void
.end method

.method public resumeTracking()V
    .locals 2

    .line 725
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeResumeTracking(J)V

    return-void
.end method

.method public resumeTrackingSetState([B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackerStateBytes"
        }
    .end annotation

    .line 752
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeResumeTrackingSetState(J[B)V

    return-void
.end method

.method setAsyncReprojectionEnabled(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 981
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetAsyncReprojectionEnabled(JZ)Z

    move-result p1

    return p1
.end method

.method public setDefaultFramebufferActive()V
    .locals 2

    .line 654
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetDefaultFramebufferActive(J)V

    return-void
.end method

.method public setDefaultViewerProfile(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewerProfileUri"
        }
    .end annotation

    .line 840
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetDefaultViewerProfile(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayMetrics"
        }
    .end annotation

    .line 1076
    iget-wide v1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v6, p1, Landroid/util/DisplayMetrics;->ydpi:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetDisplayMetrics(JIIFF)V

    return-void
.end method

.method setIdleListener(Lcom/google/vr/ndk/base/GvrApi$IdleListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idleListener"
        }
    .end annotation

    .line 796
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetIdleListener(JLcom/google/vr/ndk/base/GvrApi$IdleListener;)V

    return-void
.end method

.method setIgnoreManualTrackerPauseResume(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldIgnore"
        }
    .end annotation

    .line 715
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetIgnoreManualPauseResumeTracker(JZ)V

    return-void
.end method

.method public setLensOffset(FFF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "rotation"
        }
    .end annotation

    .line 1041
    iget-wide v1, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetLensOffset(JFFF)V

    return-void
.end method

.method public setSurfaceSize(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "surfaceWidthPixels",
            "surfaceHeightPixels"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-ne v2, v0, :cond_2

    .line 1019
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/vr/ndk/base/GvrApi;->nativeSetSurfaceSize(JII)V

    return-void

    .line 1015
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Custom surface dimensions should both either be zero or non-zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shutdown()V
    .locals 4

    .line 350
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->swapChainRefs:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 351
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/ndk/base/SwapChain;

    if-eqz v3, :cond_0

    .line 353
    invoke-virtual {v3}, Lcom/google/vr/ndk/base/SwapChain;->shutdown()V

    goto :goto_0

    .line 356
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrApi;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    .line 358
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrApi;->ownsNativeGvrContext:Z

    if-eqz v0, :cond_2

    .line 359
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeReleaseGvrContext(J)V

    .line 361
    :cond_2
    iput-wide v2, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    :cond_3
    return-void
.end method

.method public usingVrDisplayService()Z
    .locals 2

    .line 1123
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrApi;->nativeGvrContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/GvrApi;->nativeUsingVrDisplayService(J)Z

    move-result v0

    return v0
.end method
