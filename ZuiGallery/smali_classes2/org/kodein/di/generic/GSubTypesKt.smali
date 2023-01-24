.class public final Lorg/kodein/di/generic/GSubTypesKt;
.super Ljava/lang/Object;
.source "GSubTypes.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGSubTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GSubTypes.kt\norg/kodein/di/generic/GSubTypesKt\n+ 2 types.kt\norg/kodein/di/TypesKt\n*L\n1#1,17:1\n282#2:18\n282#2:19\n282#2:20\n*E\n*S KotlinDebug\n*F\n+ 1 GSubTypes.kt\norg/kodein/di/generic/GSubTypesKt\n*L\n16#1:18\n16#1:19\n16#1:20\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001ae\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\n\u0008\u0002\u0010\u0004\u0018\u0001*\u00020\u0005*\u0008\u0012\u0004\u0012\u0002H\u00040\u000624\u0008\u0008\u0010\u0007\u001a.\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00040\t\u0012\u001c\u0012\u001a\u0012\u0006\u0008\u0000\u0012\u0002H\u0002\u0012\u0006\u0008\u0000\u0012\u0002H\u0003\u0012\u0006\u0008\u0001\u0012\u0002H\u00040\n0\u0008H\u0086\u000c\u00a8\u0006\u000b"
    }
    d2 = {
        "with",
        "",
        "C",
        "A",
        "T",
        "",
        "Lorg/kodein/di/bindings/TypeBinderSubTypes;",
        "block",
        "Lkotlin/Function1;",
        "Lorg/kodein/di/TypeToken;",
        "Lorg/kodein/di/bindings/KodeinBinding;",
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
.method public static final synthetic with(Lorg/kodein/di/bindings/TypeBinderSubTypes;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/bindings/TypeBinderSubTypes<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/kodein/di/TypeToken<",
            "+TT;>;+",
            "Lorg/kodein/di/bindings/KodeinBinding<",
            "-TC;-TA;+TT;>;>;)V"
        }
    .end annotation

    const-string v0, "$this$with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/kodein/di/generic/GSubTypesKt$with$$inlined$generic$1;

    invoke-direct {v0}, Lorg/kodein/di/generic/GSubTypesKt$with$$inlined$generic$1;-><init>()V

    check-cast v0, Lorg/kodein/di/TypeReference;

    invoke-static {v0}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    .line 19
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lorg/kodein/di/generic/GSubTypesKt$with$$inlined$generic$2;

    invoke-direct {v1}, Lorg/kodein/di/generic/GSubTypesKt$with$$inlined$generic$2;-><init>()V

    check-cast v1, Lorg/kodein/di/TypeReference;

    invoke-static {v1}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v1

    .line 20
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v2, Lorg/kodein/di/generic/GSubTypesKt$with$$inlined$generic$3;

    invoke-direct {v2}, Lorg/kodein/di/generic/GSubTypesKt$with$$inlined$generic$3;-><init>()V

    check-cast v2, Lorg/kodein/di/TypeReference;

    invoke-static {v2}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v2

    .line 16
    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/kodein/di/bindings/TypeBinderSubTypes;->With(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
