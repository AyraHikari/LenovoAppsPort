.class Lcom/zui/gallery/app/GalleryActivity$13;
.super Lcom/zui/gallery/ui/SynchronizedHandler;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/GalleryActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/GalleryActivity;Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 1522
    iput-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$13;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1525
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1583
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$13;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/GalleryActivity;->getCloudTipLayoutController()Lcom/zui/gallery/cloud/CloudTipLayoutController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->showTip(Z)V

    goto :goto_0

    .line 1528
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$13;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/GalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncAllowed()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 1531
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$13;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/GalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    new-instance v0, Lcom/zui/gallery/app/GalleryActivity$13$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/GalleryActivity$13$1;-><init>(Lcom/zui/gallery/app/GalleryActivity$13;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/cloud/CloudManager;->fetchCloudAlbums(Ljava/lang/Runnable;)V

    .line 1545
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$13;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/GalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    new-instance v0, Lcom/zui/gallery/app/GalleryActivity$13$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/GalleryActivity$13$2;-><init>(Lcom/zui/gallery/app/GalleryActivity$13;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/cloud/CloudManager;->fetchCloudMedias(Ljava/lang/Runnable;)V

    .line 1579
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$13;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/GalleryActivity;->getCloudTipLayoutController()Lcom/zui/gallery/cloud/CloudTipLayoutController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->clearContent()V

    :goto_0
    return-void
.end method
