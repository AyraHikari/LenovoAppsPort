.class final Lorg/kodein/di/bindings/EagerSingleton$1;
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
        "Lorg/kodein/di/DKodein;",
        "Lkotlin/Unit;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "",
        "Lorg/kodein/di/DKodein;",
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
.field final synthetic $key:Lorg/kodein/di/Kodein$Key;

.field final synthetic this$0:Lorg/kodein/di/bindings/EagerSingleton;


# direct methods
.method constructor <init>(Lorg/kodein/di/bindings/EagerSingleton;Lorg/kodein/di/Kodein$Key;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/bindings/EagerSingleton$1;->this$0:Lorg/kodein/di/bindings/EagerSingleton;

    iput-object p2, p0, Lorg/kodein/di/bindings/EagerSingleton$1;->$key:Lorg/kodein/di/Kodein$Key;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 144
    check-cast p1, Lorg/kodein/di/DKodein;

    invoke-virtual {p0, p1}, Lorg/kodein/di/bindings/EagerSingleton$1;->invoke(Lorg/kodein/di/DKodein;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/kodein/di/DKodein;)V
    .locals 5

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lorg/kodein/di/bindings/EagerSingleton$1;->this$0:Lorg/kodein/di/bindings/EagerSingleton;

    new-instance v1, Lorg/kodein/di/internal/BindingKodeinImpl;

    iget-object v2, p0, Lorg/kodein/di/bindings/EagerSingleton$1;->$key:Lorg/kodein/di/Kodein$Key;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lorg/kodein/di/internal/BindingKodeinImpl;-><init>(Lorg/kodein/di/DKodein;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)V

    check-cast v1, Lorg/kodein/di/bindings/BindingKodein;

    invoke-static {v0, v1}, Lorg/kodein/di/bindings/EagerSingleton;->access$getFactory(Lorg/kodein/di/bindings/EagerSingleton;Lorg/kodein/di/bindings/BindingKodein;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
