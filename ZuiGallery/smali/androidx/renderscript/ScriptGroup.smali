.class public Landroidx/renderscript/ScriptGroup;
.super Landroidx/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/ScriptGroup$Builder;,
        Landroidx/renderscript/ScriptGroup$ConnectLine;,
        Landroidx/renderscript/ScriptGroup$IO;,
        Landroidx/renderscript/ScriptGroup$Node;
    }
.end annotation


# instance fields
.field mInputs:[Landroidx/renderscript/ScriptGroup$IO;

.field mOutputs:[Landroidx/renderscript/ScriptGroup$IO;


# direct methods
.method constructor <init>(ILandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/BaseObj;-><init>(ILandroidx/renderscript/RenderScript;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 143
    iget-object v0, p0, Landroidx/renderscript/ScriptGroup;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/ScriptGroup;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/ScriptGroup;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/RenderScript;->nScriptGroupExecute(I)V

    return-void
.end method

.method public setInput(Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Allocation;)V
    .locals 3

    const/4 v0, 0x0

    .line 107
    :goto_0
    iget-object v1, p0, Landroidx/renderscript/ScriptGroup;->mInputs:[Landroidx/renderscript/ScriptGroup$IO;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 108
    aget-object v1, v1, v0

    iget-object v1, v1, Landroidx/renderscript/ScriptGroup$IO;->mKID:Landroidx/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_0

    .line 109
    iget-object v1, p0, Landroidx/renderscript/ScriptGroup;->mInputs:[Landroidx/renderscript/ScriptGroup$IO;

    aget-object v0, v1, v0

    iput-object p2, v0, Landroidx/renderscript/ScriptGroup$IO;->mAllocation:Landroidx/renderscript/Allocation;

    .line 110
    iget-object v0, p0, Landroidx/renderscript/ScriptGroup;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/ScriptGroup;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/ScriptGroup;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    iget-object v2, p0, Landroidx/renderscript/ScriptGroup;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p1, v2}, Landroidx/renderscript/Script$KernelID;->getID(Landroidx/renderscript/RenderScript;)I

    move-result p1

    iget-object v2, p0, Landroidx/renderscript/ScriptGroup;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, p2}, Landroidx/renderscript/RenderScript;->safeID(Landroidx/renderscript/BaseObj;)I

    move-result p2

    invoke-virtual {v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->nScriptGroupSetInput(III)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Script not found"

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutput(Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Allocation;)V
    .locals 3

    const/4 v0, 0x0

    .line 127
    :goto_0
    iget-object v1, p0, Landroidx/renderscript/ScriptGroup;->mOutputs:[Landroidx/renderscript/ScriptGroup$IO;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 128
    aget-object v1, v1, v0

    iget-object v1, v1, Landroidx/renderscript/ScriptGroup$IO;->mKID:Landroidx/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_0

    .line 129
    iget-object v1, p0, Landroidx/renderscript/ScriptGroup;->mOutputs:[Landroidx/renderscript/ScriptGroup$IO;

    aget-object v0, v1, v0

    iput-object p2, v0, Landroidx/renderscript/ScriptGroup$IO;->mAllocation:Landroidx/renderscript/Allocation;

    .line 130
    iget-object v0, p0, Landroidx/renderscript/ScriptGroup;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/ScriptGroup;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/ScriptGroup;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    iget-object v2, p0, Landroidx/renderscript/ScriptGroup;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p1, v2}, Landroidx/renderscript/Script$KernelID;->getID(Landroidx/renderscript/RenderScript;)I

    move-result p1

    iget-object v2, p0, Landroidx/renderscript/ScriptGroup;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, p2}, Landroidx/renderscript/RenderScript;->safeID(Landroidx/renderscript/BaseObj;)I

    move-result p2

    invoke-virtual {v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->nScriptGroupSetOutput(III)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Script not found"

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
