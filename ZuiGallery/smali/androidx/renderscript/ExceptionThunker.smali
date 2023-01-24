.class Landroidx/renderscript/ExceptionThunker;
.super Ljava/lang/Object;
.source "ExceptionThunker.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .locals 1

    .line 23
    instance-of v0, p0, Landroid/renderscript/RSIllegalArgumentException;

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 25
    :cond_0
    instance-of v0, p0, Landroid/renderscript/RSInvalidStateException;

    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 27
    :cond_1
    instance-of v0, p0, Landroid/renderscript/RSDriverException;

    if-eqz v0, :cond_2

    .line 28
    new-instance v0, Landroidx/renderscript/RSDriverException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 29
    :cond_2
    instance-of v0, p0, Landroid/renderscript/RSRuntimeException;

    if-eqz v0, :cond_3

    .line 30
    new-instance v0, Landroidx/renderscript/RSRuntimeException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3
    return-object p0
.end method
