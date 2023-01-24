.class public Lcom/zui/gallery/filtershow/filters/ImageFilterHue;
.super Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;
.source "ImageFilterHue.java"


# static fields
.field private static final SERIALIZATION_NAME:Ljava/lang/String; = "HUE"


# instance fields
.field private cmatrix:Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterHue;->cmatrix:Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;

    const-string v0, "Hue"

    .line 29
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterHue;->mName:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterHue;->cmatrix:Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterHue;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 56
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterHue;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v0

    int-to-float v0, v0

    .line 57
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterHue;->cmatrix:Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->identity()V

    .line 58
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterHue;->cmatrix:Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->setHue(F)V

    .line 60
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterHue;->cmatrix:Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/ColorSpaceMatrix;->getMatrix()[F

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zui/gallery/filtershow/filters/ImageFilterHue;->nativeApplyFilter(Landroid/graphics/Bitmap;II[F)V

    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 2

    .line 35
    invoke-super {p0}, Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;->getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    const-string v1, "Hue"

    .line 36
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setName(Ljava/lang/String;)V

    const-string v1, "HUE"

    .line 37
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 38
    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterHue;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const/16 v1, -0xb4

    .line 39
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setMinimum(I)V

    const/16 v1, 0xb4

    .line 40
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setMaximum(I)V

    const v1, 0x7f100174

    .line 41
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setTextId(I)V

    .line 42
    sget v1, Lcom/zui/gallery/filtershow/editors/BasicEditor;->ID:I

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setEditorId(I)V

    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setSupportsPartialRendering(Z)V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;II[F)V
.end method
