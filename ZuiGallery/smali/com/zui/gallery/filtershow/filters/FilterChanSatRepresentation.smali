.class public Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.source "FilterChanSatRepresentation.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/ParameterSet;


# static fields
.field private static final ARGS:Ljava/lang/String; = "ARGS"

.field private static final LOGTAG:Ljava/lang/String; = "FilterChanSatRepresentation"

.field private static MAXSAT:I = 0x64

.field private static MINSAT:I = -0x64

.field public static final MODE_BLUE:I = 0x5

.field public static final MODE_CYAN:I = 0x4

.field public static final MODE_GREEN:I = 0x3

.field public static final MODE_MAGENTA:I = 0x6

.field public static final MODE_MASTER:I = 0x0

.field public static final MODE_RED:I = 0x1

.field public static final MODE_YELLOW:I = 0x2

.field private static final SERIALIZATION_NAME:Ljava/lang/String; = "channelsaturation"


# instance fields
.field private mAllParam:[Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

.field private mParamBlue:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

.field private mParamCyan:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

.field private mParamGreen:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

.field private mParamMagenta:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

.field private mParamMaster:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

.field private mParamRed:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

.field private mParamYellow:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

.field private mParameterMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const-string v0, "ChannelSaturation"

    .line 70
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParameterMode:I

    .line 52
    new-instance v1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    sget v2, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->MINSAT:I

    sget v3, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->MAXSAT:I

    invoke-direct {v1, v0, v0, v2, v3}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;-><init>(IIII)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamMaster:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 53
    new-instance v1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    sget v2, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->MINSAT:I

    sget v3, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->MAXSAT:I

    const/4 v4, 0x1

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;-><init>(IIII)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamRed:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 54
    new-instance v1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    sget v2, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->MINSAT:I

    sget v3, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->MAXSAT:I

    const/4 v5, 0x2

    invoke-direct {v1, v5, v0, v2, v3}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;-><init>(IIII)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamYellow:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 55
    new-instance v1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    sget v2, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->MINSAT:I

    sget v3, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->MAXSAT:I

    const/4 v6, 0x3

    invoke-direct {v1, v6, v0, v2, v3}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;-><init>(IIII)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamGreen:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 56
    new-instance v1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    sget v2, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->MINSAT:I

    sget v3, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->MAXSAT:I

    const/4 v7, 0x4

    invoke-direct {v1, v7, v0, v2, v3}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;-><init>(IIII)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamCyan:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 57
    new-instance v1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    sget v2, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->MINSAT:I

    sget v3, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->MAXSAT:I

    const/4 v8, 0x5

    invoke-direct {v1, v8, v0, v2, v3}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;-><init>(IIII)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamBlue:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 58
    new-instance v1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    sget v2, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->MINSAT:I

    sget v3, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->MAXSAT:I

    const/4 v9, 0x6

    invoke-direct {v1, v9, v0, v2, v3}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;-><init>(IIII)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamMagenta:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    const/4 v2, 0x7

    new-array v2, v2, [Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 60
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamMaster:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamRed:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamYellow:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamGreen:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamCyan:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aput-object v0, v2, v7

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamBlue:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aput-object v0, v2, v8

    aput-object v1, v2, v9

    iput-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    const v0, 0x7f10021c

    .line 71
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setTextId(I)V

    .line 72
    invoke-virtual {p0, v8}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setFilterType(I)V

    const-string v0, "channelsaturation"

    .line 73
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 74
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const v0, 0x7f080170

    .line 75
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setEditorId(I)V

    .line 76
    invoke-virtual {p0, v4}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setSupportsPartialRendering(Z)V

    return-void
.end method


# virtual methods
.method public copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 86
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;-><init>()V

    .line 87
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 94
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

    .line 184
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 186
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ARGS"

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 190
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setValue(II)V

    .line 192
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    const/4 v0, 0x1

    .line 193
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setValue(II)V

    .line 194
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    const/4 v0, 0x2

    .line 195
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setValue(II)V

    .line 196
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    const/4 v0, 0x3

    .line 197
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setValue(II)V

    .line 198
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    const/4 v0, 0x4

    .line 199
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setValue(II)V

    .line 200
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    const/4 v0, 0x5

    .line 201
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setValue(II)V

    .line 202
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    const/4 v0, 0x6

    .line 203
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setValue(II)V

    .line 204
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 205
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 4

    .line 109
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 112
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    if-eqz v0, :cond_3

    .line 113
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    move v0, v1

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 115
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public getCurrentParameter()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParameterMode:I

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getFilterParameter(I)Lcom/zui/gallery/filtershow/controller/Parameter;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getMaximum()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamMaster:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMaximum()I

    move-result v0

    return v0
.end method

.method public getMinimum()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamMaster:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getMinimum()I

    move-result v0

    return v0
.end method

.method public getNumberOfParameters()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getParameterMode()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParameterMode:I

    return v0
.end method

.method public getValue(I)I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result p1

    return p1
.end method

.method public serializeRepresentation(Landroid/util/JsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "ARGS"

    .line 169
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 170
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const/4 v0, 0x1

    .line 172
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const/4 v0, 0x2

    .line 173
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const/4 v0, 0x3

    .line 174
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const/4 v0, 0x4

    .line 175
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const/4 v0, 0x5

    .line 176
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const/4 v0, 0x6

    .line 177
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 178
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 179
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public setCurrentParameter(I)V
    .locals 1

    .line 152
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParameterMode:I

    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->setValue(II)V

    return-void
.end method

.method public setParameterMode(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParameterMode:I

    return-void
.end method

.method public setValue(II)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamRed:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamCyan:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamRed:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamGreen:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamMaster:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mParamYellow:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 3

    .line 98
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    if-eqz v0, :cond_0

    .line 99
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    const/4 v0, 0x0

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 102
    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->copyFrom(Lcom/zui/gallery/filtershow/controller/Parameter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
