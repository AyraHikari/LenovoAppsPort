.class Lcom/zui/gallery/app/GalleryActivity$11;
.super Ljava/lang/Thread;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/GalleryActivity;->forceReloadCloudImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/GalleryActivity;)V
    .locals 0

    .line 1393
    iput-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$11;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1396
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity$11;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity$11;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/GalleryActivity;->access$000(Lcom/zui/gallery/app/GalleryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/GalleryActivity$11;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-static {v1}, Lcom/zui/gallery/app/GalleryActivity;->access$000(Lcom/zui/gallery/app/GalleryActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1398
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity$11;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-static {v0, v2}, Lcom/zui/gallery/util/GroupUtils;->setCloudTrashRecovery(Landroid/content/Context;Z)V

    return-void
.end method
