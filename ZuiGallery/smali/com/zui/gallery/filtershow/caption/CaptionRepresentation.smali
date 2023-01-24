.class public Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.source "CaptionRepresentation.java"


# static fields
.field public static final CAPTION_NAME:Ljava/lang/String; = "CAPTION"

.field private static final LOGTAG:Ljava/lang/String; = "FilterFxRepresentation"


# instance fields
.field private assetAnchor:Landroid/graphics/PointF;

.field private captionTextAlignment:I

.field private isHorizontal:Z

.field private mAsset:Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

.field private mAssetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

.field private mBitmapResource:I

.field private mCaptionContent:Ljava/lang/String;

.field private mImagePrest:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field private mNameResource:I

.field private mTimeLinePointF:Landroid/graphics/PointF;

.field private scaleFactor:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    .line 95
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mBitmapResource:I

    .line 41
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mNameResource:I

    .line 96
    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 97
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAsset()Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mAsset:Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    .line 98
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mAssetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    .line 99
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mCaptionContent:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getmTimeLinePointF()Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mTimeLinePointF:Landroid/graphics/PointF;

    const/16 v1, 0x9

    .line 104
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setFilterType(I)V

    const v1, 0x7f0800c7

    .line 105
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setEditorId(I)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setShowParameterValue(Z)V

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setSupportsPartialRendering(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/meishefilter/NvAsset;Lcom/zui/gallery/filtershow/caption/data/AssetItem;)V
    .locals 1

    .line 111
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mBitmapResource:I

    .line 41
    iput p1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mNameResource:I

    .line 112
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 113
    iput-object p2, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mAsset:Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    .line 114
    iput-object p3, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mAssetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    const/16 p2, 0x9

    .line 118
    invoke-virtual {p0, p2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setFilterType(I)V

    const p2, 0x7f0800c7

    .line 119
    invoke-virtual {p0, p2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setEditorId(I)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setShowParameterValue(Z)V

    const/4 p1, 0x1

    .line 121
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setSupportsPartialRendering(Z)V

    return-void
.end method


# virtual methods
.method public allowsSingleInstanceOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public copy()Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;
    .locals 4

    .line 159
    new-instance v0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAsset()Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;-><init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/meishefilter/NvAsset;Lcom/zui/gallery/filtershow/caption/data/AssetItem;)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->copy()Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    move-result-object v0

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 195
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 196
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 6

    .line 247
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 250
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    const-string/jumbo v2, "wangcanequles"

    if-eqz v0, :cond_6

    .line 251
    check-cast p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name.equals == "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mNameResource:I

    iget v4, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mNameResource:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " && BitmapResource.equals == "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mBitmapResource:I

    iget v4, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mBitmapResource:I

    if-ne v3, v4, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " && TimeLinePointF.equals == "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mTimeLinePointF:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mTimeLinePointF:Landroid/graphics/PointF;

    if-ne v3, v4, :cond_3

    move v3, v5

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " && CaptionContent.equals == "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mCaptionContent:Ljava/lang/String;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mCaptionContent:Ljava/lang/String;

    if-ne v3, v4, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " && scaleFactor.equals == "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->scaleFactor:F

    iget v4, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->scaleFactor:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5

    move v3, v5

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " && assetAnchor.equals == fx.assetAnchor == assetAnchor"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget v0, p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mNameResource:I

    iget v3, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mNameResource:I

    if-ne v0, v3, :cond_6

    iget v0, p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mBitmapResource:I

    iget v3, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mBitmapResource:I

    if-ne v0, v3, :cond_6

    iget-object v0, p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mTimeLinePointF:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mTimeLinePointF:Landroid/graphics/PointF;

    if-ne v0, v3, :cond_6

    iget-object v0, p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mCaptionContent:Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mCaptionContent:Ljava/lang/String;

    if-ne v0, v3, :cond_6

    iget v0, p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->scaleFactor:F

    iget v3, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->scaleFactor:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_6

    iget-object p1, p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->assetAnchor:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->assetAnchor:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_6

    const-string p1, "equals is true"

    .line 263
    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_6
    const-string p1, "equals is false"

    .line 267
    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getAsset()Lcom/zui/gallery/filtershow/meishefilter/NvAsset;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mAsset:Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    return-object v0
.end method

.method public getAssetAnchor()Landroid/graphics/PointF;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->assetAnchor:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mAssetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    return-object v0
.end method

.method public getBitmapResource()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mBitmapResource:I

    return v0
.end method

.method public getCaptionContents()Ljava/lang/String;
    .locals 2

    .line 137
    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "xxx"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :catch_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mCaptionContent:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptionTextAlignment()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->captionTextAlignment:I

    return v0
.end method

.method public getHorizontal()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->isHorizontal:Z

    return v0
.end method

.method public getImagePrest()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mImagePrest:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-object v0
.end method

.method public getNameResource()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mNameResource:I

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .line 63
    iget v0, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->scaleFactor:F

    return v0
.end method

.method public getStackString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 186
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 187
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 188
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 189
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 190
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getmTimeLinePointF()Landroid/graphics/PointF;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mTimeLinePointF:Landroid/graphics/PointF;

    return-object v0
.end method

.method public same(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 1

    .line 273
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->same(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 276
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result p1

    return p1
.end method

.method public setAsset(Lcom/zui/gallery/filtershow/meishefilter/NvAsset;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mAsset:Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    return-void
.end method

.method public setAssetAnchor(Landroid/graphics/PointF;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->assetAnchor:Landroid/graphics/PointF;

    return-void
.end method

.method public setAssetItem(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mAssetItem:Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    return-void
.end method

.method public setBitmapResource(I)V
    .locals 0

    .line 305
    iput p1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mBitmapResource:I

    return-void
.end method

.method public setCaptionContent(Ljava/lang/String;)V
    .locals 1

    .line 125
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mCaptionContent:Ljava/lang/String;

    .line 128
    :try_start_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "xxx"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setCaptionTextAlignment(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->captionTextAlignment:I

    return-void
.end method

.method public setHorizontal(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->isHorizontal:Z

    return-void
.end method

.method public setImagePrest(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mImagePrest:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-void
.end method

.method public setNameResource(I)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mNameResource:I

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->scaleFactor:F

    return-void
.end method

.method public setmTimeLinePointF(Landroid/graphics/PointF;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->mTimeLinePointF:Landroid/graphics/PointF;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caption: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 2

    monitor-enter p0

    .line 201
    :try_start_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v0, :cond_1

    .line 202
    check-cast p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    .line 203
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setName(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getBitmapResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setBitmapResource(I)V

    .line 206
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getNameResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setNameResource(I)V

    .line 207
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getImagePrest()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setImagePrest(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 208
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getFilterItem()Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setFilterItem(Lcom/zui/gallery/filtershow/meishefilter/FilterItem;)V

    .line 219
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setCaptionContent(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setCaptionContent(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getmTimeLinePointF()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setmTimeLinePointF(Landroid/graphics/PointF;)V

    .line 223
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getScaleFactor()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setScaleFactor(F)V

    .line 224
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetAnchor()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setAssetAnchor(Landroid/graphics/PointF;)V

    .line 225
    new-instance v0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;-><init>()V

    .line 227
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/util/GroupUtils;->ifCaptionIsCopyed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->copy(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setAssetItem(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)V

    .line 229
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->copyCaption(Landroid/content/Context;Z)V

    const-string/jumbo p1, "wangcancsize"

    const-string v0, "copy"

    .line 230
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setAssetItem(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
