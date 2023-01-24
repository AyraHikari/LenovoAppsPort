.class public Lcom/zui/gallery/ui/GLView$HideFolderAnimation;
.super Lcom/zui/gallery/ui/GLView$BaseAnimation;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HideFolderAnimation"
.end annotation


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;)V
    .locals 0

    .line 605
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/GLView$BaseAnimation;-><init>(Lcom/zui/gallery/data/Path;)V

    return-void
.end method


# virtual methods
.method protected animate(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public apply(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 0

    .line 611
    invoke-super {p0, p1, p2, p3}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->apply(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    neg-int p2, p3

    int-to-float p2, p2

    .line 612
    iget p3, p0, Lcom/zui/gallery/ui/GLView$HideFolderAnimation;->mProgress:F

    mul-float/2addr p2, p3

    const/4 p3, 0x0

    invoke-interface {p1, p3, p2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    return-void
.end method
