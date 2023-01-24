.class public final Lorg/kodein/di/generic/GScopesKt;
.super Ljava/lang/Object;
.source "GScopes.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGScopes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GScopes.kt\norg/kodein/di/generic/GScopesKt\n+ 2 types.kt\norg/kodein/di/TypesKt\n*L\n1#1,16:1\n9#1:19\n13#1:23\n282#2:17\n282#2:18\n282#2:20\n282#2:21\n282#2:22\n282#2:24\n*E\n*S KotlinDebug\n*F\n+ 1 GScopes.kt\norg/kodein/di/generic/GScopesKt\n*L\n11#1:19\n15#1:23\n9#1:17\n9#1:18\n11#1:20\n11#1:21\n13#1:22\n15#1:24\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a/\u0010\u0000\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0006\u0008\u0000\u0010\u0003\u0018\u00012\u000e\u0008\u0008\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u0005H\u0086\u0008\u001a;\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0006\u0008\u0000\u0010\u0007\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u00012\u0014\u0008\u0008\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u00030\u0008H\u0086\u0008\u001a%\u0010\t\u001a\u00020\n\"\u0006\u0008\u0000\u0010\u0003\u0018\u0001*\u00020\u000b2\u000e\u0008\u0008\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u0005H\u0086\u0008\u001a3\u0010\u000c\u001a\u00020\n\"\u0006\u0008\u0000\u0010\u0007\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001*\u00020\u000b2\u0014\u0008\u0008\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u00030\u0008H\u0086\u0008\u00a8\u0006\r"
    }
    d2 = {
        "contextFinder",
        "Lorg/kodein/di/bindings/ContextTranslator;",
        "",
        "S",
        "t",
        "Lkotlin/Function0;",
        "contextTranslator",
        "C",
        "Lkotlin/Function1;",
        "registerContextFinder",
        "",
        "Lorg/kodein/di/Kodein$Builder;",
        "registerContextTranslator",
        "kodein-di-generic-jvm"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final synthetic contextFinder(Lkotlin/jvm/functions/Function0;)Lorg/kodein/di/bindings/ContextTranslator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TS;>;)",
            "Lorg/kodein/di/bindings/ContextTranslator<",
            "Ljava/lang/Object;",
            "TS;>;"
        }
    .end annotation

    const-string v0, "t"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/kodein/di/generic/GScopesKt$contextFinder$$inlined$generic$1;

    invoke-direct {v0}, Lorg/kodein/di/generic/GScopesKt$contextFinder$$inlined$generic$1;-><init>()V

    check-cast v0, Lorg/kodein/di/TypeReference;

    invoke-static {v0}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    .line 13
    new-instance v1, Lorg/kodein/di/bindings/SimpleAutoContextTranslator;

    invoke-direct {v1, v0, p0}, Lorg/kodein/di/bindings/SimpleAutoContextTranslator;-><init>(Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lorg/kodein/di/bindings/ContextTranslator;

    return-object v1
.end method

.method public static final synthetic contextTranslator(Lkotlin/jvm/functions/Function1;)Lorg/kodein/di/bindings/ContextTranslator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TC;+TS;>;)",
            "Lorg/kodein/di/bindings/ContextTranslator<",
            "TC;TS;>;"
        }
    .end annotation

    const-string v0, "t"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/kodein/di/generic/GScopesKt$contextTranslator$$inlined$generic$1;

    invoke-direct {v0}, Lorg/kodein/di/generic/GScopesKt$contextTranslator$$inlined$generic$1;-><init>()V

    check-cast v0, Lorg/kodein/di/TypeReference;

    invoke-static {v0}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    .line 18
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lorg/kodein/di/generic/GScopesKt$contextTranslator$$inlined$generic$2;

    invoke-direct {v1}, Lorg/kodein/di/generic/GScopesKt$contextTranslator$$inlined$generic$2;-><init>()V

    check-cast v1, Lorg/kodein/di/TypeReference;

    invoke-static {v1}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v1

    .line 9
    new-instance v2, Lorg/kodein/di/bindings/SimpleContextTranslator;

    invoke-direct {v2, v0, v1, p0}, Lorg/kodein/di/bindings/SimpleContextTranslator;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lorg/kodein/di/bindings/ContextTranslator;

    return-object v2
.end method

.method public static final synthetic registerContextFinder(Lorg/kodein/di/Kodein$Builder;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Builder;",
            "Lkotlin/jvm/functions/Function0<",
            "+TS;>;)V"
        }
    .end annotation

    const-string v0, "$this$registerContextFinder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/kodein/di/generic/GScopesKt$registerContextFinder$$inlined$contextFinder$1;

    invoke-direct {v0}, Lorg/kodein/di/generic/GScopesKt$registerContextFinder$$inlined$contextFinder$1;-><init>()V

    check-cast v0, Lorg/kodein/di/TypeReference;

    invoke-static {v0}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    .line 23
    new-instance v1, Lorg/kodein/di/bindings/SimpleAutoContextTranslator;

    invoke-direct {v1, v0, p1}, Lorg/kodein/di/bindings/SimpleAutoContextTranslator;-><init>(Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lorg/kodein/di/bindings/ContextTranslator;

    .line 15
    invoke-interface {p0, v1}, Lorg/kodein/di/Kodein$Builder;->RegisterContextTranslator(Lorg/kodein/di/bindings/ContextTranslator;)V

    return-void
.end method

.method public static final synthetic registerContextTranslator(Lorg/kodein/di/Kodein$Builder;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Builder;",
            "Lkotlin/jvm/functions/Function1<",
            "-TC;+TS;>;)V"
        }
    .end annotation

    const-string v0, "$this$registerContextTranslator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/kodein/di/generic/GScopesKt$registerContextTranslator$$inlined$contextTranslator$1;

    invoke-direct {v0}, Lorg/kodein/di/generic/GScopesKt$registerContextTranslator$$inlined$contextTranslator$1;-><init>()V

    check-cast v0, Lorg/kodein/di/TypeReference;

    invoke-static {v0}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    .line 21
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lorg/kodein/di/generic/GScopesKt$registerContextTranslator$$inlined$contextTranslator$2;

    invoke-direct {v1}, Lorg/kodein/di/generic/GScopesKt$registerContextTranslator$$inlined$contextTranslator$2;-><init>()V

    check-cast v1, Lorg/kodein/di/TypeReference;

    invoke-static {v1}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v1

    .line 19
    new-instance v2, Lorg/kodein/di/bindings/SimpleContextTranslator;

    invoke-direct {v2, v0, v1, p1}, Lorg/kodein/di/bindings/SimpleContextTranslator;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lorg/kodein/di/bindings/ContextTranslator;

    .line 11
    invoke-interface {p0, v2}, Lorg/kodein/di/Kodein$Builder;->RegisterContextTranslator(Lorg/kodein/di/bindings/ContextTranslator;)V

    return-void
.end method
