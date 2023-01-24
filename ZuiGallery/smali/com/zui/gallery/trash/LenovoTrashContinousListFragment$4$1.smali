.class Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4$1;
.super Ljava/lang/Object;
.source "LenovoTrashContinousListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;->this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->access$400(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)Lzui/app/ProgressDialogX;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;->this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->access$400(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)Lzui/app/ProgressDialogX;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;->this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->access$500(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;)V

    .line 184
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;->this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;

    iget-object v1, v1, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$4;->this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10020a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
