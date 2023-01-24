.class Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;
.super Ljava/lang/Object;
.source "LenovoTrashRecyclerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$position:I

.field final synthetic val$trashItem:Lcom/zui/gallery/trash/TrashItem;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/zui/gallery/trash/TrashItem;I)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->val$trashItem:Lcom/zui/gallery/trash/TrashItem;

    iput p4, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 377
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-boolean p1, p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->statusInActionMode:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 378
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget-object p1, p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->actionModeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    .line 379
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

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

    .line 381
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget-object p1, p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->actionModeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 382
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object p1, p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectPaths:Ljava/util/List;

    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->val$trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-static {p1}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->access$000(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;)V

    .line 384
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget-object p1, p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->un_selection_part:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->view_selector:Landroid/view/View;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget-object v1, v1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->visible_layout:Landroid/widget/RelativeLayout;

    invoke-static {p1, v0, v1, v3}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->access$100(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;Landroid/view/View;Landroid/widget/RelativeLayout;Z)V

    goto :goto_1

    .line 388
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object p1, p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->actionModeSelectPaths:Ljava/util/List;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->val$trashItem:Lcom/zui/gallery/trash/TrashItem;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 389
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-static {p1}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->access$000(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;)V

    .line 390
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget-object p1, p1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->un_selection_part:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget-object v1, v1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->view_selector:Landroid/view/View;

    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;

    iget-object v2, v2, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->visible_layout:Landroid/widget/RelativeLayout;

    invoke-static {p1, v1, v2, v0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->access$100(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;Landroid/view/View;Landroid/widget/RelativeLayout;Z)V

    goto :goto_1

    .line 395
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 396
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object v1, v1, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zui/gallery/trash/LenovoTrashDetailActivity;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 397
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 399
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-static {v2}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->access$200(Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/gallery/trash/LenovoTrashDetailFragment;->setData(Ljava/util/ArrayList;)V

    .line 400
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->val$trashItem:Lcom/zui/gallery/trash/TrashItem;

    const-string v3, "com.zui.gallery.trash_item"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 401
    iget v2, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->val$position:I

    add-int/2addr v2, v0

    const-string v0, "position"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "trash_bundle"

    .line 402
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 403
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$1;->this$0:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
