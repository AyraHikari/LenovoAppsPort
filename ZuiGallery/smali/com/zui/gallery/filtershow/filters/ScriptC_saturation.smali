.class public Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;
.super Landroidx/renderscript/ScriptC;
.source "ScriptC_saturation.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "saturation"

.field private static final mExportForEachIdx_selectiveAdjust:I = 0x1

.field private static final mExportFuncIdx_setupGradParams:I = 0x0

.field private static final mExportVarIdx_colorMatrix_max:I = 0x1

.field private static final mExportVarIdx_colorMatrix_min:I = 0x0

.field private static final mExportVarIdx_mNumberOfLines:I = 0x2

.field private static final mExportVarIdx_sat:I = 0x4

.field private static final mExportVarIdx_satLut:I = 0x5

.field private static final mExportVarIdx_saturation:I = 0x3


# instance fields
.field private __F32:Landroidx/renderscript/Element;

.field private __I32:Landroidx/renderscript/Element;

.field private __U8_4:Landroidx/renderscript/Element;

.field private __rs_fp_F32:Landroidx/renderscript/FieldPacker;

.field private __rs_fp_I32:Landroidx/renderscript/FieldPacker;

.field private mExportVar_colorMatrix_max:Landroidx/renderscript/Matrix3f;

.field private mExportVar_colorMatrix_min:Landroidx/renderscript/Matrix3f;

.field private mExportVar_mNumberOfLines:I

.field private mExportVar_sat:[F

.field private mExportVar_satLut:[F

.field private mExportVar_saturation:[I


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

    const-string v3, "saturation"

    const-string v4, "raw"

    .line 36
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 34
    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;-><init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/ScriptC;-><init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 43
    invoke-static {p1}, Landroidx/renderscript/Element;->I32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->__I32:Landroidx/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->__F32:Landroidx/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->__U8_4:Landroidx/renderscript/Element;

    return-void
.end method


# virtual methods
.method public forEach_selectiveAdjust(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->forEach_selectiveAdjust(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_selectiveAdjust(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 180
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->__U8_4:Landroidx/renderscript/Element;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    const-string v1, "Type mismatch with U8_4!"

    if-eqz v0, :cond_2

    .line 184
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->__U8_4:Landroidx/renderscript/Element;

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    .line 189
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    .line 190
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 191
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 192
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 193
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 194
    invoke-virtual {v0}, Landroidx/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 195
    invoke-virtual {v0}, Landroidx/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {v1}, Landroidx/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    .line 199
    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void

    .line 196
    :cond_0
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_1
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_2
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldID_colorMatrix_max()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_colorMatrix_min()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_mNumberOfLines()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_sat()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_satLut()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_saturation()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_selectiveAdjust()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x3b

    const/4 v2, 0x0

    .line 171
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_colorMatrix_max()Landroidx/renderscript/Matrix3f;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->mExportVar_colorMatrix_max:Landroidx/renderscript/Matrix3f;

    return-object v0
.end method

.method public get_colorMatrix_min()Landroidx/renderscript/Matrix3f;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->mExportVar_colorMatrix_min:Landroidx/renderscript/Matrix3f;

    return-object v0
.end method

.method public get_mNumberOfLines()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->mExportVar_mNumberOfLines:I

    return v0
.end method

.method public get_sat()[F
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->mExportVar_sat:[F

    return-object v0
.end method

.method public get_satLut()[F
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->mExportVar_satLut:[F

    return-object v0
.end method

.method public get_saturation()[I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->mExportVar_saturation:[I

    return-object v0
.end method

.method public invoke_setupGradParams()V
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->invoke(I)V

    return-void
.end method

.method public declared-synchronized set_colorMatrix_max(Landroidx/renderscript/Matrix3f;)V
    .locals 2

    monitor-enter p0

    .line 73
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->mExportVar_colorMatrix_max:Landroidx/renderscript/Matrix3f;

    .line 74
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    .line 75
    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPacker;->addMatrix(Landroidx/renderscript/Matrix3f;)V

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->setVar(ILandroidx/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_colorMatrix_min(Landroidx/renderscript/Matrix3f;)V
    .locals 2

    monitor-enter p0

    .line 56
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->mExportVar_colorMatrix_min:Landroidx/renderscript/Matrix3f;

    .line 57
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    .line 58
    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPacker;->addMatrix(Landroidx/renderscript/Matrix3f;)V

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->setVar(ILandroidx/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_mNumberOfLines(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    .line 90
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->setVar(II)V

    .line 91
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->mExportVar_mNumberOfLines:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_sat([F)V
    .locals 4

    monitor-enter p0

    .line 127
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->mExportVar_sat:[F

    .line 128
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 130
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v3, p1, v1

    const/4 v1, 0x4

    .line 135
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->__F32:Landroidx/renderscript/Element;

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->setVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_satLut([F)V
    .locals 4

    monitor-enter p0

    .line 149
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->mExportVar_satLut:[F

    .line 150
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x1000

    if-ge v2, v3, :cond_0

    .line 152
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v3, p1, v1

    const/4 v1, 0x5

    .line 157
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->__F32:Landroidx/renderscript/Element;

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->setVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_saturation([I)V
    .locals 4

    monitor-enter p0

    .line 105
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->mExportVar_saturation:[I

    .line 106
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 108
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v3, p1, v1

    const/4 v1, 0x3

    .line 113
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->__I32:Landroidx/renderscript/Element;

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_saturation;->setVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
