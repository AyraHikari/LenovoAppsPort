.class public final Lorg/kodein/di/SearchDSL$Spec$Companion$invoke$1;
.super Ljava/lang/Object;
.source "Search.kt"

# interfaces
.implements Lorg/kodein/di/SearchDSL$Spec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/SearchDSL$Spec$Companion;->invoke$kodein_di_core(Lkotlin/jvm/functions/Function1;)Lorg/kodein/di/SearchDSL$Spec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "org/kodein/di/SearchDSL$Spec$Companion$invoke$1",
        "Lorg/kodein/di/SearchDSL$Spec;",
        "apply",
        "",
        "specs",
        "Lorg/kodein/di/SearchSpecs;",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $f:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/kodein/di/SearchDSL$Spec$Companion$invoke$1;->$f:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/kodein/di/SearchSpecs;)V
    .locals 1

    const-string v0, "specs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lorg/kodein/di/SearchDSL$Spec$Companion$invoke$1;->$f:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
