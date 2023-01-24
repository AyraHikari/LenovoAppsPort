.class Lcom/zui/gallery/trash/LenovoTrashDetailFragment$8$1;
.super Ljava/lang/Object;
.source "LenovoTrashDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashDetailFragment$8;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/trash/LenovoTrashDetailFragment$8;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashDetailFragment$8;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$8$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashDetailFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$8$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashDetailFragment$8;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$8;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->access$800(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    .line 502
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$8$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashDetailFragment$8;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$8;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$8$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashDetailFragment$8;

    iget-object v1, v1, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$8;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getContext()Landroid/content/Context;

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
