.class public Landroidx/renderscript/ScriptIntrinsicConvolve3x3;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicConvolve3x3.java"


# instance fields
.field private mInput:Landroidx/renderscript/Allocation;

.field private final mValues:[F


# direct methods
.method constructor <init>(ILandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/ScriptIntrinsic;-><init>(ILandroidx/renderscript/RenderScript;)V

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 26
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    return-void
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicConvolve3x3;
    .locals 2

    .line 50
    sget-boolean v0, Landroidx/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_0

    .line 51
    move-object v0, p0

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 52
    invoke-static {p0, p1}, Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;->create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 55
    fill-array-data v0, :array_0

    .line 56
    invoke-static {p0}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 59
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->getID(Landroidx/renderscript/RenderScript;)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result p1

    .line 60
    new-instance v1, Landroidx/renderscript/ScriptIntrinsicConvolve3x3;

    invoke-direct {v1, p1, p0}, Landroidx/renderscript/ScriptIntrinsicConvolve3x3;-><init>(ILandroidx/renderscript/RenderScript;)V

    .line 61
    invoke-virtual {v1, v0}, Landroidx/renderscript/ScriptIntrinsicConvolve3x3;->setCoefficients([F)V

    return-object v1

    .line 57
    :cond_1
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p1, "Unsuported element type."

    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public forEach(Landroidx/renderscript/Allocation;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0, v0, v1, p1, v1}, Landroidx/renderscript/ScriptIntrinsicConvolve3x3;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    return-void
.end method

.method public getFieldID_Input()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/ScriptIntrinsicConvolve3x3;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicConvolve3x3;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setCoefficients([F)V
    .locals 5

    .line 90
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 91
    :goto_0
    iget-object v3, p0, Landroidx/renderscript/ScriptIntrinsicConvolve3x3;->mValues:[F

    array-length v4, v3

    if-lt v2, v4, :cond_0

    .line 95
    invoke-virtual {p0, v1, v0}, Landroidx/renderscript/ScriptIntrinsicConvolve3x3;->setVar(ILandroidx/renderscript/FieldPacker;)V

    return-void

    .line 92
    :cond_0
    aget v4, p1, v2

    aput v4, v3, v2

    .line 93
    aget v3, v3, v2

    invoke-virtual {v0, v3}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setInput(Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 73
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicConvolve3x3;->mInput:Landroidx/renderscript/Allocation;

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, v0, p1}, Landroidx/renderscript/ScriptIntrinsicConvolve3x3;->setVar(ILandroidx/renderscript/BaseObj;)V

    return-void
.end method
