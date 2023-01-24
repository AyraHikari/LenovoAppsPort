.class public Landroidx/renderscript/ScriptIntrinsic3DLUT;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsic3DLUT.java"


# instance fields
.field private mElement:Landroidx/renderscript/Element;

.field private mLUT:Landroidx/renderscript/Allocation;


# direct methods
.method protected constructor <init>(ILandroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/ScriptIntrinsic;-><init>(ILandroidx/renderscript/RenderScript;)V

    .line 36
    iput-object p3, p0, Landroidx/renderscript/ScriptIntrinsic3DLUT;->mElement:Landroidx/renderscript/Element;

    return-void
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsic3DLUT;
    .locals 2

    .line 50
    sget-boolean v0, Landroidx/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_0

    .line 51
    move-object v0, p0

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 52
    invoke-static {p0, p1}, Landroidx/renderscript/ScriptIntrinsic3DLUTThunker;->create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsic3DLUTThunker;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x8

    .line 54
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result v0

    .line 56
    invoke-static {p0}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    new-instance v1, Landroidx/renderscript/ScriptIntrinsic3DLUT;

    invoke-direct {v1, v0, p0, p1}, Landroidx/renderscript/ScriptIntrinsic3DLUT;-><init>(ILandroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)V

    return-object v1

    .line 57
    :cond_1
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p1, "Element must be compatible with uchar4."

    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public forEach(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0, v0, p1, p2, v1}, Landroidx/renderscript/ScriptIntrinsic3DLUT;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    return-void
.end method

.method public getKernelID()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsic3DLUT;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setLUT(Landroidx/renderscript/Allocation;)V
    .locals 2

    .line 73
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getZ()I

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/ScriptIntrinsic3DLUT;->mElement:Landroidx/renderscript/Element;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsic3DLUT;->mLUT:Landroidx/renderscript/Allocation;

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0, p1}, Landroidx/renderscript/ScriptIntrinsic3DLUT;->setVar(ILandroidx/renderscript/BaseObj;)V

    return-void

    .line 80
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "LUT element type must match."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "LUT must be 3d."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
