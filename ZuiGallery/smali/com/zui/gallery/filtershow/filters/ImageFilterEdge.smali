.class public Lcom/zui/gallery/filtershow/filters/ImageFilterEdge;
.super Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;
.source "ImageFilterEdge.java"


# static fields
.field private static final SERIALIZATION_NAME:Ljava/lang/String; = "EDGE"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;-><init>()V

    const-string v0, "Edge"

    .line 26
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterEdge;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterEdge;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 48
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterEdge;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x65

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 50
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zui/gallery/filtershow/filters/ImageFilterEdge;->nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V

    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 2

    .line 30
    invoke-super {p0}, Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;->getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    const-string v1, "Edge"

    .line 31
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setName(Ljava/lang/String;)V

    const-string v1, "EDGE"

    .line 32
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 33
    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterEdge;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const v1, 0x7f1000f9

    .line 34
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTextId(I)V

    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setSupportsPartialRendering(Z)V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V
.end method
