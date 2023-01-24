.class public Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VideoFilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;,
        Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$onClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mFilterBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$onClickListener;

.field private po:I

.field private videoFilterDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->po:I

    .line 26
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->videoFilterDataList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->videoFilterDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getVideoFilterDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->videoFilterDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public synthetic lambda$onBindViewHolder$0$VideoFilterAdapter(ILandroid/view/View;)V
    .locals 0

    .line 59
    iget-object p2, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->mOnClickListener:Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$onClickListener;

    invoke-interface {p2, p1}, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$onClickListener;->onClick(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->videoFilterDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    move-object v0, p1

    check-cast v0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;->access$000(Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->videoFilterDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-static {v0}, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;->access$000(Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->mFilterBitmaps:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 44
    invoke-static {v0}, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;->access$100(Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->mFilterBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    const v0, 0x7f07014a

    if-nez p2, :cond_1

    .line 48
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    :cond_1
    iget v1, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->po:I

    if-eq v1, v2, :cond_3

    if-ne v1, p2, :cond_2

    .line 52
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    :cond_3
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/zui/gallery/filtershow/category/-$$Lambda$VideoFilterAdapter$uVQZjImm7CP71R4P5rwVg5vFGFw;

    invoke-direct {v0, p0, p2}, Lcom/zui/gallery/filtershow/category/-$$Lambda$VideoFilterAdapter$uVQZjImm7CP71R4P5rwVg5vFGFw;-><init>(Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b00ed

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance p2, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;-><init>(Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setFilterBitmaps(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->mFilterBitmaps:Ljava/util/ArrayList;

    return-void
.end method

.method public setOnClickListener(Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$onClickListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->mOnClickListener:Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$onClickListener;

    return-void
.end method

.method public setPo(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->po:I

    .line 66
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;->notifyDataSetChanged()V

    return-void
.end method
