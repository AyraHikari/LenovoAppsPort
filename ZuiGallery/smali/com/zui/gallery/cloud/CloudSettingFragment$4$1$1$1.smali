.class Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1$1;
.super Ljava/lang/Object;
.source "CloudSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1;


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1$1;->this$3:Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "CloudSettingFragment"

    const-string v1, "setAutoSyncSwitch login success"

    .line 324
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1$1;->this$3:Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1;->this$2:Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;->this$1:Lcom/zui/gallery/cloud/CloudSettingFragment$4;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudSettingFragment;->access$000(Lcom/zui/gallery/cloud/CloudSettingFragment;)V

    .line 326
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1$1;->this$3:Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1;->this$2:Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;->this$1:Lcom/zui/gallery/cloud/CloudSettingFragment$4;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zui.gallery.action.LOGIN_FROM_SETTING_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
