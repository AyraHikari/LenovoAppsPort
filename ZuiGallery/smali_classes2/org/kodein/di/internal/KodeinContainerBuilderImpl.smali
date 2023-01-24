.class public final Lorg/kodein/di/internal/KodeinContainerBuilderImpl;
.super Ljava/lang/Object;
.source "KodeinContainerBuilderImpl.kt"

# interfaces
.implements Lorg/kodein/di/KodeinContainer$Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKodeinContainerBuilderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KodeinContainerBuilderImpl.kt\norg/kodein/di/internal/KodeinContainerBuilderImpl\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,172:1\n307#2,7:173\n149#3:180\n150#3:184\n1382#4,3:181\n*E\n*S KotlinDebug\n*F\n+ 1 KodeinContainerBuilderImpl.kt\norg/kodein/di/internal/KodeinContainerBuilderImpl\n*L\n117#1,7:173\n135#1:180\n135#1:184\n135#1,3:181\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001:\u00012B|\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00120\u0010\u0005\u001a,\u0012\u0010\u0012\u000e\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0007\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\t0\u00080\u0006\u0012\u001d\u0010\n\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000e0\u0008\u0012\u0014\u0010\u000f\u001a\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00100\u0008\u00a2\u0006\u0002\u0010\u0011Jq\u0010\u0019\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u001a\"\u0004\u0008\u0001\u0010\u001b\"\u0008\u0008\u0002\u0010\u001c*\u00020\u001d2\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u0002H\u001a\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u001c0\u00072\u001e\u0010\u001f\u001a\u001a\u0012\u0006\u0008\u0000\u0012\u0002H\u001a\u0012\u0006\u0008\u0000\u0012\u0002H\u001b\u0012\u0006\u0008\u0001\u0012\u0002H\u001c0 2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0002\u0010$J\u0010\u0010%\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J+\u0010&\u001a\u00020\r2\u0012\u0010\u001e\u001a\u000e\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00072\u0008\u0010#\u001a\u0004\u0018\u00010\u0003H\u0002\u00a2\u0006\u0002\u0010\'J2\u0010(\u001a\u00020\r2\u0006\u0010)\u001a\u00020*2\u0006\u0010\u0002\u001a\u00020\u00032\u0018\u0010+\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00070,H\u0016J!\u0010-\u001a\u00020\r2\u0017\u0010.\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000eH\u0016J\u0018\u0010/\u001a\u00020\r2\u000e\u00100\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0010H\u0016J\u0018\u00101\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R>\u0010\u0005\u001a,\u0012\u0010\u0012\u000e\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0007\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\t0\u00080\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R+\u0010\n\u001a\u0019\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000e0\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\"\u0010\u000f\u001a\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00100\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017\u00a8\u00063"
    }
    d2 = {
        "Lorg/kodein/di/internal/KodeinContainerBuilderImpl;",
        "Lorg/kodein/di/KodeinContainer$Builder;",
        "allowOverride",
        "",
        "silentOverride",
        "bindingsMap",
        "",
        "Lorg/kodein/di/Kodein$Key;",
        "",
        "Lorg/kodein/di/KodeinDefining;",
        "callbacks",
        "Lkotlin/Function1;",
        "Lorg/kodein/di/DKodein;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "translators",
        "Lorg/kodein/di/bindings/ContextTranslator;",
        "(ZZLjava/util/Map;Ljava/util/List;Ljava/util/List;)V",
        "_overrideMode",
        "Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;",
        "getBindingsMap$kodein_di_core",
        "()Ljava/util/Map;",
        "getCallbacks$kodein_di_core",
        "()Ljava/util/List;",
        "getTranslators$kodein_di_core",
        "bind",
        "C",
        "A",
        "T",
        "",
        "key",
        "binding",
        "Lorg/kodein/di/bindings/KodeinBinding;",
        "fromModule",
        "",
        "overrides",
        "(Lorg/kodein/di/Kodein$Key;Lorg/kodein/di/bindings/KodeinBinding;Ljava/lang/String;Ljava/lang/Boolean;)V",
        "checkMatch",
        "checkOverrides",
        "(Lorg/kodein/di/Kodein$Key;Ljava/lang/Boolean;)V",
        "extend",
        "container",
        "Lorg/kodein/di/KodeinContainer;",
        "copy",
        "",
        "onReady",
        "cb",
        "registerContextTranslator",
        "translator",
        "subBuilder",
        "OverrideMode",
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
.field private final _overrideMode:Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;

.field private final bindingsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/kodein/di/Kodein$Key<",
            "***>;",
            "Ljava/util/List<",
            "Lorg/kodein/di/KodeinDefining<",
            "***>;>;>;"
        }
    .end annotation
.end field

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lorg/kodein/di/DKodein;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final translators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/kodein/di/bindings/ContextTranslator<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZLjava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Map<",
            "Lorg/kodein/di/Kodein$Key<",
            "***>;",
            "Ljava/util/List<",
            "Lorg/kodein/di/KodeinDefining<",
            "***>;>;>;",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lorg/kodein/di/DKodein;",
            "Lkotlin/Unit;",
            ">;>;",
            "Ljava/util/List<",
            "Lorg/kodein/di/bindings/ContextTranslator<",
            "**>;>;)V"
        }
    .end annotation

    const-string v0, "bindingsMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translators"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->bindingsMap:Ljava/util/Map;

    iput-object p4, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->callbacks:Ljava/util/List;

    iput-object p5, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->translators:Ljava/util/List;

    .line 89
    sget-object p3, Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;->Companion:Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode$Companion;

    invoke-virtual {p3, p1, p2}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode$Companion;->get(ZZ)Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;

    move-result-object p1

    iput-object p1, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->_overrideMode:Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;

    return-void
.end method

.method private final checkMatch(Z)V
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->_overrideMode:Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;

    invoke-virtual {v0}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance p1, Lorg/kodein/di/Kodein$OverridingException;

    const-string v0, "Overriding has been forbidden"

    invoke-direct {p1, v0}, Lorg/kodein/di/Kodein$OverridingException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private final checkOverrides(Lorg/kodein/di/Kodein$Key;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/Kodein$Key<",
            "***>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->_overrideMode:Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;

    invoke-virtual {v0, p2}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl$OverrideMode;->must(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 105
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "Binding "

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->bindingsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance p2, Lorg/kodein/di/Kodein$OverridingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must override an existing binding."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/kodein/di/Kodein$OverridingException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 107
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->bindingsMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 108
    :cond_2
    new-instance p2, Lorg/kodein/di/Kodein$OverridingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must not override an existing binding."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/kodein/di/Kodein$OverridingException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public bind(Lorg/kodein/di/Kodein$Key;Lorg/kodein/di/bindings/KodeinBinding;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
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
            "Lorg/kodein/di/bindings/KodeinBinding<",
            "-TC;-TA;+TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lorg/kodein/di/Kodein$Key;->getType()Lorg/kodein/di/TypeToken;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/kodein/di/TypeToken;->checkIsReified(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p1}, Lorg/kodein/di/Kodein$Key;->getArgType()Lorg/kodein/di/TypeToken;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/kodein/di/TypeToken;->checkIsReified(Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0, p1, p4}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->checkOverrides(Lorg/kodein/di/Kodein$Key;Ljava/lang/Boolean;)V

    .line 117
    iget-object p4, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->bindingsMap:Ljava/util/Map;

    .line 173
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 117
    invoke-static {}, Lorg/kodein/di/internal/LangKt;->newLinkedList()Ljava/util/List;

    move-result-object v0

    .line 176
    invoke-interface {p4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    check-cast v0, Ljava/util/List;

    const/4 p1, 0x0

    .line 118
    new-instance p4, Lorg/kodein/di/KodeinDefining;

    invoke-direct {p4, p2, p3}, Lorg/kodein/di/KodeinDefining;-><init>(Lorg/kodein/di/bindings/KodeinBinding;Ljava/lang/String;)V

    invoke-interface {v0, p1, p4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public extend(Lorg/kodein/di/KodeinContainer;ZLjava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinContainer;",
            "Z",
            "Ljava/util/Set<",
            "+",
            "Lorg/kodein/di/Kodein$Key<",
            "***>;>;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "copy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, p2}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->checkMatch(Z)V

    .line 135
    invoke-interface {p1}, Lorg/kodein/di/KodeinContainer;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object v0

    invoke-interface {v0}, Lorg/kodein/di/KodeinTree;->getBindings()Ljava/util/Map;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/kodein/di/Kodein$Key;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez p2, :cond_0

    const/4 v3, 0x0

    .line 137
    invoke-direct {p0, v2, v3}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->checkOverrides(Lorg/kodein/di/Kodein$Key;Ljava/lang/Boolean;)V

    .line 139
    :cond_0
    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    invoke-static {}, Lorg/kodein/di/internal/LangKt;->newLinkedList()Ljava/util/List;

    move-result-object v3

    .line 141
    check-cast v1, Ljava/lang/Iterable;

    .line 181
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 182
    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    check-cast v4, Lorg/kodein/di/KodeinDefinition;

    .line 141
    new-instance v6, Lorg/kodein/di/KodeinDefining;

    invoke-virtual {v4}, Lorg/kodein/di/KodeinDefinition;->getBinding()Lorg/kodein/di/bindings/KodeinBinding;

    move-result-object v7

    invoke-interface {v7}, Lorg/kodein/di/bindings/KodeinBinding;->getCopier()Lorg/kodein/di/bindings/KodeinBinding$Copier;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object v8, p0

    check-cast v8, Lorg/kodein/di/KodeinContainer$Builder;

    invoke-interface {v7, v8}, Lorg/kodein/di/bindings/KodeinBinding$Copier;->copy(Lorg/kodein/di/KodeinContainer$Builder;)Lorg/kodein/di/bindings/KodeinBinding;

    move-result-object v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lorg/kodein/di/KodeinDefinition;->getBinding()Lorg/kodein/di/bindings/KodeinBinding;

    move-result-object v7

    :goto_2
    invoke-virtual {v4}, Lorg/kodein/di/KodeinDefinition;->getFromModule()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Lorg/kodein/di/KodeinDefining;-><init>(Lorg/kodein/di/bindings/KodeinBinding;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 183
    :cond_2
    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    goto :goto_3

    .line 145
    :cond_3
    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lorg/kodein/di/internal/LangKt;->newLinkedList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 148
    :goto_3
    iget-object v1, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->bindingsMap:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    :cond_4
    iget-object p2, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->translators:Ljava/util/List;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1}, Lorg/kodein/di/KodeinContainer;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object p1

    invoke-interface {p1}, Lorg/kodein/di/KodeinTree;->getRegisteredTranslators()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-void
.end method

.method public final getBindingsMap$kodein_di_core()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/kodein/di/Kodein$Key<",
            "***>;",
            "Ljava/util/List<",
            "Lorg/kodein/di/KodeinDefining<",
            "***>;>;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->bindingsMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getCallbacks$kodein_di_core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lorg/kodein/di/DKodein;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method public final getTranslators$kodein_di_core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/kodein/di/bindings/ContextTranslator<",
            "**>;>;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->translators:Ljava/util/List;

    return-object v0
.end method

.method public onReady(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/kodein/di/DKodein;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->callbacks:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerContextTranslator(Lorg/kodein/di/bindings/ContextTranslator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/bindings/ContextTranslator<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "translator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->translators:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic subBuilder(ZZ)Lorg/kodein/di/KodeinContainer$Builder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->subBuilder(ZZ)Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    move-result-object p1

    check-cast p1, Lorg/kodein/di/KodeinContainer$Builder;

    return-object p1
.end method

.method public subBuilder(ZZ)Lorg/kodein/di/internal/KodeinContainerBuilderImpl;
    .locals 7

    .line 155
    invoke-direct {p0, p1}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->checkMatch(Z)V

    .line 156
    new-instance v6, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    iget-object v3, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->bindingsMap:Ljava/util/Map;

    iget-object v4, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->callbacks:Ljava/util/List;

    iget-object v5, p0, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->translators:Ljava/util/List;

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;-><init>(ZZLjava/util/Map;Ljava/util/List;Ljava/util/List;)V

    return-object v6
.end method
