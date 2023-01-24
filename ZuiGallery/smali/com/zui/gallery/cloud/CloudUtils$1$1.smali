.class Lcom/zui/gallery/cloud/CloudUtils$1$1;
.super Ljava/lang/Thread;
.source "CloudUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cloud/CloudUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/cloud/CloudUtils$1;


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/CloudUtils$1;)V
    .locals 0

    .line 842
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudUtils$1$1;->this$0:Lcom/zui/gallery/cloud/CloudUtils$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 845
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudUtils$1$1;->this$0:Lcom/zui/gallery/cloud/CloudUtils$1;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudUtils$1;->val$application:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudUtils$1$1;->this$0:Lcom/zui/gallery/cloud/CloudUtils$1;

    iget-object v1, v1, Lcom/zui/gallery/cloud/CloudUtils$1;->val$groupName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zui/gallery/cloud/CloudUtils;->getCloudAlbumIdByName(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 846
    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudUtils$1$1;->this$0:Lcom/zui/gallery/cloud/CloudUtils$1;

    iget-boolean v2, v2, Lcom/zui/gallery/cloud/CloudUtils$1;->val$isMove:Z

    if-eqz v2, :cond_0

    .line 847
    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudUtils$1$1;->this$0:Lcom/zui/gallery/cloud/CloudUtils$1;

    iget-object v2, v2, Lcom/zui/gallery/cloud/CloudUtils$1;->val$application:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/cloud/CloudUtils$1$1;->this$0:Lcom/zui/gallery/cloud/CloudUtils$1;

    iget-object v3, v3, Lcom/zui/gallery/cloud/CloudUtils$1;->val$items:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/zui/gallery/cloud/CloudManager;->cutCloudImages(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 849
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/cloud/CloudUtils$1$1;->this$0:Lcom/zui/gallery/cloud/CloudUtils$1;

    iget-object v2, v2, Lcom/zui/gallery/cloud/CloudUtils$1;->val$application:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/cloud/CloudUtils$1$1;->this$0:Lcom/zui/gallery/cloud/CloudUtils$1;

    iget-object v3, v3, Lcom/zui/gallery/cloud/CloudUtils$1;->val$items:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/zui/gallery/cloud/CloudManager;->copyCloudImages(Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
