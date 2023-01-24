.class public final Lorg/kodein/di/android/x/AndroidLifecycleScope$getRegistry$$inlined$synchronizedIfNull$lambda$2;
.super Ljava/lang/Object;
.source "scopes.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/android/x/AndroidLifecycleScope;->getRegistry(Landroidx/lifecycle/LifecycleOwner;)Lorg/kodein/di/bindings/ScopeRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0007\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "org/kodein/di/android/x/AndroidLifecycleScope$getRegistry$3$1",
        "Landroidx/lifecycle/LifecycleObserver;",
        "onDestroy",
        "",
        "kodein-di-framework-android-x_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $context$inlined:Landroidx/lifecycle/LifecycleOwner;

.field final synthetic $registry:Lorg/kodein/di/bindings/ScopeRegistry;

.field final synthetic this$0:Lorg/kodein/di/android/x/AndroidLifecycleScope;


# direct methods
.method constructor <init>(Lorg/kodein/di/bindings/ScopeRegistry;Lorg/kodein/di/android/x/AndroidLifecycleScope;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/android/x/AndroidLifecycleScope$getRegistry$$inlined$synchronizedIfNull$lambda$2;->$registry:Lorg/kodein/di/bindings/ScopeRegistry;

    iput-object p2, p0, Lorg/kodein/di/android/x/AndroidLifecycleScope$getRegistry$$inlined$synchronizedIfNull$lambda$2;->this$0:Lorg/kodein/di/android/x/AndroidLifecycleScope;

    iput-object p3, p0, Lorg/kodein/di/android/x/AndroidLifecycleScope$getRegistry$$inlined$synchronizedIfNull$lambda$2;->$context$inlined:Landroidx/lifecycle/LifecycleOwner;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/kodein/di/android/x/AndroidLifecycleScope$getRegistry$$inlined$synchronizedIfNull$lambda$2;->$context$inlined:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 31
    iget-object v0, p0, Lorg/kodein/di/android/x/AndroidLifecycleScope$getRegistry$$inlined$synchronizedIfNull$lambda$2;->$registry:Lorg/kodein/di/bindings/ScopeRegistry;

    invoke-virtual {v0}, Lorg/kodein/di/bindings/ScopeRegistry;->clear()V

    .line 32
    iget-object v0, p0, Lorg/kodein/di/android/x/AndroidLifecycleScope$getRegistry$$inlined$synchronizedIfNull$lambda$2;->this$0:Lorg/kodein/di/android/x/AndroidLifecycleScope;

    invoke-static {v0}, Lorg/kodein/di/android/x/AndroidLifecycleScope;->access$getMap$p(Lorg/kodein/di/android/x/AndroidLifecycleScope;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/kodein/di/android/x/AndroidLifecycleScope$getRegistry$$inlined$synchronizedIfNull$lambda$2;->$context$inlined:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
