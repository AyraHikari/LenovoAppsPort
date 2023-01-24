.class Lcom/google/vr/audio/DeviceInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/audio/DeviceInfo;-><init>(JLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/audio/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/google/vr/audio/DeviceInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string/jumbo v0, "state"

    .line 42
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 51
    iget-object p1, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    invoke-static {p1}, Lcom/google/vr/audio/DeviceInfo;->access$000(Lcom/google/vr/audio/DeviceInfo;)J

    move-result-wide v0

    const/4 p2, 0x0

    invoke-static {p1, v0, v1, p2}, Lcom/google/vr/audio/DeviceInfo;->access$100(Lcom/google/vr/audio/DeviceInfo;JI)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    invoke-static {p1}, Lcom/google/vr/audio/DeviceInfo;->access$000(Lcom/google/vr/audio/DeviceInfo;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lcom/google/vr/audio/DeviceInfo;->access$100(Lcom/google/vr/audio/DeviceInfo;JI)V

    return-void

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/google/vr/audio/DeviceInfo$1;->this$0:Lcom/google/vr/audio/DeviceInfo;

    invoke-static {p1}, Lcom/google/vr/audio/DeviceInfo;->access$000(Lcom/google/vr/audio/DeviceInfo;)J

    move-result-wide v0

    const/4 p2, 0x2

    invoke-static {p1, v0, v1, p2}, Lcom/google/vr/audio/DeviceInfo;->access$100(Lcom/google/vr/audio/DeviceInfo;JI)V

    :cond_2
    :goto_0
    return-void
.end method
