.class public Lcom/zui/gallery/glrenderer/FadeOutTexture;
.super Lcom/zui/gallery/glrenderer/FadeTexture;
.source "FadeOutTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FadeOutTexture"


# instance fields
.field private final mTexture:Lcom/zui/gallery/glrenderer/BasicTexture;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/glrenderer/BasicTexture;)V
    .locals 3

    .line 31
    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/BasicTexture;->isOpaque()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/gallery/glrenderer/FadeTexture;-><init>(IIZ)V

    .line 32
    iput-object p1, p0, Lcom/zui/gallery/glrenderer/FadeOutTexture;->mTexture:Lcom/zui/gallery/glrenderer/BasicTexture;

    return-void
.end method


# virtual methods
.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V
    .locals 7

    .line 37
    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/FadeOutTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 38
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 39
    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/FadeOutTexture;->getRatio()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->setAlpha(F)V

    .line 40
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/FadeOutTexture;->mTexture:Lcom/zui/gallery/glrenderer/BasicTexture;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/BasicTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 41
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    :cond_0
    return-void
.end method

.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 50
    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/FadeOutTexture;->getRatio()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->setAlpha(F)V

    .line 51
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/FadeOutTexture;->mTexture:Lcom/zui/gallery/glrenderer/BasicTexture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/glrenderer/BasicTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 52
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method
