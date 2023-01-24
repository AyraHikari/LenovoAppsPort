.class Lcom/zui/gallery/app/PhotoPage$1;
.super Lcom/zui/gallery/ui/GLView;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$1;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p0}, Lcom/zui/gallery/ui/GLView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4

    .line 479
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$1;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$200(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/ui/PhotoView;

    move-result-object p1

    sub-int v0, p4, p2

    sub-int p3, p5, p3

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p3}, Lcom/zui/gallery/ui/PhotoView;->layout(IIII)V

    .line 483
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$1;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$200(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/ui/PhotoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/PhotoView;->ismFullScreenBrowse()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$1;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$300(Lcom/zui/gallery/app/PhotoPage;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 485
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$1;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$300(Lcom/zui/gallery/app/PhotoPage;)Landroid/os/Handler;

    move-result-object p1

    const/4 p3, 0x7

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 486
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$1;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$300(Lcom/zui/gallery/app/PhotoPage;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$1;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$300(Lcom/zui/gallery/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p3, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 487
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$1;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$200(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/ui/PhotoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/PhotoView;->ismFullScreenBrowse()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$1;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$300(Lcom/zui/gallery/app/PhotoPage;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 488
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$1;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$300(Lcom/zui/gallery/app/PhotoPage;)Landroid/os/Handler;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 492
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$1;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$400(Lcom/zui/gallery/app/PhotoPage;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 493
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$1;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$500(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/ui/DetailsHelper;

    move-result-object p1

    invoke-virtual {p1, p2, v1, p4, p5}, Lcom/zui/gallery/ui/DetailsHelper;->layout(IIII)V

    :cond_2
    return-void
.end method
