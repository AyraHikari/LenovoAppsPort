.class public Lcom/zui/gallery/glrenderer/FadeInTexture;
.super Lcom/zui/gallery/glrenderer/FadeTexture;
.source "FadeInTexture.java"

# interfaces
.implements Lcom/zui/gallery/glrenderer/Texture;


# static fields
.field private static final TAG:Ljava/lang/String; = "FadeInTexture"


# instance fields
.field private mBitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

.field private final mColor:I

.field private mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;


# direct methods
.method public constructor <init>(ILcom/zui/gallery/glrenderer/BitmapTexture;)V
    .locals 3

    .line 38
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/BitmapTexture;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/BitmapTexture;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/BitmapTexture;->isOpaque()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/gallery/glrenderer/FadeTexture;-><init>(IIZ)V

    .line 39
    iput p1, p0, Lcom/zui/gallery/glrenderer/FadeInTexture;->mColor:I

    .line 40
    iput-object p2, p0, Lcom/zui/gallery/glrenderer/FadeInTexture;->mBitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    return-void
.end method

.method public constructor <init>(ILcom/zui/gallery/glrenderer/TiledTexture;)V
    .locals 3

    .line 32
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/TiledTexture;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/TiledTexture;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/TiledTexture;->isOpaque()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/gallery/glrenderer/FadeTexture;-><init>(IIZ)V

    .line 33
    iput p1, p0, Lcom/zui/gallery/glrenderer/FadeInTexture;->mColor:I

    .line 34
    iput-object p2, p0, Lcom/zui/gallery/glrenderer/FadeInTexture;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    return-void
.end method


# virtual methods
.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V
    .locals 16

    move-object/from16 v0, p0

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/glrenderer/FadeInTexture;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    iget-object v2, v0, Lcom/zui/gallery/glrenderer/FadeInTexture;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    if-eqz v2, :cond_0

    .line 47
    iget v4, v0, Lcom/zui/gallery/glrenderer/FadeInTexture;->mColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/glrenderer/FadeInTexture;->getRatio()F

    move-result v5

    move-object/from16 v3, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/zui/gallery/glrenderer/TiledTexture;->drawMixed(Lcom/zui/gallery/glrenderer/GLCanvas;IFIIII)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v6, v0, Lcom/zui/gallery/glrenderer/FadeInTexture;->mBitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v6, :cond_3

    .line 49
    iget v8, v0, Lcom/zui/gallery/glrenderer/FadeInTexture;->mColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/glrenderer/FadeInTexture;->getRatio()F

    move-result v9

    move-object/from16 v7, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-virtual/range {v6 .. v13}, Lcom/zui/gallery/glrenderer/BitmapTexture;->drawMixed(Lcom/zui/gallery/glrenderer/GLCanvas;IFIIII)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v10, v0, Lcom/zui/gallery/glrenderer/FadeInTexture;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    if-eqz v10, :cond_2

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    .line 53
    invoke-virtual/range {v10 .. v15}, Lcom/zui/gallery/glrenderer/TiledTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 54
    :cond_2
    iget-object v1, v0, Lcom/zui/gallery/glrenderer/FadeInTexture;->mBitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v1, :cond_3

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 55
    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/BitmapTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/FadeInTexture;->mTexture:Lcom/zui/gallery/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/glrenderer/TiledTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/FadeInTexture;->mBitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/glrenderer/BitmapTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method
