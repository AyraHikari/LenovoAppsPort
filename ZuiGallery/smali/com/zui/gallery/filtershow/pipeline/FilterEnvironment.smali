.class public Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;
.super Ljava/lang/Object;
.source "FilterEnvironment.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FilterEnvironment"

.field public static final QUALITY_FINAL:I = 0x2

.field public static final QUALITY_ICON:I = 0x0

.field public static final QUALITY_PREVIEW:I = 0x1


# instance fields
.field private generalParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

.field private mFiltersManager:Lcom/zui/gallery/filtershow/filters/FiltersManagerInterface;

.field private mImagePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field private mPipeline:Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;

.field private mQuality:I

.field private mScaleFactor:F

.field private volatile mStop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mStop:Z

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->generalParameters:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public applyRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 121
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    if-eqz v0, :cond_0

    return-object p2

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mFiltersManager:Lcom/zui/gallery/filtershow/filters/FiltersManagerInterface;

    invoke-interface {v0, p1}, Lcom/zui/gallery/filtershow/filters/FiltersManagerInterface;->getFilterForRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/filters/ImageFilter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No ImageFilter for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FilterEnvironment"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 132
    :cond_1
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 133
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mImagePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getNvsEffectSdkContext()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->setNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    .line 134
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mImagePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getNvsEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V

    .line 135
    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->setEnvironment(Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)V

    .line 136
    iget p1, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mScaleFactor:F

    iget v1, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mQuality:I

    invoke-virtual {v0, p2, p1, v1}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p2, p1, :cond_2

    .line 138
    invoke-virtual {p0, p2}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->cache(Landroid/graphics/Bitmap;)V

    .line 140
    :cond_2
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->setGeneralParameters()V

    const/4 p2, 0x0

    .line 141
    invoke-virtual {v0, p2}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->setEnvironment(Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)V

    return-object p1
.end method

.method public applyRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mFiltersManager:Lcom/zui/gallery/filtershow/filters/FiltersManagerInterface;

    invoke-interface {v0, p1}, Lcom/zui/gallery/filtershow/filters/FiltersManagerInterface;->getFilterForRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/filters/ImageFilter;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 112
    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->setEnvironment(Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)V

    .line 113
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->supportsAllocationInput()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {v0, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->apply(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 116
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->setGeneralParameters()V

    const/4 p1, 0x0

    .line 117
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->setEnvironment(Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;)V

    return-void
.end method

.method public cache(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->cache(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method public cache(Lcom/zui/gallery/filtershow/pipeline/Buffer;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->cache(Lcom/zui/gallery/filtershow/pipeline/Buffer;)V

    return-void
.end method

.method public declared-synchronized clearGeneralParameters()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 154
    :try_start_0
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->generalParameters:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBimapCache()Lcom/zui/gallery/filtershow/cache/BitmapCache;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

    return-object v0
.end method

.method public getBitmap(III)Landroid/graphics/Bitmap;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBitmapCopy(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->getBitmapCopy(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getFiltersManager()Lcom/zui/gallery/filtershow/filters/FiltersManagerInterface;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mFiltersManager:Lcom/zui/gallery/filtershow/filters/FiltersManagerInterface;

    return-object v0
.end method

.method public declared-synchronized getGeneralParameter(I)Ljava/lang/Integer;
    .locals 2

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->generalParameters:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->generalParameters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->generalParameters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 159
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mImagePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-object v0
.end method

.method public getPipeline()Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mPipeline:Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mQuality:I

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .line 89
    iget v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mScaleFactor:F

    return v0
.end method

.method public declared-synchronized needsStop()Z
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBitmapCache(Lcom/zui/gallery/filtershow/cache/BitmapCache;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mBitmapCache:Lcom/zui/gallery/filtershow/cache/BitmapCache;

    return-void
.end method

.method public setFiltersManager(Lcom/zui/gallery/filtershow/filters/FiltersManagerInterface;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mFiltersManager:Lcom/zui/gallery/filtershow/filters/FiltersManagerInterface;

    return-void
.end method

.method public declared-synchronized setGeneralParameter(II)V
    .locals 1

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->generalParameters:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->generalParameters:Ljava/util/HashMap;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->generalParameters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setImagePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mImagePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-void
.end method

.method public setPipeline(Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mPipeline:Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mQuality:I

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mScaleFactor:F

    return-void
.end method

.method public declared-synchronized setStop(Z)V
    .locals 0

    monitor-enter p0

    .line 50
    :try_start_0
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->mStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
