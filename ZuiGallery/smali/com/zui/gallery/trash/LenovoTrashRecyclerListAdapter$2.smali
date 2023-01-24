.class Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;
.super Ljava/lang/Object;
.source "LenovoTrashRecyclerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$trashItem:Lcom/zui/gallery/trash/TrashItem;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/zui/gallery/trash/TrashItem;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->val$trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 411
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-boolean p1, p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->statusInActionMode:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 412
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iput-boolean v0, p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->statusInActionMode:Z

    .line 413
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object p1, p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mLenovoTrashListFragment:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-virtual {p1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->startActionMode()V

    .line 415
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget-object p1, p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->actionModeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    .line 416
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget-object v1, v1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->actionModeIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget-object p1, p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->actionModeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 418
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object p1, p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectPaths:Ljava/util/List;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->val$trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget-object p1, p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->un_selection_part:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget-object v1, v1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->view_selector:Landroid/view/View;

    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget-object v2, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->visible_layout:Landroid/widget/RelativeLayout;

    invoke-static {p1, v1, v2, v3}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->access$100(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;Landroid/view/View;Landroid/widget/RelativeLayout;Z)V

    goto :goto_1

    .line 423
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object p1, p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectPaths:Ljava/util/List;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->val$trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 424
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget-object p1, p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->un_selection_part:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget-object v1, v1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->view_selector:Landroid/view/View;

    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget-object v2, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->visible_layout:Landroid/widget/RelativeLayout;

    invoke-static {p1, v1, v2, v0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->access$100(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;Landroid/view/View;Landroid/widget/RelativeLayout;Z)V

    .line 428
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$2;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-static {p1}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->access$000(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;)V

    :cond_2
    return v0
.end method
