.class public Landroidx/renderscript/ScriptIntrinsicBlend;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicBlend.java"


# direct methods
.method constructor <init>(ILandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/ScriptIntrinsic;-><init>(ILandroidx/renderscript/RenderScript;)V

    return-void
.end method

.method private blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 2

    .line 49
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/ScriptIntrinsicBlend;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/ScriptIntrinsicBlend;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/renderscript/ScriptIntrinsicBlend;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    return-void

    .line 53
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Output is not of expected format."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Input is not of expected format."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicBlend;
    .locals 1

    .line 38
    sget-boolean v0, Landroidx/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_0

    .line 39
    move-object v0, p0

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 40
    invoke-static {p0, p1}, Landroidx/renderscript/ScriptIntrinsicBlendThunker;->create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicBlendThunker;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x7

    .line 43
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->getID(Landroidx/renderscript/RenderScript;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result p1

    .line 44
    new-instance v0, Landroidx/renderscript/ScriptIntrinsicBlend;

    invoke-direct {v0, p1, p0}, Landroidx/renderscript/ScriptIntrinsicBlend;-><init>(ILandroidx/renderscript/RenderScript;)V

    return-object v0
.end method


# virtual methods
.method public forEachAdd(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/16 v0, 0x22

    .line 404
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public forEachClear(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public forEachDst(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 0

    return-void
.end method

.method public forEachDstAtop(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/16 v0, 0xa

    .line 260
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public forEachDstIn(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x6

    .line 182
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public forEachDstOut(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/16 v0, 0x8

    .line 220
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public forEachDstOver(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x4

    .line 144
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public forEachMultiply(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/16 v0, 0xe

    .line 308
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public forEachSrc(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x1

    .line 85
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public forEachSrcAtop(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/16 v0, 0x9

    .line 240
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public forEachSrcIn(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x5

    .line 163
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public forEachSrcOut(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x7

    .line 201
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public forEachSrcOver(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x3

    .line 125
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public forEachSubtract(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/16 v0, 0x23

    .line 423
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public forEachXor(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/16 v0, 0xb

    .line 279
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    return-void
.end method

.method public getKernelIDAdd()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x22

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 413
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDClear()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDDst()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDDstAtop()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0xa

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 269
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDDstIn()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 191
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDDstOut()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 229
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDDstOver()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 153
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDMultiply()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0xe

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 317
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSrc()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 94
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSrcAtop()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x9

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 249
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSrcIn()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 172
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSrcOut()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x7

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 210
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSrcOver()Landroidx/renderscript/Script$KernelID;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p0, v0, v0, v1, v1}, Landroidx/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSubtract()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0x23

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 432
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDXor()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/16 v0, 0xb

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 288
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method
