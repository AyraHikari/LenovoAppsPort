.class public Lcom/zui/gallery/filtershow/filters/ImageFilterWBalance;
.super Lcom/zui/gallery/filtershow/filters/ImageFilter;
.source "ImageFilterWBalance.java"


# static fields
.field private static final SERIALIZATION_NAME:Ljava/lang/String; = "WBALANCE"

.field private static final TAG:Ljava/lang/String; = "ImageFilterWBalance"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;-><init>()V

    const-string v0, "WBalance"

    .line 29
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterWBalance;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 6

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 56
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/filtershow/filters/ImageFilterWBalance;->nativeApplyFilter(Landroid/graphics/Bitmap;IIII)V

    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 2

    .line 33
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterDirectRepresentation;

    const-string v1, "WBalance"

    invoke-direct {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterDirectRepresentation;-><init>(Ljava/lang/String;)V

    const-string v1, "WBALANCE"

    .line 34
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 35
    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterWBalance;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const/4 v1, 0x3

    .line 36
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setFilterType(I)V

    const v1, 0x7f1002d1

    .line 37
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTextId(I)V

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setShowParameterValue(Z)V

    const v1, 0x7f0801e9

    .line 39
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setEditorId(I)V

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setSupportsPartialRendering(Z)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setIsBooleanFilter(Z)V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIII)V
.end method

.method public useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    return-void
.end method
