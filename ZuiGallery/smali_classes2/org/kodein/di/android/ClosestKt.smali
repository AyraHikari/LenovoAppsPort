.class public final Lorg/kodein/di/android/ClosestKt;
.super Ljava/lang/Object;
.source "closest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u001a\u001c\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u001a\u0016\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00012\u0006\u0010\u0006\u001a\u00020\u0002\u001a\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u001a\u001c\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u001a\u0016\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00012\u0006\u0010\u0006\u001a\u00020\u0002\u001a\u001a\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002\u001a\u0012\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u000b\u001a\u0012\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u000c\u001a\u0012\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\r\u001a\u0016\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u0006\u0012\u0002\u0008\u00030\u000e\u001a\u0012\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u000f\u001a\u0012\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u000b\u001a\u0012\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u000c\u001a\u0012\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\r\u001a\u0016\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u0006\u0012\u0002\u0008\u00030\u000e\u001a\u0012\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "closestKodein",
        "Lorg/kodein/di/android/KodeinPropertyDelegateProvider;",
        "Landroid/content/Context;",
        "",
        "getContext",
        "Lkotlin/Function0;",
        "context",
        "kodein",
        "Lorg/kodein/di/Kodein;",
        "thisRef",
        "rootContext",
        "Landroid/app/Dialog;",
        "Landroid/app/Fragment;",
        "Landroid/content/AbstractThreadedSyncAdapter;",
        "Landroid/content/Loader;",
        "Landroid/view/View;",
        "kodein-di-framework-android-core_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final synthetic access$kodein(Ljava/lang/Object;Landroid/content/Context;)Lorg/kodein/di/Kodein;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/kodein/di/android/ClosestKt;->kodein(Ljava/lang/Object;Landroid/content/Context;)Lorg/kodein/di/Kodein;

    move-result-object p0

    return-object p0
.end method

.method public static final closestKodein()Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lorg/kodein/di/android/ClosestKt;->kodein()Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object v0

    return-object v0
.end method

.method public static final closestKodein(Landroid/app/Dialog;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$closestKodein"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Lorg/kodein/di/android/ClosestKt;->kodein(Landroid/app/Dialog;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final closestKodein(Landroid/app/Fragment;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            ")",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$closestKodein"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-static {p0}, Lorg/kodein/di/android/ClosestKt;->kodein(Landroid/app/Fragment;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final closestKodein(Landroid/content/AbstractThreadedSyncAdapter;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AbstractThreadedSyncAdapter;",
            ")",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$closestKodein"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-static {p0}, Lorg/kodein/di/android/ClosestKt;->kodein(Landroid/content/AbstractThreadedSyncAdapter;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final closestKodein(Landroid/content/Context;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Lorg/kodein/di/android/ClosestKt;->kodein(Landroid/content/Context;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final closestKodein(Landroid/content/Loader;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "*>;)",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$closestKodein"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-static {p0}, Lorg/kodein/di/android/ClosestKt;->kodein(Landroid/content/Loader;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final closestKodein(Landroid/view/View;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$closestKodein"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-static {p0}, Lorg/kodein/di/android/ClosestKt;->kodein(Landroid/view/View;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final closestKodein(Lkotlin/jvm/functions/Function0;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/content/Context;",
            ">;)",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "getContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {p0}, Lorg/kodein/di/android/ClosestKt;->kodein(Lkotlin/jvm/functions/Function0;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method

.method private static final kodein(Ljava/lang/Object;Landroid/content/Context;)Lorg/kodein/di/Kodein;
    .locals 2

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_2

    .line 20
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/kodein/di/KodeinAware;

    if-eqz v1, :cond_0

    .line 21
    check-cast v0, Lorg/kodein/di/KodeinAware;

    invoke-interface {v0}, Lorg/kodein/di/KodeinAware;->getKodein()Lorg/kodein/di/Kodein;

    move-result-object p0

    return-object p0

    .line 23
    :cond_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast p0, Lorg/kodein/di/KodeinAware;

    invoke-interface {p0}, Lorg/kodein/di/KodeinAware;->getKodein()Lorg/kodein/di/Kodein;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type org.kodein.di.KodeinAware"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final kodein()Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/kodein/di/android/ContextKodeinPropertyDelegateProvider;

    invoke-direct {v0}, Lorg/kodein/di/android/ContextKodeinPropertyDelegateProvider;-><init>()V

    check-cast v0, Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    return-object v0
.end method

.method public static final kodein(Landroid/app/Dialog;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$kodein"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lorg/kodein/di/android/ClosestKt$kodein$3;

    invoke-direct {v0, p0}, Lorg/kodein/di/android/ClosestKt$kodein$3;-><init>(Landroid/app/Dialog;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lorg/kodein/di/android/ClosestKt;->kodein(Lkotlin/jvm/functions/Function0;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final kodein(Landroid/app/Fragment;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            ")",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$kodein"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lorg/kodein/di/android/ClosestKt$kodein$2;

    invoke-direct {v0, p0}, Lorg/kodein/di/android/ClosestKt$kodein$2;-><init>(Landroid/app/Fragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lorg/kodein/di/android/ClosestKt;->kodein(Lkotlin/jvm/functions/Function0;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final kodein(Landroid/content/AbstractThreadedSyncAdapter;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AbstractThreadedSyncAdapter;",
            ")",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$kodein"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lorg/kodein/di/android/ClosestKt$kodein$5;

    invoke-direct {v0, p0}, Lorg/kodein/di/android/ClosestKt$kodein$5;-><init>(Landroid/content/AbstractThreadedSyncAdapter;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lorg/kodein/di/android/ClosestKt;->kodein(Lkotlin/jvm/functions/Function0;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final kodein(Landroid/content/Context;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider;

    new-instance v1, Lorg/kodein/di/android/ClosestKt$kodein$1;

    invoke-direct {v1, p0}, Lorg/kodein/di/android/ClosestKt$kodein$1;-><init>(Landroid/content/Context;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1}, Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    return-object v0
.end method

.method public static final kodein(Landroid/content/Loader;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "*>;)",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$kodein"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lorg/kodein/di/android/ClosestKt$kodein$6;

    invoke-direct {v0, p0}, Lorg/kodein/di/android/ClosestKt$kodein$6;-><init>(Landroid/content/Loader;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lorg/kodein/di/android/ClosestKt;->kodein(Lkotlin/jvm/functions/Function0;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final kodein(Landroid/view/View;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$kodein"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance v0, Lorg/kodein/di/android/ClosestKt$kodein$4;

    invoke-direct {v0, p0}, Lorg/kodein/di/android/ClosestKt$kodein$4;-><init>(Landroid/view/View;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lorg/kodein/di/android/ClosestKt;->kodein(Lkotlin/jvm/functions/Function0;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final kodein(Lkotlin/jvm/functions/Function0;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/content/Context;",
            ">;)",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "getContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider;

    invoke-direct {v0, p0}, Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    return-object v0
.end method
