.class public final Lorg/kodein/di/generic/GDKodeinKt$allProviders$$inlined$map$lambda$4;
.super Lkotlin/jvm/internal/Lambda;
.source "curry.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/generic/GDKodeinKt;->allProviders(Lorg/kodein/di/DKodeinAware;Ljava/lang/Object;Lorg/kodein/di/Typed;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ncurry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 curry.kt\norg/kodein/di/CurryKt$toProvider$1\n+ 2 GDKodein.kt\norg/kodein/di/generic/GDKodeinKt\n*L\n1#1,13:1\n202#2:14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0008\u0008\u0001\u0010\u0001*\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "T",
        "A",
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "org/kodein/di/CurryKt$toProvider$1",
        "org/kodein/di/generic/GDKodeinKt$$special$$inlined$toProvider$4"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $arg$inlined:Lorg/kodein/di/Typed;

.field final synthetic $this_toProvider:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lorg/kodein/di/Typed;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/generic/GDKodeinKt$allProviders$$inlined$map$lambda$4;->$this_toProvider:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lorg/kodein/di/generic/GDKodeinKt$allProviders$$inlined$map$lambda$4;->$arg$inlined:Lorg/kodein/di/Typed;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lorg/kodein/di/generic/GDKodeinKt$allProviders$$inlined$map$lambda$4;->$this_toProvider:Lkotlin/jvm/functions/Function1;

    .line 14
    iget-object v1, p0, Lorg/kodein/di/generic/GDKodeinKt$allProviders$$inlined$map$lambda$4;->$arg$inlined:Lorg/kodein/di/Typed;

    invoke-interface {v1}, Lorg/kodein/di/Typed;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
