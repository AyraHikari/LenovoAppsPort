.class Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1;
.super Ljava/lang/Object;
.source "LenovoTrashContinousListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 71
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1$1;-><init>(Lcom/zui/gallery/trash/LenovoTrashContinousListFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
