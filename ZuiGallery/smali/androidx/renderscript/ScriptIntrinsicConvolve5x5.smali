.class public Landroidx/renderscript/ScriptIntrinsicConvolve5x5;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicConvolve5x5.java"


# instance fields
.field private mInput:Landroidx/renderscript/Allocation;

.field private final mValues:[F


# direct methods
.method constructor <init>(ILandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/ScriptIntrinsic;-><init>(ILandroidx/renderscript/RenderScript;)V

    const/16 p1, 0x19

    new-array p1, p1, [F

    .line 26
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    return-void
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicConvolve5x5;
    .locals 1

    .line 51
    sget-boolean v0, Landroidx/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p0

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 53
    invoke-static {p0, p1}, Landroidx/renderscript/ScriptIntrinsicConvolve5x5Thunker;->create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicConvolve5x5Thunker;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    .line 55
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->getID(Landroidx/renderscript/RenderScript;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result p1

    .line 56
    new-instance v0, Landroidx/renderscript/ScriptIntrinsicConvolve5x5;

    invoke-direct {v0, p1, p0}, Landroidx/renderscript/ScriptIntrinsicConvolve5x5;-><init>(ILandroidx/renderscript/RenderScript;)V

    return-object v0
.end method


# virtual methods
.method public forEach(Landroidx/renderscript/Allocation;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0, v0, v1, p1, v1}, Landroidx/renderscript/ScriptIntrinsicConvolve5x5;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    return-void
.end method

.method public getFieldID_Input()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/ScriptIntrinsicConvolve5x5;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 111
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicConvolve5x5;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setCoefficients([F)V
    .locals 5

    .line 86
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 87
    :goto_0
    iget-object v3, p0, Landroidx/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    array-length v4, v3

    if-lt v2, v4, :cond_0

    .line 91
    invoke-virtual {p0, v1, v0}, Landroidx/renderscript/ScriptIntrinsicConvolve5x5;->setVar(ILandroidx/renderscript/FieldPacker;)V

    return-void

    .line 88
    :cond_0
    aget v4, p1, v2

    aput v4, v3, v2

    .line 89
    aget v3, v3, v2

    invoke-virtual {v0, v3}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setInput(Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 67
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicConvolve5x5;->mInput:Landroidx/renderscript/Allocation;

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, v0, p1}, Landroidx/renderscript/ScriptIntrinsicConvolve5x5;->setVar(ILandroidx/renderscript/BaseObj;)V

    return-void
.end method
