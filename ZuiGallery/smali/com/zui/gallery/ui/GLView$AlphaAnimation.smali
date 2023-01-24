.class public Lcom/zui/gallery/ui/GLView$AlphaAnimation;
.super Lcom/zui/gallery/ui/GLView$BaseAnimation;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlphaAnimation"
.end annotation


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;)V
    .locals 0

    .line 577
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/GLView$BaseAnimation;-><init>(Lcom/zui/gallery/data/Path;)V

    return-void
.end method


# virtual methods
.method public animate(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V
    .locals 0

    .line 582
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView$AlphaAnimation;->isActive()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 583
    iget p2, p0, Lcom/zui/gallery/ui/GLView$AlphaAnimation;->mProgress:F

    invoke-interface {p1, p2}, Lcom/zui/gallery/glrenderer/GLCanvas;->setAlpha(F)V

    :cond_0
    return-void
.end method
