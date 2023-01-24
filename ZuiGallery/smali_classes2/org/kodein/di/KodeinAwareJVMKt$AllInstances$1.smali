.class final Lorg/kodein/di/KodeinAwareJVMKt$AllInstances$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KodeinAwareJVM.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/KodeinAwareJVMKt;->AllInstances(Lorg/kodein/di/KodeinAware;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lorg/kodein/di/KodeinProperty;
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
        "Ljava/util/List<",
        "+TT;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKodeinAwareJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KodeinAwareJVM.kt\norg/kodein/di/KodeinAwareJVMKt$AllInstances$1\n+ 2 KodeinAware.kt\norg/kodein/di/KodeinAwareKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n42#2:73\n1313#3:74\n1382#3,3:75\n*E\n*S KotlinDebug\n*F\n+ 1 KodeinAwareJVM.kt\norg/kodein/di/KodeinAwareJVMKt$AllInstances$1\n*L\n56#1:73\n56#1:74\n56#1,3:75\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $tag:Ljava/lang/Object;

.field final synthetic $this_AllInstances:Lorg/kodein/di/KodeinAware;

.field final synthetic $type:Lorg/kodein/di/TypeToken;


# direct methods
.method constructor <init>(Lorg/kodein/di/KodeinAware;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/KodeinAwareJVMKt$AllInstances$1;->$this_AllInstances:Lorg/kodein/di/KodeinAware;

    iput-object p2, p0, Lorg/kodein/di/KodeinAwareJVMKt$AllInstances$1;->$type:Lorg/kodein/di/TypeToken;

    iput-object p3, p0, Lorg/kodein/di/KodeinAwareJVMKt$AllInstances$1;->$tag:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/kodein/di/KodeinContext;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/kodein/di/KodeinAwareJVMKt$AllInstances$1;->invoke(Lorg/kodein/di/KodeinContext;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/kodein/di/KodeinContext;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinContext<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lorg/kodein/di/KodeinAwareJVMKt$AllInstances$1;->$this_AllInstances:Lorg/kodein/di/KodeinAware;

    invoke-interface {p2}, Lorg/kodein/di/KodeinAware;->getKodein()Lorg/kodein/di/Kodein;

    move-result-object p2

    invoke-interface {p2}, Lorg/kodein/di/Kodein;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v0

    .line 73
    invoke-interface {p1}, Lorg/kodein/di/KodeinContext;->getType()Lorg/kodein/di/TypeToken;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 56
    invoke-static {}, Lorg/kodein/di/TypeTokenKt;->getUnitToken()Lorg/kodein/di/TypeToken;

    move-result-object v1

    iget-object v2, p0, Lorg/kodein/di/KodeinAwareJVMKt$AllInstances$1;->$type:Lorg/kodein/di/TypeToken;

    iget-object v3, p0, Lorg/kodein/di/KodeinAwareJVMKt$AllInstances$1;->$tag:Ljava/lang/Object;

    new-instance v4, Lorg/kodein/di/Kodein$Key;

    invoke-direct {v4, p2, v1, v2, v3}, Lorg/kodein/di/Kodein$Key;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/kodein/di/KodeinContext;->getValue()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 p1, 0x4

    const/4 v5, 0x0

    move-object v1, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Lorg/kodein/di/KodeinContainer$DefaultImpls;->allProviders$default(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 74
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 75
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 76
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 56
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    check-cast p2, Ljava/util/List;

    return-object p2

    .line 73
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type org.kodein.di.TypeToken<in kotlin.Any?>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
