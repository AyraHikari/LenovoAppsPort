.class public Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.source "FilterColorBorderRepresentation.java"


# static fields
.field public static DEFAULT_MENU_COLOR1:I = -0x1

.field public static DEFAULT_MENU_COLOR2:I = -0x1000000

.field public static DEFAULT_MENU_COLOR3:I = -0x777778

.field public static DEFAULT_MENU_COLOR4:I = -0x3356

.field public static DEFAULT_MENU_COLOR5:I = -0x555556

.field private static final LOGTAG:Ljava/lang/String; = "FilterColorBorderRepresentation"

.field public static final PARAM_COLOR:I = 0x2

.field public static final PARAM_RADIUS:I = 0x1

.field public static final PARAM_SIZE:I = 0x0

.field private static final SERIALIZATION_NAME:Ljava/lang/String; = "COLORBORDER"


# instance fields
.field private mAllParam:[Lcom/zui/gallery/filtershow/controller/Parameter;

.field private mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColor;

.field private mParamRadius:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

.field private mParamSize:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

.field private mPramMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(III)V
    .locals 7

    const-string v0, "ColorBorder"

    .line 55
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x1e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;-><init>(IIII)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamSize:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 44
    new-instance v0, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;-><init>(IIII)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamRadius:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 45
    new-instance v0, Lcom/zui/gallery/filtershow/controller/ParameterColor;

    sget v5, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->DEFAULT_MENU_COLOR1:I

    invoke-direct {v0, v3, v5}, Lcom/zui/gallery/filtershow/controller/ParameterColor;-><init>(II)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    new-array v5, v2, [Lcom/zui/gallery/filtershow/controller/Parameter;

    .line 47
    iget-object v6, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamSize:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamRadius:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aput-object v6, v5, v4

    aput-object v0, v5, v3

    iput-object v5, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/Parameter;

    const-string v0, "COLORBORDER"

    .line 56
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, v4}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->setFilterType(I)V

    const v0, 0x7f10005f

    .line 58
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->setTextId(I)V

    const v0, 0x7f080171

    .line 59
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->setEditorId(I)V

    .line 60
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->setShowParameterValue(Z)V

    .line 61
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 62
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->setValue(I)V

    .line 63
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamSize:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    .line 64
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamRadius:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {p1, p3}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    .line 65
    iget-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    const/4 p2, 0x5

    new-array p2, p2, [I

    sget p3, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->DEFAULT_MENU_COLOR1:I

    aput p3, p2, v1

    sget p3, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->DEFAULT_MENU_COLOR2:I

    aput p3, p2, v4

    sget p3, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->DEFAULT_MENU_COLOR3:I

    aput p3, p2, v3

    sget p3, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->DEFAULT_MENU_COLOR4:I

    aput p3, p2, v2

    sget p3, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->DEFAULT_MENU_COLOR5:I

    const/4 v0, 0x4

    aput p3, p2, v0

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->setColorpalette([I)V

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

    .line 79
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;-><init>(III)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 88
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

    .line 187
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 188
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "size"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamSize:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    goto :goto_0

    :cond_0
    const-string v1, "radius"

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamRadius:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    goto :goto_0

    :cond_1
    const-string v1, "color"

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->setValue(I)V

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 200
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 3

    .line 104
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 107
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    if-eqz v0, :cond_1

    .line 108
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    .line 109
    iget-object v0, p1, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->getValue()I

    move-result v0

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamRadius:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 110
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v0

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamRadius:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamSize:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 111
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamSize:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getBorderRadius()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamRadius:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v0

    return v0
.end method

.method public getBorderSize()I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamSize:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->getValue()I

    move-result v0

    return v0
.end method

.method public getCurrentParam()Lcom/zui/gallery/filtershow/controller/Parameter;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/Parameter;

    iget v1, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mPramMode:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getParam(I)Lcom/zui/gallery/filtershow/controller/Parameter;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/Parameter;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTextId()I
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f10005f

    return v0

    .line 132
    :cond_0
    invoke-super {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v0

    return v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public serializeRepresentation(Landroid/util/JsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string/jumbo v0, "size"

    .line 176
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 177
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamSize:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v0, "radius"

    .line 178
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 179
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamRadius:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v0, "color"

    .line 180
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 181
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 183
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public setBorderRadius(I)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamRadius:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    return-void
.end method

.method public setBorderSize(I)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamSize:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->setValue(I)V

    return-void
.end method

.method public setPramMode(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mPramMode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterBorder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 2

    .line 92
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    .line 94
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->setName(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    iget-object v1, p1, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->mParamColor:Lcom/zui/gallery/filtershow/controller/ParameterColor;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/ParameterColor;->copyPalletFrom(Lcom/zui/gallery/filtershow/controller/ParameterColor;)V

    .line 97
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->getBorderSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->setBorderSize(I)V

    .line 98
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->getBorderRadius()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;->setBorderRadius(I)V

    :cond_0
    return-void
.end method
