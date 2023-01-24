.class Landroidx/renderscript/ScriptCThunker;
.super Landroid/renderscript/ScriptC;
.source "ScriptCThunker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptC"


# instance fields
.field private mRS:Landroid/renderscript/RenderScript;


# direct methods
.method protected constructor <init>(Landroidx/renderscript/RenderScriptThunker;Landroid/content/res/Resources;I)V
    .locals 1

    .line 31
    iget-object v0, p1, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-direct {p0, v0, p2, p3}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 32
    iget-object p1, p1, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    iput-object p1, p0, Landroidx/renderscript/ScriptCThunker;->mRS:Landroid/renderscript/RenderScript;

    return-void
.end method


# virtual methods
.method thunkBindAllocation(Landroidx/renderscript/Allocation;I)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 66
    check-cast p1, Landroidx/renderscript/AllocationThunker;

    iget-object p1, p1, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 73
    :goto_0
    new-instance v1, Lcom/zui/cg/gallery/Reflection;

    invoke-direct {v1}, Lcom/zui/cg/gallery/Reflection;-><init>()V

    .line 74
    iget-object v2, p0, Landroidx/renderscript/ScriptCThunker;->mRS:Landroid/renderscript/RenderScript;

    const-string/jumbo v3, "validate"

    invoke-virtual {v1, v2, v3, v0, v0}, Lcom/zui/cg/gallery/Reflection;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Landroidx/renderscript/ScriptCThunker;->mRS:Landroid/renderscript/RenderScript;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/renderscript/Allocation;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v5

    const-string/jumbo v6, "validateObject"

    invoke-virtual {v1, v0, v6, v3, v4}, Lcom/zui/cg/gallery/Reflection;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v2, [Ljava/lang/Class;

    .line 80
    const-class v3, Landroid/renderscript/RenderScript;

    aput-object v3, v0, v5

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/renderscript/ScriptCThunker;->mRS:Landroid/renderscript/RenderScript;

    aput-object v4, v3, v5

    const-string v4, "getID"

    .line 79
    invoke-virtual {v1, p0, v4, v0, v3}, Lcom/zui/cg/gallery/Reflection;->invokeSuperMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    if-eqz p1, :cond_1

    new-array v0, v2, [Ljava/lang/Class;

    .line 84
    const-class v3, Landroid/renderscript/RenderScript;

    aput-object v3, v0, v5

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v8, p0, Landroidx/renderscript/ScriptCThunker;->mRS:Landroid/renderscript/RenderScript;

    aput-object v8, v3, v5

    .line 83
    invoke-virtual {v1, p1, v4, v0, v3}, Lcom/zui/cg/gallery/Reflection;->invokeSuperMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 84
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 94
    :cond_1
    iget-object p1, p0, Landroidx/renderscript/ScriptCThunker;->mRS:Landroid/renderscript/RenderScript;

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Class;

    .line 95
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v4, v3, v10

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v10

    const-string p2, "nScriptBindAllocation"

    .line 94
    invoke-virtual {v1, p1, p2, v3, v0}, Lcom/zui/cg/gallery/Reflection;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method thunkCreateFieldID(ILandroidx/renderscript/Element;)Landroid/renderscript/Script$FieldID;
    .locals 0

    .line 240
    :try_start_0
    check-cast p2, Landroidx/renderscript/ElementThunker;

    .line 241
    invoke-virtual {p2}, Landroidx/renderscript/ElementThunker;->getNObj()Landroid/renderscript/Element;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/renderscript/ScriptCThunker;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object p1
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 243
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method thunkCreateKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroid/renderscript/Script$KernelID;
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 41
    check-cast p3, Landroidx/renderscript/ElementThunker;

    iget-object p3, p3, Landroidx/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-eqz p4, :cond_1

    .line 44
    check-cast p4, Landroidx/renderscript/ElementThunker;

    iget-object v0, p4, Landroidx/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;

    .line 47
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/renderscript/ScriptCThunker;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object p1
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 50
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method thunkForEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 122
    check-cast p2, Landroidx/renderscript/AllocationThunker;

    iget-object p2, p2, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 125
    check-cast p3, Landroidx/renderscript/AllocationThunker;

    iget-object p3, p3, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    goto :goto_1

    :cond_1
    move-object p3, v0

    :goto_1
    if-eqz p4, :cond_2

    .line 129
    :try_start_0
    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p4}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object p4

    invoke-direct {v0, p4}, Landroid/renderscript/FieldPacker;-><init>([B)V

    .line 131
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/renderscript/ScriptCThunker;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 133
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method thunkForEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p5, :cond_3

    .line 142
    :try_start_0
    new-instance v1, Landroid/renderscript/Script$LaunchOptions;

    invoke-direct {v1}, Landroid/renderscript/Script$LaunchOptions;-><init>()V

    .line 143
    invoke-virtual {p5}, Landroidx/renderscript/Script$LaunchOptions;->getXEnd()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p5}, Landroidx/renderscript/Script$LaunchOptions;->getXStart()I

    move-result v2

    invoke-virtual {p5}, Landroidx/renderscript/Script$LaunchOptions;->getXEnd()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Script$LaunchOptions;->setX(II)Landroid/renderscript/Script$LaunchOptions;

    .line 144
    :cond_0
    invoke-virtual {p5}, Landroidx/renderscript/Script$LaunchOptions;->getYEnd()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p5}, Landroidx/renderscript/Script$LaunchOptions;->getYStart()I

    move-result v2

    invoke-virtual {p5}, Landroidx/renderscript/Script$LaunchOptions;->getYEnd()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Script$LaunchOptions;->setY(II)Landroid/renderscript/Script$LaunchOptions;

    .line 145
    :cond_1
    invoke-virtual {p5}, Landroidx/renderscript/Script$LaunchOptions;->getZEnd()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p5}, Landroidx/renderscript/Script$LaunchOptions;->getZStart()I

    move-result v2

    invoke-virtual {p5}, Landroidx/renderscript/Script$LaunchOptions;->getZEnd()I

    move-result p5

    invoke-virtual {v1, v2, p5}, Landroid/renderscript/Script$LaunchOptions;->setZ(II)Landroid/renderscript/Script$LaunchOptions;

    :cond_2
    move-object v5, v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    move-object v5, v0

    :goto_0
    if-eqz p2, :cond_4

    .line 152
    check-cast p2, Landroidx/renderscript/AllocationThunker;

    iget-object p2, p2, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    move-object v2, p2

    goto :goto_1

    :cond_4
    move-object v2, v0

    :goto_1
    if-eqz p3, :cond_5

    .line 155
    check-cast p3, Landroidx/renderscript/AllocationThunker;

    iget-object p2, p3, Landroidx/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    move-object v3, p2

    goto :goto_2

    :cond_5
    move-object v3, v0

    :goto_2
    if-eqz p4, :cond_6

    .line 158
    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p4}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/renderscript/FieldPacker;-><init>([B)V

    :cond_6
    move-object v4, v0

    move-object v0, p0

    move v1, p1

    .line 160
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/ScriptCThunker;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 162
    :goto_3
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method thunkInvoke(I)V
    .locals 0

    .line 57
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/renderscript/ScriptCThunker;->invoke(I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 59
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method thunkInvoke(ILandroidx/renderscript/FieldPacker;)V
    .locals 1

    .line 110
    :try_start_0
    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p2}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/renderscript/FieldPacker;-><init>([B)V

    .line 111
    invoke-virtual {p0, p1, v0}, Landroidx/renderscript/ScriptCThunker;->invoke(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 113
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method thunkSetTimeZone(Ljava/lang/String;)V
    .locals 0

    .line 101
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/renderscript/ScriptCThunker;->setTimeZone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 103
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method thunkSetVar(ID)V
    .locals 0

    .line 175
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/renderscript/ScriptCThunker;->setVar(ID)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 177
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method thunkSetVar(IF)V
    .locals 0

    .line 168
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/renderscript/ScriptCThunker;->setVar(IF)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 170
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method thunkSetVar(II)V
    .locals 0

    .line 182
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/renderscript/ScriptCThunker;->setVar(II)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 184
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method thunkSetVar(IJ)V
    .locals 0

    .line 189
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/renderscript/ScriptCThunker;->setVar(IJ)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 191
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method thunkSetVar(ILandroidx/renderscript/BaseObj;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 205
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/renderscript/ScriptCThunker;->setVar(II)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 207
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 212
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroidx/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/renderscript/ScriptCThunker;->setVar(ILandroid/renderscript/BaseObj;)V
    :try_end_1
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 214
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method thunkSetVar(ILandroidx/renderscript/FieldPacker;)V
    .locals 1

    .line 220
    :try_start_0
    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p2}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/renderscript/FieldPacker;-><init>([B)V

    .line 221
    invoke-virtual {p0, p1, v0}, Landroidx/renderscript/ScriptCThunker;->setVar(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 223
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method thunkSetVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V
    .locals 1

    .line 230
    :try_start_0
    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p2}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/renderscript/FieldPacker;-><init>([B)V

    .line 231
    check-cast p3, Landroidx/renderscript/ElementThunker;

    .line 232
    iget-object p2, p3, Landroidx/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;

    invoke-virtual {p0, p1, v0, p2, p4}, Landroidx/renderscript/ScriptCThunker;->setVar(ILandroid/renderscript/FieldPacker;Landroid/renderscript/Element;[I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 234
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method thunkSetVar(IZ)V
    .locals 0

    .line 196
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/renderscript/ScriptCThunker;->setVar(IZ)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 198
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
