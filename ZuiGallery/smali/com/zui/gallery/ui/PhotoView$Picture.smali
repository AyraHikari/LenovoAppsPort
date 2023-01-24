.class interface abstract Lcom/zui/gallery/ui/PhotoView$Picture;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Picture"
.end annotation


# virtual methods
.method public abstract draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
.end method

.method public abstract drawThumbnail(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
.end method

.method public abstract forceSize()V
.end method

.method public abstract getSize()Lcom/zui/gallery/ui/PhotoView$Size;
.end method

.method public abstract isCamera()Z
.end method

.method public abstract isDeletable()Z
.end method

.method public abstract reload()V
.end method

.method public abstract setScreenNail(Lcom/zui/gallery/ui/ScreenNail;)V
.end method
