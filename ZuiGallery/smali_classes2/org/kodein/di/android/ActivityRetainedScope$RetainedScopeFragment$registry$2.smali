.class final Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment$registry$2;
.super Lkotlin/jvm/internal/Lambda;
.source "scopes.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/kodein/di/bindings/ScopeRegistry;",
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
        "Lorg/kodein/di/bindings/ScopeRegistry;",
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
.field final synthetic this$0:Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;


# direct methods
.method constructor <init>(Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment$registry$2;->this$0:Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment$registry$2;->invoke()Lorg/kodein/di/bindings/ScopeRegistry;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/kodein/di/bindings/ScopeRegistry;
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment$registry$2;->this$0:Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;

    invoke-virtual {v0}, Lorg/kodein/di/android/ActivityRetainedScope$RetainedScopeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "org.kodein.di.android.registryTypeOrdinal"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 38
    invoke-static {}, Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;->values()[Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;->new()Lorg/kodein/di/bindings/ScopeRegistry;

    move-result-object v0

    return-object v0
.end method
