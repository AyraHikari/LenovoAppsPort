.class public Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;
.super Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.source "FilterMirrorRepresentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;
    }
.end annotation


# static fields
.field private static final SERIALIZATION_MIRROR_VALUE:Ljava/lang/String; = "value"

.field public static final SERIALIZATION_NAME:Ljava/lang/String; = "MIRROR"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->getNil()Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;-><init>(Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;)V
    .locals 1

    const-string v0, "MIRROR"

    .line 71
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->setSerializationName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->setShowParameterValue(Z)V

    .line 74
    const-class v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const/4 v0, 0x7

    .line 75
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->setFilterType(I)V

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->setSupportsPartialRendering(Z)V

    const v0, 0x7f1001a9

    .line 77
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->setTextId(I)V

    const v0, 0x7f0801e9

    .line 78
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->setEditorId(I)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->setMirror(Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;)V
    .locals 1

    .line 83
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->getMirror()Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;-><init>(Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;)V

    .line 84
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static getNil()Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;
    .locals 1

    .line 259
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->NONE:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

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

    .line 233
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;-><init>(Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    .line 238
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-eqz v0, :cond_0

    .line 241
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 242
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void

    .line 239
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "calling copyAllParameters with incompatible types!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cycle()V
    .locals 2

    .line 135
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$1;->$SwitchMap$com$zui$gallery$filtershow$filters$FilterMirrorRepresentation$Mirror:[I

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->ordinal()I

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

    .line 146
    :cond_0
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->NONE:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    goto :goto_0

    .line 143
    :cond_1
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->VERTICAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    goto :goto_0

    .line 140
    :cond_2
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->BOTH:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    goto :goto_0

    .line 137
    :cond_3
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->HORIZONTAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    :goto_0
    return-void
.end method

.method public cycle(Z)V
    .locals 0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 169
    sput-boolean p1, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->isMirrorDirectionHorizontal:Z

    .line 170
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->isInversionRatation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->cycleUpDown()V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->cycleLeftRight()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 176
    sput-boolean p1, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->isMirrorDirectionHorizontal:Z

    .line 177
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->isInversionRatation()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->cycleLeftRight()V

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->cycleUpDown()V

    :goto_0
    return-void
.end method

.method public cycleLeftRight()V
    .locals 2

    .line 189
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$1;->$SwitchMap$com$zui$gallery$filtershow$filters$FilterMirrorRepresentation$Mirror:[I

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->ordinal()I

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

    .line 200
    :cond_0
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->BOTH:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    goto :goto_0

    .line 197
    :cond_1
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->VERTICAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    goto :goto_0

    .line 194
    :cond_2
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->NONE:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    goto :goto_0

    .line 191
    :cond_3
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->HORIZONTAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    :goto_0
    return-void
.end method

.method public cycleUpDown()V
    .locals 2

    .line 209
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$1;->$SwitchMap$com$zui$gallery$filtershow$filters$FilterMirrorRepresentation$Mirror:[I

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->ordinal()I

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

    .line 220
    :cond_0
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->NONE:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    goto :goto_0

    .line 217
    :cond_1
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->HORIZONTAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    goto :goto_0

    .line 214
    :cond_2
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->BOTH:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    goto :goto_0

    .line 211
    :cond_3
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->VERTICAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    :goto_0
    return-void
.end method

.method public deSerializeRepresentation(Landroid/util/JsonReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x1

    .line 273
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value"

    .line 275
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->fromValue(C)Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->setMirror(Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 286
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->TAG:Ljava/lang/String;

    const-string v1, "WARNING: bad value when deserializing MIRROR"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 2

    .line 93
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 96
    :cond_0
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    .line 97
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    if-eq v0, p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getMirror()Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    return-object v0
.end method

.method public isHorizontal()Z
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    sget-object v1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->BOTH:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    sget-object v1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->HORIZONTAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isInversionRatation()Z
    .locals 4

    .line 154
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 159
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getGeometryFilters()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 162
    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->unpackGeometry(Ljava/util/Collection;)Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    move-result-object v0

    .line 164
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_1

    iget-object v0, v0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result v0

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isNil()Z
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->getNil()Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVertical()Z
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    sget-object v1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->BOTH:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    sget-object v1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->VERTICAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public serializeRepresentation(Landroid/util/JsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string/jumbo v0, "value"

    .line 265
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->value()C

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 266
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public set(Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;)V
    .locals 0

    .line 108
    iget-object p1, p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    return-void
.end method

.method public setMirror(Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 115
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->mMirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    return-void

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument to setMirror is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    .line 247
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-eqz v0, :cond_0

    .line 250
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->getMirror()Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->setMirror(Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;)V

    return-void

    .line 248
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "calling useParametersFrom with incompatible types!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
