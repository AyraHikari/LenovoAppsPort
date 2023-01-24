.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4$1;
.super Ljava/lang/Object;
.source "LocalTimeAlbumPage.java"

# interfaces
.implements Lcom/zui/gallery/util/GroupUtils$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4$1;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 750
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4$1;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;

    iget-object v0, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 751
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 752
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4$1;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;

    iget-object v1, v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMemoryError()V
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4$1;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;

    iget-object v0, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 739
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 740
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4$1;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;

    iget-object v1, v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onProgress(II)V
    .locals 1

    .line 745
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4$1;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;

    iget-object p1, p1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4$1;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;

    iget-object p2, p2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 733
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4$1;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;

    iget-object v0, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4$1;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;

    iget-object v1, v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
