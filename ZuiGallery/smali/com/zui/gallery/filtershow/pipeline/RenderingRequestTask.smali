.class public Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;
.super Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;
.source "RenderingRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask$RenderResult;,
        Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask$Render;
    }
.end annotation


# instance fields
.field private mPipelineIsOn:Z

.field private mPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->mPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->mPipelineIsOn:Z

    .line 41
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    .line 42
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v1

    const-string v2, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;-><init>(Lcom/zui/gallery/filtershow/filters/FiltersManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->mPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    return-void
.end method


# virtual methods
.method public doInBackground(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;)Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Result;
    .locals 2

    .line 65
    check-cast p1, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask$Render;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask$Render;->request:Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;

    .line 68
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    .line 69
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V

    .line 71
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->mPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->renderGeometry(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->mPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->renderFilters(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->mPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->render(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V

    .line 78
    :goto_0
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask$RenderResult;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask$RenderResult;-><init>()V

    .line 79
    iput-object p1, v0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask$RenderResult;->request:Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;

    return-object v0
.end method

.method public onResult(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Result;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 88
    :cond_0
    check-cast p1, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask$RenderResult;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask$RenderResult;->request:Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;

    .line 89
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->markAvailable()V

    return-void
.end method

.method public postRenderingRequest(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->mPipelineIsOn:Z

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask$Render;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask$Render;-><init>()V

    .line 59
    iput-object p1, v0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask$Render;->request:Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;

    .line 60
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->postRequest(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;)Z

    return-void
.end method

.method public setOriginal(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->mPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->setOriginal(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->mPipelineIsOn:Z

    return-void
.end method

.method public setPreviewScaleFactor(F)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->mPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->setPreviewScaleFactor(F)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->mPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->stop()V

    return-void
.end method
