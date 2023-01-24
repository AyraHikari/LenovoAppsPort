.class Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;
.super Ljava/lang/Object;
.source "LenovoTrashContinousListFragment.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->scanFile([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;->this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6062\u590d\u6587\u4ef6\u626b\u63cf\u5b8c\u6210 path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uri:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LenovoTrashContinousListFragment"

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;->this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    iget-object p1, p1, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->handler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 177
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;->this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    iget-object p1, p1, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4$1;

    invoke-direct {p2, p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4$1;-><init>(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
