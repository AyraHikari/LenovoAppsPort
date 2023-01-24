.class final Lorg/kodein/di/android/ContextKodeinPropertyDelegateProvider;
.super Ljava/lang/Object;
.source "closest.kt"

# interfaces
.implements Lorg/kodein/di/android/KodeinPropertyDelegateProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
        "Landroid/content/Context;",
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J%\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u000c\u0010\u0008\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\tH\u0096\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/kodein/di/android/ContextKodeinPropertyDelegateProvider;",
        "Lorg/kodein/di/android/KodeinPropertyDelegateProvider;",
        "Landroid/content/Context;",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideDelegate(Landroid/content/Context;Lkotlin/reflect/KProperty;)Lkotlin/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/reflect/KProperty<",
            "*>;)",
            "Lkotlin/Lazy<",
            "Lorg/kodein/di/Kodein;",
            ">;"
        }
    .end annotation

    const-string p2, "thisRef"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance p2, Lorg/kodein/di/android/ContextKodeinPropertyDelegateProvider$provideDelegate$1;

    invoke-direct {p2, p1}, Lorg/kodein/di/android/ContextKodeinPropertyDelegateProvider$provideDelegate$1;-><init>(Landroid/content/Context;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic provideDelegate(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/Lazy;
    .locals 0

    .line 38
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lorg/kodein/di/android/ContextKodeinPropertyDelegateProvider;->provideDelegate(Landroid/content/Context;Lkotlin/reflect/KProperty;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method
