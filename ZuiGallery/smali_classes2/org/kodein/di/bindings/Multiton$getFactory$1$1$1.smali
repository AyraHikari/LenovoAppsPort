.class final Lorg/kodein/di/bindings/Multiton$getFactory$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "standardBindings.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/bindings/Multiton$getFactory$1$1;->invoke()Lorg/kodein/di/bindings/Reference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0008\u0008\u0002\u0010\u0001*\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "T",
        "C",
        "A",
        "",
        "invoke",
        "()Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/kodein/di/bindings/Multiton$getFactory$1$1;


# direct methods
.method constructor <init>(Lorg/kodein/di/bindings/Multiton$getFactory$1$1;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/bindings/Multiton$getFactory$1$1$1;->this$0:Lorg/kodein/di/bindings/Multiton$getFactory$1$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/kodein/di/bindings/Multiton$getFactory$1$1$1;->this$0:Lorg/kodein/di/bindings/Multiton$getFactory$1$1;

    iget-object v0, v0, Lorg/kodein/di/bindings/Multiton$getFactory$1$1;->this$0:Lorg/kodein/di/bindings/Multiton$getFactory$1;

    iget-object v0, v0, Lorg/kodein/di/bindings/Multiton$getFactory$1;->this$0:Lorg/kodein/di/bindings/Multiton;

    invoke-static {v0}, Lorg/kodein/di/bindings/Multiton;->access$getCreator$p(Lorg/kodein/di/bindings/Multiton;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    new-instance v1, Lorg/kodein/di/bindings/BindingContextedKodein;

    iget-object v2, p0, Lorg/kodein/di/bindings/Multiton$getFactory$1$1$1;->this$0:Lorg/kodein/di/bindings/Multiton$getFactory$1$1;

    iget-object v2, v2, Lorg/kodein/di/bindings/Multiton$getFactory$1$1;->this$0:Lorg/kodein/di/bindings/Multiton$getFactory$1;

    iget-object v2, v2, Lorg/kodein/di/bindings/Multiton$getFactory$1;->$kodein:Lorg/kodein/di/bindings/BindingKodein;

    iget-object v3, p0, Lorg/kodein/di/bindings/Multiton$getFactory$1$1$1;->this$0:Lorg/kodein/di/bindings/Multiton$getFactory$1$1;

    iget-object v3, v3, Lorg/kodein/di/bindings/Multiton$getFactory$1$1;->this$0:Lorg/kodein/di/bindings/Multiton$getFactory$1;

    iget-object v3, v3, Lorg/kodein/di/bindings/Multiton$getFactory$1;->$kodein:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v3}, Lorg/kodein/di/bindings/BindingKodein;->getContext()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/kodein/di/bindings/BindingContextedKodein;-><init>(Lorg/kodein/di/bindings/BindingKodein;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/kodein/di/bindings/Multiton$getFactory$1$1$1;->this$0:Lorg/kodein/di/bindings/Multiton$getFactory$1$1;

    iget-object v2, v2, Lorg/kodein/di/bindings/Multiton$getFactory$1$1;->$arg:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
