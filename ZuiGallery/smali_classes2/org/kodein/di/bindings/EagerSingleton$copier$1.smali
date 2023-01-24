.class final Lorg/kodein/di/bindings/EagerSingleton$copier$1;
.super Lkotlin/jvm/internal/Lambda;
.source "standardBindings.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/bindings/EagerSingleton;-><init>(Lorg/kodein/di/KodeinContainer$Builder;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V
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
        "Lorg/kodein/di/bindings/EagerSingleton<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lorg/kodein/di/bindings/EagerSingleton;",
        "T",
        "",
        "builder",
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
.field final synthetic this$0:Lorg/kodein/di/bindings/EagerSingleton;


# direct methods
.method constructor <init>(Lorg/kodein/di/bindings/EagerSingleton;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/bindings/EagerSingleton$copier$1;->this$0:Lorg/kodein/di/bindings/EagerSingleton;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 144
    check-cast p1, Lorg/kodein/di/KodeinContainer$Builder;

    invoke-virtual {p0, p1}, Lorg/kodein/di/bindings/EagerSingleton$copier$1;->invoke(Lorg/kodein/di/KodeinContainer$Builder;)Lorg/kodein/di/bindings/EagerSingleton;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/kodein/di/KodeinContainer$Builder;)Lorg/kodein/di/bindings/EagerSingleton;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinContainer$Builder;",
            ")",
            "Lorg/kodein/di/bindings/EagerSingleton<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    new-instance v0, Lorg/kodein/di/bindings/EagerSingleton;

    iget-object v1, p0, Lorg/kodein/di/bindings/EagerSingleton$copier$1;->this$0:Lorg/kodein/di/bindings/EagerSingleton;

    invoke-virtual {v1}, Lorg/kodein/di/bindings/EagerSingleton;->getCreatedType()Lorg/kodein/di/TypeToken;

    move-result-object v1

    iget-object v2, p0, Lorg/kodein/di/bindings/EagerSingleton$copier$1;->this$0:Lorg/kodein/di/bindings/EagerSingleton;

    invoke-virtual {v2}, Lorg/kodein/di/bindings/EagerSingleton;->getCreator()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/kodein/di/bindings/EagerSingleton;-><init>(Lorg/kodein/di/KodeinContainer$Builder;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
