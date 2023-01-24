.class public Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;
.super Lcom/zui/gallery/ui/AlbumSetSlotRenderer;
.source "AlbumSetAddSlotRenderer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlbumSetAddSlotRenderer"


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;Lcom/zui/gallery/ui/AlbumSetSlotView;Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;I)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;Lcom/zui/gallery/ui/AlbumSetSlotView;Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;I)V

    return-void
.end method


# virtual methods
.method protected drawMark(Lcom/zui/gallery/glrenderer/GLCanvas;Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;IIII)V
    .locals 6

    .line 35
    iget-boolean v1, p0, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->mNeedMark:Z

    if-nez v1, :cond_0

    return-void

    .line 36
    :cond_0
    iget-object v1, p2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    if-eqz v1, :cond_2

    .line 38
    iget-object v1, p2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->isGroupAlbum()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isSystemGroupAlbum()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->folerTopRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->folerTopRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->folerTopRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->folerTopRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->drawMark(Lcom/zui/gallery/glrenderer/GLCanvas;FFFF)V

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    int-to-float v5, p6

    .line 40
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;->drawMark(Lcom/zui/gallery/glrenderer/GLCanvas;FFFF)V

    :cond_2
    return-void
.end method
