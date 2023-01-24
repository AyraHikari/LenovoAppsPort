.class Landroidx/renderscript/ScriptGroupThunker;
.super Landroidx/renderscript/ScriptGroup;
.source "ScriptGroupThunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/ScriptGroupThunker$Builder;
    }
.end annotation


# instance fields
.field mN:Landroid/renderscript/ScriptGroup;


# direct methods
.method constructor <init>(ILandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/ScriptGroup;-><init>(ILandroidx/renderscript/RenderScript;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 53
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptGroupThunker;->mN:Landroid/renderscript/ScriptGroup;

    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup;->execute()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 55
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/ScriptGroupThunker;->getNObj()Landroid/renderscript/ScriptGroup;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/ScriptGroup;
    .locals 1

    .line 26
    iget-object v0, p0, Landroidx/renderscript/ScriptGroupThunker;->mN:Landroid/renderscript/ScriptGroup;

    return-object v0
.end method

.method public setInput(Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 34
    check-cast p2, Landroidx/renderscript/AllocationThunker;

    .line 36
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptGroupThunker;->mN:Landroid/renderscript/ScriptGroup;

    iget-object p1, p1, Landroidx/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    invoke-virtual {p2}, Landroidx/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/ScriptGroup;->setInput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 38
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setOutput(Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 43
    check-cast p2, Landroidx/renderscript/AllocationThunker;

    .line 45
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptGroupThunker;->mN:Landroid/renderscript/ScriptGroup;

    iget-object p1, p1, Landroidx/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    invoke-virtual {p2}, Landroidx/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/ScriptGroup;->setOutput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 47
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
