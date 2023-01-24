.class public final Lorg/kodein/di/KodeinWrappedType;
.super Ljava/lang/Object;
.source "types.kt"

# interfaces
.implements Ljava/lang/reflect/Type;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/KodeinWrappedType$Func;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0013\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/kodein/di/KodeinWrappedType;",
        "Ljava/lang/reflect/Type;",
        "type",
        "(Ljava/lang/reflect/Type;)V",
        "_hashCode",
        "",
        "getType",
        "()Ljava/lang/reflect/Type;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "Func",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private _hashCode:I

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/KodeinWrappedType;->type:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 45
    instance-of v1, p1, Ljava/lang/reflect/Type;

    if-nez v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lorg/kodein/di/KodeinWrappedType;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 51
    :cond_1
    sget-object v0, Lorg/kodein/di/KodeinWrappedType$Func;->INSTANCE:Lorg/kodein/di/KodeinWrappedType$Func;

    iget-object v1, p0, Lorg/kodein/di/KodeinWrappedType;->type:Ljava/lang/reflect/Type;

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1, p1}, Lorg/kodein/di/KodeinWrappedType$Func;->Equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/kodein/di/KodeinWrappedType;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 38
    iget v0, p0, Lorg/kodein/di/KodeinWrappedType;->_hashCode:I

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lorg/kodein/di/KodeinWrappedType$Func;->INSTANCE:Lorg/kodein/di/KodeinWrappedType$Func;

    iget-object v1, p0, Lorg/kodein/di/KodeinWrappedType;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lorg/kodein/di/KodeinWrappedType$Func;->HashCode(Ljava/lang/reflect/Type;)I

    move-result v0

    iput v0, p0, Lorg/kodein/di/KodeinWrappedType;->_hashCode:I

    .line 40
    :cond_0
    iget v0, p0, Lorg/kodein/di/KodeinWrappedType;->_hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KodeinWrappedType{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/kodein/di/KodeinWrappedType;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
