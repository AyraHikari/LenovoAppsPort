.class Lcom/zui/gallery/app/AlbumPage$7;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumPage;->onBottombarClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumPage;

.field final synthetic val$count2:I

.field final synthetic val$ids:Ljava/util/ArrayList;

.field final synthetic val$paths2:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumPage;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1388
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$7;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iput p2, p0, Lcom/zui/gallery/app/AlbumPage$7;->val$count2:I

    iput-object p3, p0, Lcom/zui/gallery/app/AlbumPage$7;->val$ids:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/zui/gallery/app/AlbumPage$7;->val$paths2:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1392
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1394
    iget p1, p0, Lcom/zui/gallery/app/AlbumPage$7;->val$count2:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-le p1, v1, :cond_0

    .line 1395
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$7;->this$0:Lcom/zui/gallery/app/AlbumPage;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage$7;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v2, v2, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v1}, Lcom/zui/gallery/app/AlbumPage;->access$802(Lcom/zui/gallery/app/AlbumPage;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1396
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$7;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$800(Lcom/zui/gallery/app/AlbumPage;)Landroid/app/ProgressDialog;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$7;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f10003a

    .line 1397
    invoke-virtual {v1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1396
    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1398
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$7;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$800(Lcom/zui/gallery/app/AlbumPage;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1399
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$7;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$800(Lcom/zui/gallery/app/AlbumPage;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1400
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$7;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$800(Lcom/zui/gallery/app/AlbumPage;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 1403
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$7;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$1900(Lcom/zui/gallery/app/AlbumPage;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$7;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumPage;->access$1900(Lcom/zui/gallery/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p2, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1406
    new-instance p1, Lcom/zui/gallery/app/AlbumPage$7$1;

    invoke-direct {p1, p0}, Lcom/zui/gallery/app/AlbumPage$7$1;-><init>(Lcom/zui/gallery/app/AlbumPage$7;)V

    .line 1417
    invoke-virtual {p1}, Lcom/zui/gallery/app/AlbumPage$7$1;->start()V

    return-void
.end method
