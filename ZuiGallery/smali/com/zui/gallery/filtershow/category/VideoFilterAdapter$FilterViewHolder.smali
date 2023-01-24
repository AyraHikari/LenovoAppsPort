.class Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VideoFilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterViewHolder"
.end annotation


# instance fields
.field private final mFilterImg:Landroid/widget/ImageView;

.field private final mFilterName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;Landroid/view/View;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;->this$0:Lcom/zui/gallery/filtershow/category/VideoFilterAdapter;

    .line 99
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0801b1

    .line 100
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;->mFilterName:Landroid/widget/TextView;

    const p1, 0x7f0801b0

    .line 101
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;->mFilterImg:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;->mFilterName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/zui/gallery/filtershow/category/VideoFilterAdapter$FilterViewHolder;->mFilterImg:Landroid/widget/ImageView;

    return-object p0
.end method
