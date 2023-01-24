.class final Lorg/kodein/di/Named$Instance$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Named.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/Named;->Instance-impl(Lorg/kodein/di/KodeinAware;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function0;)Lorg/kodein/di/KodeinProperty;
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
    value = "SMAP\nNamed.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Named.kt\norg/kodein/di/Named$Instance$2\n+ 2 KodeinAware.kt\norg/kodein/di/KodeinAwareKt\n*L\n1#1,161:1\n42#2:162\n*E\n*S KotlinDebug\n*F\n+ 1 Named.kt\norg/kodein/di/Named$Instance$2\n*L\n117#1:162\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0008\u0008\u0001\u0010\u0001*\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "<anonymous>",
        "T",
        "A",
        "",
        "ctx",
        "Lorg/kodein/di/KodeinContext;",
        "tag",
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
.field final synthetic $arg:Lkotlin/jvm/functions/Function0;

.field final synthetic $argType:Lorg/kodein/di/TypeToken;

.field final synthetic $type:Lorg/kodein/di/TypeToken;

.field final synthetic this$0:Lorg/kodein/di/KodeinAware;


# direct methods
.method constructor <init>(Lorg/kodein/di/KodeinAware;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/Named$Instance$2;->this$0:Lorg/kodein/di/KodeinAware;

    iput-object p2, p0, Lorg/kodein/di/Named$Instance$2;->$argType:Lorg/kodein/di/TypeToken;

    iput-object p3, p0, Lorg/kodein/di/Named$Instance$2;->$type:Lorg/kodein/di/TypeToken;

    iput-object p4, p0, Lorg/kodein/di/Named$Instance$2;->$arg:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4
    check-cast p1, Lorg/kodein/di/KodeinContext;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/kodein/di/Named$Instance$2;->invoke(Lorg/kodein/di/KodeinContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/kodein/di/KodeinContext;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
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

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lorg/kodein/di/Named$Instance$2;->this$0:Lorg/kodein/di/KodeinAware;

    invoke-interface {v0}, Lorg/kodein/di/KodeinAware;->getKodein()Lorg/kodein/di/Kodein;

    move-result-object v0

    invoke-interface {v0}, Lorg/kodein/di/Kodein;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v1

    .line 162
    invoke-interface {p1}, Lorg/kodein/di/KodeinContext;->getType()Lorg/kodein/di/TypeToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v2, p0, Lorg/kodein/di/Named$Instance$2;->$argType:Lorg/kodein/di/TypeToken;

    iget-object v3, p0, Lorg/kodein/di/Named$Instance$2;->$type:Lorg/kodein/di/TypeToken;

    new-instance v4, Lorg/kodein/di/Kodein$Key;

    invoke-direct {v4, v0, v2, v3, p2}, Lorg/kodein/di/Kodein$Key;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/kodein/di/KodeinContext;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 p1, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, v4

    move v4, p1

    invoke-static/range {v1 .. v6}, Lorg/kodein/di/KodeinContainer$DefaultImpls;->factory$default(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;IILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object p2, p0, Lorg/kodein/di/Named$Instance$2;->$arg:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 162
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type org.kodein.di.TypeToken<in kotlin.Any?>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
