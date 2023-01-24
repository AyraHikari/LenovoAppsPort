.class public Landroidx/renderscript/ScriptIntrinsicYuvToRGB;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicYuvToRGB.java"


# instance fields
.field private mInput:Landroidx/renderscript/Allocation;


# direct methods
.method constructor <init>(ILandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/ScriptIntrinsic;-><init>(ILandroidx/renderscript/RenderScript;)V

    return-void
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicYuvToRGB;
    .locals 1

    .line 45
    sget-boolean v0, Landroidx/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_0

    .line 46
    move-object v0, p0

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 47
    invoke-static {p0, p1}, Landroidx/renderscript/ScriptIntrinsicYuvToRGBThunker;->create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicYuvToRGBThunker;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x6

    .line 51
    invoke-virtual {p1, p0}, Landroidx/renderscript/Element;->getID(Landroidx/renderscript/RenderScript;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result p1

    .line 52
    new-instance v0, Landroidx/renderscript/ScriptIntrinsicYuvToRGB;

    invoke-direct {v0, p1, p0}, Landroidx/renderscript/ScriptIntrinsicYuvToRGB;-><init>(ILandroidx/renderscript/RenderScript;)V

    return-object v0
.end method


# virtual methods
.method public forEach(Landroidx/renderscript/Allocation;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v0, v1, p1, v1}, Landroidx/renderscript/ScriptIntrinsicYuvToRGB;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    return-void
.end method

.method public getFieldID_Input()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/ScriptIntrinsicYuvToRGB;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicYuvToRGB;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setInput(Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 63
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicYuvToRGB;->mInput:Landroidx/renderscript/Allocation;

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0, p1}, Landroidx/renderscript/ScriptIntrinsicYuvToRGB;->setVar(ILandroidx/renderscript/BaseObj;)V

    return-void
.end method
