.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$1;
.super Ljava/lang/Object;
.source "LocalTimeAlbumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->onProgressComplete(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;)V
    .locals 0

    .line 1546
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$1;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1549
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$1;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;

    iget-object v0, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    iget-object v0, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1550
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$1;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;

    iget-object v0, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$1;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;

    iget-object v1, v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
