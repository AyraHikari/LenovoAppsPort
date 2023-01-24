.class public Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LenovoTrashRecyclerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolder"
.end annotation


# instance fields
.field protected actionModeIcon:Landroid/widget/ImageView;

.field protected img:Landroid/widget/ImageView;

.field protected left_date:Landroid/widget/TextView;

.field protected mItemW:I

.field protected mainLayout:Landroid/widget/RelativeLayout;

.field protected spanCount:I

.field protected un_selection_part:Landroid/widget/ImageView;

.field protected video_HDR_icon:Landroid/widget/ImageView;

.field protected video_icon:Landroid/widget/ImageView;

.field protected view_selector:Landroid/view/View;

.field protected visible_layout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 765
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0801ff

    .line 766
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->mainLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f080046

    .line 767
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->actionModeIcon:Landroid/widget/ImageView;

    const v0, 0x7f0801f5

    .line 768
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->img:Landroid/widget/ImageView;

    const v0, 0x7f080213

    .line 769
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->left_date:Landroid/widget/TextView;

    const v0, 0x7f08039e

    .line 770
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->video_icon:Landroid/widget/ImageView;

    const v0, 0x7f08039c

    .line 771
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->video_HDR_icon:Landroid/widget/ImageView;

    const v0, 0x7f08038e

    .line 773
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->un_selection_part:Landroid/widget/ImageView;

    const v0, 0x7f0803a3

    .line 774
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->view_selector:Landroid/view/View;

    const v0, 0x7f0803a8

    .line 775
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->visible_layout:Landroid/widget/RelativeLayout;

    .line 776
    iget-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->resetWH(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method private resetWH(Landroid/widget/RelativeLayout;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 782
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 783
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 784
    :goto_0
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 785
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const v4, 0x7f06036d

    .line 786
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-eqz v0, :cond_2

    const v0, 0x7f090022

    .line 789
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->spanCount:I

    goto :goto_1

    :cond_2
    const v0, 0x7f090023

    .line 791
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->spanCount:I

    .line 794
    :goto_1
    iget v0, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->spanCount:I

    div-int/2addr v3, v0

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->mItemW:I

    .line 795
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 796
    iget v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->mItemW:I

    iput v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    .line 797
    iget v1, p0, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter$ItemHolder;->mItemW:I

    iput v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    .line 798
    div-int/lit8 v1, v4, 0x2

    invoke-virtual {v0, v1, v2, v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->setMargins(IIII)V

    .line 799
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
