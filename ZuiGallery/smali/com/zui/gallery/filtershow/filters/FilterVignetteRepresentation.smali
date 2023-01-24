.class public Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.source "FilterVignetteRepresentation.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/imageshow/Oval;


# static fields
.field private static final ARGS:Ljava/lang/String; = "adjust"

.field private static final ELLIPSE:Ljava/lang/String; = "ellipse"

.field private static final LOGTAG:Ljava/lang/String; = "FilterVignetteRepresentation"

.field private static MAX:I = 0x64

.field private static MAXFALLOF:I = 0xc8

.field private static MIN:I = -0x64

.field public static final MODE_CONTRAST:I = 0x3

.field public static final MODE_EXPOSURE:I = 0x1

.field public static final MODE_FALLOFF:I = 0x4

.field public static final MODE_SATURATION:I = 0x2

.field public static final MODE_VIGNETTE:I


# instance fields
.field private mAllParam:[Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

.field private mCenterX:F

.field private mCenterY:F

.field private mParamContrast:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

.field private mParamExposure:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

.field private mParamFalloff:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

.field private mParamSaturation:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

.field private mParamVignette:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

.field private mParameterMode:I

.field private mRadiusX:F

.field private mRadiusY:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const-string v0, "Vignette"

    .line 60
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 33
    iput v1, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mCenterX:F

    .line 34
    iput v1, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mCenterY:F

    .line 35
    iput v1, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mRadiusX:F

    .line 36
    iput v1, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mRadiusY:F

    .line 46
    new-instance v1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    sget v2, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->MIN:I

    sget v3, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->MAX:I

    const/4 v4, 0x0

    const/16 v5, 0x32

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;-><init>(IIII)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamVignette:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 47
    new-instance v1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    sget v2, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->MIN:I

    sget v3, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->MAX:I

    const/4 v5, 0x1

    invoke-direct {v1, v5, v4, v2, v3}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;-><init>(IIII)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamExposure:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 48
    new-instance v1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    sget v2, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->MIN:I

    sget v3, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->MAX:I

    const/4 v6, 0x2

    invoke-direct {v1, v6, v4, v2, v3}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;-><init>(IIII)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamSaturation:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 49
    new-instance v1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    sget v2, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->MIN:I

    sget v3, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->MAX:I

    const/4 v7, 0x3

    invoke-direct {v1, v7, v4, v2, v3}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;-><init>(IIII)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamContrast:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 50
    new-instance v1, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    sget v2, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->MAXFALLOF:I

    const/4 v3, 0x4

    const/16 v8, 0x28

    invoke-direct {v1, v3, v8, v4, v2}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;-><init>(IIII)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamFalloff:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    .line 51
    iget-object v8, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamVignette:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aput-object v8, v2, v4

    iget-object v4, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamExposure:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aput-object v4, v2, v5

    iget-object v4, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamSaturation:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aput-object v4, v2, v6

    iget-object v4, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamContrast:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aput-object v4, v2, v7

    aput-object v1, v2, v3

    iput-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    const-string v1, "VIGNETTE"

    .line 61
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, v5}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->setShowParameterValue(Z)V

    .line 63
    invoke-virtual {p0, v3}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->setFilterType(I)V

    const v1, 0x7f1002ba

    .line 64
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->setTextId(I)V

    const v1, 0x7f0803a6

    .line 65
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->setEditorId(I)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->setName(Ljava/lang/String;)V

    .line 67
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->setFilterClass(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 100
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;-><init>()V

    .line 101
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 108
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

    .line 210
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 212
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ellipse"

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 216
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 217
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mCenterX:F

    .line 218
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 219
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mCenterY:F

    .line 220
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 221
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mRadiusX:F

    .line 222
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 223
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mRadiusY:F

    .line 224
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 225
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    :cond_0
    const-string v1, "adjust"

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 228
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 229
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamVignette:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    .line 230
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 231
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamExposure:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    .line 232
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 233
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamSaturation:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    .line 234
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 235
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamContrast:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    .line 236
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 237
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamFalloff:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    .line 238
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 239
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_0

    .line 241
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 244
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 4

    .line 164
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 167
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    if-eqz v0, :cond_3

    .line 168
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    move v0, v1

    .line 169
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 170
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v2

    iget-object v3, p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getCenterX()F

    move-result v0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getCenterX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    .line 174
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getCenterY()F

    move-result v0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getCenterY()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    .line 175
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getRadiusX()F

    move-result v0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getRadiusX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    .line 176
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getRadiusY()F

    move-result p1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getRadiusY()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public getCenterX()F
    .locals 1

    .line 119
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mCenterX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .line 124
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mCenterY:F

    return v0
.end method

.method public getCurrentParameter()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParameterMode:I

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getFilterParameter(I)Lcom/zui/gallery/filtershow/controller/BasicParameterInt;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getParameterMode()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParameterMode:I

    return v0
.end method

.method public getRadiusX()F
    .locals 1

    .line 145
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mRadiusX:F

    return v0
.end method

.method public getRadiusY()F
    .locals 1

    .line 150
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mRadiusY:F

    return v0
.end method

.method public getValue(I)I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result p1

    return p1
.end method

.method public isCenterSet()Z
    .locals 2

    .line 154
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mCenterX:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNil()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public serializeRepresentation(Landroid/util/JsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "ellipse"

    .line 188
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 189
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 190
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mCenterX:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 191
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mCenterY:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 192
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mRadiusX:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 193
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mRadiusY:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 194
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    const-string v0, "adjust"

    .line 196
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 197
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 198
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamVignette:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 199
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamExposure:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 200
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamSaturation:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 201
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamContrast:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 202
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamFalloff:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 203
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 204
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public setCenter(FF)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mCenterX:F

    .line 114
    iput p2, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mCenterY:F

    return-void
.end method

.method public setCurrentParameter(I)V
    .locals 1

    .line 259
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParameterMode:I

    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->setValue(II)V

    return-void
.end method

.method public setParameterMode(I)V
    .locals 0

    .line 251
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParameterMode:I

    return-void
.end method

.method public setRadius(FF)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mRadiusX:F

    .line 130
    iput p2, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mRadiusY:F

    return-void
.end method

.method public setRadiusX(F)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mRadiusX:F

    return-void
.end method

.method public setRadiusY(F)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mRadiusY:F

    return-void
.end method

.method public setValue(II)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mAllParam:[Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mCenterX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mCenterY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " radius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mRadiusX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 73
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    .line 74
    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mCenterX:F

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mCenterX:F

    .line 75
    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mCenterY:F

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mCenterY:F

    .line 76
    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mRadiusX:F

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mRadiusX:F

    .line 77
    iget v0, p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mRadiusY:F

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mRadiusY:F

    .line 78
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamVignette:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    iget-object v1, p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamVignette:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    .line 79
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamExposure:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    iget-object v1, p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamExposure:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    .line 80
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamSaturation:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    iget-object v1, p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamSaturation:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    .line 81
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamContrast:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    iget-object v1, p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamContrast:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    .line 82
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamFalloff:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->mParamFalloff:Lcom/zui/gallery/filtershow/controller/BasicParameterInt;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->getValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/controller/BasicParameterInt;->setValue(I)V

    return-void
.end method
