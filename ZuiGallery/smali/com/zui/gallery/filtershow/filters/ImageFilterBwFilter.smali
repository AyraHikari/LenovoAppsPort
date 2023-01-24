.class public Lcom/zui/gallery/filtershow/filters/ImageFilterBwFilter;
.super Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;
.source "ImageFilterBwFilter.java"


# static fields
.field private static final SERIALIZATION_NAME:Ljava/lang/String; = "BWFILTER"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;-><init>()V

    const-string v0, "BW Filter"

    .line 29
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterBwFilter;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 7

    .line 49
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterBwFilter;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 p2, 0x3

    new-array p2, p2, [F

    .line 55
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterBwFilter;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result p3

    add-int/lit16 p3, p3, 0xb4

    int-to-float p3, p3

    const/4 v0, 0x0

    aput p3, p2, v0

    const/4 p3, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p2, p3

    const/4 p3, 0x2

    aput v1, p2, p3

    .line 57
    invoke-static {p2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p2

    shr-int/lit8 p3, p2, 0x10

    and-int/lit16 v4, p3, 0xff

    shr-int/lit8 p3, p2, 0x8

    and-int/lit16 v5, p3, 0xff

    shr-int/2addr p2, v0

    and-int/lit16 v6, p2, 0xff

    move-object v0, p0

    move-object v1, p1

    .line 61
    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/filtershow/filters/ImageFilterBwFilter;->nativeApplyFilter(Landroid/graphics/Bitmap;IIIII)V

    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 2

    .line 33
    invoke-super {p0}, Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;->getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    const-string v1, "BW Filter"

    .line 34
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setName(Ljava/lang/String;)V

    const-string v1, "BWFILTER"

    .line 35
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 37
    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterBwFilter;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const/16 v1, 0xb4

    .line 38
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setMaximum(I)V

    const/16 v1, -0xb4

    .line 39
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setMinimum(I)V

    const v1, 0x7f100060

    .line 40
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setTextId(I)V

    const/4 v1, 0x1

    .line 41
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setSupportsPartialRendering(Z)V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIIII)V
.end method
