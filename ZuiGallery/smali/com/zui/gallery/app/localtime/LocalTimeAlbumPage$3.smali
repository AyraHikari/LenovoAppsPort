.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;
.super Lcom/zui/gallery/ui/SynchronizedHandler;
.source "LocalTimeAlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---LocalTimeAlbumPage---mHandler:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xiaodl"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 659
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 662
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_1

    .line 663
    new-instance p1, Lzui/app/MessageDialog$Builder;

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->getCurrentMessageDialogTheme(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 664
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    const v1, 0x7f1002aa

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzui/app/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    move-result-object p1

    .line 665
    invoke-virtual {p1, v3}, Lzui/app/MessageDialog$Builder;->setCancelable(Z)Lzui/app/MessageDialog$Builder;

    move-result-object p1

    const v0, 0x7f1002a8

    new-instance v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$2;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;)V

    .line 666
    invoke-virtual {p1, v0, v1}, Lzui/app/MessageDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    move-result-object p1

    const v0, 0x7f1002ab

    new-instance v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3$1;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;)V

    .line 702
    invoke-virtual {p1, v0, v1}, Lzui/app/MessageDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    move-result-object p1

    .line 708
    invoke-virtual {p1}, Lzui/app/MessageDialog$Builder;->create()Lzui/app/MessageDialog;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/MessageDialog;->show()V

    goto/16 :goto_0

    .line 711
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    const v0, 0x7f1002ac

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 712
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/zui/gallery/util/GroupUtils;->setGroupUpdated(Landroid/content/Context;Z)V

    .line 714
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->tryConnectCloudService()V

    goto :goto_0

    .line 721
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 651
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1802(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 652
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/app/ProgressDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    const v2, 0x7f1002a9

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 653
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 654
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 655
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 644
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 639
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;II)V

    :cond_6
    :goto_0
    return-void
.end method
