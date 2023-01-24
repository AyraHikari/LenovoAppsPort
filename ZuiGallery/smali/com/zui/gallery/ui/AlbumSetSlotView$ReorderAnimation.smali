.class public Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;
.super Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;
.source "AlbumSetSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSetSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReorderAnimation"
.end annotation


# instance fields
.field private mAlbumSetSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

.field private mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

.field private mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/AlbumSetSlotView;Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)V
    .locals 0

    .line 956
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;-><init>()V

    .line 957
    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    .line 958
    iput-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    .line 959
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;->mAlbumSetSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    const/16 p1, 0x3e8

    .line 960
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V
    .locals 8

    .line 965
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p2, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 969
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$500(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 970
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getMoreAlbumData()Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object p2

    goto :goto_0

    .line 972
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->get(I)Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    return-void

    .line 979
    :cond_1
    iget v1, p2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->srcIndex:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v1, p2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->desIndex:I

    if-eq v1, v3, :cond_2

    .line 980
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    .line 981
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    .line 983
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    iget v4, p2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->srcIndex:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 984
    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    iget p2, p2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->desIndex:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, p2, v5}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    .line 986
    iget v4, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;->mProgress:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 987
    iget v5, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;->mProgress:F

    sub-float/2addr v7, v0

    mul-float/2addr p2, v7

    add-float/2addr v5, p2

    float-to-int p2, v4

    float-to-int v0, v5

    int-to-float v1, v1

    add-float/2addr v4, v1

    float-to-int v1, v4

    int-to-float v3, v3

    add-float/2addr v5, v3

    float-to-int v3, v5

    .line 988
    invoke-virtual {p3, p2, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 989
    iget p2, p3, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-interface {p1, p2, p3, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    goto :goto_1

    .line 991
    :cond_2
    iget p2, v0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p3, v0, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-interface {p1, p2, p3, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    :goto_1
    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 996
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;->setForcePlay(Z)V

    .line 997
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$ReorderAnimation;->mAlbumSetSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->finishReorderAnimation()V

    return-void
.end method
