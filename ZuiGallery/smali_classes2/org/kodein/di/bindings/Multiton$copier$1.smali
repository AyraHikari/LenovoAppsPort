.class final Lorg/kodein/di/bindings/Multiton$copier$1;
.super Lkotlin/jvm/internal/Lambda;
.source "standardBindings.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/bindings/Multiton;-><init>(Lorg/kodein/di/bindings/Scope;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/bindings/RefMaker;ZLkotlin/jvm/functions/Function2;)V
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
        "Lorg/kodein/di/bindings/Multiton<",
        "TC;TA;TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0014\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0008\u0008\u0002\u0010\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "Lorg/kodein/di/bindings/Multiton;",
        "C",
        "A",
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
.field final synthetic this$0:Lorg/kodein/di/bindings/Multiton;


# direct methods
.method constructor <init>(Lorg/kodein/di/bindings/Multiton;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/bindings/Multiton$copier$1;->this$0:Lorg/kodein/di/bindings/Multiton;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Lorg/kodein/di/KodeinContainer$Builder;

    invoke-virtual {p0, p1}, Lorg/kodein/di/bindings/Multiton$copier$1;->invoke(Lorg/kodein/di/KodeinContainer$Builder;)Lorg/kodein/di/bindings/Multiton;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/kodein/di/KodeinContainer$Builder;)Lorg/kodein/di/bindings/Multiton;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinContainer$Builder;",
            ")",
            "Lorg/kodein/di/bindings/Multiton<",
            "TC;TA;TT;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance p1, Lorg/kodein/di/bindings/Multiton;

    iget-object v0, p0, Lorg/kodein/di/bindings/Multiton$copier$1;->this$0:Lorg/kodein/di/bindings/Multiton;

    invoke-virtual {v0}, Lorg/kodein/di/bindings/Multiton;->getScope()Lorg/kodein/di/bindings/Scope;

    move-result-object v2

    iget-object v0, p0, Lorg/kodein/di/bindings/Multiton$copier$1;->this$0:Lorg/kodein/di/bindings/Multiton;

    invoke-virtual {v0}, Lorg/kodein/di/bindings/Multiton;->getContextType()Lorg/kodein/di/TypeToken;

    move-result-object v3

    iget-object v0, p0, Lorg/kodein/di/bindings/Multiton$copier$1;->this$0:Lorg/kodein/di/bindings/Multiton;

    invoke-virtual {v0}, Lorg/kodein/di/bindings/Multiton;->getArgType()Lorg/kodein/di/TypeToken;

    move-result-object v4

    iget-object v0, p0, Lorg/kodein/di/bindings/Multiton$copier$1;->this$0:Lorg/kodein/di/bindings/Multiton;

    invoke-virtual {v0}, Lorg/kodein/di/bindings/Multiton;->getCreatedType()Lorg/kodein/di/TypeToken;

    move-result-object v5

    iget-object v0, p0, Lorg/kodein/di/bindings/Multiton$copier$1;->this$0:Lorg/kodein/di/bindings/Multiton;

    invoke-static {v0}, Lorg/kodein/di/bindings/Multiton;->access$get_refMaker$p(Lorg/kodein/di/bindings/Multiton;)Lorg/kodein/di/bindings/RefMaker;

    move-result-object v6

    iget-object v0, p0, Lorg/kodein/di/bindings/Multiton$copier$1;->this$0:Lorg/kodein/di/bindings/Multiton;

    invoke-virtual {v0}, Lorg/kodein/di/bindings/Multiton;->getSync()Z

    move-result v7

    iget-object v0, p0, Lorg/kodein/di/bindings/Multiton$copier$1;->this$0:Lorg/kodein/di/bindings/Multiton;

    invoke-static {v0}, Lorg/kodein/di/bindings/Multiton;->access$getCreator$p(Lorg/kodein/di/bindings/Multiton;)Lkotlin/jvm/functions/Function2;

    move-result-object v8

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lorg/kodein/di/bindings/Multiton;-><init>(Lorg/kodein/di/bindings/Scope;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/bindings/RefMaker;ZLkotlin/jvm/functions/Function2;)V

    return-object p1
.end method
