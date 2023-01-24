.class Lcom/zui/gallery/filtershow/pipeline/ProcessingService$2;
.super Ljava/lang/Object;
.source "ProcessingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearReplacedFilterRepresentation(Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

.field final synthetic val$preFilterRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$2;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$2;->val$preFilterRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$2;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$2;->val$preFilterRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getCaptionEffect()Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V

    .line 200
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$2;->val$preFilterRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getCaptionEffect()Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replace..clearNvsEffectRenderCore is called && current thread is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangmeicam"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$2;->val$preFilterRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getCaptionEffect()Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->release()V

    .line 204
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$2;->val$preFilterRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->setCaptionEffect(Lcom/meicam/effect/sdk/NvsVideoEffectCaption;)V

    .line 205
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/GroupUtils;->reduceTotalCaptionSize(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
