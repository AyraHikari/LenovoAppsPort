.class final Lorg/kodein/di/bindings/SubScope$getRegistry$1;
.super Lkotlin/jvm/internal/Lambda;
.source "scopes.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/bindings/SubScope;->getRegistry(Ljava/lang/Object;)Lorg/kodein/di/bindings/ScopeRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/kodein/di/bindings/Reference<",
        "+",
        "Lorg/kodein/di/bindings/ScopeRegistry;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0004\u0008\u0001\u0010\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lorg/kodein/di/bindings/Reference;",
        "Lorg/kodein/di/bindings/ScopeRegistry;",
        "C",
        "PC",
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
.field final synthetic this$0:Lorg/kodein/di/bindings/SubScope;


# direct methods
.method constructor <init>(Lorg/kodein/di/bindings/SubScope;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/bindings/SubScope$getRegistry$1;->this$0:Lorg/kodein/di/bindings/SubScope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 228
    invoke-virtual {p0}, Lorg/kodein/di/bindings/SubScope$getRegistry$1;->invoke()Lorg/kodein/di/bindings/Reference;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/kodein/di/bindings/Reference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/bindings/Reference<",
            "Lorg/kodein/di/bindings/ScopeRegistry;",
            ">;"
        }
    .end annotation

    .line 237
    sget-object v0, Lorg/kodein/di/bindings/SingletonReference;->INSTANCE:Lorg/kodein/di/bindings/SingletonReference;

    new-instance v1, Lorg/kodein/di/bindings/SubScope$getRegistry$1$1;

    invoke-direct {v1, p0}, Lorg/kodein/di/bindings/SubScope$getRegistry$1$1;-><init>(Lorg/kodein/di/bindings/SubScope$getRegistry$1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lorg/kodein/di/bindings/SingletonReference;->make(Lkotlin/jvm/functions/Function0;)Lorg/kodein/di/bindings/Reference;

    move-result-object v0

    return-object v0
.end method
