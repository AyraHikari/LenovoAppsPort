.class public final Lorg/kodein/di/DKodeinKt;
.super Ljava/lang/Object;
.source "DKodein.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDKodein.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DKodein.kt\norg/kodein/di/DKodeinKt\n*L\n1#1,188:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a1\u0010\u0005\u001a\u0002H\u0006\"\u0004\u0008\u0000\u0010\u0006*\u00020\u00022\u0017\u0010\u0007\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u0002H\u00060\u0008\u00a2\u0006\u0002\u0008\nH\u0086\u0008\u00a2\u0006\u0002\u0010\u000b\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u000c"
    }
    d2 = {
        "lazy",
        "Lorg/kodein/di/Kodein;",
        "Lorg/kodein/di/DKodeinAware;",
        "getLazy",
        "(Lorg/kodein/di/DKodeinAware;)Lorg/kodein/di/Kodein;",
        "newInstance",
        "T",
        "creator",
        "Lkotlin/Function1;",
        "Lorg/kodein/di/DKodein;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lorg/kodein/di/DKodeinAware;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
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
.method public static final getLazy(Lorg/kodein/di/DKodeinAware;)Lorg/kodein/di/Kodein;
    .locals 1

    const-string v0, "$this$lazy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-interface {p0}, Lorg/kodein/di/DKodeinAware;->getDkodein()Lorg/kodein/di/DKodein;

    move-result-object p0

    invoke-interface {p0}, Lorg/kodein/di/DKodein;->getLazy()Lorg/kodein/di/Kodein;

    move-result-object p0

    return-object p0
.end method

.method public static final newInstance(Lorg/kodein/di/DKodeinAware;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/DKodeinAware;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/kodein/di/DKodein;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "$this$newInstance"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-interface {p0}, Lorg/kodein/di/DKodeinAware;->getDkodein()Lorg/kodein/di/DKodein;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
