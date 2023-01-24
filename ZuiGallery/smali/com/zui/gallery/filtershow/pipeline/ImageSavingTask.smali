.class public Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;
.super Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;
.source "ImageSavingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$URIResult;,
        Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdatePreviewSaved;,
        Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdateProgress;,
        Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdateBitmap;,
        Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;
    }
.end annotation


# instance fields
.field private mProcessingService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;->mProcessingService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    return-void
.end method

.method private createNotificationBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Landroid/graphics/Bitmap;
    .locals 3

    .line 169
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    invoke-static {p1, v0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p2, p1, v0, v2, v1}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadConstrainedBitmap(Landroid/net/Uri;Landroid/content/Context;ILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 177
    new-instance p2, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;

    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    const-string v1, "Thumb"

    invoke-direct {p2, v0, v1}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;-><init>(Lcom/zui/gallery/filtershow/filters/FiltersManager;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2, p1, p3}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->renderFinalImage(Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public doInBackground(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;)Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Result;
    .locals 13

    .line 90
    check-cast p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;

    .line 91
    iget-object v2, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->sourceUri:Landroid/net/Uri;

    .line 92
    iget-object v3, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->selectedUri:Landroid/net/Uri;

    .line 93
    iget-object v4, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->destinationFile:Ljava/io/File;

    .line 94
    iget-object v5, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->previewImage:Landroid/graphics/Bitmap;

    .line 95
    iget-object v7, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->preset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 97
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v7, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    .line 98
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v7, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V

    .line 100
    iget-boolean v8, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->flatten:Z

    .line 101
    iget-boolean v0, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->exit:Z

    .line 107
    new-instance v9, Lcom/zui/gallery/filtershow/tools/SaveImage;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;->mProcessingService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    new-instance v6, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$1;

    invoke-direct {v6, p0}, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$1;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/zui/gallery/filtershow/tools/SaveImage;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/io/File;Landroid/graphics/Bitmap;Lcom/zui/gallery/filtershow/tools/SaveImage$Callback;)V

    .line 126
    iget v0, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->quality:I

    iget v10, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->sizeFactor:F

    iget-boolean v11, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->exit:Z

    iget-boolean v12, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->isFromPrivacy:Z

    move-object v6, v9

    move v9, v0

    invoke-virtual/range {v6 .. v12}, Lcom/zui/gallery/filtershow/tools/SaveImage;->processAndSaveImage(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;ZIFZZ)Landroid/net/Uri;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$URIResult;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$URIResult;-><init>()V

    .line 129
    iput-object v0, v1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$URIResult;->uri:Landroid/net/Uri;

    .line 130
    iget-boolean v0, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->exit:Z

    iput-boolean v0, v1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$URIResult;->exit:Z

    .line 133
    :try_start_0
    iget-object p1, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->destinationFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$URIResult;->absolutePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;->mProcessingService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->cannotSaveImage()V

    :goto_0
    return-object v1
.end method

.method public onResult(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Result;)V
    .locals 3

    .line 143
    check-cast p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$URIResult;

    .line 144
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;->mProcessingService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    iget-object v1, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$URIResult;->uri:Landroid/net/Uri;

    iget-boolean v2, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$URIResult;->exit:Z

    iget-object p1, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$URIResult;->absolutePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->completeSaveImage(Landroid/net/Uri;ZLjava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/util/GroupUtils;->isClearedEffectForShar(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;->mProcessingService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearNvsEffectRenderCore()V

    :cond_0
    return-void
.end method

.method public onUpdate(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Update;)V
    .locals 3

    .line 153
    instance-of v0, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdatePreviewSaved;

    if-eqz v0, :cond_0

    .line 154
    move-object v0, p1

    check-cast v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdatePreviewSaved;

    iget-object v1, v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdatePreviewSaved;->uri:Landroid/net/Uri;

    .line 155
    iget-boolean v0, v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdatePreviewSaved;->exit:Z

    .line 156
    iget-object v2, p0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;->mProcessingService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-virtual {v2, v1, v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->completePreviewSaveImage(Landroid/net/Uri;Z)V

    .line 158
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdateBitmap;

    if-eqz v0, :cond_1

    .line 159
    move-object v0, p1

    check-cast v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdateBitmap;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdateBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 160
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;->mProcessingService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->updateNotificationWithBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    :cond_1
    instance-of v0, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdateProgress;

    if-eqz v0, :cond_2

    .line 163
    check-cast p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdateProgress;

    .line 164
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;->mProcessingService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    iget v1, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdateProgress;->max:I

    iget p1, p1, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$UpdateProgress;->current:I

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->updateProgress(II)V

    :cond_2
    return-void
.end method

.method public saveImage(Landroid/net/Uri;Landroid/net/Uri;Ljava/io/File;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Landroid/graphics/Bitmap;ZIFZZ)V
    .locals 1

    .line 75
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;-><init>()V

    .line 76
    iput-object p1, v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->sourceUri:Landroid/net/Uri;

    .line 77
    iput-object p2, v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->selectedUri:Landroid/net/Uri;

    .line 78
    iput-object p3, v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->destinationFile:Ljava/io/File;

    .line 79
    iput-object p4, v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->preset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 80
    iput-boolean p6, v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->flatten:Z

    .line 81
    iput p7, v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->quality:I

    .line 82
    iput p8, v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->sizeFactor:F

    .line 83
    iput-object p5, v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->previewImage:Landroid/graphics/Bitmap;

    .line 84
    iput-boolean p9, v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->exit:Z

    .line 85
    iput-boolean p10, v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask$SaveRequest;->isFromPrivacy:Z

    .line 86
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;->postRequest(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;)Z

    return-void
.end method
