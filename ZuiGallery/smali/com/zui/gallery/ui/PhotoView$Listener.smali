.class public interface abstract Lcom/zui/gallery/ui/PhotoView$Listener;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onActionBarAllowed(Z)V
.end method

.method public abstract onActionBarWanted()V
.end method

.method public abstract onCommitDeleteImage()V
.end method

.method public abstract onCurrentImageUpdated()V
.end method

.method public abstract onDeleteImage(Lcom/zui/gallery/data/Path;I)V
.end method

.method public abstract onFullScreenChanged(Z)V
.end method

.method public onLongPress(I)V
    .locals 0

    return-void
.end method

.method public abstract onPictureCenter(Z)V
.end method

.method public abstract onSingleTapUp(II)V
.end method

.method public abstract onUndoBarVisibilityChanged(Z)V
.end method

.method public abstract onUndoDeleteImage()V
.end method

.method public abstract setTitleInfo(I)V
.end method
