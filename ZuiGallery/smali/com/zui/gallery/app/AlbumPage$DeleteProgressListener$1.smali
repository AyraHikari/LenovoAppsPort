.class Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener$1;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/zui/gallery/anim/GLAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->onConfirmDialogDismissed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;)V
    .locals 0

    .line 1677
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener$1;->this$1:Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1681
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener$1;->this$1:Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$100(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/app/AlbumDataLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AlbumDataLoader;->setGlAnimating(Z)V

    .line 1682
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener$1;->this$1:Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;

    iget v0, v0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->mStatus:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener$1;->this$1:Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;

    const/4 v1, 0x2

    iput v1, v0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->mStatus:I

    return-void

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener$1;->this$1:Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;

    iput v1, v0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->mStatus:I

    .line 1689
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener$1;->this$1:Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$1900(Lcom/zui/gallery/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener$1;->this$1:Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;

    iget-object v3, v3, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumPage;->access$1900(Lcom/zui/gallery/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1691
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener$1;->this$1:Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$300(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/AlbumSlotRenderer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/AlbumSlotRenderer;->setAnimating(Z)V

    return-void
.end method

.method public onDuration(F)V
    .locals 3

    .line 1697
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener$1;->this$1:Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$1900(Lcom/zui/gallery/app/AlbumPage;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener$1;->this$1:Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$1900(Lcom/zui/gallery/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
