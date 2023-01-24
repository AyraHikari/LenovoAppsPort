.class Lcom/zui/gallery/cloud/CloudTipLayoutController$1;
.super Ljava/lang/Object;
.source "CloudTipLayoutController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cloud/CloudTipLayoutController;->refresh(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/cloud/CloudTipLayoutController;


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/CloudTipLayoutController;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController$1;->this$0:Lcom/zui/gallery/cloud/CloudTipLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 90
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController$1;->this$0:Lcom/zui/gallery/cloud/CloudTipLayoutController;

    invoke-static {p1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->access$000(Lcom/zui/gallery/cloud/CloudTipLayoutController;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController$1;->this$0:Lcom/zui/gallery/cloud/CloudTipLayoutController;

    invoke-static {p1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->access$000(Lcom/zui/gallery/cloud/CloudTipLayoutController;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/cloud/CloudManager;->setAutoSync(Z)V

    .line 93
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->CLOUDSYNC:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->COULD_IMMEDIATELY_OPEN:Lcom/zui/gallery/util/AvatarUtils$Action;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    .line 94
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController$1;->this$0:Lcom/zui/gallery/cloud/CloudTipLayoutController;

    invoke-static {p1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->access$100(Lcom/zui/gallery/cloud/CloudTipLayoutController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController$1;->this$0:Lcom/zui/gallery/cloud/CloudTipLayoutController;

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->access$100(Lcom/zui/gallery/cloud/CloudTipLayoutController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController$1;->this$0:Lcom/zui/gallery/cloud/CloudTipLayoutController;

    invoke-static {p1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->access$000(Lcom/zui/gallery/cloud/CloudTipLayoutController;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    new-instance v0, Lcom/zui/gallery/cloud/CloudTipLayoutController$1$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/cloud/CloudTipLayoutController$1$1;-><init>(Lcom/zui/gallery/cloud/CloudTipLayoutController$1;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/cloud/CloudManager;->login(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
