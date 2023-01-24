.class final Lorg/kodein/di/KodeinAwareKt$newInstance$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KodeinAware.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/KodeinAwareKt;->newInstance(Lorg/kodein/di/KodeinAware;Lkotlin/jvm/functions/Function1;)Lorg/kodein/di/KodeinProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/kodein/di/KodeinContext<",
        "*>;",
        "Ljava/lang/String;",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKodeinAware.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KodeinAware.kt\norg/kodein/di/KodeinAwareKt$newInstance$1\n*L\n1#1,253:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "T",
        "ctx",
        "Lorg/kodein/di/KodeinContext;",
        "<anonymous parameter 1>",
        "",
        "invoke",
        "(Lorg/kodein/di/KodeinContext;Ljava/lang/String;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $creator:Lkotlin/jvm/functions/Function1;

.field final synthetic $this_newInstance:Lorg/kodein/di/KodeinAware;


# direct methods
.method constructor <init>(Lorg/kodein/di/KodeinAware;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/KodeinAwareKt$newInstance$1;->$this_newInstance:Lorg/kodein/di/KodeinAware;

    iput-object p2, p0, Lorg/kodein/di/KodeinAwareKt$newInstance$1;->$creator:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/kodein/di/KodeinContext;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/kodein/di/KodeinAwareKt$newInstance$1;->invoke(Lorg/kodein/di/KodeinContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/kodein/di/KodeinContext;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinContext<",
            "*>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iget-object p2, p0, Lorg/kodein/di/KodeinAwareKt$newInstance$1;->$this_newInstance:Lorg/kodein/di/KodeinAware;

    invoke-interface {p2}, Lorg/kodein/di/KodeinAware;->getKodein()Lorg/kodein/di/Kodein;

    move-result-object p2

    check-cast p2, Lorg/kodein/di/KodeinAware;

    invoke-static {p2}, Lorg/kodein/di/KodeinAwareKt;->getDirect(Lorg/kodein/di/KodeinAware;)Lorg/kodein/di/DKodein;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/kodein/di/DKodein;->On(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/DKodein;

    move-result-object p1

    iget-object p2, p0, Lorg/kodein/di/KodeinAwareKt$newInstance$1;->$creator:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
