.class Lcom/zui/gallery/app/GalleryActivity$13$2$1$1;
.super Ljava/lang/Thread;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/GalleryActivity$13$2$1;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/zui/gallery/app/GalleryActivity$13$2$1;

.field final synthetic val$thumbnailCount:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/GalleryActivity$13$2$1;I)V
    .locals 0

    .line 1554
    iput-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$13$2$1$1;->this$3:Lcom/zui/gallery/app/GalleryActivity$13$2$1;

    iput p2, p0, Lcom/zui/gallery/app/GalleryActivity$13$2$1$1;->val$thumbnailCount:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1557
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity$13$2$1$1;->this$3:Lcom/zui/gallery/app/GalleryActivity$13$2$1;

    iget-object v0, v0, Lcom/zui/gallery/app/GalleryActivity$13$2$1;->this$2:Lcom/zui/gallery/app/GalleryActivity$13$2;

    iget-object v0, v0, Lcom/zui/gallery/app/GalleryActivity$13$2;->this$1:Lcom/zui/gallery/app/GalleryActivity$13;

    iget-object v0, v0, Lcom/zui/gallery/app/GalleryActivity$13;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    iget v1, p0, Lcom/zui/gallery/app/GalleryActivity$13$2$1$1;->val$thumbnailCount:I

    iget-object v2, p0, Lcom/zui/gallery/app/GalleryActivity$13$2$1$1;->this$3:Lcom/zui/gallery/app/GalleryActivity$13$2$1;

    iget-object v2, v2, Lcom/zui/gallery/app/GalleryActivity$13$2$1;->this$2:Lcom/zui/gallery/app/GalleryActivity$13$2;

    iget-object v2, v2, Lcom/zui/gallery/app/GalleryActivity$13$2;->this$1:Lcom/zui/gallery/app/GalleryActivity$13;

    iget-object v2, v2, Lcom/zui/gallery/app/GalleryActivity$13;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/cloud/CloudUtils;->runSyncAllPic(Lcom/zui/gallery/app/GalleryApp;ILandroid/app/Activity;)V

    .line 1559
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity$13$2$1$1;->this$3:Lcom/zui/gallery/app/GalleryActivity$13$2$1;

    iget-object v0, v0, Lcom/zui/gallery/app/GalleryActivity$13$2$1;->this$2:Lcom/zui/gallery/app/GalleryActivity$13$2;

    iget-object v0, v0, Lcom/zui/gallery/app/GalleryActivity$13$2;->this$1:Lcom/zui/gallery/app/GalleryActivity$13;

    iget-object v0, v0, Lcom/zui/gallery/app/GalleryActivity$13;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isDownloadAutoSyncAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1560
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity$13$2$1$1;->this$3:Lcom/zui/gallery/app/GalleryActivity$13$2$1;

    iget-object v0, v0, Lcom/zui/gallery/app/GalleryActivity$13$2$1;->this$2:Lcom/zui/gallery/app/GalleryActivity$13$2;

    iget-object v0, v0, Lcom/zui/gallery/app/GalleryActivity$13$2;->this$1:Lcom/zui/gallery/app/GalleryActivity$13;

    iget-object v0, v0, Lcom/zui/gallery/app/GalleryActivity$13;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->tryForceSync()V

    :cond_0
    return-void
.end method
