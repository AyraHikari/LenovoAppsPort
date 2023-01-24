.class public Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;
.super Landroidx/renderscript/ScriptC;
.source "ScriptC_convolve3x3.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "convolve3x3"

.field private static final mExportForEachIdx_root:I = 0x0

.field private static final mExportVarIdx_gCoeffs:I = 0x4

.field private static final mExportVarIdx_gHeight:I = 0x1

.field private static final mExportVarIdx_gIn:I = 0x3

.field private static final mExportVarIdx_gPixels:I = 0x2

.field private static final mExportVarIdx_gWidth:I


# instance fields
.field private __ALLOCATION:Landroidx/renderscript/Element;

.field private __F32:Landroidx/renderscript/Element;

.field private __I32:Landroidx/renderscript/Element;

.field private __U8_4:Landroidx/renderscript/Element;

.field private __rs_fp_ALLOCATION:Landroidx/renderscript/FieldPacker;

.field private __rs_fp_F32:Landroidx/renderscript/FieldPacker;

.field private __rs_fp_I32:Landroidx/renderscript/FieldPacker;

.field private mExportVar_gCoeffs:[F

.field private mExportVar_gHeight:I

.field private mExportVar_gIn:Landroidx/renderscript/Allocation;

.field private mExportVar_gPixels:Landroidx/renderscript/Allocation;

.field private mExportVar_gWidth:I


# direct methods
.method public constructor <init>(Landroidx/renderscript/RenderScript;)V
    .locals 5

    .line 35
    invoke-virtual {p1}, Landroidx/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Landroidx/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Landroidx/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "convolve3x3"

    const-string v4, "raw"

    .line 36
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 34
    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;-><init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/ScriptC;-><init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 43
    invoke-static {p1}, Landroidx/renderscript/Element;->I32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->__I32:Landroidx/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroidx/renderscript/Element;->ALLOCATION(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->__ALLOCATION:Landroidx/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->__F32:Landroidx/renderscript/Element;

    .line 46
    invoke-static {p1}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->__U8_4:Landroidx/renderscript/Element;

    return-void
.end method


# virtual methods
.method public bind_gPixels(Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 89
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->mExportVar_gPixels:Landroidx/renderscript/Allocation;

    const/4 v0, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->bindAllocation(Landroidx/renderscript/Allocation;I)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->bindAllocation(Landroidx/renderscript/Allocation;I)V

    :goto_0
    return-void
.end method

.method public forEach_root(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->forEach_root(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_root(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 149
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->__U8_4:Landroidx/renderscript/Element;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    const-string v1, "Type mismatch with U8_4!"

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->__U8_4:Landroidx/renderscript/Element;

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    .line 158
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    .line 159
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 160
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 161
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 162
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 163
    invoke-virtual {v0}, Landroidx/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 164
    invoke-virtual {v0}, Landroidx/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {v1}, Landroidx/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    .line 168
    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void

    .line 165
    :cond_0
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between input and output parameters!"

    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_1
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_2
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldID_gCoeffs()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gHeight()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gIn()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gWidth()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_root()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized get_gCoeffs()[F
    .locals 1

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->mExportVar_gCoeffs:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_gHeight()I
    .locals 1

    monitor-enter p0

    .line 79
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->mExportVar_gHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_gIn()Landroidx/renderscript/Allocation;
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->mExportVar_gIn:Landroidx/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get_gPixels()Landroidx/renderscript/Allocation;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->mExportVar_gPixels:Landroidx/renderscript/Allocation;

    return-object v0
.end method

.method public declared-synchronized get_gWidth()I
    .locals 1

    monitor-enter p0

    .line 64
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->mExportVar_gWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gCoeffs([F)V
    .locals 4

    monitor-enter p0

    .line 119
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->mExportVar_gCoeffs:[F

    .line 120
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 122
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v3, p1, v1

    const/4 v1, 0x4

    .line 127
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->__F32:Landroidx/renderscript/Element;

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->setVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_gHeight(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 74
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->setVar(II)V

    .line 75
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->mExportVar_gHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_gIn(Landroidx/renderscript/Allocation;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x3

    .line 104
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->setVar(ILandroidx/renderscript/BaseObj;)V

    .line 105
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->mExportVar_gIn:Landroidx/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_gWidth(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 59
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->setVar(II)V

    .line 60
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_convolve3x3;->mExportVar_gWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
