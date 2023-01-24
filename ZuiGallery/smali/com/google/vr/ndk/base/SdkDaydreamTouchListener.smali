.class Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;
.super Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;
.source "SdkDaydreamTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitilizationTask;,
        Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$RefreshViewerProfileTask;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SdkDaydreamTouchListener"


# instance fields
.field private final gvrApi:Lcom/google/vr/ndk/base/GvrApi;

.field private final gvrLayout:Lcom/google/vr/ndk/base/GvrLayoutImpl;

.field private final isDaydreamImageAlignmentEnabled:Z

.field private final vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/VrParamsProvider;Landroid/util/DisplayMetrics;Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;Lcom/google/vr/ndk/base/GvrApi;Lcom/google/vr/ndk/base/GvrLayoutImpl;Z)V
    .locals 0
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
            "vrParamsProvider",
            "displayMetrics",
            "phoneParams",
            "gvrApi",
            "gvrLayout",
            "isDaydreamImageAlignmentEnabled"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;-><init>()V

    .line 65
    iput-boolean p6, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->isDaydreamImageAlignmentEnabled:Z

    .line 66
    iput-object p1, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    .line 67
    iput-object p4, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 68
    iput-object p5, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayoutImpl;

    .line 70
    invoke-direct {p0, p2, p3}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->init(Landroid/util/DisplayMetrics;Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/ndk/base/GvrLayoutImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gvrLayout"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/google/vr/ndk/base/AbstractDaydreamTouchListener;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayoutImpl;

    .line 43
    invoke-virtual {p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getGvrApi()Lcom/google/vr/ndk/base/GvrApi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 45
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->getSdkConfigurationParams()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->daydreamImageAlignment:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 47
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->getSdkConfigurationParams()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->touchOverlayEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->isDaydreamImageAlignmentEnabled:Z

    .line 49
    invoke-virtual {p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    .line 52
    new-instance v0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitilizationTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitilizationTask;-><init>(Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$1;)V

    .line 53
    invoke-static {p1}, Lcom/google/vr/cardboard/DisplayUtils;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    iput-object p1, v0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitilizationTask;->display:Landroid/view/Display;

    new-array p1, v1, [Ljava/lang/Void;

    .line 54
    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$FinishInitilizationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$200(Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;)Lcom/google/vr/cardboard/VrParamsProvider;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;Landroid/util/DisplayMetrics;Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->init(Landroid/util/DisplayMetrics;Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;)V

    return-void
.end method

.method private init(Landroid/util/DisplayMetrics;Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "displayMetrics",
            "phoneParams"
        }
    .end annotation

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->initWithPhoneParams(Landroid/util/DisplayMetrics;Lcom/google/vr/sdk/proto/nano/Phone$PhoneParams;)V

    .line 141
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->refreshViewerProfile()V

    return-void
.end method


# virtual methods
.method protected isDaydreamImageAlignmentEnabled()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->isDaydreamImageAlignmentEnabled:Z

    return v0
.end method

.method protected logEvent(ILcom/google/common/logging/nano/Vr$VREvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventCode",
            "event"
        }
    .end annotation

    .line 159
    iget-object p1, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayoutImpl;

    invoke-virtual {p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getVrCoreSdkClient()Lcom/google/vr/ndk/base/VrCoreSdkClient;

    move-result-object p1

    const-string v0, "SdkDaydreamTouchListener"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayoutImpl;

    .line 160
    invoke-virtual {p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getVrCoreSdkClient()Lcom/google/vr/ndk/base/VrCoreSdkClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->getLoggingService()Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 161
    new-instance p1, Lcom/google/vr/vrcore/logging/api/VREventParcelable;

    const/16 v1, 0x7dc

    invoke-direct {p1, v1, p2}, Lcom/google/vr/vrcore/logging/api/VREventParcelable;-><init>(ILcom/google/common/logging/nano/Vr$VREvent;)V

    .line 164
    :try_start_0
    iget-object p2, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayoutImpl;

    invoke-virtual {p2}, Lcom/google/vr/ndk/base/GvrLayoutImpl;->getVrCoreSdkClient()Lcom/google/vr/ndk/base/VrCoreSdkClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->getLoggingService()Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;->log(Lcom/google/vr/vrcore/logging/api/VREventParcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Unable to log alignment event"

    .line 166
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "Unable to log alignment event; logging service not available."

    .line 169
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
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
            "e"
        }
    .end annotation

    const/4 p1, 0x0

    .line 75
    invoke-virtual {p0, p2, p1, p1}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->handleTouch(Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public refreshViewerProfile()V
    .locals 2

    .line 87
    new-instance v0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$RefreshViewerProfileTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$RefreshViewerProfileTask;-><init>(Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener$RefreshViewerProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected setLensOffset(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "rotationRadians"
        }
    .end annotation

    .line 154
    iget-object p3, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/google/vr/ndk/base/GvrApi;->setLensOffset(FFF)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/vr/ndk/base/SdkDaydreamTouchListener;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    return-void
.end method
