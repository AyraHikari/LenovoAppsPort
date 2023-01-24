.class public Lcom/zui/gallery/filtershow/filters/ImageFilterDownsample;
.super Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;
.source "ImageFilterDownsample.java"


# static fields
.field private static final ICON_DOWNSAMPLE_FRACTION:I = 0x8

.field private static final SERIALIZATION_NAME:Ljava/lang/String; = "DOWNSAMPLE"


# instance fields
.field private mImageLoader:Lcom/zui/gallery/filtershow/cache/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/cache/ImageLoader;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;-><init>()V

    const-string v0, "Downsample"

    .line 33
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDownsample;->mName:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterDownsample;->mImageLoader:Lcom/zui/gallery/filtershow/cache/ImageLoader;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 4

    .line 54
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterDownsample;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 59
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterDownsample;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v0

    .line 62
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 64
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v0, :cond_3

    const/16 v3, 0x64

    if-ge v0, v3, :cond_3

    mul-int/2addr v2, v0

    .line 68
    div-int/2addr v2, v3

    mul-int/2addr v1, v0

    .line 69
    div-int/2addr v1, v3

    if-lez v2, :cond_3

    if-lez v1, :cond_3

    if-ge v2, p2, :cond_3

    if-lt v1, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 75
    invoke-static {p1, v2, v1, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eq p2, p1, :cond_2

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object p2

    :cond_3
    :goto_0
    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 2

    .line 38
    invoke-super {p0}, Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;->getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    const-string v1, "Downsample"

    .line 39
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setName(Ljava/lang/String;)V

    const-string v1, "DOWNSAMPLE"

    .line 40
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 42
    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterDownsample;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const/16 v1, 0x64

    .line 43
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setMaximum(I)V

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setMinimum(I)V

    const/16 v1, 0x32

    .line 45
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setValue(I)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setDefaultValue(I)V

    const/4 v1, 0x3

    .line 47
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setPreviewValue(I)V

    const v1, 0x7f1000ea

    .line 48
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setTextId(I)V

    return-object v0
.end method
