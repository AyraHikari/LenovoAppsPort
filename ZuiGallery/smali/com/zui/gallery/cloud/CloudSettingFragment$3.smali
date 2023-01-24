.class Lcom/zui/gallery/cloud/CloudSettingFragment$3;
.super Ljava/lang/Object;
.source "CloudSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cloud/CloudSettingFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

.field final synthetic val$entry:Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/CloudSettingFragment;Ljava/lang/String;Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$3;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iput-object p2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$3;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$3;->val$entry:Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange create cloud album success, name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$3;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudSettingFragment"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$3;->val$entry:Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;

    const/4 v1, 0x0

    iput v1, v0, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->isLocalOrCloud:I

    .line 220
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$3;->this$0:Lcom/zui/gallery/cloud/CloudSettingFragment;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudSettingFragment;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$3;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudSettingFragment$3;->val$entry:Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;

    iget-object v2, v2, Lcom/zui/gallery/cloud/CloudSettingFragment$AlbumEntry;->localPath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/zui/gallery/cloud/CloudManager;->setAlbumAutoSync(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
