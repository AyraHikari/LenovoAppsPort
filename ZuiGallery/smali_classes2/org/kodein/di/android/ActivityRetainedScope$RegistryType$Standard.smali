.class final Lorg/kodein/di/android/ActivityRetainedScope$RegistryType$Standard;
.super Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;
.source "scopes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Standard"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0001\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/kodein/di/android/ActivityRetainedScope$RegistryType$Standard;",
        "Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;",
        "new",
        "Lorg/kodein/di/bindings/StandardScopeRegistry;",
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
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lorg/kodein/di/android/ActivityRetainedScope$RegistryType;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic new()Lorg/kodein/di/bindings/ScopeRegistry;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/kodein/di/android/ActivityRetainedScope$RegistryType$Standard;->new()Lorg/kodein/di/bindings/StandardScopeRegistry;

    move-result-object v0

    check-cast v0, Lorg/kodein/di/bindings/ScopeRegistry;

    return-object v0
.end method

.method public new()Lorg/kodein/di/bindings/StandardScopeRegistry;
    .locals 1

    .line 21
    new-instance v0, Lorg/kodein/di/bindings/StandardScopeRegistry;

    invoke-direct {v0}, Lorg/kodein/di/bindings/StandardScopeRegistry;-><init>()V

    return-object v0
.end method
