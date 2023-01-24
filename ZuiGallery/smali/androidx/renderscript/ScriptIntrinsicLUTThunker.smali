.class Landroidx/renderscript/ScriptIntrinsicLUTThunker;
.super Landroidx/renderscript/ScriptIntrinsicLUT;
.source "ScriptIntrinsicLUTThunker.java"


# instance fields
.field mN:Landroid/renderscript/ScriptIntrinsicLUT;


# direct methods
.method private constructor <init>(ILandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicLUT;-><init>(ILandroidx/renderscript/RenderScript;)V

    return-void
.end method

.method public static bridge synthetic create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicLUT;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/renderscript/ScriptIntrinsicLUTThunker;->create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicLUTThunker;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicLUTThunker;
    .locals 3

    .line 33
    move-object v0, p0

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 34
    check-cast p1, Landroidx/renderscript/ElementThunker;

    .line 36
    new-instance v1, Landroidx/renderscript/ScriptIntrinsicLUTThunker;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroidx/renderscript/ScriptIntrinsicLUTThunker;-><init>(ILandroidx/renderscript/RenderScript;)V

    .line 38
    :try_start_0
    iget-object p0, v0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {p1}, Landroidx/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/renderscript/ScriptIntrinsicLUT;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicLUT;

    move-result-object p0

    iput-object p0, v1, Landroidx/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 40
    invoke-static {p0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public forEach(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 78
    check-cast p1, Landroidx/renderscript/AllocationThunker;

    .line 79
    check-cast p2, Landroidx/renderscript/AllocationThunker;

    .line 81
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {p1}, Landroidx/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 83
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getKernelID()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicLUTThunker;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    .line 90
    :try_start_0
    iget-object v1, p0, Landroidx/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicLUT;->getKernelID()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroidx/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 92
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/Script;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/ScriptIntrinsicLUTThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicLUT;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/ScriptIntrinsicLUT;
    .locals 1

    .line 25
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    return-object v0
.end method

.method public setAlpha(II)V
    .locals 1

    .line 71
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->setAlpha(II)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 73
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setBlue(II)V
    .locals 1

    .line 63
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->setBlue(II)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 65
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setGreen(II)V
    .locals 1

    .line 55
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->setGreen(II)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 57
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setRed(II)V
    .locals 1

    .line 47
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->setRed(II)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 49
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
