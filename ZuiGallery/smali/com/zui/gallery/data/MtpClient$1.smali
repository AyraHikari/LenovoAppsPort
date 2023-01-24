.class Lcom/zui/gallery/data/MtpClient$1;
.super Landroid/content/BroadcastReceiver;
.source "MtpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/MtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/MtpClient;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/MtpClient;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/zui/gallery/data/MtpClient$1;->this$0:Lcom/zui/gallery/data/MtpClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "device"

    .line 76
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 77
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/zui/gallery/data/MtpClient$1;->this$0:Lcom/zui/gallery/data/MtpClient;

    invoke-static {v2}, Lcom/zui/gallery/data/MtpClient;->access$000(Lcom/zui/gallery/data/MtpClient;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 80
    :try_start_0
    iget-object v3, p0, Lcom/zui/gallery/data/MtpClient$1;->this$0:Lcom/zui/gallery/data/MtpClient;

    invoke-static {v3}, Lcom/zui/gallery/data/MtpClient;->access$000(Lcom/zui/gallery/data/MtpClient;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpDevice;

    const-string v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 82
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_0

    .line 84
    iget-object p1, p0, Lcom/zui/gallery/data/MtpClient$1;->this$0:Lcom/zui/gallery/data/MtpClient;

    invoke-static {p1, v0}, Lcom/zui/gallery/data/MtpClient;->access$100(Lcom/zui/gallery/data/MtpClient;Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_5

    .line 87
    iget-object p1, p0, Lcom/zui/gallery/data/MtpClient$1;->this$0:Lcom/zui/gallery/data/MtpClient;

    invoke-static {p1}, Lcom/zui/gallery/data/MtpClient;->access$200(Lcom/zui/gallery/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/data/MtpClient$Listener;

    .line 88
    invoke-interface {p2, v3}, Lcom/zui/gallery/data/MtpClient$Listener;->deviceAdded(Landroid/mtp/MtpDevice;)V

    goto :goto_0

    :cond_1
    const-string v4, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 91
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_5

    .line 93
    iget-object p1, p0, Lcom/zui/gallery/data/MtpClient$1;->this$0:Lcom/zui/gallery/data/MtpClient;

    invoke-static {p1}, Lcom/zui/gallery/data/MtpClient;->access$000(Lcom/zui/gallery/data/MtpClient;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p1, p0, Lcom/zui/gallery/data/MtpClient$1;->this$0:Lcom/zui/gallery/data/MtpClient;

    invoke-static {p1}, Lcom/zui/gallery/data/MtpClient;->access$300(Lcom/zui/gallery/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 95
    iget-object p1, p0, Lcom/zui/gallery/data/MtpClient$1;->this$0:Lcom/zui/gallery/data/MtpClient;

    invoke-static {p1}, Lcom/zui/gallery/data/MtpClient;->access$400(Lcom/zui/gallery/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    iget-object p1, p0, Lcom/zui/gallery/data/MtpClient$1;->this$0:Lcom/zui/gallery/data/MtpClient;

    invoke-static {p1}, Lcom/zui/gallery/data/MtpClient;->access$200(Lcom/zui/gallery/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/data/MtpClient$Listener;

    .line 97
    invoke-interface {p2, v3}, Lcom/zui/gallery/data/MtpClient$Listener;->deviceRemoved(Landroid/mtp/MtpDevice;)V

    goto :goto_1

    :cond_2
    const-string v4, "android.mtp.MtpClient.action.USB_PERMISSION"

    .line 100
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 101
    iget-object p1, p0, Lcom/zui/gallery/data/MtpClient$1;->this$0:Lcom/zui/gallery/data/MtpClient;

    invoke-static {p1}, Lcom/zui/gallery/data/MtpClient;->access$300(Lcom/zui/gallery/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string p1, "permission"

    const/4 v4, 0x0

    .line 102
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string p2, "MtpClient"

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_USB_PERMISSION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    if-nez v3, :cond_3

    .line 107
    iget-object p1, p0, Lcom/zui/gallery/data/MtpClient$1;->this$0:Lcom/zui/gallery/data/MtpClient;

    invoke-static {p1, v0}, Lcom/zui/gallery/data/MtpClient;->access$100(Lcom/zui/gallery/data/MtpClient;Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_5

    .line 110
    iget-object p1, p0, Lcom/zui/gallery/data/MtpClient$1;->this$0:Lcom/zui/gallery/data/MtpClient;

    invoke-static {p1}, Lcom/zui/gallery/data/MtpClient;->access$200(Lcom/zui/gallery/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/data/MtpClient$Listener;

    .line 111
    invoke-interface {p2, v3}, Lcom/zui/gallery/data/MtpClient$Listener;->deviceAdded(Landroid/mtp/MtpDevice;)V

    goto :goto_2

    .line 116
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/data/MtpClient$1;->this$0:Lcom/zui/gallery/data/MtpClient;

    invoke-static {p1}, Lcom/zui/gallery/data/MtpClient;->access$400(Lcom/zui/gallery/data/MtpClient;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_5
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
