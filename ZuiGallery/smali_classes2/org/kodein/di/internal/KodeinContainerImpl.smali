.class public final Lorg/kodein/di/internal/KodeinContainerImpl;
.super Ljava/lang/Object;
.source "KodeinContainerImpl.kt"

# interfaces
.implements Lorg/kodein/di/KodeinContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/internal/KodeinContainerImpl$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKodeinContainerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KodeinContainerImpl.kt\norg/kodein/di/internal/KodeinContainerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,209:1\n1591#2,2:210\n1591#2,2:212\n1051#2,2:214\n1115#2,4:216\n1051#2,2:220\n1115#2,4:222\n1313#2:233\n1382#2,3:234\n461#3:226\n446#3,6:227\n*E\n*S KotlinDebug\n*F\n+ 1 KodeinContainerImpl.kt\norg/kodein/di/internal/KodeinContainerImpl\n*L\n137#1,2:210\n162#1,2:212\n176#1,2:214\n176#1,4:216\n188#1,2:220\n188#1,4:222\n199#1:233\n199#1,3:234\n191#1:226\n191#1,6:227\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001*B-\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\nB!\u0008\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000fJ_\u0010\u0018\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001b0\u00190\u0005\"\u0004\u0008\u0000\u0010\u001c\"\u0004\u0008\u0001\u0010\u001a\"\u0008\u0008\u0002\u0010\u001b*\u00020\u001d2\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001b0\u001f2\u0006\u0010 \u001a\u0002H\u001c2\u0006\u0010!\u001a\u00020\"H\u0016\u00a2\u0006\u0002\u0010#J\\\u0010$\u001a\u0008\u0012\u0004\u0012\u0002H\u001c0%\"\u0004\u0008\u0000\u0010\u001c\"\u0004\u0008\u0001\u0010\u001a\"\u0008\u0008\u0002\u0010\u001b*\u00020\u001d2\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001b0\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001c0&2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\"H\u0002JY\u0010\'\u001a\u000e\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001b0\u0019\"\u0004\u0008\u0000\u0010\u001c\"\u0004\u0008\u0001\u0010\u001a\"\u0008\u0008\u0002\u0010\u001b*\u00020\u001d2\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001b0\u001f2\u0006\u0010 \u001a\u0002H\u001c2\u0006\u0010!\u001a\u00020\"H\u0016\u00a2\u0006\u0002\u0010(J[\u0010)\u001a\u0010\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001b\u0018\u00010\u0019\"\u0004\u0008\u0000\u0010\u001c\"\u0004\u0008\u0001\u0010\u001a\"\u0008\u0008\u0002\u0010\u001b*\u00020\u001d2\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u0002H\u001c\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001b0\u001f2\u0006\u0010 \u001a\u0002H\u001c2\u0006\u0010!\u001a\u00020\"H\u0016\u00a2\u0006\u0002\u0010(R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R.\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00112\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006+"
    }
    d2 = {
        "Lorg/kodein/di/internal/KodeinContainerImpl;",
        "Lorg/kodein/di/KodeinContainer;",
        "builder",
        "Lorg/kodein/di/internal/KodeinContainerBuilderImpl;",
        "externalSources",
        "",
        "Lorg/kodein/di/bindings/ExternalSource;",
        "fullDescriptionOnError",
        "",
        "runCallbacks",
        "(Lorg/kodein/di/internal/KodeinContainerBuilderImpl;Ljava/util/List;ZZ)V",
        "tree",
        "Lorg/kodein/di/KodeinTree;",
        "node",
        "Lorg/kodein/di/internal/KodeinContainerImpl$Node;",
        "(Lorg/kodein/di/KodeinTree;Lorg/kodein/di/internal/KodeinContainerImpl$Node;Z)V",
        "<set-?>",
        "Lkotlin/Function0;",
        "",
        "initCallbacks",
        "getInitCallbacks",
        "()Lkotlin/jvm/functions/Function0;",
        "getTree",
        "()Lorg/kodein/di/KodeinTree;",
        "allFactories",
        "Lkotlin/Function1;",
        "A",
        "T",
        "C",
        "",
        "key",
        "Lorg/kodein/di/Kodein$Key;",
        "context",
        "overrideLevel",
        "",
        "(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Ljava/util/List;",
        "bindingKodein",
        "Lorg/kodein/di/bindings/BindingKodein;",
        "Lorg/kodein/di/KodeinContext;",
        "factory",
        "(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Lkotlin/jvm/functions/Function1;",
        "factoryOrNull",
        "Node",
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
.field private final fullDescriptionOnError:Z

.field private volatile initCallbacks:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final node:Lorg/kodein/di/internal/KodeinContainerImpl$Node;

.field private final tree:Lorg/kodein/di/KodeinTree;


# direct methods
.method private constructor <init>(Lorg/kodein/di/KodeinTree;Lorg/kodein/di/internal/KodeinContainerImpl$Node;Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/internal/KodeinContainerImpl;->tree:Lorg/kodein/di/KodeinTree;

    iput-object p2, p0, Lorg/kodein/di/internal/KodeinContainerImpl;->node:Lorg/kodein/di/internal/KodeinContainerImpl$Node;

    iput-boolean p3, p0, Lorg/kodein/di/internal/KodeinContainerImpl;->fullDescriptionOnError:Z

    return-void
.end method

.method public constructor <init>(Lorg/kodein/di/internal/KodeinContainerBuilderImpl;Ljava/util/List;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/internal/KodeinContainerBuilderImpl;",
            "Ljava/util/List<",
            "+",
            "Lorg/kodein/di/bindings/ExternalSource;",
            ">;ZZ)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalSources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lorg/kodein/di/internal/KodeinTreeImpl;

    invoke-virtual {p1}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->getBindingsMap$kodein_di_core()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->getTranslators$kodein_di_core()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lorg/kodein/di/internal/KodeinTreeImpl;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    check-cast v0, Lorg/kodein/di/KodeinTree;

    const/4 p2, 0x0

    invoke-direct {p0, v0, p2, p3}, Lorg/kodein/di/internal/KodeinContainerImpl;-><init>(Lorg/kodein/di/KodeinTree;Lorg/kodein/di/internal/KodeinContainerImpl$Node;Z)V

    .line 19
    new-instance p2, Lorg/kodein/di/internal/KodeinContainerImpl$init$1;

    invoke-direct {p2, p0, p1}, Lorg/kodein/di/internal/KodeinContainerImpl$init$1;-><init>(Lorg/kodein/di/internal/KodeinContainerImpl;Lorg/kodein/di/internal/KodeinContainerBuilderImpl;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    if-eqz p4, :cond_0

    .line 25
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance p3, Lorg/kodein/di/internal/KodeinContainerImpl$1;

    invoke-direct {p3, p0, p1, p2}, Lorg/kodein/di/internal/KodeinContainerImpl$1;-><init>(Lorg/kodein/di/internal/KodeinContainerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lorg/kodein/di/internal/KodeinContainerImpl;->initCallbacks:Lkotlin/jvm/functions/Function0;

    :goto_0
    return-void
.end method

.method public static final synthetic access$getInitCallbacks$p(Lorg/kodein/di/internal/KodeinContainerImpl;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 6
    iget-object p0, p0, Lorg/kodein/di/internal/KodeinContainerImpl;->initCallbacks:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$setInitCallbacks$p(Lorg/kodein/di/internal/KodeinContainerImpl;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lorg/kodein/di/internal/KodeinContainerImpl;->initCallbacks:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private final bindingKodein(Lorg/kodein/di/Kodein$Key;Lorg/kodein/di/KodeinContext;Lorg/kodein/di/KodeinTree;I)Lorg/kodein/di/bindings/BindingKodein;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Key<",
            "-TC;-TA;+TT;>;",
            "Lorg/kodein/di/KodeinContext<",
            "TC;>;",
            "Lorg/kodein/di/KodeinTree;",
            "I)",
            "Lorg/kodein/di/bindings/BindingKodein<",
            "TC;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Lorg/kodein/di/internal/KodeinContainerImpl;

    new-instance v1, Lorg/kodein/di/internal/KodeinContainerImpl$Node;

    iget-object v2, p0, Lorg/kodein/di/internal/KodeinContainerImpl;->node:Lorg/kodein/di/internal/KodeinContainerImpl$Node;

    iget-boolean v3, p0, Lorg/kodein/di/internal/KodeinContainerImpl;->fullDescriptionOnError:Z

    invoke-direct {v1, p1, p4, v2, v3}, Lorg/kodein/di/internal/KodeinContainerImpl$Node;-><init>(Lorg/kodein/di/Kodein$Key;ILorg/kodein/di/internal/KodeinContainerImpl$Node;Z)V

    iget-boolean v2, p0, Lorg/kodein/di/internal/KodeinContainerImpl;->fullDescriptionOnError:Z

    invoke-direct {v0, p3, v1, v2}, Lorg/kodein/di/internal/KodeinContainerImpl;-><init>(Lorg/kodein/di/KodeinTree;Lorg/kodein/di/internal/KodeinContainerImpl$Node;Z)V

    .line 120
    new-instance p3, Lorg/kodein/di/internal/BindingKodeinImpl;

    new-instance v1, Lorg/kodein/di/internal/DKodeinImpl;

    check-cast v0, Lorg/kodein/di/KodeinContainer;

    invoke-direct {v1, v0, p2}, Lorg/kodein/di/internal/DKodeinImpl;-><init>(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/KodeinContext;)V

    check-cast v1, Lorg/kodein/di/DKodein;

    invoke-interface {p2}, Lorg/kodein/di/KodeinContext;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p3, v1, p1, p2, p4}, Lorg/kodein/di/internal/BindingKodeinImpl;-><init>(Lorg/kodein/di/DKodein;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)V

    check-cast p3, Lorg/kodein/di/bindings/BindingKodein;

    return-object p3
.end method


# virtual methods
.method public allFactories(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Key<",
            "-TC;-TA;+TT;>;TC;I)",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "TA;TT;>;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinContainerImpl;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p3, v1}, Lorg/kodein/di/KodeinTree;->find(Lorg/kodein/di/Kodein$Key;IZ)Ljava/util/List;

    move-result-object v0

    .line 199
    check-cast v0, Ljava/lang/Iterable;

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 234
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 235
    check-cast v2, Lkotlin/Triple;

    invoke-virtual {v2}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/kodein/di/KodeinDefinition;

    invoke-virtual {v2}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/kodein/di/bindings/ContextTranslator;

    .line 200
    iget-object v4, p0, Lorg/kodein/di/internal/KodeinContainerImpl;->node:Lorg/kodein/di/internal/KodeinContainerImpl$Node;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1, p3}, Lorg/kodein/di/internal/KodeinContainerImpl$Node;->check$kodein_di_core(Lorg/kodein/di/Kodein$Key;I)V

    :cond_0
    if-eqz v2, :cond_1

    .line 201
    invoke-static {v2, p2}, Lorg/kodein/di/bindings/ScopesKt;->toKContext(Lorg/kodein/di/bindings/ContextTranslator;Ljava/lang/Object;)Lorg/kodein/di/KodeinContext;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/kodein/di/KodeinContext;->Companion:Lorg/kodein/di/KodeinContext$Companion;

    invoke-virtual {p1}, Lorg/kodein/di/Kodein$Key;->getContextType()Lorg/kodein/di/TypeToken;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Lorg/kodein/di/KodeinContext$Companion;->invoke(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lorg/kodein/di/KodeinContext;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 203
    :goto_1
    invoke-virtual {v3}, Lorg/kodein/di/KodeinDefinition;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4, p3}, Lorg/kodein/di/internal/KodeinContainerImpl;->bindingKodein(Lorg/kodein/di/Kodein$Key;Lorg/kodein/di/KodeinContext;Lorg/kodein/di/KodeinTree;I)Lorg/kodein/di/bindings/BindingKodein;

    move-result-object v2

    .line 204
    invoke-virtual {v3}, Lorg/kodein/di/KodeinDefinition;->getBinding()Lorg/kodein/di/bindings/KodeinBinding;

    move-result-object v3

    invoke-interface {v3, v2, p1}, Lorg/kodein/di/bindings/KodeinBinding;->getFactory(Lorg/kodein/di/bindings/BindingKodein;Lorg/kodein/di/Kodein$Key;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type org.kodein.di.KodeinContext<kotlin.Any>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 236
    :cond_3
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public allProviders(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Key<",
            "-TC;-",
            "Lkotlin/Unit;",
            "+TT;>;TC;I)",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1, p2, p3}, Lorg/kodein/di/KodeinContainer$DefaultImpls;->allProviders(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public factory(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Lkotlin/jvm/functions/Function1;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Key<",
            "-TC;-TA;+TT;>;TC;I)",
            "Lkotlin/jvm/functions/Function1<",
            "TA;TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    const-string v1, "key"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lorg/kodein/di/internal/KodeinContainerImpl;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lorg/kodein/di/KodeinTree$DefaultImpls;->find$default(Lorg/kodein/di/KodeinTree;Lorg/kodein/di/Kodein$Key;IZILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 152
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 153
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Triple;

    invoke-virtual {v1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/kodein/di/KodeinDefinition;

    invoke-virtual {v1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/kodein/di/bindings/ContextTranslator;

    .line 154
    iget-object v3, v0, Lorg/kodein/di/internal/KodeinContainerImpl;->node:Lorg/kodein/di/internal/KodeinContainerImpl$Node;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v7, v9}, Lorg/kodein/di/internal/KodeinContainerImpl$Node;->check$kodein_di_core(Lorg/kodein/di/Kodein$Key;I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 155
    invoke-static {v1, v8}, Lorg/kodein/di/bindings/ScopesKt;->toKContext(Lorg/kodein/di/bindings/ContextTranslator;Ljava/lang/Object;)Lorg/kodein/di/KodeinContext;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/kodein/di/KodeinContext;->Companion:Lorg/kodein/di/KodeinContext$Companion;

    invoke-virtual/range {p1 .. p1}, Lorg/kodein/di/Kodein$Key;->getContextType()Lorg/kodein/di/TypeToken;

    move-result-object v3

    invoke-virtual {v1, v3, v8}, Lorg/kodein/di/KodeinContext$Companion;->invoke(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lorg/kodein/di/KodeinContext;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 157
    :goto_0
    invoke-virtual {v2}, Lorg/kodein/di/KodeinDefinition;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object v3

    invoke-direct {v0, v7, v1, v3, v9}, Lorg/kodein/di/internal/KodeinContainerImpl;->bindingKodein(Lorg/kodein/di/Kodein$Key;Lorg/kodein/di/KodeinContext;Lorg/kodein/di/KodeinTree;I)Lorg/kodein/di/bindings/BindingKodein;

    move-result-object v1

    .line 158
    invoke-virtual {v2}, Lorg/kodein/di/KodeinDefinition;->getBinding()Lorg/kodein/di/bindings/KodeinBinding;

    move-result-object v2

    invoke-interface {v2, v1, v7}, Lorg/kodein/di/bindings/KodeinBinding;->getFactory(Lorg/kodein/di/bindings/BindingKodein;Lorg/kodein/di/Kodein$Key;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    return-object v1

    .line 155
    :cond_2
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type org.kodein.di.KodeinContext<kotlin.Any>"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_3
    sget-object v2, Lorg/kodein/di/KodeinContext;->Companion:Lorg/kodein/di/KodeinContext$Companion;

    invoke-virtual/range {p1 .. p1}, Lorg/kodein/di/Kodein$Key;->getContextType()Lorg/kodein/di/TypeToken;

    move-result-object v5

    invoke-virtual {v2, v5, v8}, Lorg/kodein/di/KodeinContext$Companion;->invoke(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lorg/kodein/di/KodeinContext;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/kodein/di/internal/KodeinContainerImpl;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object v5

    invoke-direct {v0, v7, v2, v5, v9}, Lorg/kodein/di/internal/KodeinContainerImpl;->bindingKodein(Lorg/kodein/di/Kodein$Key;Lorg/kodein/di/KodeinContext;Lorg/kodein/di/KodeinTree;I)Lorg/kodein/di/bindings/BindingKodein;

    move-result-object v2

    .line 162
    invoke-virtual/range {p0 .. p0}, Lorg/kodein/di/internal/KodeinContainerImpl;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object v5

    invoke-interface {v5}, Lorg/kodein/di/KodeinTree;->getExternalSources()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 212
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/kodein/di/bindings/ExternalSource;

    .line 163
    invoke-interface {v6, v2, v7}, Lorg/kodein/di/bindings/ExternalSource;->getFactory(Lorg/kodein/di/bindings/BindingKodein;Lorg/kodein/di/Kodein$Key;)Lkotlin/jvm/functions/Function1;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 164
    iget-object v1, v0, Lorg/kodein/di/internal/KodeinContainerImpl;->node:Lorg/kodein/di/internal/KodeinContainerImpl$Node;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v7, v9}, Lorg/kodein/di/internal/KodeinContainerImpl$Node;->check$kodein_di_core(Lorg/kodein/di/Kodein$Key;I)V

    :cond_5
    if-eqz v6, :cond_6

    .line 166
    invoke-static {v6, v4}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    return-object v1

    :cond_6
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type (A) -> T"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    if-eqz v9, :cond_8

    move v3, v4

    .line 172
    :cond_8
    iget-boolean v2, v0, Lorg/kodein/di/internal/KodeinContainerImpl;->fullDescriptionOnError:Z

    if-eqz v2, :cond_9

    new-instance v2, Lorg/kodein/di/internal/KodeinContainerImpl$factory$descProp$1;

    invoke-direct {v2, v7}, Lorg/kodein/di/internal/KodeinContainerImpl$factory$descProp$1;-><init>(Lorg/kodein/di/Kodein$Key;)V

    goto :goto_1

    :cond_9
    new-instance v2, Lorg/kodein/di/internal/KodeinContainerImpl$factory$descProp$2;

    invoke-direct {v2, v7}, Lorg/kodein/di/internal/KodeinContainerImpl$factory$descProp$2;-><init>(Lorg/kodein/di/Kodein$Key;)V

    .line 173
    :goto_1
    iget-boolean v5, v0, Lorg/kodein/di/internal/KodeinContainerImpl;->fullDescriptionOnError:Z

    if-eqz v5, :cond_a

    sget-object v5, Lorg/kodein/di/internal/KodeinContainerImpl$factory$descFun$1;->INSTANCE:Lorg/kodein/di/internal/KodeinContainerImpl$factory$descFun$1;

    goto :goto_2

    :cond_a
    sget-object v5, Lorg/kodein/di/internal/KodeinContainerImpl$factory$descFun$2;->INSTANCE:Lorg/kodein/di/internal/KodeinContainerImpl$factory$descFun$2;

    :goto_2
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 175
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/16 v8, 0x10

    const/16 v9, 0xa

    if-eqz v6, :cond_d

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No binding found for "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lkotlin/reflect/KProperty0;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual/range {p0 .. p0}, Lorg/kodein/di/internal/KodeinContainerImpl;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object v2

    new-instance v6, Lorg/kodein/di/SearchSpecs;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/kodein/di/Kodein$Key;->getType()Lorg/kodein/di/TypeToken;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v15, 0xb

    const/16 v16, 0x0

    move-object v10, v6

    invoke-direct/range {v10 .. v16}, Lorg/kodein/di/SearchSpecs;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v6}, Lorg/kodein/di/KodeinTree;->find(Lorg/kodein/di/SearchSpecs;)Ljava/util/List;

    move-result-object v2

    .line 179
    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v4, v6

    if-eqz v4, :cond_c

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Available bindings for this type:\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v2, Ljava/lang/Iterable;

    .line 214
    invoke-static {v2, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v6

    invoke-static {v6, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v6

    .line 215
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v8, Ljava/util/Map;

    .line 216
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 217
    check-cast v6, Lkotlin/Triple;

    .line 180
    invoke-virtual {v6}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v9, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v5, v8, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registered in this Kodein container:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/kodein/di/internal/KodeinContainerImpl;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object v4

    invoke-interface {v4}, Lorg/kodein/di/KodeinTree;->getBindings()Ljava/util/Map;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v5, v4, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    new-instance v2, Lorg/kodein/di/Kodein$NotFoundException;

    invoke-direct {v2, v7, v1}, Lorg/kodein/di/Kodein$NotFoundException;-><init>(Lorg/kodein/di/Kodein$Key;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 188
    :cond_d
    check-cast v1, Ljava/lang/Iterable;

    .line 220
    invoke-static {v1, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    invoke-static {v2, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 221
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v6, Ljava/util/Map;

    .line 222
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 223
    check-cast v2, Lkotlin/Triple;

    .line 189
    invoke-virtual {v2}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/kodein/di/internal/KodeinContainerImpl;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object v9

    invoke-virtual {v2}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/kodein/di/Kodein$Key;

    invoke-interface {v9, v2}, Lorg/kodein/di/KodeinTree;->get(Lorg/kodein/di/Kodein$Key;)Lkotlin/Triple;

    move-result-object v2

    if-nez v2, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    invoke-virtual {v2}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 191
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/kodein/di/internal/KodeinContainerImpl;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object v1

    invoke-interface {v1}, Lorg/kodein/di/KodeinTree;->getBindings()Ljava/util/Map;

    move-result-object v1

    .line 226
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 227
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 228
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/kodein/di/Kodein$Key;

    .line 191
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v4

    if-eqz v9, :cond_10

    .line 229
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 192
    :cond_11
    new-instance v1, Lorg/kodein/di/Kodein$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " bindings found that match "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ":\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v6, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Other bindings registered in Kodein:\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2}, Lorg/kodein/di/Kodein$NotFoundException;-><init>(Lorg/kodein/di/Kodein$Key;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public factoryOrNull(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Lkotlin/jvm/functions/Function1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Key<",
            "-TC;-TA;+TT;>;TC;I)",
            "Lkotlin/jvm/functions/Function1<",
            "TA;TT;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinContainerImpl;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lorg/kodein/di/KodeinTree$DefaultImpls;->find$default(Lorg/kodein/di/KodeinTree;Lorg/kodein/di/Kodein$Key;IZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 127
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Triple;

    invoke-virtual {v0}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/kodein/di/KodeinDefinition;

    invoke-virtual {v0}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/kodein/di/bindings/ContextTranslator;

    .line 128
    iget-object v2, p0, Lorg/kodein/di/internal/KodeinContainerImpl;->node:Lorg/kodein/di/internal/KodeinContainerImpl$Node;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, v3}, Lorg/kodein/di/internal/KodeinContainerImpl$Node;->check$kodein_di_core(Lorg/kodein/di/Kodein$Key;I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 129
    invoke-static {v0, p2}, Lorg/kodein/di/bindings/ScopesKt;->toKContext(Lorg/kodein/di/bindings/ContextTranslator;Ljava/lang/Object;)Lorg/kodein/di/KodeinContext;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/kodein/di/KodeinContext;->Companion:Lorg/kodein/di/KodeinContext$Companion;

    invoke-virtual {p1}, Lorg/kodein/di/Kodein$Key;->getContextType()Lorg/kodein/di/TypeToken;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lorg/kodein/di/KodeinContext$Companion;->invoke(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lorg/kodein/di/KodeinContext;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 131
    :goto_0
    invoke-virtual {v1}, Lorg/kodein/di/KodeinDefinition;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/kodein/di/internal/KodeinContainerImpl;->bindingKodein(Lorg/kodein/di/Kodein$Key;Lorg/kodein/di/KodeinContext;Lorg/kodein/di/KodeinTree;I)Lorg/kodein/di/bindings/BindingKodein;

    move-result-object p2

    .line 132
    invoke-virtual {v1}, Lorg/kodein/di/KodeinDefinition;->getBinding()Lorg/kodein/di/bindings/KodeinBinding;

    move-result-object p3

    invoke-interface {p3, p2, p1}, Lorg/kodein/di/bindings/KodeinBinding;->getFactory(Lorg/kodein/di/bindings/BindingKodein;Lorg/kodein/di/Kodein$Key;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    return-object p1

    .line 129
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type org.kodein.di.KodeinContext<kotlin.Any>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_3
    sget-object v0, Lorg/kodein/di/KodeinContext;->Companion:Lorg/kodein/di/KodeinContext$Companion;

    invoke-virtual {p1}, Lorg/kodein/di/Kodein$Key;->getContextType()Lorg/kodein/di/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/kodein/di/KodeinContext$Companion;->invoke(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lorg/kodein/di/KodeinContext;

    move-result-object p2

    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinContainerImpl;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/kodein/di/internal/KodeinContainerImpl;->bindingKodein(Lorg/kodein/di/Kodein$Key;Lorg/kodein/di/KodeinContext;Lorg/kodein/di/KodeinTree;I)Lorg/kodein/di/bindings/BindingKodein;

    move-result-object p2

    .line 137
    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinContainerImpl;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object p3

    invoke-interface {p3}, Lorg/kodein/di/KodeinTree;->getExternalSources()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    .line 210
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/kodein/di/bindings/ExternalSource;

    .line 138
    invoke-interface {v0, p2, p1}, Lorg/kodein/di/bindings/ExternalSource;->getFactory(Lorg/kodein/di/bindings/BindingKodein;Lorg/kodein/di/Kodein$Key;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 139
    iget-object p2, p0, Lorg/kodein/di/internal/KodeinContainerImpl;->node:Lorg/kodein/di/internal/KodeinContainerImpl$Node;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1, v3}, Lorg/kodein/di/internal/KodeinContainerImpl$Node;->check$kodein_di_core(Lorg/kodein/di/Kodein$Key;I)V

    :cond_5
    if-eqz v0, :cond_6

    .line 141
    invoke-static {v0, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    return-object p1

    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type (A) -> T"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getInitCallbacks()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinContainerImpl;->initCallbacks:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getTree()Lorg/kodein/di/KodeinTree;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinContainerImpl;->tree:Lorg/kodein/di/KodeinTree;

    return-object v0
.end method

.method public provider(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Key<",
            "-TC;-",
            "Lkotlin/Unit;",
            "+TT;>;TC;I)",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1, p2, p3}, Lorg/kodein/di/KodeinContainer$DefaultImpls;->provider(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    return-object p1
.end method

.method public providerOrNull(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Key<",
            "-TC;-",
            "Lkotlin/Unit;",
            "+TT;>;TC;I)",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1, p2, p3}, Lorg/kodein/di/KodeinContainer$DefaultImpls;->providerOrNull(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    return-object p1
.end method
