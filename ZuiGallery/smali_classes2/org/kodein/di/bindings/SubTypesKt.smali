.class public final Lorg/kodein/di/bindings/SubTypesKt;
.super Ljava/lang/Object;
.source "subTypes.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "subTypes",
        "Lorg/kodein/di/bindings/TypeBinderSubTypes;",
        "T",
        "",
        "Lorg/kodein/di/Kodein$Builder$TypeBinder;",
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
.method public static final subTypes(Lorg/kodein/di/Kodein$Builder$TypeBinder;)Lorg/kodein/di/bindings/TypeBinderSubTypes;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Builder$TypeBinder<",
            "TT;>;)",
            "Lorg/kodein/di/bindings/TypeBinderSubTypes<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$subTypes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lorg/kodein/di/bindings/TypeBinderSubTypes;

    invoke-direct {v0, p0}, Lorg/kodein/di/bindings/TypeBinderSubTypes;-><init>(Lorg/kodein/di/Kodein$Builder$TypeBinder;)V

    return-object v0
.end method
