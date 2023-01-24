.class public Lcom/zui/gallery/filtershow/filters/ImageFilterHighlights;
.super Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;
.source "ImageFilterHighlights.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageFilterVignette"

.field private static final SERIALIZATION_NAME:Ljava/lang/String; = "HIGHLIGHTS"


# instance fields
.field mHighlightCurve:[D

.field mSpline:Lcom/zui/gallery/filtershow/filters/SplineMath;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;-><init>()V

    .line 31
    new-instance v0, Lcom/zui/gallery/filtershow/filters/SplineMath;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/zui/gallery/filtershow/filters/SplineMath;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterHighlights;->mSpline:Lcom/zui/gallery/filtershow/filters/SplineMath;

    new-array v0, v1, [D

    .line 32
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterHighlights;->mHighlightCurve:[D

    const-string v0, "Highlights"

    .line 28
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterHighlights;->mName:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x3fd47ae147ae147bL    # 0.32
        0x3fdac083126e978dL    # 0.418
        0x3fde76c8b4395810L    # 0.476
        0x3fe48b4395810625L    # 0.642
    .end array-data
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterHighlights;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object p2

    if-nez p2, :cond_1

    return-object p1

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterHighlights;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result p2

    int-to-float p2, p2

    neg-float p2, p2

    float-to-double p2, p2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p2, v0

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    const/4 v1, 0x5

    if-ge v7, v1, :cond_2

    int-to-double v1, v7

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    div-double v3, v1, v3

    .line 67
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterHighlights;->mHighlightCurve:[D

    aget-wide v1, v1, v7

    mul-double/2addr v1, p2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, p2

    mul-double/2addr v5, v3

    add-double/2addr v5, v1

    .line 68
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterHighlights;->mSpline:Lcom/zui/gallery/filtershow/filters/SplineMath;

    move v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/filtershow/filters/SplineMath;->setPoint(IDD)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 71
    :cond_2
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterHighlights;->mSpline:Lcom/zui/gallery/filtershow/filters/SplineMath;

    const/16 p3, 0x100

    invoke-virtual {p2, p3}, Lcom/zui/gallery/filtershow/filters/SplineMath;->calculatetCurve(I)[[F

    move-result-object p2

    .line 72
    array-length p3, p2

    new-array v1, p3, [F

    :goto_1
    if-ge v0, p3, :cond_3

    .line 74
    aget-object v2, p2, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 79
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/zui/gallery/filtershow/filters/ImageFilterHighlights;->nativeApplyFilter(Landroid/graphics/Bitmap;II[F)V

    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 2

    .line 36
    invoke-super {p0}, Lcom/zui/gallery/filtershow/filters/SimpleImageFilter;->getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    const-string v1, "Highlights"

    .line 37
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setName(Ljava/lang/String;)V

    const-string v1, "HIGHLIGHTS"

    .line 38
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 39
    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterHighlights;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const v1, 0x7f100171

    .line 40
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setTextId(I)V

    const/16 v1, -0x64

    .line 41
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setMinimum(I)V

    const/16 v1, 0x64

    .line 42
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setMaximum(I)V

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setDefaultValue(I)V

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->setSupportsPartialRendering(Z)V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;II[F)V
.end method
