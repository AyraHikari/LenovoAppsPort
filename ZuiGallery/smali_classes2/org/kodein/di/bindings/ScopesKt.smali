.class public final Lorg/kodein/di/bindings/ScopesKt;
.super Ljava/lang/Object;
.source "scopes.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\u001a5\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0004\u0008\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0003\u00a2\u0006\u0002\u0010\u0006*\u000c\u0008\u0002\u0010\u0007\"\u00020\u00082\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "toKContext",
        "Lorg/kodein/di/KodeinContext;",
        "S",
        "C",
        "Lorg/kodein/di/bindings/ContextTranslator;",
        "ctx",
        "(Lorg/kodein/di/bindings/ContextTranslator;Ljava/lang/Object;)Lorg/kodein/di/KodeinContext;",
        "RegKey",
        "",
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
.method public static final toKContext(Lorg/kodein/di/bindings/ContextTranslator;Ljava/lang/Object;)Lorg/kodein/di/KodeinContext;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/bindings/ContextTranslator<",
            "-TC;TS;>;TC;)",
            "Lorg/kodein/di/KodeinContext<",
            "TS;>;"
        }
    .end annotation

    const-string v0, "$this$toKContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lorg/kodein/di/KodeinContext;->Companion:Lorg/kodein/di/KodeinContext$Companion;

    invoke-interface {p0}, Lorg/kodein/di/bindings/ContextTranslator;->getScopeType()Lorg/kodein/di/TypeToken;

    move-result-object v1

    invoke-interface {p0, p1}, Lorg/kodein/di/bindings/ContextTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/kodein/di/KodeinContext$Companion;->invoke(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lorg/kodein/di/KodeinContext;

    move-result-object p0

    return-object p0
.end method
