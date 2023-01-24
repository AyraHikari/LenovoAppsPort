.class Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;
.super Ljava/lang/Object;
.source "ImageVignette.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/imageshow/Oval;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/imageshow/ImageVignette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OvalSpaceAdapter"
.end annotation


# instance fields
.field mImgHeight:I

.field mImgWidth:I

.field private mOval:Lcom/zui/gallery/filtershow/imageshow/Oval;

.field mTmp:[F

.field mTmpRadiusX:F

.field mTmpRadiusY:F

.field mToImage:Landroid/graphics/Matrix;

.field mToScr:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 54
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    return-void
.end method


# virtual methods
.method public getCenterX()F
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mOval:Lcom/zui/gallery/filtershow/imageshow/Oval;

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/imageshow/Oval;->getCenterX()F

    move-result v1

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 90
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mOval:Lcom/zui/gallery/filtershow/imageshow/Oval;

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/imageshow/Oval;->getCenterY()F

    move-result v1

    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgHeight:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 91
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mToScr:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 93
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    aget v0, v0, v2

    return v0
.end method

.method public getCenterY()F
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mOval:Lcom/zui/gallery/filtershow/imageshow/Oval;

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/imageshow/Oval;->getCenterX()F

    move-result v1

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 99
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mOval:Lcom/zui/gallery/filtershow/imageshow/Oval;

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/imageshow/Oval;->getCenterY()F

    move-result v1

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 100
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mToScr:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 101
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    aget v0, v0, v2

    return v0
.end method

.method public getRadiusX()F
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mOval:Lcom/zui/gallery/filtershow/imageshow/Oval;

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/imageshow/Oval;->getRadiusX()F

    move-result v1

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 107
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mOval:Lcom/zui/gallery/filtershow/imageshow/Oval;

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/imageshow/Oval;->getRadiusY()F

    move-result v1

    iget v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgHeight:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 108
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mToScr:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 109
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getRadiusY()F
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mOval:Lcom/zui/gallery/filtershow/imageshow/Oval;

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/imageshow/Oval;->getRadiusX()F

    move-result v1

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 115
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mOval:Lcom/zui/gallery/filtershow/imageshow/Oval;

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/imageshow/Oval;->getRadiusY()F

    move-result v1

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 116
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mToScr:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 117
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public setCenter(FF)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 74
    aput p2, v0, p1

    .line 75
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mToImage:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 76
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mOval:Lcom/zui/gallery/filtershow/imageshow/Oval;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    aget v1, v0, v1

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    aget p1, v0, p1

    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-interface {p2, v1, p1}, Lcom/zui/gallery/filtershow/imageshow/Oval;->setCenter(FF)V

    return-void
.end method

.method public setImageOval(Lcom/zui/gallery/filtershow/imageshow/Oval;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mOval:Lcom/zui/gallery/filtershow/imageshow/Oval;

    return-void
.end method

.method public setRadius(FF)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmpRadiusX:F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 82
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmpRadiusY:F

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 83
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mToImage:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 84
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mOval:Lcom/zui/gallery/filtershow/imageshow/Oval;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    aget v1, v0, v1

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    aget p1, v0, p1

    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-interface {p2, v1, p1}, Lcom/zui/gallery/filtershow/imageshow/Oval;->setRadius(FF)V

    return-void
.end method

.method public setRadiusX(F)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmpRadiusX:F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 132
    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmpRadiusY:F

    const/4 v2, 0x1

    aput p1, v0, v2

    .line 133
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mToImage:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 134
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mOval:Lcom/zui/gallery/filtershow/imageshow/Oval;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    aget v0, v0, v1

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/Oval;->setRadiusX(F)V

    .line 135
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mOval:Lcom/zui/gallery/filtershow/imageshow/Oval;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    aget v0, v0, v2

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/Oval;->setRadiusY(F)V

    return-void
.end method

.method public setRadiusY(F)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmpRadiusX:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 123
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmpRadiusY:F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 124
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mToImage:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 125
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mOval:Lcom/zui/gallery/filtershow/imageshow/Oval;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    aget v0, v0, v2

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-interface {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/Oval;->setRadiusX(F)V

    .line 126
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mOval:Lcom/zui/gallery/filtershow/imageshow/Oval;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmp:[F

    aget v0, v0, v1

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/Oval;->setRadiusY(F)V

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;Landroid/graphics/Matrix;II)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mToScr:Landroid/graphics/Matrix;

    .line 64
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mToImage:Landroid/graphics/Matrix;

    .line 65
    iput p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgWidth:I

    .line 66
    iput p4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mImgHeight:I

    .line 67
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->getRadiusX()F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmpRadiusX:F

    .line 68
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->getRadiusY()F

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageVignette$OvalSpaceAdapter;->mTmpRadiusY:F

    return-void
.end method
