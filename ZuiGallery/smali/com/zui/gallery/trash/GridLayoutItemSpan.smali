.class public Lcom/zui/gallery/trash/GridLayoutItemSpan;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridLayoutItemSpan.java"


# instance fields
.field private includeEdge:Z

.field private spacing:I

.field private spanCount:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 25
    iput p1, p0, Lcom/zui/gallery/trash/GridLayoutItemSpan;->spanCount:I

    .line 26
    iput p2, p0, Lcom/zui/gallery/trash/GridLayoutItemSpan;->spacing:I

    .line 27
    iput-boolean p3, p0, Lcom/zui/gallery/trash/GridLayoutItemSpan;->includeEdge:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 33
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 35
    iget p3, p0, Lcom/zui/gallery/trash/GridLayoutItemSpan;->spanCount:I

    rem-int p4, p2, p3

    .line 37
    iget-boolean v0, p0, Lcom/zui/gallery/trash/GridLayoutItemSpan;->includeEdge:Z

    if-eqz v0, :cond_1

    .line 39
    iget v0, p0, Lcom/zui/gallery/trash/GridLayoutItemSpan;->spacing:I

    mul-int v1, p4, v0

    div-int/2addr v1, p3

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    .line 41
    iget p3, p0, Lcom/zui/gallery/trash/GridLayoutItemSpan;->spacing:I

    mul-int/2addr p4, p3

    iget p3, p0, Lcom/zui/gallery/trash/GridLayoutItemSpan;->spanCount:I

    div-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 43
    iget p3, p0, Lcom/zui/gallery/trash/GridLayoutItemSpan;->spanCount:I

    if-ge p2, p3, :cond_0

    .line 44
    iget p2, p0, Lcom/zui/gallery/trash/GridLayoutItemSpan;->spacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 46
    :cond_0
    iget p2, p0, Lcom/zui/gallery/trash/GridLayoutItemSpan;->spacing:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 48
    :cond_1
    iget v0, p0, Lcom/zui/gallery/trash/GridLayoutItemSpan;->spacing:I

    mul-int/2addr v0, p4

    div-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 50
    iget p3, p0, Lcom/zui/gallery/trash/GridLayoutItemSpan;->spacing:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, p3

    iget v0, p0, Lcom/zui/gallery/trash/GridLayoutItemSpan;->spanCount:I

    div-int/2addr p4, v0

    sub-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 52
    iget p3, p0, Lcom/zui/gallery/trash/GridLayoutItemSpan;->spanCount:I

    if-lt p2, p3, :cond_2

    .line 53
    iget p2, p0, Lcom/zui/gallery/trash/GridLayoutItemSpan;->spacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_0
    return-void
.end method
