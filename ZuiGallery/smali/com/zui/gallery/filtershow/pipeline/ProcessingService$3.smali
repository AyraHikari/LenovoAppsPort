.class Lcom/zui/gallery/filtershow/pipeline/ProcessingService$3;
.super Ljava/lang/Object;
.source "ProcessingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearFilters(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

.field final synthetic val$savePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$3;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$3;->val$savePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 799
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$3;->val$savePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$3;->val$savePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 800
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$3;->val$savePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 801
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 802
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 803
    instance-of v2, v1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v2, :cond_0

    .line 804
    check-cast v1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 806
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getCaptionEffect()Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_0

    .line 808
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savePreset.clear in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "wangmeicam"

    invoke-static {v5, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v4, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$3;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    iget-object v4, v4, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v4, v3}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V

    .line 810
    invoke-virtual {v3}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->release()V

    .line 811
    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->setCaptionEffect(Lcom/meicam/effect/sdk/NvsVideoEffectCaption;)V

    .line 812
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$3;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-static {v1}, Lcom/zui/gallery/util/GroupUtils;->reduceTotalCaptionSize(Landroid/content/Context;)V

    goto :goto_0

    .line 816
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$3;->val$savePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_3
    return-void
.end method
