.class public Lcom/zui/gallery/filtershow/filters/ImageFilterNegative;
.super Lcom/zui/gallery/filtershow/filters/ImageFilter;
.source "ImageFilterNegative.java"


# static fields
.field private static final SERIALIZATION_NAME:Ljava/lang/String; = "NEGATIVE"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;-><init>()V

    const-string v0, "Negative"

    .line 11
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterNegative;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 0

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterNegative;->nativeApplyFilter(Landroid/graphics/Bitmap;II)V

    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 2

    .line 15
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterDirectRepresentation;

    const-string v1, "Negative"

    invoke-direct {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterDirectRepresentation;-><init>(Ljava/lang/String;)V

    const-string v1, "NEGATIVE"

    .line 16
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 17
    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterNegative;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const v1, 0x7f1001b9

    .line 18
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTextId(I)V

    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setShowParameterValue(Z)V

    const v1, 0x7f0801e9

    .line 20
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setEditorId(I)V

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setSupportsPartialRendering(Z)V

    .line 22
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setIsBooleanFilter(Z)V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;II)V
.end method

.method public useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    return-void
.end method
