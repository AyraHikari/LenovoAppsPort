.class final Lorg/kodein/di/bindings/Singleton$copier$1;
.super Lkotlin/jvm/internal/Lambda;
.source "standardBindings.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/bindings/Singleton;-><init>(Lorg/kodein/di/bindings/Scope;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/bindings/RefMaker;ZLkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/kodein/di/KodeinContainer$Builder;",
        "Lorg/kodein/di/bindings/Singleton<",
        "TC;TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "Lorg/kodein/di/bindings/Singleton;",
        "C",
        "T",
        "",
        "it",
        "Lorg/kodein/di/KodeinContainer$Builder;",
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
.field final synthetic this$0:Lorg/kodein/di/bindings/Singleton;


# direct methods
.method constructor <init>(Lorg/kodein/di/bindings/Singleton;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/bindings/Singleton$copier$1;->this$0:Lorg/kodein/di/bindings/Singleton;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Lorg/kodein/di/KodeinContainer$Builder;

    invoke-virtual {p0, p1}, Lorg/kodein/di/bindings/Singleton$copier$1;->invoke(Lorg/kodein/di/KodeinContainer$Builder;)Lorg/kodein/di/bindings/Singleton;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/kodein/di/KodeinContainer$Builder;)Lorg/kodein/di/bindings/Singleton;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinContainer$Builder;",
            ")",
            "Lorg/kodein/di/bindings/Singleton<",
            "TC;TT;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance p1, Lorg/kodein/di/bindings/Singleton;

    iget-object v0, p0, Lorg/kodein/di/bindings/Singleton$copier$1;->this$0:Lorg/kodein/di/bindings/Singleton;

    invoke-virtual {v0}, Lorg/kodein/di/bindings/Singleton;->getScope()Lorg/kodein/di/bindings/Scope;

    move-result-object v2

    iget-object v0, p0, Lorg/kodein/di/bindings/Singleton$copier$1;->this$0:Lorg/kodein/di/bindings/Singleton;

    invoke-virtual {v0}, Lorg/kodein/di/bindings/Singleton;->getContextType()Lorg/kodein/di/TypeToken;

    move-result-object v3

    iget-object v0, p0, Lorg/kodein/di/bindings/Singleton$copier$1;->this$0:Lorg/kodein/di/bindings/Singleton;

    invoke-virtual {v0}, Lorg/kodein/di/bindings/Singleton;->getCreatedType()Lorg/kodein/di/TypeToken;

    move-result-object v4

    iget-object v0, p0, Lorg/kodein/di/bindings/Singleton$copier$1;->this$0:Lorg/kodein/di/bindings/Singleton;

    invoke-static {v0}, Lorg/kodein/di/bindings/Singleton;->access$get_refMaker$p(Lorg/kodein/di/bindings/Singleton;)Lorg/kodein/di/bindings/RefMaker;

    move-result-object v5

    iget-object v0, p0, Lorg/kodein/di/bindings/Singleton$copier$1;->this$0:Lorg/kodein/di/bindings/Singleton;

    invoke-virtual {v0}, Lorg/kodein/di/bindings/Singleton;->getSync()Z

    move-result v6

    iget-object v0, p0, Lorg/kodein/di/bindings/Singleton$copier$1;->this$0:Lorg/kodein/di/bindings/Singleton;

    invoke-virtual {v0}, Lorg/kodein/di/bindings/Singleton;->getCreator()Lkotlin/jvm/functions/Function1;

    move-result-object v7

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/kodein/di/bindings/Singleton;-><init>(Lorg/kodein/di/bindings/Scope;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/bindings/RefMaker;ZLkotlin/jvm/functions/Function1;)V

    return-object p1
.end method
