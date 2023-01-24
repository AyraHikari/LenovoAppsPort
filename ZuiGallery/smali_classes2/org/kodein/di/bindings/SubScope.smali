.class public abstract Lorg/kodein/di/bindings/SubScope;
.super Ljava/lang/Object;
.source "scopes.kt"

# interfaces
.implements Lorg/kodein/di/bindings/Scope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/bindings/SubScope$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "PC:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/kodein/di/bindings/Scope<",
        "TC;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u000fB\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0003\u00a2\u0006\u0002\u0010\u0005J\u0015\u0010\u0008\u001a\u00028\u00012\u0006\u0010\t\u001a\u00028\u0000H$\u00a2\u0006\u0002\u0010\nJ\u0015\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u000e\u001a\u00020\u000cH\u0016R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/kodein/di/bindings/SubScope;",
        "C",
        "PC",
        "Lorg/kodein/di/bindings/Scope;",
        "parentScope",
        "(Lorg/kodein/di/bindings/Scope;)V",
        "getParentScope",
        "()Lorg/kodein/di/bindings/Scope;",
        "getParentContext",
        "context",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "getRegistry",
        "Lorg/kodein/di/bindings/ScopeRegistry;",
        "(Ljava/lang/Object;)Lorg/kodein/di/bindings/ScopeRegistry;",
        "newRegistry",
        "Key",
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
.field private final parentScope:Lorg/kodein/di/bindings/Scope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/bindings/Scope<",
            "TPC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/kodein/di/bindings/Scope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/bindings/Scope<",
            "-TPC;>;)V"
        }
    .end annotation

    const-string v0, "parentScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/bindings/SubScope;->parentScope:Lorg/kodein/di/bindings/Scope;

    return-void
.end method


# virtual methods
.method protected abstract getParentContext(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TPC;"
        }
    .end annotation
.end method

.method public final getParentScope()Lorg/kodein/di/bindings/Scope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/bindings/Scope<",
            "TPC;>;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lorg/kodein/di/bindings/SubScope;->parentScope:Lorg/kodein/di/bindings/Scope;

    return-object v0
.end method

.method public getRegistry(Ljava/lang/Object;)Lorg/kodein/di/bindings/ScopeRegistry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lorg/kodein/di/bindings/ScopeRegistry;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lorg/kodein/di/bindings/SubScope;->parentScope:Lorg/kodein/di/bindings/Scope;

    invoke-virtual {p0, p1}, Lorg/kodein/di/bindings/SubScope;->getParentContext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/kodein/di/bindings/Scope;->getRegistry(Ljava/lang/Object;)Lorg/kodein/di/bindings/ScopeRegistry;

    move-result-object v0

    .line 237
    new-instance v1, Lorg/kodein/di/bindings/SubScope$Key;

    invoke-direct {v1, p1}, Lorg/kodein/di/bindings/SubScope$Key;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lorg/kodein/di/bindings/SubScope$getRegistry$1;

    invoke-direct {p1, p0}, Lorg/kodein/di/bindings/SubScope$getRegistry$1;-><init>(Lorg/kodein/di/bindings/SubScope;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/kodein/di/bindings/ScopeRegistry;->getOrCreate(Ljava/lang/Object;ZLkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lorg/kodein/di/bindings/ScopeRegistry;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type org.kodein.di.bindings.ScopeRegistry"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newRegistry()Lorg/kodein/di/bindings/ScopeRegistry;
    .locals 1

    .line 240
    new-instance v0, Lorg/kodein/di/bindings/StandardScopeRegistry;

    invoke-direct {v0}, Lorg/kodein/di/bindings/StandardScopeRegistry;-><init>()V

    check-cast v0, Lorg/kodein/di/bindings/ScopeRegistry;

    return-object v0
.end method
