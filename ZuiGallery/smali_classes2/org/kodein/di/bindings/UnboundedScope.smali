.class public Lorg/kodein/di/bindings/UnboundedScope;
.super Ljava/lang/Object;
.source "scopes.kt"

# interfaces
.implements Lorg/kodein/di/bindings/Scope;
.implements Lorg/kodein/di/bindings/ScopeCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/kodein/di/bindings/Scope<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/kodein/di/bindings/ScopeCloseable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u0003B\u000f\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u0007\u001a\u00020\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/kodein/di/bindings/UnboundedScope;",
        "Lorg/kodein/di/bindings/Scope;",
        "",
        "Lorg/kodein/di/bindings/ScopeCloseable;",
        "registry",
        "Lorg/kodein/di/bindings/ScopeRegistry;",
        "(Lorg/kodein/di/bindings/ScopeRegistry;)V",
        "getRegistry",
        "()Lorg/kodein/di/bindings/ScopeRegistry;",
        "close",
        "",
        "context",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final registry:Lorg/kodein/di/bindings/ScopeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lorg/kodein/di/bindings/UnboundedScope;-><init>(Lorg/kodein/di/bindings/ScopeRegistry;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/kodein/di/bindings/ScopeRegistry;)V
    .locals 1

    const-string v0, "registry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/bindings/UnboundedScope;->registry:Lorg/kodein/di/bindings/ScopeRegistry;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/kodein/di/bindings/ScopeRegistry;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 222
    new-instance p1, Lorg/kodein/di/bindings/StandardScopeRegistry;

    invoke-direct {p1}, Lorg/kodein/di/bindings/StandardScopeRegistry;-><init>()V

    check-cast p1, Lorg/kodein/di/bindings/ScopeRegistry;

    :cond_0
    invoke-direct {p0, p1}, Lorg/kodein/di/bindings/UnboundedScope;-><init>(Lorg/kodein/di/bindings/ScopeRegistry;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/kodein/di/bindings/UnboundedScope;->registry:Lorg/kodein/di/bindings/ScopeRegistry;

    invoke-virtual {v0}, Lorg/kodein/di/bindings/ScopeRegistry;->clear()V

    return-void
.end method

.method public final getRegistry()Lorg/kodein/di/bindings/ScopeRegistry;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/kodein/di/bindings/UnboundedScope;->registry:Lorg/kodein/di/bindings/ScopeRegistry;

    return-object v0
.end method

.method public getRegistry(Ljava/lang/Object;)Lorg/kodein/di/bindings/ScopeRegistry;
    .locals 0

    .line 223
    iget-object p1, p0, Lorg/kodein/di/bindings/UnboundedScope;->registry:Lorg/kodein/di/bindings/ScopeRegistry;

    return-object p1
.end method
