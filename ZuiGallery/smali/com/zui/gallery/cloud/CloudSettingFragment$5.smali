.class Lcom/zui/gallery/cloud/CloudSettingFragment$5;
.super Ljava/lang/Object;
.source "CloudSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cloud/CloudSettingFragment;->setupWlanSwitch()V
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

    .line 439
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$5;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 442
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 443
    new-instance p1, Lzui/app/ActionDialog$Builder;

    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$5;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    invoke-virtual {p2}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$5;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    invoke-virtual {v1}, Lcom/zui/gallery/cloud/CloudSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->getCurrentActionDialogTheme(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p1, p2, v1}, Lzui/app/ActionDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p2, 0x7f10008f

    .line 444
    invoke-virtual {p1, p2}, Lzui/app/ActionDialog$Builder;->setMessageTitle(I)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    new-instance v1, Lcom/zui/gallery/cloud/CloudSettingFragment$5$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/cloud/CloudSettingFragment$5$1;-><init>(Lcom/zui/gallery/cloud/CloudSettingFragment$5;)V

    .line 445
    invoke-virtual {p1, p2, v1}, Lzui/app/ActionDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v1, 0x0

    .line 456
    invoke-virtual {p1, p2, v1}, Lzui/app/ActionDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    .line 457
    invoke-virtual {p1}, Lzui/app/ActionDialog$Builder;->show()Lzui/app/ActionDialog;

    return v0

    .line 460
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$5;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->mAutoSyncSwitch:Lzui/preference/SwitchPreference;

    invoke-virtual {p1}, Lzui/preference/SwitchPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 461
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$5;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object p1, p1, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/zui/gallery/cloud/CloudManager;->setWlanOnly(Z)V

    .line 463
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->CLOUDSYNC:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object p2, Lcom/zui/gallery/util/AvatarUtils$Action;->WIFI_AUTO_OPEN:Lcom/zui/gallery/util/AvatarUtils$Action;

    const-string v1, ""

    invoke-static {p1, p2, v1, v0}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
