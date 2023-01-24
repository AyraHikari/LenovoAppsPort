.class public Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.source "FilterImageBorderRepresentation.java"


# instance fields
.field private mDrawableResource:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-string v0, "ImageBorder"

    .line 26
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->mDrawableResource:I

    .line 27
    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 28
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->mDrawableResource:I

    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->setFilterType(I)V

    const p1, 0x7f10005f

    .line 30
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->setTextId(I)V

    const p1, 0x7f0801e9

    .line 31
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->setEditorId(I)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->setShowParameterValue(Z)V

    return-void
.end method


# virtual methods
.method public allowsSingleInstanceOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 2

    .line 41
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    iget v1, p0, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->mDrawableResource:I

    invoke-direct {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;-><init>(I)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 50
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 66
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    if-eqz v0, :cond_1

    .line 67
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    .line 68
    iget p1, p1, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->mDrawableResource:I

    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->mDrawableResource:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getDrawableResource()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->mDrawableResource:I

    return v0
.end method

.method public getTextId()I
    .locals 1

    const v0, 0x7f1001c5

    return v0
.end method

.method public setDrawableResource(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->mDrawableResource:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterBorder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    .line 54
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    .line 56
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->setName(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->getDrawableResource()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;->setDrawableResource(I)V

    :cond_0
    return-void
.end method
