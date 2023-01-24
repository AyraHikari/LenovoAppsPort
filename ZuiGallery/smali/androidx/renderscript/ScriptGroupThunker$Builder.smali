.class public final Landroidx/renderscript/ScriptGroupThunker$Builder;
.super Ljava/lang/Object;
.source "ScriptGroupThunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/ScriptGroupThunker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field bN:Landroid/renderscript/ScriptGroup$Builder;

.field mRS:Landroidx/renderscript/RenderScript;


# direct methods
.method constructor <init>(Landroidx/renderscript/RenderScript;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object v0, p1

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 67
    iput-object p1, p0, Landroidx/renderscript/ScriptGroupThunker$Builder;->mRS:Landroidx/renderscript/RenderScript;

    .line 69
    :try_start_0
    new-instance p1, Landroid/renderscript/ScriptGroup$Builder;

    iget-object v0, v0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-direct {p1, v0}, Landroid/renderscript/ScriptGroup$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object p1, p0, Landroidx/renderscript/ScriptGroupThunker$Builder;->bN:Landroid/renderscript/ScriptGroup$Builder;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 71
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public addConnection(Landroidx/renderscript/Type;Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Script$FieldID;)Landroidx/renderscript/ScriptGroupThunker$Builder;
    .locals 1

    .line 85
    check-cast p1, Landroidx/renderscript/TypeThunker;

    .line 87
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptGroupThunker$Builder;->bN:Landroid/renderscript/ScriptGroup$Builder;

    invoke-virtual {p1}, Landroidx/renderscript/TypeThunker;->getNObj()Landroid/renderscript/Type;

    move-result-object p1

    iget-object p2, p2, Landroidx/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    iget-object p3, p3, Landroidx/renderscript/Script$FieldID;->mN:Landroid/renderscript/Script$FieldID;

    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/ScriptGroup$Builder;->addConnection(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$FieldID;)Landroid/renderscript/ScriptGroup$Builder;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 89
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public addConnection(Landroidx/renderscript/Type;Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Script$KernelID;)Landroidx/renderscript/ScriptGroupThunker$Builder;
    .locals 1

    .line 95
    check-cast p1, Landroidx/renderscript/TypeThunker;

    .line 97
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptGroupThunker$Builder;->bN:Landroid/renderscript/ScriptGroup$Builder;

    invoke-virtual {p1}, Landroidx/renderscript/TypeThunker;->getNObj()Landroid/renderscript/Type;

    move-result-object p1

    iget-object p2, p2, Landroidx/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    iget-object p3, p3, Landroidx/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/ScriptGroup$Builder;->addConnection(Landroid/renderscript/Type;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Builder;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 99
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public addKernel(Landroidx/renderscript/Script$KernelID;)Landroidx/renderscript/ScriptGroupThunker$Builder;
    .locals 1

    .line 77
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ScriptGroupThunker$Builder;->bN:Landroid/renderscript/ScriptGroup$Builder;

    iget-object p1, p1, Landroidx/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    invoke-virtual {v0, p1}, Landroid/renderscript/ScriptGroup$Builder;->addKernel(Landroid/renderscript/Script$KernelID;)Landroid/renderscript/ScriptGroup$Builder;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 79
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public create()Landroidx/renderscript/ScriptGroupThunker;
    .locals 3

    .line 107
    new-instance v0, Landroidx/renderscript/ScriptGroupThunker;

    iget-object v1, p0, Landroidx/renderscript/ScriptGroupThunker$Builder;->mRS:Landroidx/renderscript/RenderScript;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/renderscript/ScriptGroupThunker;-><init>(ILandroidx/renderscript/RenderScript;)V

    .line 109
    :try_start_0
    iget-object v1, p0, Landroidx/renderscript/ScriptGroupThunker$Builder;->bN:Landroid/renderscript/ScriptGroup$Builder;

    invoke-virtual {v1}, Landroid/renderscript/ScriptGroup$Builder;->create()Landroid/renderscript/ScriptGroup;

    move-result-object v1

    iput-object v1, v0, Landroidx/renderscript/ScriptGroupThunker;->mN:Landroid/renderscript/ScriptGroup;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 111
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
