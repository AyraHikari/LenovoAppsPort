.class public Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
.super Ljava/lang/Object;
.source "FilterRepresentation.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "FilterRepresentation"

.field protected static final NAME_TAG:Ljava/lang/String; = "Name"

.field public static final TYPE_BORDER:B = 0x1t

.field public static final TYPE_CAPTION:B = 0x9t

.field public static final TYPE_DUALCAM:B = 0x8t

.field public static final TYPE_FX:B = 0x2t

.field public static final TYPE_GEOMETRY:B = 0x7t

.field public static final TYPE_NORMAL:B = 0x5t

.field public static final TYPE_TINYPLANET:B = 0x6t

.field public static final TYPE_VIGNETTE:B = 0x4t

.field public static final TYPE_WBALANCE:B = 0x3t


# instance fields
.field private mButtonId:I

.field private mEditorId:I

.field private mFilterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mFilterItem:Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

.field protected mImagePrest:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field private mIsBooleanFilter:Z

.field private mName:Ljava/lang/String;

.field private mOverlayId:I

.field private mOverlayOnly:Z

.field private mPriority:I

.field private mSerializationName:Ljava/lang/String;

.field private mShowParameterValue:Z

.field private mSupportsPartialRendering:Z

.field private mTextId:I

.field private typeCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 33
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->typeCode:I

    const/4 v0, 0x5

    .line 34
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mPriority:I

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mSupportsPartialRendering:Z

    .line 37
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mTextId:I

    .line 38
    sget v1, Lcom/zui/gallery/filtershow/editors/BasicEditor;->ID:I

    iput v1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mEditorId:I

    .line 39
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mButtonId:I

    .line 40
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mOverlayId:I

    .line 41
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mOverlayOnly:Z

    const/4 v1, 0x1

    .line 42
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mShowParameterValue:Z

    .line 43
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mIsBooleanFilter:Z

    .line 60
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public allowsSingleInstanceOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canMergeWith(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 2

    .line 308
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 309
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result p1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 2

    .line 64
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-object v0
.end method

.method protected copyAllParameters(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setName(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTypeCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTypeCode(I)V

    .line 72
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 73
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setFilterType(I)V

    .line 74
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->supportsPartialRendering()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setSupportsPartialRendering(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTextId(I)V

    .line 76
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getEditorId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setEditorId(I)V

    .line 77
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getOverlayId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setOverlayId(I)V

    .line 78
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getOverlayOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setOverlayOnly(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->showParameterValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setShowParameterValue(Z)V

    .line 80
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mSerializationName:Ljava/lang/String;

    iput-object v0, p1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mSerializationName:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->isBooleanFilter()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setIsBooleanFilter(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getImagePrest()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setImagePrest(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 83
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterItem()Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setFilterItem(Lcom/zui/gallery/filtershow/meishefilter/FilterItem;)V

    return-void
.end method

.method public deSerializeRepresentation(Landroid/util/JsonReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 281
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 282
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 283
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 287
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [[Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/String;

    .line 289
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->deSerializeRepresentation([[Ljava/lang/String;)V

    return-void
.end method

.method public deSerializeRepresentation([[Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 294
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 295
    aget-object v2, p1, v1

    aget-object v2, v2, v0

    const-string v3, "Name"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    aget-object p1, p1, v1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mName:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 90
    :cond_0
    iget-object v1, p1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mFilterClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mFilterClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mName:Ljava/lang/String;

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mPriority:I

    iget v2, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mPriority:I

    if-ne v1, v2, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->supportsPartialRendering()Z

    move-result v1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->supportsPartialRendering()Z

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mTextId:I

    iget v2, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mTextId:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mEditorId:I

    iget v2, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mEditorId:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mButtonId:I

    iget v2, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mButtonId:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mOverlayId:I

    iget v2, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mOverlayId:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mOverlayOnly:Z

    iget-boolean v2, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mOverlayOnly:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mShowParameterValue:Z

    iget-boolean v2, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mShowParameterValue:Z

    if-ne v1, v2, :cond_1

    iget-boolean p1, p1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mIsBooleanFilter:Z

    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mIsBooleanFilter:Z

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final getEditorId()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mEditorId:I

    return v0
.end method

.method public getEditorIds()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 235
    iget v1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mEditorId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    return-object v0
.end method

.method public getFilterClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mFilterClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFilterItem()Lcom/zui/gallery/filtershow/meishefilter/FilterItem;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mFilterItem:Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    return-object v0
.end method

.method public getFilterType()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mPriority:I

    return v0
.end method

.method public getImagePrest()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mImagePrest:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayId()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mOverlayId:I

    return v0
.end method

.method public getOverlayOnly()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mOverlayOnly:Z

    return v0
.end method

.method public getSerializationName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mSerializationName:Ljava/lang/String;

    return-object v0
.end method

.method public getStateRepresentation()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getTextId()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mTextId:I

    return v0
.end method

.method public getTypeCode()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->typeCode:I

    return v0
.end method

.method public isBooleanFilter()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mIsBooleanFilter:Z

    return v0
.end method

.method public isNil()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public same(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public serializeRepresentation(Landroid/util/JsonWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 263
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->serializeRepresentation()[[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 264
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 265
    aget-object v3, v0, v2

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 266
    aget-object v3, v0, v2

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public serializeRepresentation()[[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 274
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    return-object v1
.end method

.method public setEditorId(I)V
    .locals 0

    .line 240
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mEditorId:I

    return-void
.end method

.method public setFilterClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mFilterClass:Ljava/lang/Class;

    return-void
.end method

.method public setFilterItem(Lcom/zui/gallery/filtershow/meishefilter/FilterItem;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mFilterItem:Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    return-void
.end method

.method public setFilterType(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mPriority:I

    return-void
.end method

.method public setImagePrest(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mImagePrest:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-void
.end method

.method public setIsBooleanFilter(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mIsBooleanFilter:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mName:Ljava/lang/String;

    return-void
.end method

.method public setOverlayId(I)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mOverlayId:I

    return-void
.end method

.method public setOverlayOnly(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mOverlayOnly:Z

    return-void
.end method

.method public setSerializationName(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mSerializationName:Ljava/lang/String;

    return-void
.end method

.method public setShowParameterValue(Z)V
    .locals 0

    .line 248
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mShowParameterValue:Z

    return-void
.end method

.method public setSupportsPartialRendering(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mSupportsPartialRendering:Z

    return-void
.end method

.method public setTextId(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mTextId:I

    return-void
.end method

.method public setTypeCode(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->typeCode:I

    return-void
.end method

.method public showParameterValue()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mShowParameterValue:Z

    return v0
.end method

.method public supportsPartialRendering()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mSupportsPartialRendering:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public useParametersFrom(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    return-void
.end method
