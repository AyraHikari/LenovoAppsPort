.class public Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;
.super Lcom/zui/gallery/filtershow/filters/ImageFilterRS;
.source "ImageFilterGrad.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "ImageFilterGrad"

.field private static final RADIUS_SCALE_FACTOR:I = 0xa0

.field private static final STRIP_SIZE:I = 0x40


# instance fields
.field private mOverlayBitmap:Landroid/graphics/Bitmap;

.field mParameters:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

.field private mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_grad;

.field private mSourceBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;-><init>()V

    .line 40
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    const-string v0, "grad"

    .line 44
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mName:Ljava/lang/String;

    return-void
.end method

.method private checkStop()Z
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->finish()V

    .line 177
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;->needsStop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getSourceBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mSourceBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private runSelectiveAdjust(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 5

    .line 154
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    move-result v0

    .line 155
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v1

    .line 157
    new-instance v2, Landroidx/renderscript/Script$LaunchOptions;

    invoke-direct {v2}, Landroidx/renderscript/Script$LaunchOptions;-><init>()V

    const/4 v3, 0x0

    .line 159
    invoke-virtual {v2, v3, v0}, Landroidx/renderscript/Script$LaunchOptions;->setX(II)Landroidx/renderscript/Script$LaunchOptions;

    :goto_0
    if-ge v3, v1, :cond_2

    add-int/lit8 v0, v3, 0x40

    if-le v0, v1, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v0

    .line 166
    :goto_1
    invoke-virtual {v2, v3, v4}, Landroidx/renderscript/Script$LaunchOptions;->setY(II)Landroidx/renderscript/Script$LaunchOptions;

    .line 167
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_grad;

    invoke-virtual {v3, p1, p2, v2}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->forEach_selectiveAdjust(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V

    .line 168
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->checkStop()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    move v3, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 0

    if-nez p3, :cond_0

    return-object p1

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    .line 100
    iput-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mSourceBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method protected bindScriptValues()V
    .locals 5

    .line 107
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    move-result v0

    .line 108
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v1

    .line 109
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_grad;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->set_inputWidth(J)V

    .line 110
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_grad;

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->set_inputHeight(J)V

    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FI)V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->createFilter(Landroid/content/res/Resources;FILandroidx/renderscript/Allocation;)V

    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FILandroidx/renderscript/Allocation;)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object p2

    .line 80
    new-instance p3, Landroidx/renderscript/Type$Builder;

    invoke-static {p2}, Landroidx/renderscript/Element;->F32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v0

    invoke-direct {p3, p2, v0}, Landroidx/renderscript/Type$Builder;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)V

    .line 81
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/renderscript/Type$Builder;->setX(I)Landroidx/renderscript/Type$Builder;

    .line 82
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/renderscript/Type;->getY()I

    move-result p4

    invoke-virtual {p3, p4}, Landroidx/renderscript/Type$Builder;->setY(I)Landroidx/renderscript/Type$Builder;

    .line 83
    new-instance p3, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;

    const p4, 0x7f0f0001

    invoke-direct {p3, p2, p1, p4}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;-><init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object p3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_grad;

    return-void
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 49
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;-><init>()V

    return-object v0
.end method

.method protected resetAllocations()V
    .locals 0

    return-void
.end method

.method public resetScripts()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_grad;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->destroy()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_grad;

    :cond_0
    return-void
.end method

.method protected runFilter()V
    .locals 10

    .line 115
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getXPos1()[I

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getYPos1()[I

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getXPos2()[I

    move-result-object v2

    .line 118
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getYPos2()[I

    move-result-object v3

    .line 120
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/renderscript/Type;->getX()I

    move-result v4

    .line 121
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/renderscript/Type;->getY()I

    move-result v5

    .line 122
    invoke-virtual {p0, v4, v5}, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    move v7, v6

    .line 124
    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_0

    .line 125
    aget v8, v0, v7

    int-to-float v8, v8

    aput v8, v5, v6

    .line 126
    aget v8, v1, v7

    int-to-float v8, v8

    const/4 v9, 0x1

    aput v8, v5, v9

    .line 127
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 128
    aget v8, v5, v6

    float-to-int v8, v8

    aput v8, v0, v7

    .line 129
    aget v8, v5, v9

    float-to-int v8, v8

    aput v8, v1, v7

    .line 130
    aget v8, v2, v7

    int-to-float v8, v8

    aput v8, v5, v6

    .line 131
    aget v8, v3, v7

    int-to-float v8, v8

    aput v8, v5, v9

    .line 132
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 133
    aget v8, v5, v6

    float-to-int v8, v8

    aput v8, v2, v7

    .line 134
    aget v8, v5, v9

    float-to-int v8, v8

    aput v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 137
    :cond_0
    iget-object v4, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_grad;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getMask()[Z

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->set_mask([Z)V

    .line 138
    iget-object v4, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_grad;

    invoke-virtual {v4, v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->set_xPos1([I)V

    .line 139
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_grad;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->set_yPos1([I)V

    .line 140
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_grad;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->set_xPos2([I)V

    .line 141
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_grad;

    invoke-virtual {v0, v3}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->set_yPos2([I)V

    .line 143
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_grad;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getBrightness()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->set_brightness([I)V

    .line 144
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_grad;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getContrast()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->set_contrast([I)V

    .line 145
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_grad;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getSaturation()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->set_saturation([I)V

    .line 147
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_grad;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->invoke_setupGradParams()V

    .line 149
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->getOutPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v1

    .line 148
    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->runSelectiveAdjust(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    return-void
.end method
