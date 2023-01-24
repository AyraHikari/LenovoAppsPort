.class public Lcom/zui/gallery/glrenderer/NinePatchTexture;
.super Lcom/zui/gallery/glrenderer/ResourceTexture;
.source "NinePatchTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NinePatchTexture"


# instance fields
.field private mChunk:Lcom/zui/gallery/glrenderer/NinePatchChunk;

.field private mInstanceCache:Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache<",
            "Lcom/zui/gallery/glrenderer/NinePatchInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 39
    new-instance p1, Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache;-><init>(Lcom/zui/gallery/glrenderer/NinePatchTexture$1;)V

    iput-object p1, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache;

    return-void
.end method

.method private findInstance(Lcom/zui/gallery/glrenderer/GLCanvas;II)Lcom/zui/gallery/glrenderer/NinePatchInstance;
    .locals 2

    shl-int/lit8 v0, p2, 0x10

    or-int/2addr v0, p3

    .line 143
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/glrenderer/NinePatchInstance;

    if-nez v1, :cond_0

    .line 146
    new-instance v1, Lcom/zui/gallery/glrenderer/NinePatchInstance;

    invoke-direct {v1, p0, p2, p3}, Lcom/zui/gallery/glrenderer/NinePatchInstance;-><init>(Lcom/zui/gallery/glrenderer/NinePatchTexture;II)V

    .line 147
    iget-object p2, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache;

    invoke-virtual {p2, v0, v1}, Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/glrenderer/NinePatchInstance;

    if-eqz p2, :cond_0

    .line 149
    invoke-virtual {p2, p1}, Lcom/zui/gallery/glrenderer/NinePatchInstance;->recycle(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/NinePatchTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache;->clear()V

    :cond_0
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 163
    invoke-direct {p0, p1, p4, p5}, Lcom/zui/gallery/glrenderer/NinePatchTexture;->findInstance(Lcom/zui/gallery/glrenderer/GLCanvas;II)Lcom/zui/gallery/glrenderer/NinePatchInstance;

    move-result-object p4

    invoke-virtual {p4, p1, p0, p2, p3}, Lcom/zui/gallery/glrenderer/NinePatchInstance;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;Lcom/zui/gallery/glrenderer/NinePatchTexture;II)V

    :cond_1
    return-void
.end method

.method public getNinePatchChunk()Lcom/zui/gallery/glrenderer/NinePatchChunk;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mChunk:Lcom/zui/gallery/glrenderer/NinePatchChunk;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/NinePatchTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mChunk:Lcom/zui/gallery/glrenderer/NinePatchChunk;

    return-object v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mChunk:Lcom/zui/gallery/glrenderer/NinePatchChunk;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/glrenderer/NinePatchTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mChunk:Lcom/zui/gallery/glrenderer/NinePatchChunk;

    iget-object v0, v0, Lcom/zui/gallery/glrenderer/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 50
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 51
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 52
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mResId:I

    .line 52
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 55
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/zui/gallery/glrenderer/NinePatchTexture;->setSize(II)V

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/glrenderer/NinePatchChunk;->deserialize([B)Lcom/zui/gallery/glrenderer/NinePatchChunk;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mChunk:Lcom/zui/gallery/glrenderer/NinePatchChunk;

    if-eqz v1, :cond_2

    return-object v0

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid nine-patch image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public recycle()V
    .locals 4

    .line 169
    invoke-super {p0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->recycle()V

    .line 170
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mCanvasRef:Lcom/zui/gallery/glrenderer/GLCanvas;

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache;

    invoke-virtual {v1}, Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 174
    iget-object v3, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache;

    invoke-virtual {v3, v2}, Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/glrenderer/NinePatchInstance;

    .line 175
    invoke-virtual {v3, v0}, Lcom/zui/gallery/glrenderer/NinePatchInstance;->recycle(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/NinePatchTexture$SmallCache;->clear()V

    return-void
.end method
