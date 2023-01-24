.class public Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;
.super Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;
.source "HighresRenderingRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask$RenderResult;,
        Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask$Render;
    }
.end annotation


# instance fields
.field private mHighresPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

.field private mPipelineIsOn:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->mHighresPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->mPipelineIsOn:Z

    .line 45
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    .line 46
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getHighresManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v1

    const-string v2, "Highres"

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;-><init>(Lcom/zui/gallery/filtershow/filters/FiltersManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->mHighresPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    return-void
.end method


# virtual methods
.method public doInBackground(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;)Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Result;
    .locals 2

    .line 72
    check-cast p1, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask$Render;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask$Render;->request:Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;

    .line 75
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    .line 76
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V

    .line 78
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->mHighresPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->renderHighres(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V

    .line 79
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask$RenderResult;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask$RenderResult;-><init>()V

    .line 80
    iput-object p1, v0, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask$RenderResult;->request:Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;

    return-object v0
.end method

.method public isDelayedTask()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onResult(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Result;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    check-cast p1, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask$RenderResult;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask$RenderResult;->request:Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;

    .line 90
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->markAvailable()V

    return-void
.end method

.method public postRenderingRequest(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->mPipelineIsOn:Z

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask$Render;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask$Render;-><init>()V

    .line 66
    iput-object p1, v0, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask$Render;->request:Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;

    .line 67
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->postRequest(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;)Z

    return-void
.end method

.method public setHighresPreviewScaleFactor(F)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->mHighresPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->setHighResPreviewScaleFactor(F)V

    return-void
.end method

.method public setOriginal(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->mHighresPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->setOriginal(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setOriginalBitmapHighres(Landroid/graphics/Bitmap;)V
    .locals 0

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->mPipelineIsOn:Z

    return-void
.end method

.method public setPreviewScaleFactor(F)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->mHighresPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->setPreviewScaleFactor(F)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->mHighresPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->stop()V

    return-void
.end method
