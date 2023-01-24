.class public Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.source "FilterCurvesRepresentation.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FilterCurvesRepresentation"

.field private static final MAX_SPLINE_NUMBER:I = 0x4

.field public static final SERIALIZATION_NAME:Ljava/lang/String; = "Curve"


# instance fields
.field private mSplines:[Lcom/zui/gallery/filtershow/imageshow/Spline;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Curves"

    .line 25
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/zui/gallery/filtershow/imageshow/Spline;

    .line 22
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->mSplines:[Lcom/zui/gallery/filtershow/imageshow/Spline;

    const-string v0, "CURVES"

    .line 26
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 27
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const v0, 0x7f1000ae

    .line 28
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->setTextId(I)V

    const v0, 0x7f070158

    .line 29
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->setOverlayId(I)V

    const v0, 0x7f0801e7

    .line 30
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->setEditorId(I)V

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->setShowParameterValue(Z)V

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->setSupportsPartialRendering(Z)V

    .line 33
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->reset()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 38
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;-><init>()V

    .line 39
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 46
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public deSerializeRepresentation(Landroid/util/JsonReader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/zui/gallery/filtershow/imageshow/Spline;

    .line 146
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Name"

    .line 148
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "Curve"

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 152
    new-instance v2, Lcom/zui/gallery/filtershow/imageshow/Spline;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/imageshow/Spline;-><init>()V

    aput-object v2, v0, v1

    .line 153
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 154
    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 156
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 157
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    .line 158
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 159
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v3, v3

    .line 160
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 161
    aget-object v4, v0, v1

    invoke-virtual {v4, v2, v3}, Lcom/zui/gallery/filtershow/imageshow/Spline;->addPoint(FF)I

    goto :goto_1

    .line 163
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    .line 167
    :cond_3
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->mSplines:[Lcom/zui/gallery/filtershow/imageshow/Spline;

    .line 168
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 4

    .line 80
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 84
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    if-nez v0, :cond_1

    return v1

    .line 87
    :cond_1
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    .line 90
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/imageshow/Spline;->sameValues(Lcom/zui/gallery/filtershow/imageshow/Spline;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->mSplines:[Lcom/zui/gallery/filtershow/imageshow/Spline;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isNil()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 71
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/Spline;->isOriginal()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 4

    .line 100
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/Spline;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/imageshow/Spline;-><init>()V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/Spline;->addPoint(FF)I

    .line 103
    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/filtershow/imageshow/Spline;->addPoint(FF)I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->mSplines:[Lcom/zui/gallery/filtershow/imageshow/Spline;

    new-instance v3, Lcom/zui/gallery/filtershow/imageshow/Spline;

    invoke-direct {v3, v0}, Lcom/zui/gallery/filtershow/imageshow/Spline;-><init>(Lcom/zui/gallery/filtershow/imageshow/Spline;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public serializeRepresentation(Landroid/util/JsonWriter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "Name"

    .line 122
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 123
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 124
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->mSplines:[Lcom/zui/gallery/filtershow/imageshow/Spline;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Curve"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 126
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 127
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->mSplines:[Lcom/zui/gallery/filtershow/imageshow/Spline;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/Spline;->getNbPoints()I

    move-result v2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 129
    iget-object v4, p0, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->mSplines:[Lcom/zui/gallery/filtershow/imageshow/Spline;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Lcom/zui/gallery/filtershow/imageshow/Spline;->getPoint(I)Lcom/zui/gallery/filtershow/imageshow/ControlPoint;

    move-result-object v4

    .line 130
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 131
    iget v5, v4, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->x:F

    float-to-double v5, v5

    invoke-virtual {p1, v5, v6}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 132
    iget v4, v4, Lcom/zui/gallery/filtershow/imageshow/ControlPoint;->y:F

    float-to-double v4, v4

    invoke-virtual {p1, v4, v5}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 133
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public setSpline(ILcom/zui/gallery/filtershow/imageshow/Spline;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->mSplines:[Lcom/zui/gallery/filtershow/imageshow/Spline;

    aput-object p2, v0, p1

    return-void
.end method

.method public useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 5

    .line 51
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot use parameters from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FilterCurvesRepresentation"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 55
    :cond_0
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/zui/gallery/filtershow/imageshow/Spline;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 58
    iget-object v3, p1, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->mSplines:[Lcom/zui/gallery/filtershow/imageshow/Spline;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 60
    new-instance v4, Lcom/zui/gallery/filtershow/imageshow/Spline;

    invoke-direct {v4, v3}, Lcom/zui/gallery/filtershow/imageshow/Spline;-><init>(Lcom/zui/gallery/filtershow/imageshow/Spline;)V

    aput-object v4, v1, v2

    goto :goto_1

    .line 62
    :cond_1
    new-instance v3, Lcom/zui/gallery/filtershow/imageshow/Spline;

    invoke-direct {v3}, Lcom/zui/gallery/filtershow/imageshow/Spline;-><init>()V

    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_2
    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->mSplines:[Lcom/zui/gallery/filtershow/imageshow/Spline;

    return-void
.end method
