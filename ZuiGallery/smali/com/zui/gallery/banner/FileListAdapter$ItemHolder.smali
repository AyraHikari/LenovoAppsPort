.class public Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/banner/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolder"
.end annotation


# instance fields
.field protected fileItemLayout:Landroid/widget/RelativeLayout;

.field protected mFileVideoIcon:Landroid/widget/ImageView;

.field protected mImg:Landroid/widget/ImageView;

.field protected mItemW:I

.field protected spanCount:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 176
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0801a3

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->fileItemLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0801a7

    .line 178
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->mImg:Landroid/widget/ImageView;

    const v0, 0x7f0801ab

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->mFileVideoIcon:Landroid/widget/ImageView;

    .line 181
    iget-object p1, p0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->fileItemLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->resetWH(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method private resetWH(Landroid/widget/RelativeLayout;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 188
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

    .line 189
    :goto_0
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const v4, 0x7f06036d

    .line 191
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-eqz v0, :cond_2

    const v0, 0x7f090022

    .line 194
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->spanCount:I

    goto :goto_1

    :cond_2
    const v0, 0x7f090023

    .line 196
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->spanCount:I

    .line 199
    :goto_1
    iget v0, p0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->spanCount:I

    div-int/2addr v3, v0

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->mItemW:I

    .line 200
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 201
    iget v1, p0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->mItemW:I

    iput v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    .line 202
    iget v1, p0, Lcom/zui/gallery/banner/FileListAdapter$ItemHolder;->mItemW:I

    iput v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    .line 203
    div-int/lit8 v1, v4, 0x2

    invoke-virtual {v0, v1, v2, v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->setMargins(IIII)V

    .line 204
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
