.class Lcom/zui/gallery/app/AlbumAddPage$3;
.super Lcom/zui/gallery/ui/SynchronizedHandler;
.source "AlbumAddPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumAddPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumAddPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumAddPage;Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$3;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 315
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 323
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$3;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumAddPage;->access$600(Lcom/zui/gallery/app/AlbumAddPage;)Lzui/app/ProgressDialogX;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$3;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumAddPage;->access$600(Lcom/zui/gallery/app/AlbumAddPage;)Lzui/app/ProgressDialogX;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/ProgressDialogX;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 324
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$3;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumAddPage;->access$600(Lcom/zui/gallery/app/AlbumAddPage;)Lzui/app/ProgressDialogX;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/ProgressDialogX;->dismiss()V

    .line 327
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$3;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->clearTasks()V

    .line 329
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$3;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/StateManager;->switchToFolderPage()V

    goto :goto_0

    .line 333
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 317
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$3;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumAddPage;->access$600(Lcom/zui/gallery/app/AlbumAddPage;)Lzui/app/ProgressDialogX;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$3;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumAddPage;->access$600(Lcom/zui/gallery/app/AlbumAddPage;)Lzui/app/ProgressDialogX;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/ProgressDialogX;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 318
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$3;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumAddPage;->access$600(Lcom/zui/gallery/app/AlbumAddPage;)Lzui/app/ProgressDialogX;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/ProgressDialogX;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method
