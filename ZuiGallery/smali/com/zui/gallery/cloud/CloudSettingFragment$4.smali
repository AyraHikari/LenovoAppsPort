.class Lcom/zui/gallery/cloud/CloudSettingFragment$4;
.super Ljava/lang/Object;
.source "CloudSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cloud/CloudSettingFragment;->setAutoSyncSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/CloudSettingFragment;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 309
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    new-instance p2, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;-><init>(Lcom/zui/gallery/cloud/CloudSettingFragment$4;)V

    invoke-virtual {p1, p2}, Lcom/zui/gallery/cloud/CloudManager;->login(Ljava/lang/Runnable;)V

    return v0

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/zui/gallery/cloud/CloudManager;->setAutoSync(Z)V

    .line 337
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, ""

    if-eqz p1, :cond_2

    .line 338
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 339
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zui.gallery.action.LOGIN_FROM_SETTING_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 342
    :cond_1
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->CLOUDSYNC:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Action;->AUTO_OPEN:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {p1, v1, p2, v0}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    .line 343
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    invoke-static {p1}, Lcom/zui/gallery/cloud/CloudSettingFragment;->access$100(Lcom/zui/gallery/cloud/CloudSettingFragment;)V

    .line 344
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    invoke-static {p1}, Lcom/zui/gallery/cloud/CloudSettingFragment;->access$200(Lcom/zui/gallery/cloud/CloudSettingFragment;)V

    goto :goto_0

    .line 347
    :cond_2
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->CLOUDSYNC:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Action;->AUTO_CLOSE:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {p1, v1, p2, v0}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    .line 348
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->mWlanSwitch:Lzui/preference/SwitchPreference;

    if-eqz p1, :cond_3

    .line 349
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->mWlanSwitch:Lzui/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Lzui/preference/SwitchPreference;->setEnabled(Z)V

    .line 351
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->mWlanSwitch:Lzui/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Lzui/preference/SwitchPreference;->setChecked(Z)V

    .line 355
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    return p1
.end method
