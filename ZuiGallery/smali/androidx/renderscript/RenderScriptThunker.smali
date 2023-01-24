.class Landroidx/renderscript/RenderScriptThunker;
.super Landroidx/renderscript/RenderScript;
.source "RenderScriptThunker.java"


# instance fields
.field mN:Landroid/renderscript/RenderScript;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroidx/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 52
    sput-boolean p1, Landroidx/renderscript/RenderScriptThunker;->isNative:Z

    return-void
.end method

.method public static create(Landroid/content/Context;I)Landroidx/renderscript/RenderScript;
    .locals 7

    .line 57
    :try_start_0
    new-instance v0, Landroidx/renderscript/RenderScriptThunker;

    invoke-direct {v0, p0}, Landroidx/renderscript/RenderScriptThunker;-><init>(Landroid/content/Context;)V

    const-string v1, "android.renderscript.RenderScript"

    .line 58
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 59
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 60
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object p0, v2, v6

    const-string p0, "create"

    .line 61
    invoke-virtual {v1, p0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/renderscript/RenderScript;

    iput-object p0, v0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 68
    :catch_0
    new-instance p0, Landroidx/renderscript/RSRuntimeException;

    const-string p1, "Failure to create platform RenderScript context"

    invoke-direct {p0, p1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 66
    invoke-static {p0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public contextDump()V
    .locals 1

    .line 74
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->contextDump()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 76
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public destroy()V
    .locals 1

    .line 90
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 93
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 135
    instance-of v0, p2, Landroidx/renderscript/BaseObj;

    if-eqz v0, :cond_0

    .line 136
    check-cast p1, Landroid/renderscript/BaseObj;

    check-cast p2, Landroidx/renderscript/BaseObj;

    invoke-virtual {p2}, Landroidx/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/renderscript/BaseObj;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public finish()V
    .locals 1

    .line 82
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->finish()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 84
    invoke-static {v0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setErrorHandler(Landroidx/renderscript/RenderScript$RSErrorHandler;)V
    .locals 1

    .line 117
    iput-object p1, p0, Landroidx/renderscript/RenderScriptThunker;->mErrorCallback:Landroidx/renderscript/RenderScript$RSErrorHandler;

    .line 120
    :try_start_0
    new-instance p1, Landroidx/renderscript/RenderScriptThunker$2;

    invoke-direct {p1, p0}, Landroidx/renderscript/RenderScriptThunker$2;-><init>(Landroidx/renderscript/RenderScriptThunker;)V

    .line 127
    iget-object v0, p0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p1}, Landroid/renderscript/RenderScript;->setErrorHandler(Landroid/renderscript/RenderScript$RSErrorHandler;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 129
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setMessageHandler(Landroidx/renderscript/RenderScript$RSMessageHandler;)V
    .locals 1

    .line 99
    iput-object p1, p0, Landroidx/renderscript/RenderScriptThunker;->mMessageCallback:Landroidx/renderscript/RenderScript$RSMessageHandler;

    .line 102
    :try_start_0
    new-instance p1, Landroidx/renderscript/RenderScriptThunker$1;

    invoke-direct {p1, p0}, Landroidx/renderscript/RenderScriptThunker$1;-><init>(Landroidx/renderscript/RenderScriptThunker;)V

    .line 110
    iget-object v0, p0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p1}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 112
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setPriority(Landroidx/renderscript/RenderScript$Priority;)V
    .locals 2

    .line 43
    :try_start_0
    sget-object v0, Landroidx/renderscript/RenderScript$Priority;->LOW:Landroidx/renderscript/RenderScript$Priority;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    sget-object v1, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->setPriority(Landroid/renderscript/RenderScript$Priority;)V

    .line 44
    :cond_0
    sget-object v0, Landroidx/renderscript/RenderScript$Priority;->NORMAL:Landroidx/renderscript/RenderScript$Priority;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    sget-object v0, Landroid/renderscript/RenderScript$Priority;->NORMAL:Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {p1, v0}, Landroid/renderscript/RenderScript;->setPriority(Landroid/renderscript/RenderScript$Priority;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 46
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method validate()V
    .locals 2

    .line 36
    iget-object v0, p0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    const-string v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
