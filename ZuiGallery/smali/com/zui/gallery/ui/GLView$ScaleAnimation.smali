.class public Lcom/zui/gallery/ui/GLView$ScaleAnimation;
.super Lcom/zui/gallery/ui/GLView$BaseAnimation;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaleAnimation"
.end annotation


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;)V
    .locals 0

    .line 591
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/GLView$BaseAnimation;-><init>(Lcom/zui/gallery/data/Path;)V

    return-void
.end method


# virtual methods
.method public animate(Lcom/zui/gallery/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V
    .locals 2

    .line 596
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget v0, p0, Lcom/zui/gallery/ui/GLView$ScaleAnimation;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    mul-float/2addr p2, v0

    .line 597
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget v0, p0, Lcom/zui/gallery/ui/GLView$ScaleAnimation;->mProgress:F

    sub-float/2addr v1, v0

    mul-float/2addr p3, v1

    .line 596
    invoke-interface {p1, p2, p3}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 598
    iget p2, p0, Lcom/zui/gallery/ui/GLView$ScaleAnimation;->mProgress:F

    iget p3, p0, Lcom/zui/gallery/ui/GLView$ScaleAnimation;->mProgress:F

    const/4 v0, 0x0

    invoke-interface {p1, p2, p3, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->scale(FFF)V

    return-void
.end method
