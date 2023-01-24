.class Lcom/zui/gallery/app/AlbumSetAddPage$6;
.super Lcom/zui/gallery/ui/SynchronizedHandler;
.source "AlbumSetAddPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumSetAddPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetAddPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetAddPage;Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 519
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 525
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1100(Lcom/zui/gallery/app/AlbumSetAddPage;)Lzui/app/ProgressDialogX;

    move-result-object p1

    if-nez p1, :cond_0

    .line 526
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    new-instance v0, Lzui/app/ProgressDialogX;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v2, v2, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v0, v2}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1102(Lcom/zui/gallery/app/AlbumSetAddPage;Lzui/app/ProgressDialogX;)Lzui/app/ProgressDialogX;

    .line 528
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1100(Lcom/zui/gallery/app/AlbumSetAddPage;)Lzui/app/ProgressDialogX;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/ProgressDialogX;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 529
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1100(Lcom/zui/gallery/app/AlbumSetAddPage;)Lzui/app/ProgressDialogX;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f100039

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzui/app/ProgressDialogX;->setMessage(Ljava/lang/CharSequence;)V

    .line 530
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1100(Lcom/zui/gallery/app/AlbumSetAddPage;)Lzui/app/ProgressDialogX;

    move-result-object p1

    invoke-virtual {p1, v3}, Lzui/app/ProgressDialogX;->setCancelable(Z)V

    .line 531
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1100(Lcom/zui/gallery/app/AlbumSetAddPage;)Lzui/app/ProgressDialogX;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/ProgressDialogX;->show()V

    .line 532
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1100(Lcom/zui/gallery/app/AlbumSetAddPage;)Lzui/app/ProgressDialogX;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1200(Lcom/zui/gallery/app/AlbumSetAddPage;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzui/app/ProgressDialogX;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 534
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {p1, v1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$902(Lcom/zui/gallery/app/AlbumSetAddPage;Z)Z

    goto/16 :goto_2

    .line 588
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 583
    :cond_3
    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1502(Z)Z

    .line 584
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1600(Lcom/zui/gallery/app/AlbumSetAddPage;)V

    goto/16 :goto_2

    .line 538
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v0, v3}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$902(Lcom/zui/gallery/app/AlbumSetAddPage;Z)Z

    .line 539
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1100(Lcom/zui/gallery/app/AlbumSetAddPage;)Lzui/app/ProgressDialogX;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1100(Lcom/zui/gallery/app/AlbumSetAddPage;)Lzui/app/ProgressDialogX;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 540
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1100(Lcom/zui/gallery/app/AlbumSetAddPage;)Lzui/app/ProgressDialogX;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    .line 543
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    instance-of v2, v0, Lcom/zui/gallery/app/AlbumSetAddMorePage;

    if-eqz v2, :cond_6

    .line 544
    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->removePreState()V

    .line 547
    :cond_6
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    .line 549
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1300(Lcom/zui/gallery/app/AlbumSetAddPage;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1400(Lcom/zui/gallery/app/AlbumSetAddPage;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 555
    :cond_7
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->switchTab(I)V

    .line 556
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 558
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    instance-of v0, v0, Lcom/zui/gallery/app/AlbumSetAddMorePage;

    if-eqz v0, :cond_8

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/local/all/more/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 562
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/local/all/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 564
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    .line 565
    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 567
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AlbumSetAddPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v1, "media-path"

    .line 568
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    const-class v0, Lcom/zui/gallery/app/AlbumPage;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 574
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->onBackPressed()V

    goto :goto_2

    .line 550
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v0, 0x7f1000a4

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 521
    :cond_a
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$1000(Lcom/zui/gallery/app/AlbumSetAddPage;I)V

    :cond_b
    :goto_2
    return-void
.end method
