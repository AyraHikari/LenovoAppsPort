.class Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;
.super Ljava/lang/Object;
.source "AssetItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/caption/data/AssetItem;->copy(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)Lcom/zui/gallery/filtershow/caption/data/AssetItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

.field final synthetic val$assetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

.field final synthetic val$mAssetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/caption/data/AssetItem;Lcom/zui/gallery/filtershow/caption/data/AssetItem;Lcom/zui/gallery/filtershow/caption/data/AssetItem;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->this$0:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->val$assetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    iput-object p3, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->val$mAssetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 130
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->this$0:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->val$assetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getmNvsEffectSdkContext()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->setmNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    .line 131
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->val$mAssetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    new-instance v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;-><init>()V

    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->access$002(Lcom/zui/gallery/filtershow/caption/data/AssetItem;Lcom/zui/gallery/filtershow/meishefilter/NvAsset;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    .line 132
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->val$mAssetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->access$000(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->val$assetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->access$000(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->copyAsset(Lcom/zui/gallery/filtershow/meishefilter/NvAsset;)V

    .line 133
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->val$mAssetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->val$assetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->access$100(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->access$102(Lcom/zui/gallery/filtershow/caption/data/AssetItem;I)I

    .line 134
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->val$mAssetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->val$assetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->access$200(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->access$202(Lcom/zui/gallery/filtershow/caption/data/AssetItem;I)I

    .line 135
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->val$mAssetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->val$assetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->access$300(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->access$302(Lcom/zui/gallery/filtershow/caption/data/AssetItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 136
    new-instance v9, Lcom/meicam/sdk/NvsRational;

    const/16 v0, 0x9

    const/16 v1, 0x10

    invoke-direct {v9, v0, v1}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    .line 137
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->val$mAssetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->this$0:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->access$500(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v2

    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f10006f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->val$assetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    .line 138
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getAsset()Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v1

    iget-object v8, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x7fffffff

    .line 137
    invoke-virtual/range {v2 .. v9}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createCaption(Ljava/lang/String;JJLjava/lang/String;Lcom/meicam/sdk/NvsRational;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->access$402(Lcom/zui/gallery/filtershow/caption/data/AssetItem;Lcom/meicam/effect/sdk/NvsVideoEffectCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copy.AssetItem.createCaption is called in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangmeicam"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Lcom/meicam/sdk/NvsVideoResolution;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsVideoResolution;-><init>()V

    .line 149
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/util/GroupUtils;->getVideoEditResImageWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 150
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/gallery/util/GroupUtils;->getVideoEditResImageHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    float-to-int v3, v1

    .line 151
    iput v3, v0, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    float-to-int v3, v2

    .line 152
    iput v3, v0, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    .line 153
    new-instance v3, Lcom/meicam/sdk/NvsRational;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v4}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    iput-object v3, v0, Lcom/meicam/sdk/NvsVideoResolution;->imagePAR:Lcom/meicam/sdk/NvsRational;

    .line 154
    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->val$mAssetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->access$400(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setVideoResolution(Lcom/meicam/sdk/NvsVideoResolution;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageWidth is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " && imageHeight is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "wwww_scale"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x44340000    # 720.0f

    cmpg-float v0, v1, v0

    const-string/jumbo v2, "wangcanscale"

    if-gez v0, :cond_0

    const-string v0, "scaled"

    .line 158
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v0, v1

    const-wide v3, 0x4086800000000000L    # 720.0

    div-double/2addr v0, v3

    .line 160
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    double-to-float v4, v0

    invoke-static {v3, v4}, Lcom/zui/gallery/util/GroupUtils;->setScaleFactorForLongScreentShot(Landroid/content/Context;F)V

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scaleFactor111 is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->val$mAssetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->access$400(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setScaleX(F)V

    .line 163
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;->val$mAssetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->access$400(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setScaleY(F)V

    goto :goto_0

    :cond_0
    const-string v0, "no scale"

    .line 165
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
