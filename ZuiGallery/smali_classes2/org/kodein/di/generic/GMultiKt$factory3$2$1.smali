.class public final Lorg/kodein/di/generic/GMultiKt$factory3$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GMulti.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/generic/GMultiKt;->factory3(Lorg/kodein/di/DKodein;Ljava/lang/Object;)Lkotlin/jvm/functions/Function3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "TA1;TA2;TA3;TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGMulti.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GMulti.kt\norg/kodein/di/generic/GMultiKt$factory3$2$1\n+ 2 GMulti.kt\norg/kodein/di/generic/GMultiKt\n+ 3 types.kt\norg/kodein/di/TypesKt\n*L\n1#1,569:1\n168#2:570\n282#3:571\n*E\n*S KotlinDebug\n*F\n+ 1 GMulti.kt\norg/kodein/di/generic/GMultiKt$factory3$2$1\n*L\n430#1:570\n430#1:571\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u0001\"\n\u0008\u0003\u0010\u0001\u0018\u0001*\u00020\u00052\u0006\u0010\u0006\u001a\u0002H\u00022\u0006\u0010\u0007\u001a\u0002H\u00032\u0006\u0010\u0008\u001a\u0002H\u0004H\n\u00a2\u0006\u0004\u0008\t\u0010\n"
    }
    d2 = {
        "<anonymous>",
        "T",
        "A1",
        "A2",
        "A3",
        "",
        "a1",
        "a2",
        "a3",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $it:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/generic/GMultiKt$factory3$2$1;->$it:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA1;TA2;TA3;)TT;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lorg/kodein/di/generic/GMultiKt$factory3$2$1;->$it:Lkotlin/jvm/functions/Function1;

    .line 571
    new-instance v1, Lorg/kodein/di/generic/GMultiKt$factory3$2$1$M$$inlined$generic$1;

    invoke-direct {v1}, Lorg/kodein/di/generic/GMultiKt$factory3$2$1$M$$inlined$generic$1;-><init>()V

    check-cast v1, Lorg/kodein/di/TypeReference;

    invoke-static {v1}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v1

    .line 570
    new-instance v2, Lorg/kodein/di/Multi3;

    invoke-direct {v2, p1, p2, p3, v1}, Lorg/kodein/di/Multi3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/kodein/di/TypeToken;)V

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
