.class public Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;
.super Landroidx/renderscript/ScriptC;
.source "ScriptC_vignette.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "vignette"

.field private static final mExportForEachIdx_vignette:I = 0x1

.field private static final mExportFuncIdx_setupVignetteParams:I = 0x0

.field private static final mExportVarIdx_centerx:I = 0x2

.field private static final mExportVarIdx_centery:I = 0x3

.field private static final mExportVarIdx_colorMatrix:I = 0xb

.field private static final mExportVarIdx_finalBright:I = 0x7

.field private static final mExportVarIdx_finalContrast:I = 0x9

.field private static final mExportVarIdx_finalSaturation:I = 0x8

.field private static final mExportVarIdx_finalSubtract:I = 0xa

.field private static final mExportVarIdx_inputHeight:I = 0x1

.field private static final mExportVarIdx_inputWidth:I = 0x0

.field private static final mExportVarIdx_offset:I = 0xe

.field private static final mExportVarIdx_radiusx:I = 0x4

.field private static final mExportVarIdx_radiusy:I = 0x5

.field private static final mExportVarIdx_scalex:I = 0xc

.field private static final mExportVarIdx_scaley:I = 0xd

.field private static final mExportVarIdx_strength:I = 0x6


# instance fields
.field private __F32:Landroidx/renderscript/Element;

.field private __U32:Landroidx/renderscript/Element;

.field private __U8_4:Landroidx/renderscript/Element;

.field private __rs_fp_F32:Landroidx/renderscript/FieldPacker;

.field private __rs_fp_U32:Landroidx/renderscript/FieldPacker;

.field private mExportVar_centerx:F

.field private mExportVar_centery:F

.field private mExportVar_colorMatrix:Landroidx/renderscript/Matrix3f;

.field private mExportVar_finalBright:F

.field private mExportVar_finalContrast:F

.field private mExportVar_finalSaturation:F

.field private mExportVar_finalSubtract:F

.field private mExportVar_inputHeight:J

.field private mExportVar_inputWidth:J

.field private mExportVar_offset:F

.field private mExportVar_radiusx:F

.field private mExportVar_radiusy:F

.field private mExportVar_scalex:F

.field private mExportVar_scaley:F

.field private mExportVar_strength:F


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

    const-string/jumbo v3, "vignette"

    const-string v4, "raw"

    .line 36
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 34
    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;-><init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/ScriptC;-><init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 43
    invoke-static {p1}, Landroidx/renderscript/Element;->U32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->__U32:Landroidx/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->__F32:Landroidx/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->__U8_4:Landroidx/renderscript/Element;

    return-void
.end method


# virtual methods
.method public forEach_vignette(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->forEach_vignette(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_vignette(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 304
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->__U8_4:Landroidx/renderscript/Element;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    const-string v1, "Type mismatch with U8_4!"

    if-eqz v0, :cond_2

    .line 308
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->__U8_4:Landroidx/renderscript/Element;

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    .line 313
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    .line 314
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 315
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 316
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 317
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 318
    invoke-virtual {v0}, Landroidx/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 319
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

    .line 323
    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void

    .line 320
    :cond_0
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 309
    :cond_1
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :cond_2
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldID_centerx()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_centery()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_colorMatrix()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 244
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_finalBright()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_finalContrast()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 212
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_finalSaturation()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_finalSubtract()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 227
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_inputHeight()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_inputWidth()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_offset()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 289
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_radiusx()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_radiusy()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_scalex()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 259
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_scaley()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x0

    .line 274
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_strength()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 167
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_vignette()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x3b

    const/4 v2, 0x0

    .line 295
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_centerx()F
    .locals 1

    .line 103
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_centerx:F

    return v0
.end method

.method public get_centery()F
    .locals 1

    .line 118
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_centery:F

    return v0
.end method

.method public get_colorMatrix()Landroidx/renderscript/Matrix3f;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_colorMatrix:Landroidx/renderscript/Matrix3f;

    return-object v0
.end method

.method public get_finalBright()F
    .locals 1

    .line 178
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_finalBright:F

    return v0
.end method

.method public get_finalContrast()F
    .locals 1

    .line 208
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_finalContrast:F

    return v0
.end method

.method public get_finalSaturation()F
    .locals 1

    .line 193
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_finalSaturation:F

    return v0
.end method

.method public get_finalSubtract()F
    .locals 1

    .line 223
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_finalSubtract:F

    return v0
.end method

.method public get_inputHeight()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_inputHeight:J

    return-wide v0
.end method

.method public get_inputWidth()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_inputWidth:J

    return-wide v0
.end method

.method public get_offset()F
    .locals 1

    .line 285
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_offset:F

    return v0
.end method

.method public get_radiusx()F
    .locals 1

    .line 133
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_radiusx:F

    return v0
.end method

.method public get_radiusy()F
    .locals 1

    .line 148
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_radiusy:F

    return v0
.end method

.method public get_scalex()F
    .locals 1

    .line 255
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_scalex:F

    return v0
.end method

.method public get_scaley()F
    .locals 1

    .line 270
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_scaley:F

    return v0
.end method

.method public get_strength()F
    .locals 1

    .line 163
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_strength:F

    return v0
.end method

.method public invoke_setupVignetteParams()V
    .locals 1

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->invoke(I)V

    return-void
.end method

.method public declared-synchronized set_centerx(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    .line 98
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->setVar(IF)V

    .line 99
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_centerx:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_centery(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x3

    .line 113
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->setVar(IF)V

    .line 114
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_centery:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_colorMatrix(Landroidx/renderscript/Matrix3f;)V
    .locals 2

    monitor-enter p0

    .line 233
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_colorMatrix:Landroidx/renderscript/Matrix3f;

    .line 234
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    .line 235
    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPacker;->addMatrix(Landroidx/renderscript/Matrix3f;)V

    const/16 p1, 0xb

    .line 236
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->setVar(ILandroidx/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_finalBright(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x7

    .line 173
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->setVar(IF)V

    .line 174
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_finalBright:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_finalContrast(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x9

    .line 203
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->setVar(IF)V

    .line 204
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_finalContrast:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_finalSaturation(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x8

    .line 188
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->setVar(IF)V

    .line 189
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_finalSaturation:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_finalSubtract(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xa

    .line 218
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->setVar(IF)V

    .line 219
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_finalSubtract:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_inputHeight(J)V
    .locals 2

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroidx/renderscript/FieldPacker;->reset()V

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    const/4 v0, 0x1

    .line 83
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->setVar(ILandroidx/renderscript/FieldPacker;)V

    .line 84
    iput-wide p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_inputHeight:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_inputWidth(J)V
    .locals 2

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroidx/renderscript/FieldPacker;->reset()V

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->setVar(ILandroidx/renderscript/FieldPacker;)V

    .line 63
    iput-wide p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_inputWidth:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_offset(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xe

    .line 280
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->setVar(IF)V

    .line 281
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_offset:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_radiusx(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x4

    .line 128
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->setVar(IF)V

    .line 129
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_radiusx:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_radiusy(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x5

    .line 143
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->setVar(IF)V

    .line 144
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_radiusy:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_scalex(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xc

    .line 250
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->setVar(IF)V

    .line 251
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_scalex:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_scaley(F)V
    .locals 1

    monitor-enter p0

    const/16 v0, 0xd

    .line 265
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->setVar(IF)V

    .line 266
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_scaley:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_strength(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x6

    .line 158
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->setVar(IF)V

    .line 159
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_vignette;->mExportVar_strength:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
