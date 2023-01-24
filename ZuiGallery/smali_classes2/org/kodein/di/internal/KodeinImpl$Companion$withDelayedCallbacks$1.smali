.class final Lorg/kodein/di/internal/KodeinImpl$Companion$withDelayedCallbacks$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KodeinImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/internal/KodeinImpl$Companion;->withDelayedCallbacks(ZLkotlin/jvm/functions/Function1;)Lkotlin/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $kodein:Lorg/kodein/di/internal/KodeinImpl;


# direct methods
.method constructor <init>(Lorg/kodein/di/internal/KodeinImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/internal/KodeinImpl$Companion$withDelayedCallbacks$1;->$kodein:Lorg/kodein/di/internal/KodeinImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinImpl$Companion$withDelayedCallbacks$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinImpl$Companion$withDelayedCallbacks$1;->$kodein:Lorg/kodein/di/internal/KodeinImpl;

    invoke-static {v0}, Lorg/kodein/di/internal/KodeinImpl;->access$get_container$p(Lorg/kodein/di/internal/KodeinImpl;)Lorg/kodein/di/internal/KodeinContainerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/kodein/di/internal/KodeinContainerImpl;->getInitCallbacks()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_0
    return-void
.end method
