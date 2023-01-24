.class Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;
.super Ljava/lang/Object;
.source "CloudSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cloud/CloudSettingFragment$4;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/cloud/CloudSettingFragment$4;


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/CloudSettingFragment$4;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;->this$1:Lcom/zui/gallery/cloud/CloudSettingFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;->this$1:Lcom/zui/gallery/cloud/CloudSettingFragment$4;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/cloud/CloudManager;->setAutoSync(Z)V

    .line 314
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;->this$1:Lcom/zui/gallery/cloud/CloudSettingFragment$4;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$4;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/cloud/CloudSettingFragment$4$1$1;-><init>(Lcom/zui/gallery/cloud/CloudSettingFragment$4$1;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/cloud/CloudManager;->fetchCloudAlbums(Ljava/lang/Runnable;)V

    return-void
.end method
