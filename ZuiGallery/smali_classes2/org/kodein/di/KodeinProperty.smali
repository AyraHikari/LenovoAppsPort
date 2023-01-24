.class public final Lorg/kodein/di/KodeinProperty;
.super Ljava/lang/Object;
.source "properties.kt"

# interfaces
.implements Lorg/kodein/di/LazyDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/kodein/di/LazyDelegate<",
        "TV;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nproperties.kt\nKotlin\n*S Kotlin\n*F\n+ 1 properties.kt\norg/kodein/di/KodeinProperty\n*L\n1#1,52:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B9\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0006\u0012\u001c\u0010\u0007\u001a\u0018\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0006\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0002\u0010\nJ)\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u000e\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0014H\u0096\u0002R$\u0010\u0007\u001a\u0018\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0006\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00028\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/kodein/di/KodeinProperty;",
        "V",
        "Lorg/kodein/di/LazyDelegate;",
        "trigger",
        "Lorg/kodein/di/KodeinTrigger;",
        "originalContext",
        "Lorg/kodein/di/KodeinContext;",
        "get",
        "Lkotlin/Function2;",
        "",
        "(Lorg/kodein/di/KodeinTrigger;Lorg/kodein/di/KodeinContext;Lkotlin/jvm/functions/Function2;)V",
        "getOriginalContext",
        "()Lorg/kodein/di/KodeinContext;",
        "getTrigger$kodein_di_core",
        "()Lorg/kodein/di/KodeinTrigger;",
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
.field private final get:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lorg/kodein/di/KodeinContext<",
            "*>;",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation
.end field

.field private final originalContext:Lorg/kodein/di/KodeinContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/KodeinContext<",
            "*>;"
        }
    .end annotation
.end field

.field private final trigger:Lorg/kodein/di/KodeinTrigger;


# direct methods
.method public constructor <init>(Lorg/kodein/di/KodeinTrigger;Lorg/kodein/di/KodeinContext;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinTrigger;",
            "Lorg/kodein/di/KodeinContext<",
            "*>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/kodein/di/KodeinContext<",
            "*>;-",
            "Ljava/lang/String;",
            "+TV;>;)V"
        }
    .end annotation

    const-string v0, "originalContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "get"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/KodeinProperty;->trigger:Lorg/kodein/di/KodeinTrigger;

    iput-object p2, p0, Lorg/kodein/di/KodeinProperty;->originalContext:Lorg/kodein/di/KodeinContext;

    iput-object p3, p0, Lorg/kodein/di/KodeinProperty;->get:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$getGet$p(Lorg/kodein/di/KodeinProperty;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/kodein/di/KodeinProperty;->get:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method


# virtual methods
.method public final getOriginalContext()Lorg/kodein/di/KodeinContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/KodeinContext<",
            "*>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/kodein/di/KodeinProperty;->originalContext:Lorg/kodein/di/KodeinContext;

    return-object v0
.end method

.method public final getTrigger$kodein_di_core()Lorg/kodein/di/KodeinTrigger;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/kodein/di/KodeinProperty;->trigger:Lorg/kodein/di/KodeinTrigger;

    return-object v0
.end method

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
            "TV;>;"
        }
    .end annotation

    const-string v0, "prop"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lorg/kodein/di/KodeinProperty$provideDelegate$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/kodein/di/KodeinProperty$provideDelegate$1;-><init>(Lorg/kodein/di/KodeinProperty;Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lorg/kodein/di/KodeinProperty;->trigger:Lorg/kodein/di/KodeinTrigger;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/kodein/di/KodeinTrigger;->getProperties()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method
