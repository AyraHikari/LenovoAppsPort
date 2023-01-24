.class public final Lorg/kodein/di/SearchKt;
.super Ljava/lang/Object;
.source "Search.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001ac\u0010\u0000\u001aB\u0012>\u0012<\u0012\u0010\u0012\u000e\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0003\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00040\u0001\u0012\u000e\u0012\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u00050\u00020\u0001*\u00020\u00062\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "findAllBindings",
        "",
        "Lkotlin/Triple;",
        "Lorg/kodein/di/Kodein$Key;",
        "Lorg/kodein/di/KodeinDefinition;",
        "Lorg/kodein/di/bindings/ContextTranslator;",
        "Lorg/kodein/di/KodeinTree;",
        "f",
        "Lkotlin/Function1;",
        "Lorg/kodein/di/FindDSL;",
        "",
        "Lkotlin/ExtensionFunctionType;",
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
.method public static final findAllBindings(Lorg/kodein/di/KodeinTree;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinTree;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/kodein/di/FindDSL;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/List<",
            "Lkotlin/Triple<",
            "Lorg/kodein/di/Kodein$Key<",
            "***>;",
            "Ljava/util/List<",
            "Lorg/kodein/di/KodeinDefinition<",
            "***>;>;",
            "Lorg/kodein/di/bindings/ContextTranslator<",
            "**>;>;>;"
        }
    .end annotation

    const-string v0, "$this$findAllBindings"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lorg/kodein/di/FindDSL;

    invoke-direct {v0}, Lorg/kodein/di/FindDSL;-><init>()V

    .line 138
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v0}, Lorg/kodein/di/FindDSL;->getSpecs$kodein_di_core()Lorg/kodein/di/SearchSpecs;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/kodein/di/KodeinTree;->find(Lorg/kodein/di/SearchSpecs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
