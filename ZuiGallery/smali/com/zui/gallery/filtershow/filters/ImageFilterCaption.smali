.class public Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;
.super Lcom/zui/gallery/filtershow/filters/ImageFilter;
.source "ImageFilterCaption.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageFilterCaption"


# instance fields
.field private data:[B

.field private mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

.field private mContext:Landroid/content/Context;

.field private mCurNvsEffectUuid:Ljava/lang/String;

.field private mFxBitmap:Landroid/graphics/Bitmap;

.field private mFxBitmapId:I

.field private mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

.field private mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

.field private mParameters:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mParameters:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    .line 48
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mFxBitmap:Landroid/graphics/Bitmap;

    .line 49
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mResources:Landroid/content/res/Resources;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mFxBitmapId:I

    .line 54
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addCaption(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    .line 102
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->getNvsEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    const/16 v1, 0xb

    .line 104
    invoke-virtual {v0, v1}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->initialize(I)Z

    .line 106
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mParameters:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 111
    :cond_0
    invoke-static {p1}, Lcom/zui/gallery/filtershow/caption/utils/Utils;->bitmap2RGBA(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->data:[B

    .line 114
    array-length v2, v1

    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    array-length v3, v1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 120
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->data:[B

    aget-byte v2, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    :cond_2
    new-instance v1, Lcom/meicam/sdk/NvsVideoFrameInfo;

    invoke-direct {v1}, Lcom/meicam/sdk/NvsVideoFrameInfo;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/meicam/sdk/NvsVideoFrameInfo;->frameWidth:I

    .line 126
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/meicam/sdk/NvsVideoFrameInfo;->frameHeight:I

    .line 127
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

    const/4 v2, 0x2

    iput v2, v1, Lcom/meicam/sdk/NvsVideoFrameInfo;->pixelFormat:I

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNvsVideoFrameInfo.width is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

    iget v2, v2, Lcom/meicam/sdk/NvsVideoFrameInfo;->frameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " && mNvsVideoFrameInfo.height is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

    iget v2, v2, Lcom/meicam/sdk/NvsVideoFrameInfo;->frameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wangcanbbbbbbb"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mParameters:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getCaptionEffect()Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    if-nez v1, :cond_3

    return-object p1

    .line 133
    :cond_3
    invoke-virtual {v1, v0}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setText(Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/meicam/sdk/NvsVideoResolution;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsVideoResolution;-><init>()V

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    .line 141
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    invoke-virtual {v1, v0}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setVideoResolution(Lcom/meicam/sdk/NvsVideoResolution;)V

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "videoEditRes.width is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " && videoEditRes.imageHeight is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/gallery/util/GroupUtils;->getCaptionBitmapWidth(Landroid/content/Context;)F

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/gallery/util/GroupUtils;->getCaptionBitmapHeight(Landroid/content/Context;)F

    move-result v1

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 150
    iget-object v4, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mParameters:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getmTimeLinePointF()Landroid/graphics/PointF;

    move-result-object v4

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mParameters is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mParameters:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v6}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " && pointf is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mParameters:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v6}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getmTimeLinePointF()Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " && mCaptionEffect is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "wwww_yyyy"

    invoke-static {v6, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    cmpl-float v6, v0, v5

    if-eqz v6, :cond_5

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_5

    cmpl-float v1, v2, v5

    if-eqz v1, :cond_5

    cmpl-float v1, v3, v5

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    div-float/2addr v2, v0

    goto :goto_3

    :cond_5
    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 160
    :goto_3
    new-instance v0, Landroid/graphics/PointF;

    iget v1, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    iget v3, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v2

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 163
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    invoke-virtual {v0, v4}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setCaptionTranslation(Landroid/graphics/PointF;)V

    .line 167
    :cond_6
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mParameters:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getScaleFactor()F

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mParameters:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetAnchor()Landroid/graphics/PointF;

    move-result-object v1

    cmpl-float v2, v0, v5

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 171
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    invoke-virtual {v1, v0}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setScaleX(F)V

    .line 172
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    invoke-virtual {v1, v0}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setScaleY(F)V

    .line 175
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start renderEffect in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangmeicam"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "meicam"

    const-string v2, "ImageFilterCaption.renderEffect is called "

    .line 176
    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->data:[B

    iget-object v6, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x4

    invoke-virtual/range {v3 .. v12}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;[BLcom/meicam/sdk/NvsVideoFrameInfo;IIZJI)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    .line 180
    iput-object v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteBuffer is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8

    .line 184
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

    iget p1, p1, Lcom/meicam/sdk/NvsVideoFrameInfo;->frameWidth:I

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

    iget v1, v1, Lcom/meicam/sdk/NvsVideoFrameInfo;->frameHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 185
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    :cond_8
    :goto_4
    return-object p1
.end method

.method private getFxBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    return-object p1
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->getParameters()Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mResources:Landroid/content/res/Resources;

    if-nez p2, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->addCaption(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public freeResources()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mFxBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mFxBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParameters()Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mParameters:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IIII)V
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 87
    check-cast p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    .line 88
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->mParameters:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    return-void
.end method
