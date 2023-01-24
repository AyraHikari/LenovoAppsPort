.class public Lcom/zui/gallery/glrenderer/BitmapTexture;
.super Lcom/zui/gallery/glrenderer/UploadedTexture;
.source "BitmapTexture.java"


# instance fields
.field protected mContentBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p2}, Lcom/zui/gallery/glrenderer/UploadedTexture;-><init>(Z)V

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 38
    iput-object p1, p0, Lcom/zui/gallery/glrenderer/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public drawMixed(Lcom/zui/gallery/glrenderer/GLCanvas;IFIIII)V
    .locals 8

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 59
    invoke-interface/range {v0 .. v7}, Lcom/zui/gallery/glrenderer/GLCanvas;->drawMixed(Lcom/zui/gallery/glrenderer/BasicTexture;IFIIII)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
