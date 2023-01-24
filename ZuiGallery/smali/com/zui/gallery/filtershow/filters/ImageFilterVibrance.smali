.class public Lcom/zui/gallery/filtershow/filters/ImageFilterVibrance;
.super Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;
.source "ImageFilterVibrance.java"


# static fields
.field private static final SERIALIZATION_NAME:Ljava/lang/String; = "VIBRANCE"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;-><init>()V

    const-string v0, "Vibrance"

    .line 26
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVibrance;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterVibrance;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 52
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterVibrance;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v0

    int-to-float v0, v0

    .line 53
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zui/gallery/filtershow/filters/ImageFilterVibrance;->nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V

    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 2

    .line 31
    invoke-super {p0}, Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;->getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    const-string v1, "Vibrance"

    .line 32
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setName(Ljava/lang/String;)V

    const-string v1, "VIBRANCE"

    .line 33
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 34
    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterVibrance;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const v1, 0x7f1002ad

    .line 35
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setTextId(I)V

    const/16 v1, -0x64

    .line 36
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setMinimum(I)V

    const/16 v1, 0x64

    .line 37
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setMaximum(I)V

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setDefaultValue(I)V

    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setSupportsPartialRendering(Z)V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V
.end method
