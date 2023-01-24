.class final Lorg/kodein/di/KodeinAwareKt$Factory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KodeinAware.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/KodeinAwareKt;->Factory(Lorg/kodein/di/KodeinAware;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lorg/kodein/di/KodeinProperty;
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
        "Lkotlin/jvm/functions/Function1<",
        "-TA;+TT;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKodeinAware.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KodeinAware.kt\norg/kodein/di/KodeinAwareKt$Factory$1\n+ 2 KodeinAware.kt\norg/kodein/di/KodeinAwareKt\n*L\n1#1,253:1\n42#2:254\n*E\n*S KotlinDebug\n*F\n+ 1 KodeinAware.kt\norg/kodein/di/KodeinAwareKt$Factory$1\n*L\n93#1:254\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Function1;",
        "A",
        "T",
        "",
        "ctx",
        "Lorg/kodein/di/KodeinContext;",
        "<anonymous parameter 1>",
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
.field final synthetic $argType:Lorg/kodein/di/TypeToken;

.field final synthetic $tag:Ljava/lang/Object;

.field final synthetic $this_Factory:Lorg/kodein/di/KodeinAware;

.field final synthetic $type:Lorg/kodein/di/TypeToken;


# direct methods
.method constructor <init>(Lorg/kodein/di/KodeinAware;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/KodeinAwareKt$Factory$1;->$this_Factory:Lorg/kodein/di/KodeinAware;

    iput-object p2, p0, Lorg/kodein/di/KodeinAwareKt$Factory$1;->$argType:Lorg/kodein/di/TypeToken;

    iput-object p3, p0, Lorg/kodein/di/KodeinAwareKt$Factory$1;->$type:Lorg/kodein/di/TypeToken;

    iput-object p4, p0, Lorg/kodein/di/KodeinAwareKt$Factory$1;->$tag:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/kodein/di/KodeinContext;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/kodein/di/KodeinAwareKt$Factory$1;->invoke(Lorg/kodein/di/KodeinContext;Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/kodein/di/KodeinContext;Ljava/lang/String;)Lkotlin/jvm/functions/Function1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinContext<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "TA;TT;>;"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lorg/kodein/di/KodeinAwareKt$Factory$1;->$this_Factory:Lorg/kodein/di/KodeinAware;

    invoke-interface {p2}, Lorg/kodein/di/KodeinAware;->getKodein()Lorg/kodein/di/Kodein;

    move-result-object p2

    invoke-interface {p2}, Lorg/kodein/di/Kodein;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v0

    .line 254
    invoke-interface {p1}, Lorg/kodein/di/KodeinContext;->getType()Lorg/kodein/di/TypeToken;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 93
    iget-object v1, p0, Lorg/kodein/di/KodeinAwareKt$Factory$1;->$argType:Lorg/kodein/di/TypeToken;

    iget-object v2, p0, Lorg/kodein/di/KodeinAwareKt$Factory$1;->$type:Lorg/kodein/di/TypeToken;

    iget-object v3, p0, Lorg/kodein/di/KodeinAwareKt$Factory$1;->$tag:Ljava/lang/Object;

    new-instance v4, Lorg/kodein/di/Kodein$Key;

    invoke-direct {v4, p2, v1, v2, v3}, Lorg/kodein/di/Kodein$Key;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/kodein/di/KodeinContext;->getValue()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 p1, 0x4

    const/4 v5, 0x0

    move-object v1, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Lorg/kodein/di/KodeinContainer$DefaultImpls;->factory$default(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;IILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    return-object p1

    .line 254
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type org.kodein.di.TypeToken<in kotlin.Any?>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
