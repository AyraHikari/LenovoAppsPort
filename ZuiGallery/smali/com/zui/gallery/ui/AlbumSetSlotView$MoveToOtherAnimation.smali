.class public Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;
.super Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;
.source "AlbumSetSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSetSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoveToOtherAnimation"
.end annotation


# instance fields
.field private mAlbumSetSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

.field private mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

.field private mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/AlbumSetSlotView;Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)V
    .locals 0

    .line 883
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSetSlotView$SlotAnimation;-><init>()V

    .line 884
    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    .line 885
    iput-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    .line 886
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mAlbumSetSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    const/16 p1, 0x3e8

    .line 887
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V
    .locals 11

    .line 892
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p2, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 896
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$500(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v1, p2, :cond_1

    .line 897
    iget p2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    int-to-float p2, p2

    iget p3, v0, Landroid/graphics/Rect;->top:I

    .line 898
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p3, v1

    int-to-float p3, p3

    .line 897
    invoke-interface {p1, p2, p3, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    .line 899
    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mProgress:F

    const/high16 p3, 0x3f000000    # 0.5f

    cmpg-float p2, p2, p3

    if-gez p2, :cond_0

    .line 900
    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mProgress:F

    sub-float p2, v3, p2

    iget p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mProgress:F

    sub-float p3, v3, p3

    invoke-interface {p1, p2, p3, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->scale(FFF)V

    goto :goto_0

    .line 902
    :cond_0
    iget p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mProgress:F

    iget p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mProgress:F

    invoke-interface {p1, p2, p3, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->scale(FFF)V

    .line 905
    :goto_0
    iget p2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    neg-int p2, p2

    int-to-float p2, p2

    iget p3, v0, Landroid/graphics/Rect;->top:I

    .line 906
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p3, v1

    neg-int p3, p3

    int-to-float p3, p3

    .line 905
    invoke-interface {p1, p2, p3, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    .line 908
    iget p2, v0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p3, v0, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-interface {p1, p2, p3, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    return-void

    .line 911
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mRenderer:Lcom/zui/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->get(I)Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    .line 918
    :cond_2
    iget v1, p2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->srcIndex:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    iget-boolean v1, p2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isSelected:Z

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 919
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v5

    .line 920
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v0

    .line 922
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    iget v6, p2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->srcIndex:I

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v6, v7}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 923
    iget-object v6, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mLayout:Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;

    invoke-static {v6}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->access$500(Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;)I

    move-result v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/zui/gallery/ui/AlbumSetSlotView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 925
    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mProgress:F

    sub-float v9, v3, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 926
    iget v8, v6, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v9

    int-to-float v0, v0

    iget v9, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mProgress:F

    sub-float v9, v3, v9

    mul-float/2addr v0, v9

    add-float/2addr v8, v0

    float-to-int v0, v7

    float-to-int v9, v8

    int-to-float v10, v1

    add-float/2addr v7, v10

    float-to-int v7, v7

    int-to-float v10, v5

    add-float/2addr v8, v10

    float-to-int v8, v8

    .line 927
    invoke-virtual {p3, v0, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 928
    iget v0, v6, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v7, v6, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v7, v5

    int-to-float v7, v7

    invoke-interface {p1, v0, v7, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    .line 929
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mProgress:F

    sub-float v0, v3, v0

    iget v7, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mProgress:F

    sub-float v7, v3, v7

    invoke-interface {p1, v0, v7, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->scale(FFF)V

    .line 930
    iget v0, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v5

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    .line 931
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mProgress:F

    sub-float v0, v3, v0

    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->setAlpha(F)V

    .line 932
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-interface {p1, v0, p3, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    .line 933
    iget p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mProgress:F

    sub-float/2addr v3, p1

    const p1, 0x3dcccccd    # 0.1f

    cmpg-float p1, v3, p1

    if-gez p1, :cond_4

    .line 934
    iput-boolean v4, p2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isMoved:Z

    goto :goto_1

    .line 937
    :cond_3
    iget p2, v0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p3, v0, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-interface {p1, p2, p3, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FFF)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotView$MoveToOtherAnimation;->mAlbumSetSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->finishMoveFolderAnimation()V

    return-void
.end method
