.class public Lorg/kodein/di/android/ActivityRetainedScope;
.super Ljava/lang/Object;
.source "scopes.kt"

# interfaces
.implements Lorg/kodein/di/bindings/Scope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;,
        Lorg/kodein/di/android/ActivityRetainedScope$Keys;,
        Lorg/kodein/di/android/ActivityRetainedScope$SingleItem;,
        Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;,
        Lorg/kodein/di/android/ActivityRetainedScope$MultiItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/kodein/di/bindings/Scope<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nscopes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 scopes.kt\norg/kodein/di/android/ActivityRetainedScope\n*L\n1#1,90:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u0011\u0012\u0013\u0014\u0015B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R6\u0010\u0006\u001a*\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007j\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\t*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/kodein/di/android/ActivityRetainedScope;",
        "Lorg/kodein/di/bindings/Scope;",
        "Landroid/app/Activity;",
        "registryType",
        "Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;",
        "(Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;)V",
        "transactionPendingFragmentCache",
        "Ljava/util/HashMap;",
        "Ljava/lang/ref/WeakReference;",
        "Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;",
        "Lkotlin/collections/HashMap;",
        "retainedScopeFragment",
        "getRetainedScopeFragment",
        "(Landroid/app/Activity;)Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;",
        "getRegistry",
        "Lorg/kodein/di/bindings/ScopeRegistry;",
        "context",
        "Keys",
        "MultiItem",
        "RegistryType",
        "RetainedScopeFragment",
        "SingleItem",
        "kodein-di-framework-android-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final MultiItem:Lorg/kodein/di/android/ActivityRetainedScope$MultiItem;


# instance fields
.field private final registryType:Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;

.field private final transactionPendingFragmentCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/kodein/di/android/ActivityRetainedScope$MultiItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/kodein/di/android/ActivityRetainedScope$MultiItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/kodein/di/android/ActivityRetainedScope;->MultiItem:Lorg/kodein/di/android/ActivityRetainedScope$MultiItem;

    return-void
.end method

.method private constructor <init>(Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/android/ActivityRetainedScope;->registryType:Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;

    .line 62
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/android/ActivityRetainedScope;->transactionPendingFragmentCache:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lorg/kodein/di/android/ActivityRetainedScope;-><init>(Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;)V

    return-void
.end method

.method private final getRetainedScopeFragment(Landroid/app/Activity;)Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;
    .locals 1

    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "org.kodein.android.ActivityRetainedScope.RetainedScopeFragment"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;

    return-object p1
.end method


# virtual methods
.method public getRegistry(Landroid/app/Activity;)Lorg/kodein/di/bindings/ScopeRegistry;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p1}, Lorg/kodein/di/android/ActivityRetainedScope;->getRetainedScopeFragment(Landroid/app/Activity;)Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/kodein/di/android/ActivityRetainedScope;

    .line 66
    monitor-enter p1

    .line 67
    :try_start_0
    invoke-direct {v0, p1}, Lorg/kodein/di/android/ActivityRetainedScope;->getRetainedScopeFragment(Landroid/app/Activity;)Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/kodein/di/android/ActivityRetainedScope;->transactionPendingFragmentCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    :goto_1
    move-object v0, v1

    goto :goto_2

    .line 68
    :cond_3
    new-instance v1, Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;

    invoke-direct {v1}, Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;-><init>()V

    .line 69
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "org.kodein.di.android.registryTypeOrdinal"

    iget-object v4, v0, Lorg/kodein/di/android/ActivityRetainedScope;->registryType:Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;

    invoke-virtual {v4}, Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;->ordinal()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_4

    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Landroid/app/Fragment;

    const-string v3, "org.kodein.android.ActivityRetainedScope.RetainedScopeFragment"

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitNow()V

    goto :goto_1

    .line 75
    :cond_4
    iget-object v2, v0, Lorg/kodein/di/android/ActivityRetainedScope;->transactionPendingFragmentCache:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, v0, Lorg/kodein/di/android/ActivityRetainedScope;->transactionPendingFragmentCache:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;->setTransactionPendingFragmentCache(Ljava/util/Map;)V

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Landroid/app/Fragment;

    const-string v3, "org.kodein.android.ActivityRetainedScope.RetainedScopeFragment"

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 66
    :goto_2
    monitor-exit p1

    .line 83
    :goto_3
    invoke-virtual {v0}, Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;->getRegistry()Lorg/kodein/di/bindings/ScopeRegistry;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    .line 66
    monitor-exit p1

    throw v0
.end method

.method public bridge synthetic getRegistry(Ljava/lang/Object;)Lorg/kodein/di/bindings/ScopeRegistry;
    .locals 0

    .line 18
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lorg/kodein/di/android/ActivityRetainedScope;->getRegistry(Landroid/app/Activity;)Lorg/kodein/di/bindings/ScopeRegistry;

    move-result-object p1

    return-object p1
.end method
