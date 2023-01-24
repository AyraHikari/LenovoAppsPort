.class Lcom/zui/gallery/cloud/CloudSettingFragment$5$1;
.super Ljava/lang/Object;
.source "CloudSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cloud/CloudSettingFragment$5;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/cloud/CloudSettingFragment$5;


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/CloudSettingFragment$5;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$5$1;->this$1:Lcom/zui/gallery/cloud/CloudSettingFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 448
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$5$1;->this$1:Lcom/zui/gallery/cloud/CloudSettingFragment$5;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment$5;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->mWlanSwitch:Lzui/preference/SwitchPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lzui/preference/SwitchPreference;->setChecked(Z)V

    .line 449
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$5$1;->this$1:Lcom/zui/gallery/cloud/CloudSettingFragment$5;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment$5;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAutoSyncSwitch:Lzui/preference/SwitchPreference;

    invoke-virtual {p1}, Lzui/preference/SwitchPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 450
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$5$1;->this$1:Lcom/zui/gallery/cloud/CloudSettingFragment$5;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment$5;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/zui/gallery/cloud/CloudManager;->setWlanOnly(Z)V

    .line 452
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->CLOUDSYNC:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->WIFI_AUTO_CLOSE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const-string v1, ""

    invoke-static {p1, v0, v1, p2}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
