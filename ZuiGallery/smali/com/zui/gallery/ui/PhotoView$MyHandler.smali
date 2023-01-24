.class Lcom/zui/gallery/ui/PhotoView$MyHandler;
.super Lcom/zui/gallery/ui/SynchronizedHandler;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    .line 518
    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 523
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 583
    new-instance v0, Ljava/lang/AssertionError;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 579
    :pswitch_0
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/zui/gallery/ui/PhotoView;->access$1400(Lcom/zui/gallery/ui/PhotoView;I)V

    goto/16 :goto_0

    .line 575
    :pswitch_1
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1, v1}, Lcom/zui/gallery/ui/PhotoView;->access$1400(Lcom/zui/gallery/ui/PhotoView;I)V

    goto/16 :goto_0

    .line 568
    :pswitch_2
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/PhotoView;->access$800(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/SynchronizedHandler;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/SynchronizedHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 569
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    const/4 v0, -0x5

    invoke-static {p1, v0}, Lcom/zui/gallery/ui/PhotoView;->access$172(Lcom/zui/gallery/ui/PhotoView;I)I

    .line 570
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/PhotoView;->access$1300(Lcom/zui/gallery/ui/PhotoView;)V

    goto/16 :goto_0

    .line 543
    :pswitch_3
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$700(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Listener;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/zui/gallery/data/Path;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v3, p1}, Lcom/zui/gallery/ui/PhotoView$Listener;->onDeleteImage(Lcom/zui/gallery/data/Path;I)V

    .line 553
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/PhotoView;->access$800(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/SynchronizedHandler;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/SynchronizedHandler;->removeMessages(I)V

    .line 554
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/PhotoView;->access$800(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/SynchronizedHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 555
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$800(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/SynchronizedHandler;

    move-result-object v0

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, p1, v3, v4}, Lcom/zui/gallery/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 557
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/PhotoView;->access$900(Lcom/zui/gallery/ui/PhotoView;)I

    move-result p1

    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v0}, Lcom/zui/gallery/ui/PhotoView;->access$1000(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    if-ne p1, v1, :cond_1

    .line 559
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v3}, Lcom/zui/gallery/ui/PhotoView;->access$900(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/zui/gallery/ui/PhotoView$Model;->isCamera(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    .line 560
    invoke-static {v1}, Lcom/zui/gallery/ui/PhotoView;->access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {v3}, Lcom/zui/gallery/ui/PhotoView;->access$1000(Lcom/zui/gallery/ui/PhotoView;)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/zui/gallery/ui/PhotoView$Model;->isCamera(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    if-gt p1, v0, :cond_2

    move v2, v0

    :cond_2
    invoke-static {v1, v2}, Lcom/zui/gallery/ui/PhotoView;->access$1200(Lcom/zui/gallery/ui/PhotoView;Z)V

    goto :goto_0

    .line 537
    :pswitch_4
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/zui/gallery/ui/PhotoView;->access$600(Lcom/zui/gallery/ui/PhotoView;I)V

    goto :goto_0

    .line 531
    :pswitch_5
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/PhotoView;->access$500(Lcom/zui/gallery/ui/PhotoView;)V

    goto :goto_0

    .line 525
    :pswitch_6
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/PhotoView;->access$200(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/GestureRecognizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GestureRecognizer;->cancelScale()V

    .line 526
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1}, Lcom/zui/gallery/ui/PhotoView;->access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/zui/gallery/ui/PositionController;->setExtraScalingRange(Z)V

    .line 527
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView$MyHandler;->this$0:Lcom/zui/gallery/ui/PhotoView;

    invoke-static {p1, v2}, Lcom/zui/gallery/ui/PhotoView;->access$402(Lcom/zui/gallery/ui/PhotoView;Z)Z

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
