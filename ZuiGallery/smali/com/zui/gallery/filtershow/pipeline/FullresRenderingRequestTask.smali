.class public Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;
.super Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;
.source "FullresRenderingRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask$RenderResult;,
        Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask$Render;
    }
.end annotation


# instance fields
.field private mFullresPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

.field private mPipelineIsOn:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->mFullresPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->mPipelineIsOn:Z

    .line 25
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    .line 26
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getHighresManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v1

    const-string v2, "Fullres"

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;-><init>(Lcom/zui/gallery/filtershow/filters/FiltersManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->mFullresPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    return-void
.end method


# virtual methods
.method public doInBackground(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;)Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Result;
    .locals 2

    .line 49
    check-cast p1, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask$Render;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask$Render;->request:Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;

    .line 52
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    .line 53
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V

    .line 55
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->mFullresPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->render(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V

    .line 56
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask$RenderResult;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask$RenderResult;-><init>()V

    .line 57
    iput-object p1, v0, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask$RenderResult;->request:Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;

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

    .line 66
    :cond_0
    check-cast p1, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask$RenderResult;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask$RenderResult;->request:Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;

    .line 67
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->markAvailable()V

    return-void
.end method

.method public postRenderingRequest(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->mPipelineIsOn:Z

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask$Render;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask$Render;-><init>()V

    .line 43
    iput-object p1, v0, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask$Render;->request:Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;

    .line 44
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->postRequest(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;)Z

    return-void
.end method

.method public setOriginal(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->mFullresPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->setOriginal(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->mPipelineIsOn:Z

    return-void
.end method

.method public setPreviewScaleFactor(F)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->mFullresPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->setPreviewScaleFactor(F)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->mFullresPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->stop()V

    return-void
.end method
