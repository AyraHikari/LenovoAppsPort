.class public Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.source "FilterUserPresetRepresentation.java"


# instance fields
.field private mId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    const p1, 0x7f0801e9

    .line 29
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;->setEditorId(I)V

    const/4 p1, 0x2

    .line 30
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;->setFilterType(I)V

    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;->setSupportsPartialRendering(Z)V

    .line 32
    iput-object p2, p0, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;->mImagePrest:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 33
    iput p3, p0, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;->mId:I

    return-void
.end method


# virtual methods
.method public allowsSingleInstanceOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 4

    .line 45
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;->mImagePrest:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v2, v3}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    iget v3, p0, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;->mId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;-><init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;I)V

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;->mId:I

    return v0
.end method

.method public getImagePreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;->mImagePrest:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-object v0
.end method
