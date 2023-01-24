.class Lcom/zui/gallery/cloud/CloudTipLayoutController$1$1;
.super Ljava/lang/Object;
.source "CloudTipLayoutController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/cloud/CloudTipLayoutController$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/cloud/CloudTipLayoutController$1;


# direct methods
.method constructor <init>(Lcom/zui/gallery/cloud/CloudTipLayoutController$1;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController$1$1;->this$1:Lcom/zui/gallery/cloud/CloudTipLayoutController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController$1$1;->this$1:Lcom/zui/gallery/cloud/CloudTipLayoutController$1;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudTipLayoutController$1;->this$0:Lcom/zui/gallery/cloud/CloudTipLayoutController;

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->access$000(Lcom/zui/gallery/cloud/CloudTipLayoutController;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/cloud/CloudManager;->setAutoSync(Z)V

    .line 100
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController$1$1;->this$1:Lcom/zui/gallery/cloud/CloudTipLayoutController$1;

    iget-object v0, v0, Lcom/zui/gallery/cloud/CloudTipLayoutController$1;->this$0:Lcom/zui/gallery/cloud/CloudTipLayoutController;

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->access$100(Lcom/zui/gallery/cloud/CloudTipLayoutController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudTipLayoutController$1$1;->this$1:Lcom/zui/gallery/cloud/CloudTipLayoutController$1;

    iget-object v1, v1, Lcom/zui/gallery/cloud/CloudTipLayoutController$1;->this$0:Lcom/zui/gallery/cloud/CloudTipLayoutController;

    invoke-static {v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->access$100(Lcom/zui/gallery/cloud/CloudTipLayoutController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
