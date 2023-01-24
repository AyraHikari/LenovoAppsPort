.class public Lcom/zui/gallery/filtershow/filters/ImageFilterRedEye;
.super Lcom/zui/gallery/filtershow/filters/ImageFilter;
.source "ImageFilterRedEye.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageFilterRedEye"


# instance fields
.field mParameters:Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;-><init>()V

    .line 27
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRedEye;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;

    const-string v0, "Red Eye"

    .line 30
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRedEye;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 9

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    const/4 v0, 0x4

    new-array v0, v0, [S

    .line 64
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRedEye;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;->getNumberOfCandidates()I

    move-result v1

    .line 65
    invoke-virtual {p0, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterRedEye;->getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    .line 67
    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRedEye;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;

    invoke-virtual {v6, v4}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;->getCandidate(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;

    iget-object v6, v6, Lcom/zui/gallery/filtershow/filters/RedEyeCandidate;->mRect:Landroid/graphics/RectF;

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 68
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    int-to-float v6, p2

    int-to-float v7, p3

    const/4 v8, 0x0

    .line 69
    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    iget v6, v5, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    int-to-short v6, v6

    aput-short v6, v0, v3

    .line 71
    iget v6, v5, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    int-to-short v6, v6

    const/4 v7, 0x1

    aput-short v6, v0, v7

    const/4 v6, 0x2

    .line 72
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    int-to-short v7, v7

    aput-short v7, v0, v6

    const/4 v6, 0x3

    .line 73
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    int-to-short v5, v5

    aput-short v5, v0, v6

    .line 74
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRedEye;->nativeApplyFilter(Landroid/graphics/Bitmap;II[S)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRedEye;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;->clearCandidates()V

    return-void
.end method

.method public getCandidates()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/filters/FilterPoint;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRedEye;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;->getCandidates()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 35
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;-><init>()V

    return-object v0
.end method

.method public isNil()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRedEye;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;->isNil()Z

    move-result v0

    return v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;II[S)V
.end method

.method public useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;

    .line 55
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterRedEye;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterRedEyeRepresentation;

    return-void
.end method
