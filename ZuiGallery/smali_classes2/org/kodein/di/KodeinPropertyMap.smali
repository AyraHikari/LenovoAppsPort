.class public final Lorg/kodein/di/KodeinPropertyMap;
.super Ljava/lang/Object;
.source "properties.kt"

# interfaces
.implements Lorg/kodein/di/LazyDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/kodein/di/LazyDelegate<",
        "TO;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nproperties.kt\nKotlin\n*S Kotlin\n*F\n+ 1 properties.kt\norg/kodein/di/KodeinPropertyMap\n*L\n1#1,52:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u0000*\u0006\u0008\u0001\u0010\u0002 \u00012\u0008\u0012\u0004\u0012\u0002H\u00020\u0003B\'\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J)\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u000e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000eH\u0096\u0002R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0088\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/kodein/di/KodeinPropertyMap;",
        "I",
        "O",
        "Lorg/kodein/di/LazyDelegate;",
        "base",
        "Lorg/kodein/di/KodeinProperty;",
        "map",
        "Lkotlin/Function1;",
        "(Lorg/kodein/di/KodeinProperty;Lkotlin/jvm/functions/Function1;)V",
        "provideDelegate",
        "Lkotlin/Lazy;",
        "receiver",
        "",
        "prop",
        "Lkotlin/reflect/KProperty;",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final base:Lorg/kodein/di/KodeinProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/KodeinProperty<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final map:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TI;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/kodein/di/KodeinProperty;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinProperty<",
            "+TI;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    const-string v0, "base"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/KodeinPropertyMap;->base:Lorg/kodein/di/KodeinProperty;

    iput-object p2, p0, Lorg/kodein/di/KodeinPropertyMap;->map:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getBase$p(Lorg/kodein/di/KodeinPropertyMap;)Lorg/kodein/di/KodeinProperty;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/kodein/di/KodeinPropertyMap;->base:Lorg/kodein/di/KodeinProperty;

    return-object p0
.end method

.method public static final synthetic access$getMap$p(Lorg/kodein/di/KodeinPropertyMap;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/kodein/di/KodeinPropertyMap;->map:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method


# virtual methods
.method public provideDelegate(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/Lazy<",
            "TO;>;"
        }
    .end annotation

    const-string v0, "prop"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lorg/kodein/di/KodeinPropertyMap$provideDelegate$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/kodein/di/KodeinPropertyMap$provideDelegate$1;-><init>(Lorg/kodein/di/KodeinPropertyMap;Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iget-object p2, p0, Lorg/kodein/di/KodeinPropertyMap;->base:Lorg/kodein/di/KodeinProperty;

    invoke-virtual {p2}, Lorg/kodein/di/KodeinProperty;->getTrigger$kodein_di_core()Lorg/kodein/di/KodeinTrigger;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/kodein/di/KodeinTrigger;->getProperties()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method
