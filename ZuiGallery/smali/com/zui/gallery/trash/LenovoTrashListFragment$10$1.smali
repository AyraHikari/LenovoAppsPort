.class Lcom/zui/gallery/trash/LenovoTrashListFragment$10$1;
.super Ljava/lang/Object;
.source "LenovoTrashListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashListFragment$10;->onResult(Lcom/zui/cloudservice/lpcs/LPCSResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/trash/LenovoTrashListFragment$10;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashListFragment$10;Ljava/util/List;)V
    .locals 0

    .line 1202
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$10$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashListFragment$10;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$10$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1206
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$10$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashListFragment$10;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashListFragment$10;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1207
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$10$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashListFragment$10;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashListFragment$10;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$500(Lcom/zui/gallery/trash/LenovoTrashListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1208
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$10$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashListFragment$10;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashListFragment$10;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-static {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$600(Lcom/zui/gallery/trash/LenovoTrashListFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1210
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$10$1;->this$1:Lcom/zui/gallery/trash/LenovoTrashListFragment$10;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashListFragment$10;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$10$1;->val$list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->setCloudItems(Ljava/util/List;)V

    return-void
.end method
