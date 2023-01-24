.class public Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.source "FilterFxRepresentation.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FilterFxRepresentation"


# instance fields
.field private mBitmapResource:I

.field private mFilterItem:Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

.field private mImagePrest:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field private mNameResource:I

.field private mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/meishefilter/FilterItem;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->mBitmapResource:I

    .line 30
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->mNameResource:I

    .line 50
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 51
    iput-object p2, p0, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->mFilterItem:Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    const/4 p2, 0x2

    .line 53
    invoke-virtual {p0, p2}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->setFilterType(I)V

    const p2, 0x7f0801e9

    .line 55
    invoke-virtual {p0, p2}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->setEditorId(I)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->setShowParameterValue(Z)V

    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->setSupportsPartialRendering(Z)V

    return-void
.end method


# virtual methods
.method public allowsSingleInstanceOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 3

    .line 72
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;-><init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/meishefilter/FilterItem;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 81
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 3

    .line 99
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    if-eqz v0, :cond_1

    .line 103
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    .line 104
    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->mNameResource:I

    iget v2, p0, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->mNameResource:I

    if-ne v0, v2, :cond_1

    iget p1, p1, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->mBitmapResource:I

    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->mBitmapResource:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getBitmapResource()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->mBitmapResource:I

    return v0
.end method

.method public getFilterItem()Lcom/zui/gallery/filtershow/meishefilter/FilterItem;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->mFilterItem:Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    return-object v0
.end method

.method public getImagePrest()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->mImagePrest:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-object v0
.end method

.method public getNameResource()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->mNameResource:I

    return v0
.end method

.method public getNvsEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    return-object v0
.end method

.method public same(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 1

    .line 114
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->same(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 117
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result p1

    return p1
.end method

.method public setBitmapResource(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->mBitmapResource:I

    return-void
.end method

.method public setFilterItem(Lcom/zui/gallery/filtershow/meishefilter/FilterItem;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->mFilterItem:Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    return-void
.end method

.method public setImagePrest(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->mImagePrest:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-void
.end method

.method public setNameResource(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->mNameResource:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterFx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bitmap rsc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->mBitmapResource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    monitor-enter p0

    .line 86
    :try_start_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    if-eqz v0, :cond_0

    .line 87
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    .line 88
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->setName(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->getBitmapResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->setBitmapResource(I)V

    .line 91
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->getNameResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->setNameResource(I)V

    .line 92
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->getImagePrest()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->setImagePrest(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 93
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->getFilterItem()Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->setFilterItem(Lcom/zui/gallery/filtershow/meishefilter/FilterItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
