.class Lcom/zui/gallery/trash/LenovoTrashDetailFragment$7;
.super Ljava/lang/Object;
.source "LenovoTrashDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$7;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 461
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$7;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->access$400(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$7;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    const v2, 0x7f10020a

    invoke-virtual {v1, v2}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$7;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    .line 462
    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->access$400(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$7;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1002c5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$7;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->access$600(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$7;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->access$700(Lcom/zui/gallery/trash/LenovoTrashDetailFragment;)V

    .line 466
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashDetailFragment$7;->this$0:Lcom/zui/gallery/trash/LenovoTrashDetailFragment;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
