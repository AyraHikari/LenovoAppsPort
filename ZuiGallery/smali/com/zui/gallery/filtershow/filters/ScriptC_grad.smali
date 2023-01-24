.class public Lcom/zui/gallery/filtershow/filters/ScriptC_grad;
.super Landroidx/renderscript/ScriptC;
.source "ScriptC_grad.java"


# static fields
.field private static final __rs_resource_name:Ljava/lang/String; = "grad"

.field private static final mExportForEachIdx_selectiveAdjust:I = 0x1

.field private static final mExportFuncIdx_setupGradParams:I = 0x0

.field private static final mExportVarIdx_brightness:I = 0x9

.field private static final mExportVarIdx_contrast:I = 0xa

.field private static final mExportVarIdx_inputHeight:I = 0x1

.field private static final mExportVarIdx_inputWidth:I = 0x0

.field private static final mExportVarIdx_mNumberOfLines:I = 0x2

.field private static final mExportVarIdx_mask:I = 0x3

.field private static final mExportVarIdx_saturation:I = 0xb

.field private static final mExportVarIdx_size:I = 0x8

.field private static final mExportVarIdx_xPos1:I = 0x4

.field private static final mExportVarIdx_xPos2:I = 0x6

.field private static final mExportVarIdx_yPos1:I = 0x5

.field private static final mExportVarIdx_yPos2:I = 0x7


# instance fields
.field private __BOOLEAN:Landroidx/renderscript/Element;

.field private __I32:Landroidx/renderscript/Element;

.field private __U32:Landroidx/renderscript/Element;

.field private __U8_4:Landroidx/renderscript/Element;

.field private __rs_fp_BOOLEAN:Landroidx/renderscript/FieldPacker;

.field private __rs_fp_I32:Landroidx/renderscript/FieldPacker;

.field private __rs_fp_U32:Landroidx/renderscript/FieldPacker;

.field private mExportVar_brightness:[I

.field private mExportVar_contrast:[I

.field private mExportVar_inputHeight:J

.field private mExportVar_inputWidth:J

.field private mExportVar_mNumberOfLines:I

.field private mExportVar_mask:[Z

.field private mExportVar_saturation:[I

.field private mExportVar_size:[I

.field private mExportVar_xPos1:[I

.field private mExportVar_xPos2:[I

.field private mExportVar_yPos1:[I

.field private mExportVar_yPos2:[I


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

    const-string v3, "grad"

    const-string v4, "raw"

    .line 36
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 34
    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;-><init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/ScriptC;-><init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 43
    invoke-static {p1}, Landroidx/renderscript/Element;->U32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__U32:Landroidx/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroidx/renderscript/Element;->I32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__I32:Landroidx/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroidx/renderscript/Element;->BOOLEAN(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__BOOLEAN:Landroidx/renderscript/Element;

    .line 46
    invoke-static {p1}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__U8_4:Landroidx/renderscript/Element;

    return-void
.end method


# virtual methods
.method public forEach_selectiveAdjust(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->forEach_selectiveAdjust(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_selectiveAdjust(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 323
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__U8_4:Landroidx/renderscript/Element;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    const-string v1, "Type mismatch with U8_4!"

    if-eqz v0, :cond_2

    .line 327
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__U8_4:Landroidx/renderscript/Element;

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    .line 332
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    .line 333
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getCount()I

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 334
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getX()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 335
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getY()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 336
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getZ()I

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getZ()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 337
    invoke-virtual {v0}, Landroidx/renderscript/Type;->hasFaces()Z

    move-result v2

    invoke-virtual {v1}, Landroidx/renderscript/Type;->hasFaces()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 338
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

    .line 342
    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void

    .line 339
    :cond_0
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string p2, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 328
    :cond_1
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 324
    :cond_2
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    invoke-direct {p1, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldID_brightness()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 264
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_contrast()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 286
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_inputHeight()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_inputWidth()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_mNumberOfLines()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_mask()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 132
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_saturation()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 308
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_size()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 242
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_xPos1()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 154
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_xPos2()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 198
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_yPos1()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 176
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_yPos2()Landroidx/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_selectiveAdjust()Landroidx/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x3b

    const/4 v2, 0x0

    .line 314
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_brightness()[I
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_brightness:[I

    return-object v0
.end method

.method public get_contrast()[I
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_contrast:[I

    return-object v0
.end method

.method public get_inputHeight()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_inputHeight:J

    return-wide v0
.end method

.method public get_inputWidth()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_inputWidth:J

    return-wide v0
.end method

.method public get_mNumberOfLines()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_mNumberOfLines:I

    return v0
.end method

.method public get_mask()[Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_mask:[Z

    return-object v0
.end method

.method public get_saturation()[I
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_saturation:[I

    return-object v0
.end method

.method public get_size()[I
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_size:[I

    return-object v0
.end method

.method public get_xPos1()[I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_xPos1:[I

    return-object v0
.end method

.method public get_xPos2()[I
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_xPos2:[I

    return-object v0
.end method

.method public get_yPos1()[I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_yPos1:[I

    return-object v0
.end method

.method public get_yPos2()[I
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_yPos2:[I

    return-object v0
.end method

.method public invoke_setupGradParams()V
    .locals 1

    const/4 v0, 0x0

    .line 347
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->invoke(I)V

    return-void
.end method

.method public declared-synchronized set_brightness([I)V
    .locals 4

    monitor-enter p0

    .line 248
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_brightness:[I

    .line 249
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 251
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v3, p1, v1

    const/16 v1, 0x9

    .line 256
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__I32:Landroidx/renderscript/Element;

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->setVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_contrast([I)V
    .locals 4

    monitor-enter p0

    .line 270
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_contrast:[I

    .line 271
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 273
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v3, p1, v1

    const/16 v1, 0xa

    .line 278
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__I32:Landroidx/renderscript/Element;

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->setVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
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

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroidx/renderscript/FieldPacker;->reset()V

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    const/4 v0, 0x1

    .line 86
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->setVar(ILandroidx/renderscript/FieldPacker;)V

    .line 87
    iput-wide p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_inputHeight:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
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

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroidx/renderscript/FieldPacker;->reset()V

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__rs_fp_U32:Landroidx/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->setVar(ILandroidx/renderscript/FieldPacker;)V

    .line 66
    iput-wide p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_inputWidth:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
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

    .line 101
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->setVar(II)V

    .line 102
    iput p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_mNumberOfLines:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_mask([Z)V
    .locals 5

    monitor-enter p0

    .line 116
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_mask:[Z

    .line 117
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 119
    aget-boolean v4, p1, v3

    invoke-virtual {v0, v4}, Landroidx/renderscript/FieldPacker;->addBoolean(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v1, p1, v2

    const/4 v1, 0x3

    .line 124
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__BOOLEAN:Landroidx/renderscript/Element;

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->setVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
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

    .line 292
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_saturation:[I

    .line 293
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 295
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v3, p1, v1

    const/16 v1, 0xb

    .line 300
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__I32:Landroidx/renderscript/Element;

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->setVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_size([I)V
    .locals 4

    monitor-enter p0

    .line 226
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_size:[I

    .line 227
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 229
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v3, p1, v1

    const/16 v1, 0x8

    .line 234
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__I32:Landroidx/renderscript/Element;

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->setVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_xPos1([I)V
    .locals 4

    monitor-enter p0

    .line 138
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_xPos1:[I

    .line 139
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 141
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v3, p1, v1

    const/4 v1, 0x4

    .line 146
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__I32:Landroidx/renderscript/Element;

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->setVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_xPos2([I)V
    .locals 4

    monitor-enter p0

    .line 182
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_xPos2:[I

    .line 183
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 185
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v3, p1, v1

    const/4 v1, 0x6

    .line 190
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__I32:Landroidx/renderscript/Element;

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->setVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_yPos1([I)V
    .locals 4

    monitor-enter p0

    .line 160
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_yPos1:[I

    .line 161
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 163
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v3, p1, v1

    const/4 v1, 0x5

    .line 168
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__I32:Landroidx/renderscript/Element;

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->setVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set_yPos2([I)V
    .locals 4

    monitor-enter p0

    .line 204
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->mExportVar_yPos2:[I

    .line 205
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 207
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput v3, p1, v1

    const/4 v1, 0x7

    .line 212
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->__I32:Landroidx/renderscript/Element;

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/zui/gallery/filtershow/filters/ScriptC_grad;->setVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
