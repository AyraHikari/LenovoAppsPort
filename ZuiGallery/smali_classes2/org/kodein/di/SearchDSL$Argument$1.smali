.class final Lorg/kodein/di/SearchDSL$Argument$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Search.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/SearchDSL;->Argument(Lorg/kodein/di/TypeToken;)Lorg/kodein/di/SearchDSL$Spec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/kodein/di/SearchSpecs;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lorg/kodein/di/SearchSpecs;",
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
.field final synthetic $argumentType:Lorg/kodein/di/TypeToken;


# direct methods
.method constructor <init>(Lorg/kodein/di/TypeToken;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/SearchDSL$Argument$1;->$argumentType:Lorg/kodein/di/TypeToken;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Lorg/kodein/di/SearchSpecs;

    invoke-virtual {p0, p1}, Lorg/kodein/di/SearchDSL$Argument$1;->invoke(Lorg/kodein/di/SearchSpecs;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/kodein/di/SearchSpecs;)V
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lorg/kodein/di/SearchDSL$Argument$1;->$argumentType:Lorg/kodein/di/TypeToken;

    invoke-virtual {p1, v0}, Lorg/kodein/di/SearchSpecs;->setArgType(Lorg/kodein/di/TypeToken;)V

    return-void
.end method
