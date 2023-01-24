.class public Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;
.source "FilterDualCamBasicRepresentation.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FilterDualCameraRepresentation"

.field private static final SERIAL_POINT:Ljava/lang/String; = "point"

.field private static final SERIAL_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private mPoint:Landroid/graphics/Point;

.field private mPointReal:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;-><init>(Ljava/lang/String;III)V

    .line 44
    new-instance p1, Landroid/graphics/Point;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->mPoint:Landroid/graphics/Point;

    .line 45
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->mPointReal:Landroid/graphics/Point;

    const/16 p1, 0x8

    .line 48
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->setFilterType(I)V

    .line 49
    const-class p1, Lcom/zui/gallery/filtershow/filters/ImageFilterDualCamera;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->setShowParameterValue(Z)V

    return-void
.end method


# virtual methods
.method public copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 3

    .line 61
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    .line 62
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;-><init>(Ljava/lang/String;III)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 70
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public deSerializeRepresentation(Landroid/util/JsonReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 140
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "value"

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->setValue(I)V

    goto :goto_0

    :cond_1
    const-string v1, "point"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 148
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 149
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->mPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 150
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 151
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->mPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 152
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

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
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    if-eqz v0, :cond_1

    .line 87
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    .line 88
    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->mPoint:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->mPoint:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getPoint()Landroid/graphics/Point;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->mPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getRealPoint()Landroid/graphics/Point;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->mPointReal:Landroid/graphics/Point;

    return-object v0
.end method

.method public isNil()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->mPoint:Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    return v0
.end method

.method public serializeRepresentation(Landroid/util/JsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "Name"

    .line 125
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 126
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string/jumbo v0, "value"

    .line 127
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 128
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v0, "point"

    .line 129
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 130
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 131
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->mPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 132
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->mPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 133
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 135
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public setPoint(II)V
    .locals 1

    .line 101
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->mPoint:Landroid/graphics/Point;

    return-void
.end method

.method public setPoint(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->mPoint:Landroid/graphics/Point;

    .line 106
    iput-object p2, p0, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->mPointReal:Landroid/graphics/Point;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dualcam - value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->getPoint()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 75
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    if-eqz v0, :cond_0

    .line 76
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    .line 77
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->getPoint()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->getRealPoint()Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->setPoint(Landroid/graphics/Point;Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method
