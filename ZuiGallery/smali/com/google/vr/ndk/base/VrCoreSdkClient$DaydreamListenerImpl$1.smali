.class Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$1;
.super Landroid/os/Handler;
.source "VrCoreSdkClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 537
    iput-object p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 540
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "VrCoreSdkClient"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 554
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    const-string p1, "Forcing fade in: VrCore unresponsive"

    .line 542
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;

    const-wide/16 v0, 0x15e

    const/high16 v3, -0x1000000

    invoke-static {p1, v2, v0, v1, v3}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->access$1300(Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;IJI)V

    return-void

    :cond_1
    const-string p1, "Forcing tracking resume: VrCore unresponsive"

    .line 549
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;->access$1400(Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    return-void
.end method
