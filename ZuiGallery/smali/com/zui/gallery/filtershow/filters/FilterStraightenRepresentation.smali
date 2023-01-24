.class public Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.source "FilterStraightenRepresentation.java"


# static fields
.field public static final MAX_STRAIGHTEN_ANGLE:I = 0x2d

.field public static final MIN_STRAIGHTEN_ANGLE:I = -0x2d

.field public static final SERIALIZATION_NAME:Ljava/lang/String; = "STRAIGHTEN"

.field public static final SERIALIZATION_STRAIGHTEN_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mStraighten:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->getNil()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    const-string v0, "STRAIGHTEN"

    .line 39
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->setSerializationName(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->setShowParameterValue(Z)V

    .line 42
    const-class v1, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const/4 v1, 0x7

    .line 43
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->setFilterType(I)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->setSupportsPartialRendering(Z)V

    const v0, 0x7f100273

    .line 45
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->setTextId(I)V

    const v0, 0x7f08017b

    .line 46
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->setEditorId(I)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->setStraighten(F)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;)V
    .locals 1

    .line 51
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->getStraighten()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;-><init>(F)V

    .line 52
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static getNil()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private rangeCheck(D)Z
    .locals 2

    const-wide v0, -0x3fb9800000000000L    # -45.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x4046800000000000L    # 45.0

    cmpl-double p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public allowsSingleInstanceOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 93
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;-><init>(Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    .line 98
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    if-eqz v0, :cond_0

    .line 101
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 102
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "calling copyAllParameters with incompatible types!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deSerializeRepresentation(Landroid/util/JsonReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x1

    .line 133
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value"

    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, v1

    .line 137
    invoke-direct {p0, v2, v3}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->rangeCheck(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->setStraighten(F)V

    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 146
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->TAG:Ljava/lang/String;

    const-string v1, "WARNING: bad value when deserializing STRAIGHTEN"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 2

    .line 65
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 68
    :cond_0
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    .line 69
    iget p1, p1, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->mStraighten:F

    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->mStraighten:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getStraighten()F
    .locals 1

    .line 76
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->mStraighten:F

    return v0
.end method

.method public isNil()Z
    .locals 2

    .line 115
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->mStraighten:F

    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->getNil()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serializeRepresentation(Landroid/util/JsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string/jumbo v0, "value"

    .line 125
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->mStraighten:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 126
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public set(Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;)V
    .locals 0

    .line 60
    iget p1, p1, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->mStraighten:F

    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->mStraighten:F

    return-void
.end method

.method public setStraighten(F)V
    .locals 2

    float-to-double v0, p1

    .line 80
    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->rangeCheck(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x3dcc0000    # -45.0f

    .line 81
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x42340000    # 45.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 83
    :cond_0
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->mStraighten:F

    return-void
.end method

.method public useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    .line 107
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    if-eqz v0, :cond_0

    .line 110
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->getStraighten()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;->setStraighten(F)V

    return-void

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "calling useParametersFrom with incompatible types!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
