.class public final Lorg/kodein/di/generic/GMultiKt$factory5OrNull$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GMulti.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/generic/GMultiKt$factory5OrNull$1;->invoke(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function5<",
        "TA1;TA2;TA3;TA4;TA5;TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGMulti.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GMulti.kt\norg/kodein/di/generic/GMultiKt$factory5OrNull$1$1$1\n+ 2 GMulti.kt\norg/kodein/di/generic/GMultiKt\n+ 3 types.kt\norg/kodein/di/TypesKt\n*L\n1#1,569:1\n204#2:570\n282#3:571\n*E\n*S KotlinDebug\n*F\n+ 1 GMulti.kt\norg/kodein/di/generic/GMultiKt$factory5OrNull$1$1$1\n*L\n386#1:570\n386#1:571\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0004\u0018\u0001\"\u0006\u0008\u0003\u0010\u0005\u0018\u0001\"\u0006\u0008\u0004\u0010\u0006\u0018\u0001\"\n\u0008\u0005\u0010\u0001\u0018\u0001*\u00020\u00072\u0006\u0010\u0008\u001a\u0002H\u00022\u0006\u0010\t\u001a\u0002H\u00032\u0006\u0010\n\u001a\u0002H\u00042\u0006\u0010\u000b\u001a\u0002H\u00052\u0006\u0010\u000c\u001a\u0002H\u0006H\n\u00a2\u0006\u0004\u0008\r\u0010\u000e"
    }
    d2 = {
        "<anonymous>",
        "T",
        "A1",
        "A2",
        "A3",
        "A4",
        "A5",
        "",
        "a1",
        "a2",
        "a3",
        "a4",
        "a5",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
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

    iput-object p1, p0, Lorg/kodein/di/generic/GMultiKt$factory5OrNull$1$1$1;->$it:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA1;TA2;TA3;TA4;TA5;)TT;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lorg/kodein/di/generic/GMultiKt$factory5OrNull$1$1$1;->$it:Lkotlin/jvm/functions/Function1;

    .line 571
    new-instance v1, Lorg/kodein/di/generic/GMultiKt$factory5OrNull$1$1$1$M$$inlined$generic$1;

    invoke-direct {v1}, Lorg/kodein/di/generic/GMultiKt$factory5OrNull$1$1$1$M$$inlined$generic$1;-><init>()V

    check-cast v1, Lorg/kodein/di/TypeReference;

    invoke-static {v1}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v8

    .line 570
    new-instance v1, Lorg/kodein/di/Multi5;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lorg/kodein/di/Multi5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/kodein/di/TypeToken;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
