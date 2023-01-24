.class public Lcom/zui/gallery/filtershow/pipeline/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Buffer"


# instance fields
.field private mAllocation:Landroidx/renderscript/Allocation;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field private mUseAllocation:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mUseAllocation:Z

    .line 41
    invoke-static {}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 43
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getBitmapCache()Lcom/zui/gallery/filtershow/cache/BitmapCache;

    move-result-object v1

    const/4 v2, 0x1

    .line 44
    invoke-virtual {v1, p1, v2}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->getBitmapCopy(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mBitmap:Landroid/graphics/Bitmap;

    .line 46
    :cond_0
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mUseAllocation:Z

    if-eqz p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const/16 v2, 0x81

    invoke-static {v0, p1, v1, v2}, Landroidx/renderscript/Allocation;->createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mAllocation:Landroidx/renderscript/Allocation;

    :cond_1
    return-void
.end method


# virtual methods
.method public getAllocation()Landroidx/renderscript/Allocation;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mAllocation:Landroidx/renderscript/Allocation;

    return-object v0
.end method

.method public declared-synchronized getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-object v0
.end method

.method public isSameSize(Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mBitmap:Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public remove()V
    .locals 2

    .line 112
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getBitmapCache()Lcom/zui/gallery/filtershow/cache/BitmapCache;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->cache(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setPreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->same(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->updateWith(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    goto :goto_1

    .line 105
    :cond_1
    :goto_0
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    :goto_1
    return-void
.end method

.method public sync()V
    .locals 2

    .line 94
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mUseAllocation:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mAllocation:Landroidx/renderscript/Allocation;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized useBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    monitor-enter p0

    .line 80
    :try_start_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/Buffer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
