.class Lcom/zui/gallery/trash/LenovoTrashListFragment$7;
.super Ljava/lang/Object;
.source "LenovoTrashListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashListFragment;->toast(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$7;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 605
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$7;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$7;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$400(Lcom/zui/gallery/trash/LenovoTrashListFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
