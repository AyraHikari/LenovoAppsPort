.class Landroidx/renderscript/ScriptIntrinsicYuvToRGBThunker;
.super Landroidx/renderscript/ScriptIntrinsicYuvToRGB;
.source "ScriptIntrinsicYuvToRGBThunker.java"


# instance fields
.field mN:Landroid/renderscript/ScriptIntrinsicYuvToRGB;


# direct methods
.method private constructor <init>(ILandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicYuvToRGB;-><init>(ILandroidx/renderscript/RenderScript;)V

    return-void
.end method

.method public static bridge synthetic create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicYuvToRGB;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/renderscript/ScriptIntrinsicYuvToRGBThunker;->create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicYuvToRGBThunker;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicYuvToRGBThunker;
    .locals 3

    .line 33
    move-object v0, p0

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 34
    check-cast p1, Landroidx/renderscript/ElementThunker;

    .line 36
    new-instance v1, Landroidx/renderscript/ScriptIntrinsicYuvToRGBThunker;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroidx/renderscript/ScriptIntrinsicYuvToRGBThunker;-><init>(ILandroidx/renderscript/RenderScript;)V

    .line 38
    :try_start_0
    iget-object p0, v0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {p1}, Landroidx/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object p0

    iput-object p0, v1, Landroidx/renderscript/ScriptIntrinsicYuvToRGBThunker;->mN:Landroid/renderscript/ScriptIntrinsicYuvToRGB;
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
.method public forEach(Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 56
    check-cast p1, Landroidx/renderscript/AllocationThunker;

    .line 58
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicYuvToRGBThunker;->mN:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    invoke-virtual {p1}, Landroidx/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 60
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getFieldID_Input()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/ScriptIntrinsicYuvToRGBThunker;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    .line 77
    :try_start_0
    iget-object v1, p0, Landroidx/renderscript/ScriptIntrinsicYuvToRGBThunker;->mN:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->getFieldID_Input()Landroid/renderscript/Script$FieldID;

    move-result-object v1

    iput-object v1, v0, Landroidx/renderscript/Script$FieldID;->mN:Landroid/renderscript/Script$FieldID;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 79
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getKernelID()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/ScriptIntrinsicYuvToRGBThunker;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    .line 67
    :try_start_0
    iget-object v1, p0, Landroidx/renderscript/ScriptIntrinsicYuvToRGBThunker;->mN:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->getKernelID()Landroid/renderscript/Script$KernelID;

    move-result-object v1

    iput-object v1, v0, Landroidx/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 69
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/Script;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/ScriptIntrinsicYuvToRGBThunker;->getNObj()Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    .locals 1

    .line 24
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicYuvToRGBThunker;->mN:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    return-object v0
.end method

.method public setInput(Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 47
    check-cast p1, Landroidx/renderscript/AllocationThunker;

    .line 49
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicYuvToRGBThunker;->mN:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    invoke-virtual {p1}, Landroidx/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V
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
