.class Lcom/google/vr/ndk/base/DaydreamApi$9;
.super Ljava/lang/Object;
.source "DaydreamApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/DaydreamApi;->setInhibitSystemButtons(Landroid/content/ComponentName;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/DaydreamApi;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$shouldInhibit:Z


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/DaydreamApi;ZLandroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$shouldInhibit",
            "val$componentName"
        }
    .end annotation

    .line 732
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    iput-boolean p2, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->val$shouldInhibit:Z

    iput-object p3, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->val$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 736
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "OPTION_INHIBIT_SYSTEM_BUTTONS"

    .line 737
    iget-boolean v2, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->val$shouldInhibit:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 738
    iget-object v1, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    invoke-static {v1}, Lcom/google/vr/ndk/base/DaydreamApi;->access$000(Lcom/google/vr/ndk/base/DaydreamApi;)Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->val$componentName:Landroid/content/ComponentName;

    invoke-interface {v1, v2, v0}, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;->setClientOptions(Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to set client options to inhibit system button."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 742
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteException while setting client options."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
