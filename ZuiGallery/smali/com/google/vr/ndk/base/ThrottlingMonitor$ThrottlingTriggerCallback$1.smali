.class Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback$1;
.super Ljava/lang/Object;
.source "ThrottlingMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;->onTriggerActivated(FJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;

.field final synthetic val$temperature:F

.field final synthetic val$timeRemaining:J


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;FJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$temperature",
            "val$timeRemaining"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;

    iput p2, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback$1;->val$temperature:F

    iput-wide p3, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback$1;->val$timeRemaining:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;

    invoke-static {v0}, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;->access$300(Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;)Lcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;

    move-result-object v0

    iget v1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback$1;->val$temperature:F

    iget-wide v2, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback$1;->val$timeRemaining:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;->onTemperatureEvent(FJ)V

    return-void
.end method
