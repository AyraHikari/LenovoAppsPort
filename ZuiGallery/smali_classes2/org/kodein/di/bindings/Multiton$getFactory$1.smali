.class final Lorg/kodein/di/bindings/Multiton$getFactory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "standardBindings.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/bindings/Multiton;->getFactory(Lorg/kodein/di/bindings/BindingKodein;Lorg/kodein/di/Kodein$Key;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TA;TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0008\u0008\u0002\u0010\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "T",
        "C",
        "A",
        "",
        "arg",
        "invoke",
        "(Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $kodein:Lorg/kodein/di/bindings/BindingKodein;

.field final synthetic $registry:Lorg/kodein/di/bindings/ScopeRegistry;

.field final synthetic this$0:Lorg/kodein/di/bindings/Multiton;


# direct methods
.method constructor <init>(Lorg/kodein/di/bindings/Multiton;Lorg/kodein/di/bindings/ScopeRegistry;Lorg/kodein/di/bindings/BindingKodein;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/bindings/Multiton$getFactory$1;->this$0:Lorg/kodein/di/bindings/Multiton;

    iput-object p2, p0, Lorg/kodein/di/bindings/Multiton$getFactory$1;->$registry:Lorg/kodein/di/bindings/ScopeRegistry;

    iput-object p3, p0, Lorg/kodein/di/bindings/Multiton$getFactory$1;->$kodein:Lorg/kodein/di/bindings/BindingKodein;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TT;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/kodein/di/bindings/Multiton$getFactory$1;->$registry:Lorg/kodein/di/bindings/ScopeRegistry;

    new-instance v1, Lorg/kodein/di/bindings/ScopeKey;

    iget-object v2, p0, Lorg/kodein/di/bindings/Multiton$getFactory$1;->this$0:Lorg/kodein/di/bindings/Multiton;

    invoke-static {v2}, Lorg/kodein/di/bindings/Multiton;->access$get_scopeId$p(Lorg/kodein/di/bindings/Multiton;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/kodein/di/bindings/ScopeKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/kodein/di/bindings/Multiton$getFactory$1;->this$0:Lorg/kodein/di/bindings/Multiton;

    invoke-virtual {v2}, Lorg/kodein/di/bindings/Multiton;->getSync()Z

    move-result v2

    new-instance v3, Lorg/kodein/di/bindings/Multiton$getFactory$1$1;

    invoke-direct {v3, p0, p1}, Lorg/kodein/di/bindings/Multiton$getFactory$1$1;-><init>(Lorg/kodein/di/bindings/Multiton$getFactory$1;Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2, v3}, Lorg/kodein/di/bindings/ScopeRegistry;->getOrCreate(Ljava/lang/Object;ZLkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type T"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
