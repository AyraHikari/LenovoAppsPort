.class public final Lorg/kodein/di/android/RetainedKt;
.super Ljava/lang/Object;
.source "retained.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a3\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003*\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000c\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "kodeinRetainedFragmentTag",
        "",
        "retainedKodein",
        "Lkotlin/Lazy;",
        "Lorg/kodein/di/Kodein;",
        "Landroid/app/Activity;",
        "allowSilentOverride",
        "",
        "init",
        "Lkotlin/Function1;",
        "Lorg/kodein/di/Kodein$MainBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "kodein-di-framework-android-core_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final kodeinRetainedFragmentTag:Ljava/lang/String; = "org.kodein.di.android.RetainedKodeinFragment"


# direct methods
.method public static final retainedKodein(Landroid/app/Activity;ZLkotlin/jvm/functions/Function1;)Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/kodein/di/Kodein$MainBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/Lazy<",
            "Lorg/kodein/di/Kodein;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$retainedKodein"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lorg/kodein/di/android/RetainedKt$retainedKodein$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/kodein/di/android/RetainedKt$retainedKodein$1;-><init>(Landroid/app/Activity;ZLkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic retainedKodein$default(Landroid/app/Activity;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 31
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/kodein/di/android/RetainedKt;->retainedKodein(Landroid/app/Activity;ZLkotlin/jvm/functions/Function1;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method
