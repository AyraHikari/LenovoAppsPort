.class public final Lorg/kodein/di/android/x/ModuleKt;
.super Ljava/lang/Object;
.source "module.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0007"
    }
    d2 = {
        "androidXContextTranslators",
        "Lorg/kodein/di/Kodein$Module;",
        "getAndroidXContextTranslators",
        "()Lorg/kodein/di/Kodein$Module;",
        "androidXModule",
        "app",
        "Landroid/app/Application;",
        "kodein-di-framework-android-x_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final androidXContextTranslators:Lorg/kodein/di/Kodein$Module;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v7, Lorg/kodein/di/Kodein$Module;

    sget-object v0, Lorg/kodein/di/android/x/ModuleKt$androidXContextTranslators$1;->INSTANCE:Lorg/kodein/di/android/x/ModuleKt$androidXContextTranslators$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const-string v1, "\u2063androidXContextTranslators"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/kodein/di/Kodein$Module;-><init>(Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Lorg/kodein/di/android/x/ModuleKt;->androidXContextTranslators:Lorg/kodein/di/Kodein$Module;

    return-void
.end method

.method public static final androidXModule(Landroid/app/Application;)Lorg/kodein/di/Kodein$Module;
    .locals 8

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lorg/kodein/di/Kodein$Module;

    new-instance v1, Lorg/kodein/di/android/x/ModuleKt$androidXModule$1;

    invoke-direct {v1, p0}, Lorg/kodein/di/android/x/ModuleKt$androidXModule$1;-><init>(Landroid/app/Application;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const-string v2, "\u2063androidXModule"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/kodein/di/Kodein$Module;-><init>(Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final getAndroidXContextTranslators()Lorg/kodein/di/Kodein$Module;
    .locals 1

    .line 15
    sget-object v0, Lorg/kodein/di/android/x/ModuleKt;->androidXContextTranslators:Lorg/kodein/di/Kodein$Module;

    return-object v0
.end method
