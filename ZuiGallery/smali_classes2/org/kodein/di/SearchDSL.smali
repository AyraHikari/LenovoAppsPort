.class public Lorg/kodein/di/SearchDSL;
.super Ljava/lang/Object;
.source "Search.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/SearchDSL$Spec;,
        Lorg/kodein/di/SearchDSL$Binding;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearch.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Search.kt\norg/kodein/di/SearchDSL\n*L\n1#1,141:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001:\u0002\u000e\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0006J\u0012\u0010\u0007\u001a\u00020\u00042\n\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\u0006J\u0010\u0010\t\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0001J\u0015\u0010\n\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0086\u0004J\u0015\u0010\r\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0086\u0004\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/kodein/di/SearchDSL;",
        "",
        "()V",
        "Argument",
        "Lorg/kodein/di/SearchDSL$Spec;",
        "argumentType",
        "Lorg/kodein/di/TypeToken;",
        "Context",
        "contextType",
        "tag",
        "and",
        "Lorg/kodein/di/SearchSpecs;",
        "spec",
        "with",
        "Binding",
        "Spec",
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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Argument(Lorg/kodein/di/TypeToken;)Lorg/kodein/di/SearchDSL$Spec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/TypeToken<",
            "*>;)",
            "Lorg/kodein/di/SearchDSL$Spec;"
        }
    .end annotation

    const-string v0, "argumentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lorg/kodein/di/SearchDSL$Spec;->Companion:Lorg/kodein/di/SearchDSL$Spec$Companion;

    new-instance v1, Lorg/kodein/di/SearchDSL$Argument$1;

    invoke-direct {v1, p1}, Lorg/kodein/di/SearchDSL$Argument$1;-><init>(Lorg/kodein/di/TypeToken;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lorg/kodein/di/SearchDSL$Spec$Companion;->invoke$kodein_di_core(Lkotlin/jvm/functions/Function1;)Lorg/kodein/di/SearchDSL$Spec;

    move-result-object p1

    return-object p1
.end method

.method public final Context(Lorg/kodein/di/TypeToken;)Lorg/kodein/di/SearchDSL$Spec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/TypeToken<",
            "*>;)",
            "Lorg/kodein/di/SearchDSL$Spec;"
        }
    .end annotation

    const-string v0, "contextType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lorg/kodein/di/SearchDSL$Spec;->Companion:Lorg/kodein/di/SearchDSL$Spec$Companion;

    new-instance v1, Lorg/kodein/di/SearchDSL$Context$1;

    invoke-direct {v1, p1}, Lorg/kodein/di/SearchDSL$Context$1;-><init>(Lorg/kodein/di/TypeToken;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lorg/kodein/di/SearchDSL$Spec$Companion;->invoke$kodein_di_core(Lkotlin/jvm/functions/Function1;)Lorg/kodein/di/SearchDSL$Spec;

    move-result-object p1

    return-object p1
.end method

.method public final and(Lorg/kodein/di/SearchSpecs;Lorg/kodein/di/SearchDSL$Spec;)Lorg/kodein/di/SearchSpecs;
    .locals 1

    const-string v0, "$this$and"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-interface {p2, p1}, Lorg/kodein/di/SearchDSL$Spec;->apply(Lorg/kodein/di/SearchSpecs;)V

    return-object p1
.end method

.method public final tag(Ljava/lang/Object;)Lorg/kodein/di/SearchDSL$Spec;
    .locals 2

    .line 105
    sget-object v0, Lorg/kodein/di/SearchDSL$Spec;->Companion:Lorg/kodein/di/SearchDSL$Spec$Companion;

    new-instance v1, Lorg/kodein/di/SearchDSL$tag$1;

    invoke-direct {v1, p1}, Lorg/kodein/di/SearchDSL$tag$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lorg/kodein/di/SearchDSL$Spec$Companion;->invoke$kodein_di_core(Lkotlin/jvm/functions/Function1;)Lorg/kodein/di/SearchDSL$Spec;

    move-result-object p1

    return-object p1
.end method

.method public final with(Lorg/kodein/di/SearchSpecs;Lorg/kodein/di/SearchDSL$Spec;)Lorg/kodein/di/SearchSpecs;
    .locals 1

    const-string v0, "$this$with"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-interface {p2, p1}, Lorg/kodein/di/SearchDSL$Spec;->apply(Lorg/kodein/di/SearchSpecs;)V

    return-object p1
.end method
