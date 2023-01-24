.class public Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;
.super Lcom/zui/gallery/filtershow/filters/ImageFilterRS;
.source "ImageFilterVignette.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageFilterVignette"

.field public static final MODE_CONTRAST:I = 0x3

.field public static final MODE_EXPOSURE:I = 0x1

.field public static final MODE_FALLOFF:I = 0x4

.field public static final MODE_SATURATION:I = 0x2

.field public static final MODE_VIGNETTE:I


# instance fields
.field private mOverlayBitmap:Landroid/graphics/Bitmap;

.field mParameters:Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

.field private mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;-><init>()V

    const-string v0, "Vignette"

    .line 47
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mName:Ljava/lang/String;

    return-void
.end method

.method private calcRadius(FFII)F
    .locals 1

    int-to-float p3, p3

    sub-float/2addr p3, p1

    cmpg-float v0, p1, p3

    if-gez v0, :cond_0

    move p1, p3

    :cond_0
    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    move p1, p2

    :cond_1
    int-to-float p3, p4

    sub-float/2addr p3, p2

    cmpg-float p2, p1, p3

    if-gez p2, :cond_2

    move p1, p3

    :cond_2
    mul-float/2addr p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p3, :cond_1

    .line 133
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getPipeline()Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/zui/gallery/filtershow/pipeline/PipelineInterface;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0701b5

    .line 135
    invoke-static {p2, p3}, Lcom/zui/gallery/filtershow/filters/IconUtilities;->getFXBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 139
    :cond_0
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 142
    iget-object p3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mOverlayBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p1

    .line 145
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    return-object p1
.end method

.method protected bindScriptValues()V
    .locals 5

    .line 162
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    move-result v0

    .line 163
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v1

    .line 164
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->set_inputWidth(J)V

    .line 165
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->set_inputHeight(J)V

    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FI)V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object p2

    .line 83
    new-instance p3, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;

    const v0, 0x7f0f0005

    invoke-direct {p3, p2, p1, v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;-><init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object p3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;

    return-void
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 52
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;-><init>()V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIIIFFFF)V
.end method

.method protected resetAllocations()V
    .locals 0

    return-void
.end method

.method public resetScripts()V
    .locals 0

    return-void
.end method

.method protected runFilter()V
    .locals 13

    .line 89
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    move-result v0

    .line 90
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v1

    .line 92
    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    .line 93
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    .line 94
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->calcRadius(FFII)F

    move-result v4

    const/4 v5, 0x2

    new-array v6, v5, [F

    .line 99
    iget-object v7, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v7}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->isCenterSet()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 100
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;

    move-result-object v2

    .line 101
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 102
    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v7, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v7}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getCenterX()F

    move-result v7

    mul-float/2addr v4, v7

    aput v4, v6, v8

    .line 103
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v7, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v7}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getCenterY()F

    move-result v7

    mul-float/2addr v4, v7

    const/4 v7, 0x1

    aput v4, v6, v7

    .line 104
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 105
    aget v4, v6, v8

    .line 106
    aget v9, v6, v7

    .line 107
    iget v10, v3, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v11}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getRadiusX()F

    move-result v11

    mul-float/2addr v10, v11

    aput v10, v6, v8

    .line 108
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v10, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v10}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getRadiusY()F

    move-result v10

    mul-float/2addr v3, v10

    aput v3, v6, v7

    .line 109
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 110
    aget v2, v6, v8

    .line 111
    aget v3, v6, v7

    move v6, v3

    move v3, v9

    move v12, v4

    move v4, v2

    move v2, v12

    goto :goto_0

    :cond_0
    move v6, v4

    .line 114
    :goto_0
    iget-object v7, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;

    int-to-long v9, v0

    invoke-virtual {v7, v9, v10}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->set_inputWidth(J)V

    .line 115
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;

    int-to-long v9, v1

    invoke-virtual {v0, v9, v10}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->set_inputHeight(J)V

    .line 116
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v0, v8}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getValue(I)I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;

    const/4 v7, 0x0

    if-gez v0, :cond_1

    int-to-float v8, v0

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    invoke-virtual {v1, v8}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->set_finalSubtract(F)V

    .line 118
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;

    if-lez v0, :cond_2

    neg-int v0, v0

    int-to-float v7, v0

    :cond_2
    invoke-virtual {v1, v7}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->set_finalBright(F)V

    .line 119
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v1, v5}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getValue(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->set_finalSaturation(F)V

    .line 120
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getValue(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->set_finalContrast(F)V

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->set_centerx(F)V

    .line 122
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;

    invoke-virtual {v0, v3}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->set_centery(F)V

    .line 123
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;

    invoke-virtual {v0, v4}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->set_radiusx(F)V

    .line 124
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;

    invoke-virtual {v0, v6}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->set_radiusy(F)V

    .line 125
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;->getValue(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->set_strength(F)V

    .line 126
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->invoke_setupVignetteParams()V

    .line 127
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->getOutPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->forEach_vignette(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 58
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterVignetteRepresentation;

    return-void
.end method
