.class public Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.source "FilterRotateRepresentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;,
        Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;
    }
.end annotation


# static fields
.field public static final SERIALIZATION_NAME:Ljava/lang/String; = "ROTATION"

.field public static final SERIALIZATION_ROTATE_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mDirection:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;

.field mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->getNil()Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;-><init>(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;)V
    .locals 2

    const-string v0, "ROTATION"

    .line 70
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;->NONE:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mDirection:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;

    .line 71
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->setSerializationName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->setShowParameterValue(Z)V

    .line 73
    const-class v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const/4 v0, 0x7

    .line 74
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->setFilterType(I)V

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->setSupportsPartialRendering(Z)V

    const v0, 0x7f100217

    .line 76
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->setTextId(I)V

    const v0, 0x7f0801e9

    .line 77
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->setEditorId(I)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->setRotation(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;)V
    .locals 1

    .line 82
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->getRotation()Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;-><init>(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;)V

    .line 83
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static getNil()Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;
    .locals 1

    .line 175
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ZERO:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    return-object v0
.end method


# virtual methods
.method public allowsSingleInstanceOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 149
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;-><init>(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    .line 154
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    if-eqz v0, :cond_0

    .line 157
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 158
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void

    .line 155
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "calling copyAllParameters with incompatible types!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deSerializeRepresentation(Landroid/util/JsonReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x1

    .line 201
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value"

    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-static {v1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->fromValue(I)Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->setRotation(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 214
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->TAG:Ljava/lang/String;

    const-string v1, "WARNING: bad value when deserializing ROTATION"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 2

    .line 187
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 190
    :cond_0
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    .line 191
    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result v0

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getRotation()Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    return-object v0
.end method

.method public getRotationDirection()Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mDirection:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;

    return-object v0
.end method

.method public isNil()Z
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->getNil()Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public rotateCCW()V
    .locals 2

    .line 113
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;->LEFT:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mDirection:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;

    .line 114
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$1;->$SwitchMap$com$zui$gallery$filtershow$filters$FilterRotateRepresentation$Rotation:[I

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ONE_EIGHTY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    goto :goto_0

    .line 119
    :cond_1
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->NINETY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    goto :goto_0

    .line 116
    :cond_2
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ZERO:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    goto :goto_0

    .line 125
    :cond_3
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->TWO_SEVENTY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    :goto_0
    return-void
.end method

.method public rotateCW()V
    .locals 2

    .line 95
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;->RIGHT:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mDirection:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Direction;

    .line 96
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$1;->$SwitchMap$com$zui$gallery$filtershow$filters$FilterRotateRepresentation$Rotation:[I

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ZERO:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    goto :goto_0

    .line 104
    :cond_1
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->TWO_SEVENTY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    goto :goto_0

    .line 101
    :cond_2
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ONE_EIGHTY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    goto :goto_0

    .line 98
    :cond_3
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->NINETY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    :goto_0
    return-void
.end method

.method public serializeRepresentation(Landroid/util/JsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string/jumbo v0, "value"

    .line 181
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 182
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public set(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;)V
    .locals 0

    .line 132
    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    return-void
.end method

.method public setRotation(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 139
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->mRotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    return-void

    .line 137
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument to setRotation is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    .line 163
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->getRotation()Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->setRotation(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;)V

    return-void

    .line 164
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "calling useParametersFrom with incompatible types!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
