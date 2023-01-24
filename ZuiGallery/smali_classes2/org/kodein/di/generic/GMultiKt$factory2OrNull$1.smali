.class public final Lorg/kodein/di/generic/GMultiKt$factory2OrNull$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GMulti.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/generic/GMultiKt;->factory2OrNull(Lorg/kodein/di/KodeinAware;Ljava/lang/Object;)Lorg/kodein/di/KodeinPropertyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Lorg/kodein/di/Multi2<",
        "TA1;TA2;>;+TT;>;",
        "Lkotlin/jvm/functions/Function2<",
        "-TA1;-TA2;+TT;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGMulti.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GMulti.kt\norg/kodein/di/generic/GMultiKt$factory2OrNull$1\n*L\n1#1,569:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0004\u0018\u00010\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\n\u0008\u0002\u0010\u0004\u0018\u0001*\u00020\u00052 \u0010\u0006\u001a\u001c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0008\u0012\u0004\u0012\u0002H\u0004\u0018\u00010\u0007H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Function2;",
        "A1",
        "A2",
        "T",
        "",
        "factory",
        "Lkotlin/Function1;",
        "Lorg/kodein/di/Multi2;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/kodein/di/generic/GMultiKt$factory2OrNull$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/kodein/di/generic/GMultiKt$factory2OrNull$1;

    invoke-direct {v0}, Lorg/kodein/di/generic/GMultiKt$factory2OrNull$1;-><init>()V

    sput-object v0, Lorg/kodein/di/generic/GMultiKt$factory2OrNull$1;->INSTANCE:Lorg/kodein/di/generic/GMultiKt$factory2OrNull$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1}, Lorg/kodein/di/generic/GMultiKt$factory2OrNull$1;->invoke(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/kodein/di/Multi2<",
            "TA1;TA2;>;+TT;>;)",
            "Lkotlin/jvm/functions/Function2<",
            "TA1;TA2;TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 317
    new-instance v0, Lorg/kodein/di/generic/GMultiKt$factory2OrNull$1$1$1;

    invoke-direct {v0, p1}, Lorg/kodein/di/generic/GMultiKt$factory2OrNull$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
