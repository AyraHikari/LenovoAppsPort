.class final Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider$provideDelegate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "closest.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider;->provideDelegate(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/kodein/di/Kodein;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lorg/kodein/di/Kodein;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $thisRef:Ljava/lang/Object;

.field final synthetic this$0:Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider;


# direct methods
.method constructor <init>(Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider$provideDelegate$1;->this$0:Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider;

    iput-object p2, p0, Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider$provideDelegate$1;->$thisRef:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider$provideDelegate$1;->invoke()Lorg/kodein/di/Kodein;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/kodein/di/Kodein;
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider$provideDelegate$1;->$thisRef:Ljava/lang/Object;

    iget-object v1, p0, Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider$provideDelegate$1;->this$0:Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider;

    invoke-static {v1}, Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider;->access$getGetContext$p(Lorg/kodein/di/android/LazyContextKodeinPropertyDelegateProvider;)Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/kodein/di/android/ClosestKt;->access$kodein(Ljava/lang/Object;Landroid/content/Context;)Lorg/kodein/di/Kodein;

    move-result-object v0

    return-object v0
.end method
