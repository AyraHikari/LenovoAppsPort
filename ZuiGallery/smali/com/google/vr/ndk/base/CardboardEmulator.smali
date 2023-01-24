.class Lcom/google/vr/ndk/base/CardboardEmulator;
.super Ljava/lang/Object;
.source "CardboardEmulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final controllerServiceBridge:Lcom/google/vr/internal/controller/ControllerServiceBridge;

.field private resumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/google/vr/ndk/base/CardboardEmulator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/ndk/base/CardboardEmulator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "cardboardTriggerCallback"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;

    invoke-direct {v0, p2}, Lcom/google/vr/ndk/base/CardboardEmulator$ControllerCallbacks;-><init>(Ljava/lang/Runnable;)V

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/ndk/base/CardboardEmulator;->createServiceBridge(Landroid/content/Context;Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;)Lcom/google/vr/internal/controller/ControllerServiceBridge;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->controllerServiceBridge:Lcom/google/vr/internal/controller/ControllerServiceBridge;

    return-void
.end method


# virtual methods
.method protected createServiceBridge(Landroid/content/Context;Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;)Lcom/google/vr/internal/controller/ControllerServiceBridge;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "callbacks"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/google/vr/internal/controller/ControllerServiceBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/vr/internal/controller/ControllerServiceBridge;-><init>(Landroid/content/Context;Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;I)V

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->resumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->resumed:Z

    .line 65
    iget-object v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->controllerServiceBridge:Lcom/google/vr/internal/controller/ControllerServiceBridge;

    invoke-virtual {v0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->requestUnbind()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->resumed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->resumed:Z

    .line 54
    iget-object v0, p0, Lcom/google/vr/ndk/base/CardboardEmulator;->controllerServiceBridge:Lcom/google/vr/internal/controller/ControllerServiceBridge;

    invoke-virtual {v0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->requestBind()V

    :cond_0
    return-void
.end method
