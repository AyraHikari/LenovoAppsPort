.class public final Lorg/kodein/di/generic/GSetKt;
.super Ljava/lang/Object;
.source "GSet.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GSet.kt\norg/kodein/di/generic/GSetKt\n+ 2 types.kt\norg/kodein/di/TypesKt\n*L\n1#1,43:1\n282#2:44\n282#2:45\n282#2:46\n282#2:47\n282#2:48\n282#2:49\n*E\n*S KotlinDebug\n*F\n+ 1 GSet.kt\norg/kodein/di/generic/GSetKt\n*L\n21#1:44\n21#1:45\n33#1:46\n33#1:47\n33#1:48\n42#1:49\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a5\u0010\u0000\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0006\u0008\u0000\u0010\u0003\u0018\u0001\"\n\u0008\u0001\u0010\u0004\u0018\u0001*\u00020\u0002*\u00020\u0005H\u0086\u0008\u001a1\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u0002H\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00040\u00080\u0007\"\n\u0008\u0000\u0010\u0004\u0018\u0001*\u00020\u0002*\u0008\u0012\u0004\u0012\u0002H\u00040\tH\u0086\u0008\u001a\'\u0010\n\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u0002H\u00040\u000b\"\n\u0008\u0000\u0010\u0004\u0018\u0001*\u00020\u0002*\u00020\u0005H\u0086\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "argSetBinding",
        "Lorg/kodein/di/bindings/ArgSetBinding;",
        "",
        "A",
        "T",
        "Lorg/kodein/di/Kodein$Builder;",
        "inSet",
        "Lorg/kodein/di/bindings/TypeBinderInSet;",
        "",
        "Lorg/kodein/di/Kodein$Builder$TypeBinder;",
        "setBinding",
        "Lorg/kodein/di/bindings/SetBinding;",
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
.method public static final synthetic argSetBinding(Lorg/kodein/di/Kodein$Builder;)Lorg/kodein/di/bindings/ArgSetBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Builder;",
            ")",
            "Lorg/kodein/di/bindings/ArgSetBinding<",
            "Ljava/lang/Object;",
            "TA;TT;>;"
        }
    .end annotation

    const-string v0, "$this$argSetBinding"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lorg/kodein/di/TypeTokenKt;->getAnyToken()Lorg/kodein/di/TypeToken;

    move-result-object p0

    .line 46
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/kodein/di/generic/GSetKt$argSetBinding$$inlined$generic$1;

    invoke-direct {v0}, Lorg/kodein/di/generic/GSetKt$argSetBinding$$inlined$generic$1;-><init>()V

    check-cast v0, Lorg/kodein/di/TypeReference;

    invoke-static {v0}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    .line 47
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lorg/kodein/di/generic/GSetKt$argSetBinding$$inlined$generic$2;

    invoke-direct {v1}, Lorg/kodein/di/generic/GSetKt$argSetBinding$$inlined$generic$2;-><init>()V

    check-cast v1, Lorg/kodein/di/TypeReference;

    invoke-static {v1}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v1

    .line 48
    new-instance v2, Lorg/kodein/di/generic/GSetKt$argSetBinding$$inlined$generic$3;

    invoke-direct {v2}, Lorg/kodein/di/generic/GSetKt$argSetBinding$$inlined$generic$3;-><init>()V

    check-cast v2, Lorg/kodein/di/TypeReference;

    invoke-static {v2}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v2

    .line 33
    new-instance v3, Lorg/kodein/di/bindings/ArgSetBinding;

    invoke-direct {v3, p0, v0, v1, v2}, Lorg/kodein/di/bindings/ArgSetBinding;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;)V

    return-object v3
.end method

.method public static final synthetic inSet(Lorg/kodein/di/Kodein$Builder$TypeBinder;)Lorg/kodein/di/bindings/TypeBinderInSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Builder$TypeBinder<",
            "TT;>;)",
            "Lorg/kodein/di/bindings/TypeBinderInSet<",
            "TT;",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "$this$inSet"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lorg/kodein/di/generic/GSetKt$inSet$$inlined$generic$1;

    invoke-direct {v0}, Lorg/kodein/di/generic/GSetKt$inSet$$inlined$generic$1;-><init>()V

    check-cast v0, Lorg/kodein/di/TypeReference;

    invoke-static {v0}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    .line 42
    invoke-static {p0, v0}, Lorg/kodein/di/bindings/SetKt;->InSet(Lorg/kodein/di/Kodein$Builder$TypeBinder;Lorg/kodein/di/TypeToken;)Lorg/kodein/di/bindings/TypeBinderInSet;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic setBinding(Lorg/kodein/di/Kodein$Builder;)Lorg/kodein/di/bindings/SetBinding;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Builder;",
            ")",
            "Lorg/kodein/di/bindings/SetBinding<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$setBinding"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lorg/kodein/di/TypeTokenKt;->getAnyToken()Lorg/kodein/di/TypeToken;

    move-result-object p0

    .line 44
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/kodein/di/generic/GSetKt$setBinding$$inlined$generic$1;

    invoke-direct {v0}, Lorg/kodein/di/generic/GSetKt$setBinding$$inlined$generic$1;-><init>()V

    check-cast v0, Lorg/kodein/di/TypeReference;

    invoke-static {v0}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    .line 45
    new-instance v1, Lorg/kodein/di/generic/GSetKt$setBinding$$inlined$generic$2;

    invoke-direct {v1}, Lorg/kodein/di/generic/GSetKt$setBinding$$inlined$generic$2;-><init>()V

    check-cast v1, Lorg/kodein/di/TypeReference;

    invoke-static {v1}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v1

    .line 21
    new-instance v2, Lorg/kodein/di/bindings/SetBinding;

    invoke-direct {v2, p0, v0, v1}, Lorg/kodein/di/bindings/SetBinding;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;)V

    return-object v2
.end method
