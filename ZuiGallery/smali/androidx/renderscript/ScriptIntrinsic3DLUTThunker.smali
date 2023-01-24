.class Landroidx/renderscript/ScriptIntrinsic3DLUTThunker;
.super Landroidx/renderscript/ScriptIntrinsic3DLUT;
.source "ScriptIntrinsic3DLUTThunker.java"


# instance fields
.field mN:Landroid/renderscript/ScriptIntrinsic3DLUT;


# direct methods
.method private constructor <init>(ILandroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/ScriptIntrinsic3DLUT;-><init>(ILandroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)V

    return-void
.end method

.method public static bridge synthetic create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsic3DLUT;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/renderscript/ScriptIntrinsic3DLUTThunker;->create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsic3DLUTThunker;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsic3DLUTThunker;
    .locals 4

    .line 37
    move-object v0, p0

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 38
    move-object v1, p1

    check-cast v1, Landroidx/renderscript/ElementThunker;

    .line 40
    new-instance v2, Landroidx/renderscript/ScriptIntrinsic3DLUTThunker;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, p1}, Landroidx/renderscript/ScriptIntrinsic3DLUTThunker;-><init>(ILandroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)V

    .line 42
    :try_start_0
    iget-object p0, v0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroidx/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/renderscript/ScriptIntrinsic3DLUT;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsic3DLUT;

    move-result-object p0

    iput-object p0, v2, Landroidx/renderscript/ScriptIntrinsic3DLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsic3DLUT;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 44
    invoke-static {p0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public forEach(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 67
    check-cast p1, Landroidx/renderscript/AllocationThunker;

    .line 68
    check-cast p2, Landroidx/renderscript/AllocationThunker;

    .line 70
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsic3DLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsic3DLUT;

    invoke-virtual {p1}, Landroidx/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/ScriptIntrinsic3DLUT;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 72
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getKernelID()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsic3DLUTThunker;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    .line 84
    :try_start_0
    iget-object v1, p0, Landroidx/renderscript/ScriptIntrinsic3DLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsic3DLUT;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsic3DLUT;->getKernelID()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroidx/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 86
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/Script;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/ScriptIntrinsic3DLUTThunker;->getNObj()Landroid/renderscript/ScriptIntrinsic3DLUT;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/ScriptIntrinsic3DLUT;
    .locals 1

    .line 29
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsic3DLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsic3DLUT;

    return-object v0
.end method

.method public setLUT(Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 50
    check-cast p1, Landroidx/renderscript/AllocationThunker;

    .line 52
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsic3DLUTThunker;->mN:Landroid/renderscript/ScriptIntrinsic3DLUT;

    invoke-virtual {p1}, Landroidx/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/renderscript/ScriptIntrinsic3DLUT;->setLUT(Landroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 54
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
