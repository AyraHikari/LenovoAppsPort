.class public Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;
.super Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;
.source "UpdatePreviewTask.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "UpdatePreviewTask"


# instance fields
.field private mHasUnhandledPreviewRequest:Z

.field private mPipelineIsOn:Z

.field private mPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->mPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->mHasUnhandledPreviewRequest:Z

    .line 31
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->mPipelineIsOn:Z

    .line 34
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    .line 35
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getPreviewManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v1

    const-string v2, "Preview"

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;-><init>(Lcom/zui/gallery/filtershow/filters/FiltersManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->mPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    return-void
.end method


# virtual methods
.method public doInBackground(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;)Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Result;
    .locals 4

    .line 60
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreviewBuffer()Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;

    move-result-object p1

    .line 61
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreviewPreset()Lcom/zui/gallery/filtershow/pipeline/SharedPreset;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/SharedPreset;->dequeuePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    .line 73
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V

    .line 75
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->mPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-virtual {v2, p1, v0, v3}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->compute(Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;I)V

    .line 77
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->getProducer()Lcom/zui/gallery/filtershow/pipeline/Buffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/zui/gallery/filtershow/pipeline/Buffer;->setPreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 78
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->getProducer()Lcom/zui/gallery/filtershow/pipeline/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/Buffer;->sync()V

    .line 79
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/SharedBuffer;->swapProducer()V

    :cond_1
    return-object v1
.end method

.method public isPriorityTask()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onResult(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Result;)V
    .locals 0

    .line 86
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->notifyObservers()V

    .line 87
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->mHasUnhandledPreviewRequest:Z

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->updatePreview()V

    :cond_0
    return-void
.end method

.method public setOriginal(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->mPreviewPipeline:Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->setOriginal(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->mPipelineIsOn:Z

    return-void
.end method

.method public setPipelineIsOn(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->mPipelineIsOn:Z

    return-void
.end method

.method public updatePreview()V
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->mPipelineIsOn:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->mHasUnhandledPreviewRequest:Z

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->postRequest(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->mHasUnhandledPreviewRequest:Z

    :cond_1
    return-void
.end method
