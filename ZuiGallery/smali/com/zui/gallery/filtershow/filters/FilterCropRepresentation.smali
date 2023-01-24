.class public Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.source "FilterCropRepresentation.java"


# static fields
.field public static final BOUNDS:[Ljava/lang/String;

.field public static final SERIALIZATION_NAME:Ljava/lang/String; = "CROP"

.field private static final TAG:Ljava/lang/String;

.field private static final sNilRect:Landroid/graphics/RectF;


# instance fields
.field mCrop:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "C0"

    const-string v1, "C1"

    const-string v2, "C2"

    const-string v3, "C3"

    .line 32
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->BOUNDS:[Ljava/lang/String;

    .line 35
    const-class v0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->TAG:Ljava/lang/String;

    .line 144
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->sNilRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->sNilRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;-><init>(Landroid/graphics/RectF;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 2

    const-string v0, "CROP"

    .line 40
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->getNil()Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    .line 41
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->setSerializationName(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->setShowParameterValue(Z)V

    .line 43
    const-class v1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const/4 v1, 0x7

    .line 44
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->setFilterType(I)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->setSupportsPartialRendering(Z)V

    const v0, 0x7f1000a5

    .line 46
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->setTextId(I)V

    const v0, 0x7f080173

    .line 47
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->setEditorId(I)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->setCrop(Landroid/graphics/RectF;)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;)V
    .locals 1

    .line 52
    iget-object v0, p1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;-><init>(Landroid/graphics/RectF;)V

    .line 53
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static findNormalizedCrop(Landroid/graphics/RectF;II)V
    .locals 1

    .line 111
    iget v0, p0, Landroid/graphics/RectF;->left:F

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 112
    iget v0, p0, Landroid/graphics/RectF;->top:F

    int-to-float p2, p2

    div-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 113
    iget v0, p0, Landroid/graphics/RectF;->right:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 114
    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static findScaledCrop(Landroid/graphics/RectF;II)V
    .locals 1

    .line 100
    iget v0, p0, Landroid/graphics/RectF;->left:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 101
    iget v0, p0, Landroid/graphics/RectF;->top:F

    int-to-float p2, p2

    mul-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 102
    iget v0, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 103
    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static getNil()Landroid/graphics/RectF;
    .locals 2

    .line 152
    new-instance v0, Landroid/graphics/RectF;

    sget-object v1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->sNilRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

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

    .line 124
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;-><init>(Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    .line 129
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    if-eqz v0, :cond_0

    .line 132
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 133
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void

    .line 130
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

    .line 167
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 168
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->BOUNDS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 172
    :cond_0
    sget-object v1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->BOUNDS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 174
    :cond_1
    sget-object v1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->BOUNDS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 176
    :cond_2
    sget-object v1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->BOUNDS:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 182
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 3

    .line 66
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 69
    :cond_0
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    .line 70
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getCrop()Landroid/graphics/RectF;
    .locals 2

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getCrop(Landroid/graphics/RectF;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public isNil()Z
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    sget-object v1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->sNilRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public serializeRepresentation(Landroid/util/JsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 158
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->BOUNDS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 159
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->BOUNDS:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 160
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->BOUNDS:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 161
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->BOUNDS:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 162
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public set(Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setCrop(Landroid/graphics/RectF;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 92
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->setFilterImageScaled(Landroid/content/Context;Z)V

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument to setCrop is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    .line 138
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    if-eqz v0, :cond_0

    .line 141
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->mCrop:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->setCrop(Landroid/graphics/RectF;)V

    return-void

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "calling useParametersFrom with incompatible types!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
