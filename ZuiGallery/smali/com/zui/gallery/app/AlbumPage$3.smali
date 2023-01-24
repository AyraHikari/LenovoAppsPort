.class Lcom/zui/gallery/app/AlbumPage$3;
.super Lcom/zui/gallery/ui/SynchronizedHandler;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumPage;Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$3;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 655
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 666
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$3;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->animDelete(Z)V

    goto :goto_0

    .line 676
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 670
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$3;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$800(Lcom/zui/gallery/app/AlbumPage;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$3;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$800(Lcom/zui/gallery/app/AlbumPage;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 671
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$3;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$800(Lcom/zui/gallery/app/AlbumPage;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 663
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$3;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 657
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$3;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/zui/gallery/app/AlbumPage;->access$700(Lcom/zui/gallery/app/AlbumPage;II)V

    :cond_4
    :goto_0
    return-void
.end method
