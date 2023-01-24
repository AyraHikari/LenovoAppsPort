.class public final Lorg/kodein/di/generic/GMultiKt$factory$4;
.super Lkotlin/jvm/internal/Lambda;
.source "GMulti.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/generic/GMultiKt;->factory(Lorg/kodein/di/Kodein$BindBuilder$WithContext;Lkotlin/jvm/functions/Function6;)Lorg/kodein/di/bindings/Factory;
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
        "Lorg/kodein/di/Multi5<",
        "TA1;TA2;TA3;TA4;TA5;>;TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGMulti.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GMulti.kt\norg/kodein/di/generic/GMultiKt$factory$4\n*L\n1#1,569:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u0001\"\u0006\u0008\u0003\u0010\u0005\u0018\u0001\"\u0006\u0008\u0004\u0010\u0006\u0018\u0001\"\u0006\u0008\u0005\u0010\u0007\u0018\u0001\"\n\u0008\u0006\u0010\u0001\u0018\u0001*\u00020\u0008*\u0008\u0012\u0004\u0012\u0002H\u00020\t2$\u0010\n\u001a \u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\u000bH\n\u00a2\u0006\u0004\u0008\u000c\u0010\r"
    }
    d2 = {
        "<anonymous>",
        "T",
        "C",
        "A1",
        "A2",
        "A3",
        "A4",
        "A5",
        "",
        "Lorg/kodein/di/bindings/BindingKodein;",
        "it",
        "Lorg/kodein/di/Multi5;",
        "invoke",
        "(Lorg/kodein/di/bindings/BindingKodein;Lorg/kodein/di/Multi5;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $creator:Lkotlin/jvm/functions/Function6;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function6;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/generic/GMultiKt$factory$4;->$creator:Lkotlin/jvm/functions/Function6;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/kodein/di/bindings/BindingKodein;

    check-cast p2, Lorg/kodein/di/Multi5;

    invoke-virtual {p0, p1, p2}, Lorg/kodein/di/generic/GMultiKt$factory$4;->invoke(Lorg/kodein/di/bindings/BindingKodein;Lorg/kodein/di/Multi5;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/kodein/di/bindings/BindingKodein;Lorg/kodein/di/Multi5;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/bindings/BindingKodein<",
            "+TC;>;",
            "Lorg/kodein/di/Multi5<",
            "TA1;TA2;TA3;TA4;TA5;>;)TT;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lorg/kodein/di/generic/GMultiKt$factory$4;->$creator:Lkotlin/jvm/functions/Function6;

    invoke-virtual {p2}, Lorg/kodein/di/Multi5;->getA1()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Lorg/kodein/di/Multi5;->getA2()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2}, Lorg/kodein/di/Multi5;->getA3()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2}, Lorg/kodein/di/Multi5;->getA4()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2}, Lorg/kodein/di/Multi5;->getA5()Ljava/lang/Object;

    move-result-object v7

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lkotlin/jvm/functions/Function6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
