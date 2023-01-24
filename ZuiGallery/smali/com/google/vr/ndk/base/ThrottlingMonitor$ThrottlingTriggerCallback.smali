.class Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;
.super Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub;
.source "ThrottlingMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/ThrottlingMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThrottlingTriggerCallback"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final trigger:Lcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;


# direct methods
.method public constructor <init>(Lcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trigger",
            "handler"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;->trigger:Lcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;

    .line 75
    iput-object p2, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$300(Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;)Lcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;->trigger:Lcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;

    return-object p0
.end method


# virtual methods
.method public onTriggerActivated(FJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "temperature",
            "timeRemaining"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;->trigger:Lcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;->onTemperatureEvent(FJ)V

    return-void

    .line 83
    :cond_0
    new-instance v1, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback$1;-><init>(Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;FJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
