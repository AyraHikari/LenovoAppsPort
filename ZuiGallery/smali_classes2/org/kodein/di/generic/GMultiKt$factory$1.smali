.class public final Lorg/kodein/di/generic/GMultiKt$factory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GMulti.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/generic/GMultiKt;->factory(Lorg/kodein/di/Kodein$BindBuilder$WithContext;Lkotlin/jvm/functions/Function3;)Lorg/kodein/di/bindings/Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/kodein/di/bindings/BindingKodein<",
        "+TC;>;",
        "Lorg/kodein/di/Multi2<",
        "TA1;TA2;>;TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGMulti.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GMulti.kt\norg/kodein/di/generic/GMultiKt$factory$1\n*L\n1#1,569:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u0001\"\n\u0008\u0003\u0010\u0001\u0018\u0001*\u00020\u0005*\u0008\u0012\u0004\u0012\u0002H\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00040\u0008H\n\u00a2\u0006\u0004\u0008\t\u0010\n"
    }
    d2 = {
        "<anonymous>",
        "T",
        "C",
        "A1",
        "A2",
        "",
        "Lorg/kodein/di/bindings/BindingKodein;",
        "it",
        "Lorg/kodein/di/Multi2;",
        "invoke",
        "(Lorg/kodein/di/bindings/BindingKodein;Lorg/kodein/di/Multi2;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $creator:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/generic/GMultiKt$factory$1;->$creator:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/kodein/di/bindings/BindingKodein;

    check-cast p2, Lorg/kodein/di/Multi2;

    invoke-virtual {p0, p1, p2}, Lorg/kodein/di/generic/GMultiKt$factory$1;->invoke(Lorg/kodein/di/bindings/BindingKodein;Lorg/kodein/di/Multi2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/kodein/di/bindings/BindingKodein;Lorg/kodein/di/Multi2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/bindings/BindingKodein<",
            "+TC;>;",
            "Lorg/kodein/di/Multi2<",
            "TA1;TA2;>;)TT;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lorg/kodein/di/generic/GMultiKt$factory$1;->$creator:Lkotlin/jvm/functions/Function3;

    invoke-virtual {p2}, Lorg/kodein/di/Multi2;->getA1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Lorg/kodein/di/Multi2;->getA2()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
