.class Lcom/zui/gallery/filtershow/pipeline/ProcessingService$1;
.super Ljava/lang/Object;
.source "ProcessingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearNvsEffectRenderCore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 132
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/GroupUtils;->setEffectsCleared(Landroid/content/Context;Z)V

    .line 133
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->clearFilters()V

    .line 136
    :cond_0
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getCaptionRepresentations()Ljava/util/HashMap;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearNvsEffectRenderCore is called && currentthread is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " && mRepresentationLookup.size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wangmeicam"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    const-string/jumbo v3, "start to clear"

    .line 139
    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 141
    instance-of v5, v4, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    if-eqz v5, :cond_2

    .line 142
    iget-object v5, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    iget-object v5, v5, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterItem()Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getNvsEffect()Lcom/meicam/effect/sdk/NvsEffect;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V

    .line 144
    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterItem()Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getNvsEffect()Lcom/meicam/effect/sdk/NvsEffect;

    move-result-object v5

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nvsEffect is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_2

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clear fxEffect in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " && name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterItem()Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterItem()Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getNvsEffect()Lcom/meicam/effect/sdk/NvsEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meicam/effect/sdk/NvsEffect;->release()V

    .line 149
    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterItem()Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setNvsEffect(Lcom/meicam/effect/sdk/NvsEffect;)V

    .line 152
    :cond_2
    instance-of v5, v4, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v5, :cond_1

    .line 154
    iget-object v5, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    iget-object v5, v5, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    check-cast v4, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getCaptionEffect()Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V

    .line 155
    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getCaptionEffect()Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v5

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nvsVideoEffectCaption is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clear Caption Effect in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getCaptionEffect()Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->release()V

    .line 160
    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->setCaptionEffect(Lcom/meicam/effect/sdk/NvsVideoEffectCaption;)V

    .line 161
    iget-object v4, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-static {v4}, Lcom/zui/gallery/util/GroupUtils;->reduceTotalCaptionSize(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 166
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 167
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearCacheResources()V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanUp is called in thread : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->cleanUp()V

    goto :goto_1

    :cond_4
    const-string v0, "mNvsEffectRenderCore is null!!!"

    .line 172
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    .line 175
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->access$000(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 176
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->access$100(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 177
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->access$200(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->access$300(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->access$400(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    return-void
.end method
