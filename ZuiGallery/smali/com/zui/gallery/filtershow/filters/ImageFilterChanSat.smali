.class public Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;
.super Lcom/zui/gallery/filtershow/filters/ImageFilterRS;
.source "ImageFilterChanSat.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "ImageFilterChanSat"

.field private static final STRIP_SIZE:I = 0x40


# instance fields
.field private mOverlayBitmap:Landroid/graphics/Bitmap;

.field mParameters:Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

.field private mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;

.field private mSourceBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;-><init>()V

    .line 37
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    const-string v0, "ChannelSat"

    .line 41
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->mName:Ljava/lang/String;

    return-void
.end method

.method private checkStop()Z
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->finish()V

    .line 155
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->getEnvironment()Lcom/zui/gallery/filtershow/pipeline/FilterEnvironment;

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

    .line 86
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->mSourceBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private runSelectiveAdjust(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 5

    .line 132
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    move-result v0

    .line 133
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v1

    .line 135
    new-instance v2, Landroidx/renderscript/Script$LaunchOptions;

    invoke-direct {v2}, Landroidx/renderscript/Script$LaunchOptions;-><init>()V

    const/4 v3, 0x0

    .line 137
    invoke-virtual {v2, v3, v0}, Landroidx/renderscript/Script$LaunchOptions;->setX(II)Landroidx/renderscript/Script$LaunchOptions;

    :goto_0
    if-ge v3, v1, :cond_2

    add-int/lit8 v0, v3, 0x40

    if-le v0, v1, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v0

    .line 144
    :goto_1
    invoke-virtual {v2, v3, v4}, Landroidx/renderscript/Script$LaunchOptions;->setY(II)Landroidx/renderscript/Script$LaunchOptions;

    .line 145
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;

    invoke-virtual {v3, p1, p2, v2}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->forEach_selectiveAdjust(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V

    .line 146
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->checkStop()Z

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

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    .line 97
    iput-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->mSourceBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method protected bindScriptValues()V
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    .line 105
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getY()I

    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FI)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->createFilter(Landroid/content/res/Resources;FILandroidx/renderscript/Allocation;)V

    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FILandroidx/renderscript/Allocation;)V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->getRenderScriptContext()Landroidx/renderscript/RenderScript;

    move-result-object p2

    .line 77
    new-instance p3, Landroidx/renderscript/Type$Builder;

    invoke-static {p2}, Landroidx/renderscript/Element;->F32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v0

    invoke-direct {p3, p2, v0}, Landroidx/renderscript/Type$Builder;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)V

    .line 78
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/renderscript/Type$Builder;->setX(I)Landroidx/renderscript/Type$Builder;

    .line 79
    invoke-virtual {p4}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/renderscript/Type;->getY()I

    move-result p4

    invoke-virtual {p3, p4}, Landroidx/renderscript/Type$Builder;->setY(I)Landroidx/renderscript/Type$Builder;

    .line 80
    new-instance p3, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;

    const p4, 0x7f0f0003

    invoke-direct {p3, p2, p1, p4}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;-><init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object p3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;

    return-void
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 46
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;-><init>()V

    return-object v0
.end method

.method protected resetAllocations()V
    .locals 0

    return-void
.end method

.method public resetScripts()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->destroy()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;

    :cond_0
    return-void
.end method

.method protected runFilter()V
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 114
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    invoke-virtual {v3, v2}, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;->getValue(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    move-result v0

    .line 119
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    .line 120
    invoke-virtual {p0, v0, v2}, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;

    .line 123
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->set_saturation([I)V

    .line 125
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->mScript:Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->invoke_setupGradParams()V

    .line 127
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->getInPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->getOutPixelsAllocation()Landroidx/renderscript/Allocation;

    move-result-object v1

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->runSelectiveAdjust(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterChanSatRepresentation;

    return-void
.end method
