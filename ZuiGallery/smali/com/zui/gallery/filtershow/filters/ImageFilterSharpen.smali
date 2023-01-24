.class public Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;
.super Lcom/zui/gallery/filtershow/filters/ImageFilterRS;
.source "ImageFilterSharpen.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageFilterSharpen"

.field private static final SERIALIZATION_NAME:Ljava/lang/String; = "SHARPEN"


# instance fields
.field private mParameters:Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

.field private mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;-><init>()V

    const-string v0, "Sharpen"

    .line 30
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->mName:Ljava/lang/String;

    return-void
.end method

.method private computeKernel()V
    .locals 4

    .line 72
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->getScaleFactor()F

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    const/16 v0, 0x9

    new-array v0, v0, [F

    neg-float v2, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v3, 0x3

    aput v2, v0, v3

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    const/4 v3, 0x4

    aput v1, v0, v3

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 86
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->set_gCoeffs([F)V

    return-void
.end method


# virtual methods
.method protected bindScriptValues()V
    .locals 3

    .line 91
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    move-result v0

    .line 92
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v1

    .line 93
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {v2, v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->set_gWidth(I)V

    .line 94
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->set_gHeight(I)V

    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FI)V
    .locals 1

    .line 66
    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;

    if-nez p2, :cond_0

    .line 67
    new-instance p2, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object p3

    const/high16 v0, 0x7f0f0000

    invoke-direct {p2, p3, p1, v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;-><init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;

    :cond_0
    return-void
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 4

    .line 34
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    const-string v1, "Sharpen"

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;-><init>(Ljava/lang/String;III)V

    const-string v1, "SHARPEN"

    .line 35
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setSerializationName(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setShowParameterValue(Z)V

    .line 37
    const-class v2, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setFilterClass(Ljava/lang/Class;)V

    const v2, 0x7f100259

    .line 38
    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTextId(I)V

    const v2, 0x7f070159

    .line 39
    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setOverlayId(I)V

    .line 40
    sget v2, Lcom/zui/gallery/filtershow/editors/BasicEditor;->ID:I

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setEditorId(I)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setSupportsPartialRendering(Z)V

    return-object v0
.end method

.method protected resetAllocations()V
    .locals 0

    return-void
.end method

.method public resetScripts()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->destroy()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;

    :cond_0
    return-void
.end method

.method protected runFilter()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->computeKernel()V

    .line 103
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->set_gIn(Landroidx/renderscript/Allocation;)V

    .line 104
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->bind_gPixels(Landroidx/renderscript/Allocation;)V

    .line 105
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->getOutPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->forEach_root(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    .line 47
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterBasicRepresentation;

    return-void
.end method
