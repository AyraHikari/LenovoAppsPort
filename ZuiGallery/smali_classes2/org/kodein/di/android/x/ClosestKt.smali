.class public final Lorg/kodein/di/android/x/ClosestKt;
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
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0012\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0003\u001a\u0012\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0004\u001a\u0016\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u0005\u001a\u0012\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0003\u001a\u0012\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0004\u001a\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "closestKodein",
        "Lorg/kodein/di/android/KodeinPropertyDelegateProvider;",
        "",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroidx/loader/content/Loader;",
        "kodein",
        "kodein-di-framework-android-x_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final closestKodein(Landroidx/fragment/app/Fragment;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$closestKodein"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p0}, Lorg/kodein/di/android/x/ClosestKt;->kodein(Landroidx/fragment/app/Fragment;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final closestKodein(Landroidx/lifecycle/AndroidViewModel;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/AndroidViewModel;",
            ")",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$closestKodein"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p0}, Lorg/kodein/di/android/x/ClosestKt;->kodein(Landroidx/lifecycle/AndroidViewModel;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final closestKodein(Landroidx/loader/content/Loader;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "*>;)",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$closestKodein"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {p0}, Lorg/kodein/di/android/x/ClosestKt;->kodein(Landroidx/loader/content/Loader;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final kodein(Landroidx/fragment/app/Fragment;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$kodein"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lorg/kodein/di/android/x/ClosestKt$kodein$1;

    invoke-direct {v0, p0}, Lorg/kodein/di/android/x/ClosestKt$kodein$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lorg/kodein/di/android/ClosestKt;->kodein(Lkotlin/jvm/functions/Function0;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final kodein(Landroidx/lifecycle/AndroidViewModel;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/AndroidViewModel;",
            ")",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$kodein"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string v0, "getApplication<Application>()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lorg/kodein/di/android/ClosestKt;->kodein(Landroid/content/Context;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final kodein(Landroidx/loader/content/Loader;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "*>;)",
            "Lorg/kodein/di/android/KodeinPropertyDelegateProvider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$kodein"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lorg/kodein/di/android/x/ClosestKt$kodein$2;

    invoke-direct {v0, p0}, Lorg/kodein/di/android/x/ClosestKt$kodein$2;-><init>(Landroidx/loader/content/Loader;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lorg/kodein/di/android/ClosestKt;->kodein(Lkotlin/jvm/functions/Function0;)Lorg/kodein/di/android/KodeinPropertyDelegateProvider;

    move-result-object p0

    return-object p0
.end method
