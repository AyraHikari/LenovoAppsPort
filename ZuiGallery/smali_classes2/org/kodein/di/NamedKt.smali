.class public final Lorg/kodein/di/NamedKt;
.super Ljava/lang/Object;
.source "Named.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a*\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0008\u0008\u0000\u0010\u0007*\u00020\u0008*\u00020\u00022\u000e\u0010\t\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00070\n\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00f8\u0001\u0000\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000b"
    }
    d2 = {
        "named",
        "Lorg/kodein/di/Named;",
        "Lorg/kodein/di/KodeinAware;",
        "getNamed",
        "(Lorg/kodein/di/KodeinAware;)Lorg/kodein/di/KodeinAware;",
        "Constant",
        "Lorg/kodein/di/KodeinProperty;",
        "T",
        "",
        "type",
        "Lorg/kodein/di/TypeToken;",
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
.method public static final Constant(Lorg/kodein/di/KodeinAware;Lorg/kodein/di/TypeToken;)Lorg/kodein/di/KodeinProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/KodeinAware;",
            "Lorg/kodein/di/TypeToken<",
            "+TT;>;)",
            "Lorg/kodein/di/KodeinProperty<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$Constant"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-static {p0}, Lorg/kodein/di/NamedKt;->getNamed(Lorg/kodein/di/KodeinAware;)Lorg/kodein/di/KodeinAware;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/kodein/di/Named;->Instance-impl(Lorg/kodein/di/KodeinAware;Lorg/kodein/di/TypeToken;)Lorg/kodein/di/KodeinProperty;

    move-result-object p0

    return-object p0
.end method

.method public static final getNamed(Lorg/kodein/di/KodeinAware;)Lorg/kodein/di/KodeinAware;
    .locals 1

    const-string v0, "$this$named"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-static {p0}, Lorg/kodein/di/Named;->constructor-impl(Lorg/kodein/di/KodeinAware;)Lorg/kodein/di/KodeinAware;

    move-result-object p0

    return-object p0
.end method
