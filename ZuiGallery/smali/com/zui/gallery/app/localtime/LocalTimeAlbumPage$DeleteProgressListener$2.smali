.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$2;
.super Ljava/lang/Object;
.source "LocalTimeAlbumPage.java"

# interfaces
.implements Lcom/zui/gallery/anim/GLAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->onConfirmDialogDismissed(Z)V
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

    .line 1570
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---LocalTimeAlbumPage---onComplete-----mStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;

    iget v1, v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xiaodl"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;

    iget-object v0, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;

    iget-object v1, v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1579
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;

    iget v0, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->mStatus:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;

    iget-object v0, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->setGlAnimating(Z)V

    .line 1584
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;

    iget v0, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->mStatus:I

    if-ne v0, v2, :cond_1

    .line 1585
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;

    iput v1, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->mStatus:I

    return-void

    .line 1589
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;

    iput v3, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->mStatus:I

    .line 1595
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;

    iget-object v0, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->setAnimating(Z)V

    return-void
.end method

.method public onDuration(F)V
    .locals 3

    const-string/jumbo p1, "xiaodl"

    const-string v0, "---LocalTimeAlbumPage---onDuration-----"

    .line 1601
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;

    iget-object p1, p1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;

    iget-object v0, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$2500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
