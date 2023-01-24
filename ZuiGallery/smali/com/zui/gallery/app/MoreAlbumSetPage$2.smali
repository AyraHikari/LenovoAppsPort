.class Lcom/zui/gallery/app/MoreAlbumSetPage$2;
.super Lcom/zui/gallery/ui/SynchronizedHandler;
.source "MoreAlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MoreAlbumSetPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MoreAlbumSetPage;Lcom/zui/gallery/ui/GLRoot;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$2;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;-><init>(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 457
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 480
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$2;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$1000(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/ui/GLView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->requestLayout()V

    goto :goto_0

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 476
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$2;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$900(Lcom/zui/gallery/app/MoreAlbumSetPage;)V

    goto :goto_0

    .line 471
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$2;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$300(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lcom/zui/gallery/ui/AlbumSetSlotView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->startReorderAnimation()V

    goto :goto_0

    .line 463
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$2;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$800(Lcom/zui/gallery/app/MoreAlbumSetPage;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$2;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$800(Lcom/zui/gallery/app/MoreAlbumSetPage;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 464
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$2;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$800(Lcom/zui/gallery/app/MoreAlbumSetPage;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 466
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$2;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object p1, p1, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$2;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    goto :goto_0

    .line 459
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$2;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$700(Lcom/zui/gallery/app/MoreAlbumSetPage;I)V

    :goto_0
    return-void
.end method
