.class public Lcom/zui/gallery/filtershow/filters/ImageFilterKMeans;
.super Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;
.source "ImageFilterKMeans.java"


# static fields
.field private static final SERIALIZATION_NAME:Ljava/lang/String; = "KMEANS"


# instance fields
.field private mSeed:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterKMeans;->mSeed:I

    const-string v1, "KMeans"

    .line 29
    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterKMeans;->mName:Ljava/lang/String;

    .line 32
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 33
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 34
    invoke-virtual {v1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterKMeans;->mSeed:I

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 12

    .line 58
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterKMeans;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v5, v2

    move v6, v3

    :goto_0
    const/16 p2, 0x100

    if-le v5, p2, :cond_1

    if-le v6, p2, :cond_1

    .line 71
    div-int/lit8 v5, v5, 0x2

    .line 72
    div-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-eq v5, v2, :cond_2

    .line 75
    invoke-static {p1, v5, v6, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    move-object v4, p3

    goto :goto_1

    :cond_2
    move-object v4, p1

    :goto_1
    move v8, v5

    move v9, v6

    :goto_2
    const/16 p3, 0x40

    if-le v8, p3, :cond_3

    if-le v9, p3, :cond_3

    .line 82
    div-int/lit8 v8, v8, 0x2

    .line 83
    div-int/lit8 v9, v9, 0x2

    goto :goto_2

    :cond_3
    if-eq v8, v5, :cond_4

    .line 86
    invoke-static {v4, v8, v9, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    move-object v7, p3

    goto :goto_3

    :cond_4
    move-object v7, p1

    .line 89
    :goto_3
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterKMeans;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 90
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterKMeans;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result p3

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterKMeans;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getMinimum()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterKMeans;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getMaximum()I

    move-result v0

    add-int/2addr v0, p2

    rem-int v10, p3, v0

    .line 91
    iget v11, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterKMeans;->mSeed:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v11}, Lcom/zui/gallery/filtershow/filters/ImageFilterKMeans;->nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IIII)V

    :cond_5
    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 2

    .line 38
    invoke-super {p0}, Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;->getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    const-string v1, "KMeans"

    .line 39
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setName(Ljava/lang/String;)V

    const-string v1, "KMEANS"

    .line 40
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 41
    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterKMeans;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const/16 v1, 0x14

    .line 42
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setMaximum(I)V

    const/4 v1, 0x2

    .line 43
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setMinimum(I)V

    const/4 v1, 0x4

    .line 44
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setValue(I)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setDefaultValue(I)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setPreviewValue(I)V

    const v1, 0x7f10018f

    .line 47
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setTextId(I)V

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setSupportsPartialRendering(Z)V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IIII)V
.end method
