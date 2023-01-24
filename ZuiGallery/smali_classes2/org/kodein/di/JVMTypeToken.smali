.class public abstract Lorg/kodein/di/JVMTypeToken;
.super Ljava/lang/Object;
.source "types.kt"

# interfaces
.implements Lorg/kodein/di/TypeToken;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/kodein/di/TypeToken<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008 \u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0013\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\rH\u0016R\u0012\u0010\u0004\u001a\u00020\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/kodein/di/JVMTypeToken;",
        "T",
        "Lorg/kodein/di/TypeToken;",
        "()V",
        "jvmType",
        "Ljava/lang/reflect/Type;",
        "getJvmType",
        "()Ljava/lang/reflect/Type;",
        "equals",
        "",
        "other",
        "",
        "fullDispString",
        "",
        "hashCode",
        "",
        "simpleDispString",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 151
    move-object v0, p0

    check-cast v0, Lorg/kodein/di/JVMTypeToken;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 152
    :cond_0
    instance-of v0, p1, Lorg/kodein/di/JVMTypeToken;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 154
    :cond_1
    invoke-virtual {p0}, Lorg/kodein/di/JVMTypeToken;->getJvmType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast p1, Lorg/kodein/di/JVMTypeToken;

    invoke-virtual {p1}, Lorg/kodein/di/JVMTypeToken;->getJvmType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public fullDispString()Ljava/lang/String;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lorg/kodein/di/JVMTypeToken;->getJvmType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/kodein/di/TypeDispKt;->fullDispString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getJvmType()Ljava/lang/reflect/Type;
.end method

.method public hashCode()I
    .locals 1

    .line 160
    invoke-virtual {p0}, Lorg/kodein/di/JVMTypeToken;->getJvmType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAssignableFrom(Lorg/kodein/di/TypeToken;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/TypeToken<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "typeToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-static {p0, p1}, Lorg/kodein/di/TypeToken$DefaultImpls;->isAssignableFrom(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;)Z

    move-result p1

    return p1
.end method

.method public simpleDispString()Ljava/lang/String;
    .locals 1

    .line 147
    invoke-virtual {p0}, Lorg/kodein/di/JVMTypeToken;->getJvmType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/kodein/di/TypeDispKt;->simpleDispString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
