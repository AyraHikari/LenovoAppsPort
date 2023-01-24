.class Lcom/zui/gallery/app/PhotoPage$2;
.super Lcom/zui/gallery/ui/SynchronizedHandler;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 523
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 638
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 627
    :pswitch_1
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1, v2}, Lcom/zui/gallery/app/PhotoPage;->access$2400(Lcom/zui/gallery/app/PhotoPage;Z)V

    .line 628
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    const v0, 0x7f10024d

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 619
    :pswitch_2
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$2300(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/ui/SelectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->enterSelectionMode()V

    goto/16 :goto_3

    .line 611
    :pswitch_3
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, v3, :cond_8

    .line 612
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 613
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1, v1}, Lcom/zui/gallery/app/PhotoPage;->access$2200(Lcom/zui/gallery/app/PhotoPage;Z)V

    goto/16 :goto_3

    .line 598
    :pswitch_4
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, v3, :cond_8

    .line 599
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 600
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz v1, :cond_2

    .line 603
    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$2000(Landroid/net/Uri;)Landroid/content/Intent;

    .line 605
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$2100(Lcom/zui/gallery/data/MediaObject;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 559
    :pswitch_5
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1300(Lcom/zui/gallery/app/PhotoPage;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_3

    .line 561
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1400(Lcom/zui/gallery/app/PhotoPage;)V

    goto/16 :goto_3

    .line 563
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$300(Lcom/zui/gallery/app/PhotoPage;)Landroid/os/Handler;

    move-result-object p1

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 594
    :pswitch_6
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1400(Lcom/zui/gallery/app/PhotoPage;)V

    goto/16 :goto_3

    .line 588
    :pswitch_7
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    .line 589
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/app/PhotoPage;->access$702(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/data/MediaItem;)Lcom/zui/gallery/data/MediaItem;

    .line 590
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0, p1, v2}, Lcom/zui/gallery/app/PhotoPage;->access$1900(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/data/MediaItem;Z)V

    goto/16 :goto_3

    .line 568
    :pswitch_8
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1, v2}, Lcom/zui/gallery/app/PhotoPage;->access$1502(Lcom/zui/gallery/app/PhotoPage;Z)Z

    .line 572
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1000(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/AppBridge;

    move-result-object p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1600(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/FilterDeleteSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/FilterDeleteSet;->getTotalMediaItemCount()I

    move-result p1

    if-le p1, v1, :cond_4

    .line 573
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1700(Lcom/zui/gallery/app/PhotoPage;)V

    .line 579
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$200(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/ui/PhotoView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/PhotoView;->switchToImage(I)V

    goto/16 :goto_3

    .line 581
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1100(Lcom/zui/gallery/app/PhotoPage;)V

    .line 582
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1800(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/PhotoPage$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/zui/gallery/app/PhotoPage;->access$1900(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/data/MediaItem;Z)V

    goto/16 :goto_3

    .line 529
    :pswitch_9
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, p1, :cond_8

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$800(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/PhotoPageBottomControls;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 530
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isSoftwareForHW()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 531
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$800(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/PhotoPageBottomControls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/PhotoPageBottomControls;->refresh()V

    goto :goto_3

    .line 532
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/gallery/app/PhotoPage;->access$900(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/data/MediaItem;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 533
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$800(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/PhotoPageBottomControls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/PhotoPageBottomControls;->refreshForWeixinVideo()V

    goto :goto_3

    .line 535
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$800(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/PhotoPageBottomControls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/PhotoPageBottomControls;->refresh()V

    goto :goto_3

    .line 551
    :pswitch_a
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1200(Lcom/zui/gallery/app/PhotoPage;)V

    goto :goto_3

    .line 555
    :pswitch_b
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/ui/GLRoot;->unfreeze()V

    goto :goto_3

    .line 547
    :pswitch_c
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$1100(Lcom/zui/gallery/app/PhotoPage;)V

    goto :goto_3

    .line 541
    :pswitch_d
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$1000(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/AppBridge;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 542
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$1000(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/AppBridge;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AppBridge;->onFullScreenChanged(Z)V

    goto :goto_3

    .line 525
    :pswitch_e
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$2;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$600(Lcom/zui/gallery/app/PhotoPage;)V

    :cond_8
    :goto_3
    :pswitch_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
