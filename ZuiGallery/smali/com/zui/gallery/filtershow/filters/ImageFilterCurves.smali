.class public Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;
.super Lcom/zui/gallery/filtershow/filters/ImageFilter;
.source "ImageFilterCurves.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageFilterCurves"


# instance fields
.field mParameters:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;-><init>()V

    .line 26
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    const-string v0, "Curves"

    .line 40
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->mName:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->reset()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 9

    .line 57
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/imageshow/Spline;->isOriginal()Z

    move-result p2

    const/16 v0, 0x100

    if-nez p2, :cond_0

    new-array v7, v0, [I

    .line 59
    invoke-virtual {p0, v7, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->populateArray([II)V

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, v7

    move-object v6, v7

    invoke-virtual/range {v1 .. v7}, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->nativeApplyGradientFilter(Landroid/graphics/Bitmap;II[I[I[I)V

    .line 65
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/imageshow/Spline;->isOriginal()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    new-array p2, v0, [I

    .line 67
    invoke-virtual {p0, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->populateArray([II)V

    move-object v6, p2

    goto :goto_0

    :cond_1
    move-object v6, v1

    .line 70
    :goto_0
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/imageshow/Spline;->isOriginal()Z

    move-result p2

    if-nez p2, :cond_2

    new-array p2, v0, [I

    .line 72
    invoke-virtual {p0, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->populateArray([II)V

    move-object v7, p2

    goto :goto_1

    :cond_2
    move-object v7, v1

    .line 75
    :goto_1
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/imageshow/Spline;->isOriginal()Z

    move-result p2

    if-nez p2, :cond_3

    new-array v1, v0, [I

    .line 77
    invoke-virtual {p0, v1, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->populateArray([II)V

    :cond_3
    move-object v8, v1

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->nativeApplyGradientFilter(Landroid/graphics/Bitmap;II[I[I[I)V

    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 30
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;-><init>()V

    return-object v0
.end method

.method public getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;

    move-result-object p1

    return-object p1
.end method

.method public populateArray([II)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    invoke-virtual {v0, p2}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/imageshow/Spline;->getAppliedCurve()[F

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    .line 51
    aget v1, p2, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 4

    .line 94
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/Spline;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/imageshow/Spline;-><init>()V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/Spline;->addPoint(FF)I

    .line 97
    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/filtershow/imageshow/Spline;->addPoint(FF)I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    new-instance v3, Lcom/zui/gallery/filtershow/imageshow/Spline;

    invoke-direct {v3, v0}, Lcom/zui/gallery/filtershow/imageshow/Spline;-><init>(Lcom/zui/gallery/filtershow/imageshow/Spline;)V

    invoke-virtual {v2, v1, v3}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->setSpline(ILcom/zui/gallery/filtershow/imageshow/Spline;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSpline(Lcom/zui/gallery/filtershow/imageshow/Spline;I)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    new-instance v1, Lcom/zui/gallery/filtershow/imageshow/Spline;

    invoke-direct {v1, p1}, Lcom/zui/gallery/filtershow/imageshow/Spline;-><init>(Lcom/zui/gallery/filtershow/imageshow/Spline;)V

    invoke-virtual {v0, p2, v1}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->setSpline(ILcom/zui/gallery/filtershow/imageshow/Spline;)V

    return-void
.end method

.method public useFilter(Lcom/zui/gallery/filtershow/filters/ImageFilter;)V
    .locals 2

    .line 105
    check-cast p1, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 107
    iget-object v1, p1, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p1, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/zui/gallery/filtershow/imageshow/Spline;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->setSpline(Lcom/zui/gallery/filtershow/imageshow/Spline;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    .line 36
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterCurvesRepresentation;

    return-void
.end method
