.class public Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;
.source "FilterTinyPlanetRepresentation.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FilterTinyPlanetRepresentation"

.field private static final SERIALIZATION_NAME:Ljava/lang/String; = "TINYPLANET"

.field private static final SERIAL_ANGLE:Ljava/lang/String; = "Angle"


# instance fields
.field private mAngle:F


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "TinyPlanet"

    const/4 v1, 0x0

    const/16 v2, 0x32

    const/16 v3, 0x64

    .line 29
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;-><init>(Ljava/lang/String;III)V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->mAngle:F

    const-string v0, "TINYPLANET"

    .line 30
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->setSerializationName(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->setShowParameterValue(Z)V

    .line 32
    const-class v2, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;

    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const/4 v2, 0x6

    .line 33
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->setFilterType(I)V

    const v2, 0x7f10028f

    .line 34
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->setTextId(I)V

    const v2, 0x7f080365

    .line 35
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->setEditorId(I)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->setMinimum(I)V

    .line 37
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->setSupportsPartialRendering(Z)V

    return-void
.end method


# virtual methods
.method public copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 42
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;-><init>()V

    .line 43
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 50
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public deSerializeRepresentation([[Ljava/lang/String;)V
    .locals 5

    .line 103
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->deSerializeRepresentation([[Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 104
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 105
    aget-object v2, p1, v1

    aget-object v2, v2, v0

    const-string v3, "Value"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 106
    aget-object v2, p1, v1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->setValue(I)V

    goto :goto_1

    .line 107
    :cond_0
    aget-object v2, p1, v1

    aget-object v2, v2, v0

    const-string v4, "Angle"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    aget-object v2, p1, v1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->setAngle(F)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 86
    :cond_0
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->mAngle:F

    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    iget p1, p1, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->mAngle:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getAngle()F
    .locals 1

    .line 66
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->mAngle:F

    return v0
.end method

.method public getZoom()I
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->getValue()I

    move-result v0

    return v0
.end method

.method public isNil()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public serializeRepresentation()[[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 95
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Value"

    aput-object v3, v2, v4

    .line 96
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Angle"

    aput-object v3, v2, v4

    iget v3, p0, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->mAngle:F

    .line 97
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    return-object v0
.end method

.method public setAngle(F)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->mAngle:F

    return-void
.end method

.method public setZoom(I)V
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->setValue(I)V

    return-void
.end method

.method public useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    .line 55
    move-object v0, p1

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;

    .line 56
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 57
    iget p1, v0, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->mAngle:F

    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->mAngle:F

    .line 58
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->getZoom()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterTinyPlanetRepresentation;->setZoom(I)V

    return-void
.end method
