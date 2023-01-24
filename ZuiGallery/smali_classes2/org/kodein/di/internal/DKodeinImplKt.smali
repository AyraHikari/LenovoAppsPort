.class public final Lorg/kodein/di/internal/DKodeinImplKt;
.super Ljava/lang/Object;
.source "DKodeinImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"-\u0010\u0000\u001a\u000c\u0012\u0008\u0008\u0000\u0012\u0004\u0018\u00010\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u00038\u00c2\u0002X\u0082\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "anyType",
        "Lorg/kodein/di/TypeToken;",
        "",
        "Lorg/kodein/di/KodeinContext;",
        "anyType$annotations",
        "(Lorg/kodein/di/KodeinContext;)V",
        "getAnyType",
        "(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/TypeToken;",
        "kodein-di-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final synthetic access$getAnyType$p(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/TypeToken;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/kodein/di/internal/DKodeinImplKt;->getAnyType(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/TypeToken;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic anyType$annotations(Lorg/kodein/di/KodeinContext;)V
    .locals 0

    return-void
.end method

.method private static final getAnyType(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinContext<",
            "*>;)",
            "Lorg/kodein/di/TypeToken<",
            "-",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 6
    invoke-interface {p0}, Lorg/kodein/di/KodeinContext;->getType()Lorg/kodein/di/TypeToken;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type org.kodein.di.TypeToken<in kotlin.Any?>"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
