.class public interface abstract Lcom/zui/gallery/ui/SlotView$SlotRenderer;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SlotRenderer"
.end annotation


# virtual methods
.method public abstract getItemPath(I)Lcom/zui/gallery/data/Path;
.end method

.method public abstract inSelectModel()Z
.end method

.method public abstract isInCameraAlbum()Z
.end method

.method public abstract isItemSelect(Lcom/zui/gallery/data/Path;)Z
.end method

.method public abstract onSlotSizeChanged(II)V
.end method

.method public abstract onVisibleRangeChanged(II)V
.end method

.method public abstract prepareDrawing()V
.end method

.method public abstract renderEmptyPic(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
.end method

.method public abstract renderSlot(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)I
.end method
