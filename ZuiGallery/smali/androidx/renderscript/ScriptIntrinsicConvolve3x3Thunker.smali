.class Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;
.super Landroidx/renderscript/ScriptIntrinsicConvolve3x3;
.source "ScriptIntrinsicConvolve3x3Thunker.java"


# instance fields
.field mN:Landroid/renderscript/ScriptIntrinsicConvolve3x3;


# direct methods
.method constructor <init>(ILandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicConvolve3x3;-><init>(ILandroidx/renderscript/RenderScript;)V

    return-void
.end method

.method public static bridge synthetic create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicConvolve3x3;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;->create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;
    .locals 3

    .line 34
    move-object v0, p0

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 35
    check-cast p1, Landroidx/renderscript/ElementThunker;

    .line 37
    new-instance v1, Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;-><init>(ILandroidx/renderscript/RenderScript;)V

    .line 39
    :try_start_0
    iget-object p0, v0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {p1}, Landroidx/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    move-result-object p0

    iput-object p0, v1, Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;->mN:Landroid/renderscript/ScriptIntrinsicConvolve3x3;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 41
    invoke-static {p0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public forEach(Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 64
    check-cast p1, Landroidx/renderscript/AllocationThunker;

    .line 66
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;->mN:Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    invoke-virtual {p1}, Landroidx/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->forEach(Landroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 68
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getFieldID_Input()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    .line 86
    :try_start_0
    iget-object v1, p0, Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;->mN:Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->getFieldID_Input()Landroid/renderscript/Script$FieldID;

    move-result-object v1

    iput-object v1, v0, Landroidx/renderscript/Script$FieldID;->mN:Landroid/renderscript/Script$FieldID;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 88
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getKernelID()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    .line 76
    :try_start_0
    iget-object v1, p0, Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;->mN:Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->getKernelID()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroidx/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 78
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/Script;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;->getNObj()Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/ScriptIntrinsicConvolve3x3;
    .locals 1

    .line 25
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;->mN:Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    return-object v0
.end method

.method public setCoefficients([F)V
    .locals 1

    .line 57
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;->mN:Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    invoke-virtual {v0, p1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setCoefficients([F)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 59
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setInput(Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 47
    check-cast p1, Landroidx/renderscript/AllocationThunker;

    .line 49
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicConvolve3x3Thunker;->mN:Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    invoke-virtual {p1}, Landroidx/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setInput(Landroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 51
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
