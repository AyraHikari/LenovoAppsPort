.class public Landroidx/renderscript/Script;
.super Landroidx/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/Script$Builder;,
        Landroidx/renderscript/Script$FieldBase;,
        Landroidx/renderscript/Script$FieldID;,
        Landroidx/renderscript/Script$KernelID;,
        Landroidx/renderscript/Script$LaunchOptions;
    }
.end annotation


# instance fields
.field private final mFIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/renderscript/Script$FieldID;",
            ">;"
        }
    .end annotation
.end field

.field private final mKIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field

.field mT:Landroidx/renderscript/ScriptCThunker;


# direct methods
.method constructor <init>(ILandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 292
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/BaseObj;-><init>(ILandroidx/renderscript/RenderScript;)V

    .line 54
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    .line 114
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public bindAllocation(Landroidx/renderscript/Allocation;I)V
    .locals 3

    .line 191
    iget-object v0, p0, Landroidx/renderscript/Script;->mT:Landroidx/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/ScriptCThunker;->thunkBindAllocation(Landroidx/renderscript/Allocation;I)V

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    if-eqz p1, :cond_1

    .line 198
    iget-object v0, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    iget-object v2, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p1, v2}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result p1

    invoke-virtual {v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->nScriptBindAllocation(III)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object p1, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v0, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroidx/renderscript/RenderScript;->nScriptBindAllocation(III)V

    :goto_0
    return-void
.end method

.method protected createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;
    .locals 3

    .line 127
    sget-boolean v0, Landroidx/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Landroidx/renderscript/Script$FieldID;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {v0, v1, v2, p0, p1}, Landroidx/renderscript/Script$FieldID;-><init>(ILandroidx/renderscript/RenderScript;Landroidx/renderscript/Script;I)V

    .line 129
    iget-object v1, p0, Landroidx/renderscript/Script;->mT:Landroidx/renderscript/ScriptCThunker;

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1, p1, p2}, Landroidx/renderscript/ScriptCThunker;->thunkCreateFieldID(ILandroidx/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p2

    iput-object p2, v0, Landroidx/renderscript/Script$FieldID;->mN:Landroid/renderscript/Script$FieldID;

    .line 132
    :cond_0
    iget-object p2, p0, Landroidx/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    .line 135
    :cond_1
    iget-object p2, p0, Landroidx/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/renderscript/Script$FieldID;

    if-eqz p2, :cond_2

    return-object p2

    .line 140
    :cond_2
    iget-object p2, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v0, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroidx/renderscript/RenderScript;->nScriptFieldIDCreate(II)I

    move-result p2

    if-eqz p2, :cond_3

    .line 145
    new-instance v0, Landroidx/renderscript/Script$FieldID;

    iget-object v1, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {v0, p2, v1, p0, p1}, Landroidx/renderscript/Script$FieldID;-><init>(ILandroidx/renderscript/RenderScript;Landroidx/renderscript/Script;I)V

    .line 146
    iget-object p2, p0, Landroidx/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    .line 142
    :cond_3
    new-instance p1, Landroidx/renderscript/RSDriverException;

    const-string p2, "Failed to create FieldID"

    invoke-direct {p1, p2}, Landroidx/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;
    .locals 7

    .line 67
    iget-object v0, p0, Landroidx/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/renderscript/Script$KernelID;

    if-eqz v0, :cond_0

    return-object v0

    .line 74
    :cond_0
    sget-boolean v0, Landroidx/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_2

    .line 75
    new-instance v0, Landroidx/renderscript/Script$KernelID;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    move-object v1, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/renderscript/Script$KernelID;-><init>(ILandroidx/renderscript/RenderScript;Landroidx/renderscript/Script;II)V

    .line 76
    iget-object v1, p0, Landroidx/renderscript/Script;->mT:Landroidx/renderscript/ScriptCThunker;

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/renderscript/ScriptCThunker;->thunkCreateKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object p2

    iput-object p2, v0, Landroidx/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    .line 79
    :cond_1
    iget-object p2, p0, Landroidx/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    .line 84
    :cond_2
    iget-object p3, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object p4, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, p4}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result p4

    invoke-virtual {p3, p4, p1, p2}, Landroidx/renderscript/RenderScript;->nScriptKernelIDCreate(III)I

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    new-instance p3, Landroidx/renderscript/Script$KernelID;

    iget-object v2, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    move-object v0, p3

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/Script$KernelID;-><init>(ILandroidx/renderscript/RenderScript;Landroidx/renderscript/Script;II)V

    .line 91
    iget-object p2, p0, Landroidx/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p3

    .line 86
    :cond_3
    new-instance p1, Landroidx/renderscript/RSDriverException;

    const-string p2, "Failed to create KernelID"

    invoke-direct {p1, p2}, Landroidx/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V
    .locals 7

    .line 228
    iget-object v0, p0, Landroidx/renderscript/Script;->mT:Landroidx/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/renderscript/ScriptCThunker;->thunkForEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    return-void

    :cond_0
    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "At least one of ain or aout is required to be non-null."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 239
    iget-object v1, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p2, v1}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result p2

    move v4, p2

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_1
    if-eqz p3, :cond_4

    .line 243
    iget-object p2, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p3, p2}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v0

    :cond_4
    move v5, v0

    const/4 p2, 0x0

    if-eqz p4, :cond_5

    .line 247
    invoke-virtual {p4}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object p2

    :cond_5
    move-object v6, p2

    .line 249
    iget-object v1, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object p2, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, p2}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v2

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/renderscript/RenderScript;->nScriptForEach(IIII[B)V

    return-void
.end method

.method protected forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 262
    iget-object v1, v0, Landroidx/renderscript/Script;->mT:Landroidx/renderscript/ScriptCThunker;

    if-eqz v1, :cond_0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 263
    invoke-virtual/range {v1 .. v6}, Landroidx/renderscript/ScriptCThunker;->thunkForEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void

    :cond_0
    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    goto :goto_0

    .line 268
    :cond_1
    new-instance v1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v2, "At least one of ain or aout is required to be non-null."

    invoke-direct {v1, v2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    if-nez p5, :cond_3

    .line 273
    invoke-virtual/range {p0 .. p4}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    return-void

    :cond_3
    const/4 v1, 0x0

    if-eqz v3, :cond_4

    .line 278
    iget-object v2, v0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v3, v2}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v2

    move v6, v2

    goto :goto_1

    :cond_4
    move v6, v1

    :goto_1
    if-eqz v4, :cond_5

    .line 282
    iget-object v1, v0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v4, v1}, Landroidx/renderscript/Allocation;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    :cond_5
    move v7, v1

    const/4 v1, 0x0

    if-eqz p4, :cond_6

    .line 286
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    :cond_6
    move-object v8, v1

    .line 288
    iget-object v3, v0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, v0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v4

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$0(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v9

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$1(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v10

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$2(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v11

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$3(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v12

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$4(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v13

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$5(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v14

    move/from16 v5, p1

    invoke-virtual/range {v3 .. v14}, Landroidx/renderscript/RenderScript;->nScriptForEachClipped(IIII[BIIIIII)V

    return-void
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/Script;->getNObj()Landroid/renderscript/Script;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/Script;
    .locals 1

    .line 29
    iget-object v0, p0, Landroidx/renderscript/Script;->mT:Landroidx/renderscript/ScriptCThunker;

    return-object v0
.end method

.method protected invoke(I)V
    .locals 2

    .line 157
    iget-object v0, p0, Landroidx/renderscript/Script;->mT:Landroidx/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p1}, Landroidx/renderscript/ScriptCThunker;->thunkInvoke(I)V

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/renderscript/RenderScript;->nScriptInvoke(II)V

    return-void
.end method

.method protected invoke(ILandroidx/renderscript/FieldPacker;)V
    .locals 2

    .line 172
    iget-object v0, p0, Landroidx/renderscript/Script;->mT:Landroidx/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/ScriptCThunker;->thunkInvoke(ILandroidx/renderscript/FieldPacker;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 178
    iget-object v0, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {p2}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->nScriptInvokeV(II[B)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object p2, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v0, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroidx/renderscript/RenderScript;->nScriptInvoke(II)V

    :goto_0
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 3

    .line 205
    iget-object v0, p0, Landroidx/renderscript/Script;->mT:Landroidx/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p1}, Landroidx/renderscript/ScriptCThunker;->thunkSetTimeZone(Ljava/lang/String;)V

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 212
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/renderscript/RenderScript;->nScriptSetTimeZone(I[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setVar(ID)V
    .locals 2

    .line 317
    iget-object v0, p0, Landroidx/renderscript/Script;->mT:Landroidx/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0, p1, p2, p3}, Landroidx/renderscript/ScriptCThunker;->thunkSetVar(ID)V

    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/renderscript/RenderScript;->nScriptSetVarD(IID)V

    return-void
.end method

.method public setVar(IF)V
    .locals 2

    .line 302
    iget-object v0, p0, Landroidx/renderscript/Script;->mT:Landroidx/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/ScriptCThunker;->thunkSetVar(IF)V

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->nScriptSetVarF(IIF)V

    return-void
.end method

.method public setVar(II)V
    .locals 2

    .line 332
    iget-object v0, p0, Landroidx/renderscript/Script;->mT:Landroidx/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/ScriptCThunker;->thunkSetVar(II)V

    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->nScriptSetVarI(III)V

    return-void
.end method

.method public setVar(IJ)V
    .locals 2

    .line 347
    iget-object v0, p0, Landroidx/renderscript/Script;->mT:Landroidx/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0, p1, p2, p3}, Landroidx/renderscript/ScriptCThunker;->thunkSetVar(IJ)V

    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/renderscript/RenderScript;->nScriptSetVarJ(IIJ)V

    return-void
.end method

.method public setVar(ILandroidx/renderscript/BaseObj;)V
    .locals 3

    .line 377
    iget-object v0, p0, Landroidx/renderscript/Script;->mT:Landroidx/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/ScriptCThunker;->thunkSetVar(ILandroidx/renderscript/BaseObj;)V

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p2, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)I

    move-result p2

    :goto_0
    invoke-virtual {v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->nScriptSetVarObj(III)V

    return-void
.end method

.method public setVar(ILandroidx/renderscript/FieldPacker;)V
    .locals 2

    .line 392
    iget-object v0, p0, Landroidx/renderscript/Script;->mT:Landroidx/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/ScriptCThunker;->thunkSetVar(ILandroidx/renderscript/FieldPacker;)V

    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {p2}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->nScriptSetVarV(II[B)V

    return-void
.end method

.method public setVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V
    .locals 7

    .line 409
    iget-object v0, p0, Landroidx/renderscript/Script;->mT:Landroidx/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/renderscript/ScriptCThunker;->thunkSetVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V

    return-void

    .line 414
    :cond_0
    iget-object v1, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v0, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v2

    invoke-virtual {p2}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v4

    iget-object p2, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p3, p2}, Landroidx/renderscript/Element;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v5

    move v3, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/renderscript/RenderScript;->nScriptSetVarVE(II[BI[I)V

    return-void
.end method

.method public setVar(IZ)V
    .locals 2

    .line 362
    iget-object v0, p0, Landroidx/renderscript/Script;->mT:Landroidx/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/ScriptCThunker;->thunkSetVar(IZ)V

    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v1, p0, Landroidx/renderscript/Script;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/Script;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroidx/renderscript/RenderScript;->nScriptSetVarI(III)V

    return-void
.end method
