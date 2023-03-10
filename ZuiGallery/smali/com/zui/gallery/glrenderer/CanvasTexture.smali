.class abstract Lcom/zui/gallery/glrenderer/CanvasTexture;
.super Lcom/zui/gallery/glrenderer/UploadedTexture;
.source "CanvasTexture.java"


# instance fields
.field protected mCanvas:Landroid/graphics/Canvas;

.field private final mConfig:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;-><init>()V

    .line 31
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/zui/gallery/glrenderer/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/glrenderer/CanvasTexture;->setSize(II)V

    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/zui/gallery/glrenderer/CanvasTexture;->setOpaque(Z)V

    return-void
.end method


# virtual methods
.method protected abstract onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 46
    invoke-static {}, Lcom/zui/gallery/glrenderer/CanvasTexture;->inFinalizer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 38
    iget v0, p0, Lcom/zui/gallery/glrenderer/CanvasTexture;->mWidth:I

    iget v1, p0, Lcom/zui/gallery/glrenderer/CanvasTexture;->mHeight:I

    iget-object v2, p0, Lcom/zui/gallery/glrenderer/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/zui/gallery/glrenderer/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 40
    invoke-virtual {p0, v1, v0}, Lcom/zui/gallery/glrenderer/CanvasTexture;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    return-object v0
.end method
