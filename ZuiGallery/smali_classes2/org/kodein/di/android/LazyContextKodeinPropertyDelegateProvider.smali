.class final Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider;
.super Ljava/lang/Object;
.source "closest.kt"

# interfaces
.implements Lorg/kodein/di/android/KodeinPropertyDelegateProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0010\u0006J\'\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u000b\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000cH\u0096\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider;",
        "Lorg/kodein/di/android/KodeinPropertyDelegateProvider;",
        "",
        "getContext",
        "Lkotlin/Function0;",
        "Landroid/content/Context;",
        "(Lkotlin/jvm/functions/Function0;)V",
        "provideDelegate",
        "Lkotlin/Lazy;",
        "Lorg/kodein/di/Kodein;",
        "thisRef",
        "property",
        "Lkotlin/reflect/KProperty;",
        "kodein-di-framework-android-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final getContext:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    const-string v0, "getContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider;->getContext:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$getGetContext$p(Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider;->getContext:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method


# virtual methods
.method public provideDelegate(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)",
            "Lkotlin/Lazy<",
            "Lorg/kodein/di/Kodein;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance p2, Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider$provideDelegate$1;

    invoke-direct {p2, p0, p1}, Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider$provideDelegate$1;-><init>(Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider;Ljava/lang/Object;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method
