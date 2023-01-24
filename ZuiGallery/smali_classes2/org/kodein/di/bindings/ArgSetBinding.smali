.class public final Lorg/kodein/di/bindings/ArgSetBinding;
.super Lorg/kodein/di/bindings/BaseMultiBinding;
.source "set.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/kodein/di/bindings/BaseMultiBinding<",
        "TC;TA;TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nset.kt\nKotlin\n*S Kotlin\n*F\n+ 1 set.kt\norg/kodein/di/bindings/ArgSetBinding\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,116:1\n1313#2:117\n1382#2,3:118\n*E\n*S KotlinDebug\n*F\n+ 1 set.kt\norg/kodein/di/bindings/ArgSetBinding\n*L\n41#1:117\n41#1,3:118\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u0002*\u0008\u0008\u0002\u0010\u0003*\u00020\u00042\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0005BK\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u0007\u0012\u000e\u0010\u0008\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00010\u0007\u0012\u000e\u0010\t\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00020\u0007\u0012\u0014\u0010\n\u001a\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0004\u0012\u00028\u00020\u000b0\u0007\u00a2\u0006\u0002\u0010\u000cJH\u0010\u001b\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00020\u000b0\u001c2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001e2\u001e\u0010\u001f\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00020\u000b0 H\u0016R\u0016\u0010\t\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00010\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0006\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR,\u0010\u0010\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00020\u000b0\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\"\u0010\n\u001a\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0004\u0012\u00028\u00020\u000b0\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000eRH\u0010\u0015\u001a6\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00170\u0016j\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0017`\u0018X\u0090\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006!"
    }
    d2 = {
        "Lorg/kodein/di/bindings/ArgSetBinding;",
        "C",
        "A",
        "T",
        "",
        "Lorg/kodein/di/bindings/BaseMultiBinding;",
        "contextType",
        "Lorg/kodein/di/TypeToken;",
        "argType",
        "_elementType",
        "createdType",
        "",
        "(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;)V",
        "getArgType",
        "()Lorg/kodein/di/TypeToken;",
        "getContextType",
        "copier",
        "Lorg/kodein/di/bindings/KodeinBinding$Copier;",
        "getCopier",
        "()Lorg/kodein/di/bindings/KodeinBinding$Copier;",
        "getCreatedType",
        "set",
        "Ljava/util/LinkedHashSet;",
        "Lorg/kodein/di/bindings/KodeinBinding;",
        "Lkotlin/collections/LinkedHashSet;",
        "getSet$kodein_di_core",
        "()Ljava/util/LinkedHashSet;",
        "getFactory",
        "Lkotlin/Function1;",
        "kodein",
        "Lorg/kodein/di/bindings/BindingKodein;",
        "key",
        "Lorg/kodein/di/Kodein$Key;",
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
.field private final _elementType:Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/TypeToken<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final argType:Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/TypeToken<",
            "-TA;>;"
        }
    .end annotation
.end field

.field private final contextType:Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/TypeToken<",
            "-TC;>;"
        }
    .end annotation
.end field

.field private final copier:Lorg/kodein/di/bindings/KodeinBinding$Copier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/bindings/KodeinBinding$Copier<",
            "TC;TA;",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final createdType:Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/TypeToken<",
            "+",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final set:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lorg/kodein/di/bindings/KodeinBinding<",
            "TC;TA;TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/TypeToken<",
            "-TC;>;",
            "Lorg/kodein/di/TypeToken<",
            "-TA;>;",
            "Lorg/kodein/di/TypeToken<",
            "+TT;>;",
            "Lorg/kodein/di/TypeToken<",
            "+",
            "Ljava/util/Set<",
            "+TT;>;>;)V"
        }
    .end annotation

    const-string v0, "contextType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_elementType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lorg/kodein/di/bindings/BaseMultiBinding;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/bindings/ArgSetBinding;->contextType:Lorg/kodein/di/TypeToken;

    iput-object p2, p0, Lorg/kodein/di/bindings/ArgSetBinding;->argType:Lorg/kodein/di/TypeToken;

    iput-object p3, p0, Lorg/kodein/di/bindings/ArgSetBinding;->_elementType:Lorg/kodein/di/TypeToken;

    iput-object p4, p0, Lorg/kodein/di/bindings/ArgSetBinding;->createdType:Lorg/kodein/di/TypeToken;

    .line 36
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/bindings/ArgSetBinding;->set:Ljava/util/LinkedHashSet;

    .line 47
    sget-object p1, Lorg/kodein/di/bindings/KodeinBinding$Copier;->Companion:Lorg/kodein/di/bindings/KodeinBinding$Copier$Companion;

    new-instance p2, Lorg/kodein/di/bindings/ArgSetBinding$copier$1;

    invoke-direct {p2, p0}, Lorg/kodein/di/bindings/ArgSetBinding$copier$1;-><init>(Lorg/kodein/di/bindings/ArgSetBinding;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p2}, Lorg/kodein/di/bindings/KodeinBinding$Copier$Companion;->invoke(Lkotlin/jvm/functions/Function1;)Lorg/kodein/di/bindings/KodeinBinding$Copier;

    move-result-object p1

    iput-object p1, p0, Lorg/kodein/di/bindings/ArgSetBinding;->copier:Lorg/kodein/di/bindings/KodeinBinding$Copier;

    return-void
.end method

.method public static final synthetic access$get_elementType$p(Lorg/kodein/di/bindings/ArgSetBinding;)Lorg/kodein/di/TypeToken;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/kodein/di/bindings/ArgSetBinding;->_elementType:Lorg/kodein/di/TypeToken;

    return-object p0
.end method


# virtual methods
.method public getArgType()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "-TA;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/kodein/di/bindings/ArgSetBinding;->argType:Lorg/kodein/di/TypeToken;

    return-object v0
.end method

.method public getContextType()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "-TC;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/kodein/di/bindings/ArgSetBinding;->contextType:Lorg/kodein/di/TypeToken;

    return-object v0
.end method

.method public getCopier()Lorg/kodein/di/bindings/KodeinBinding$Copier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/bindings/KodeinBinding$Copier<",
            "TC;TA;",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/kodein/di/bindings/ArgSetBinding;->copier:Lorg/kodein/di/bindings/KodeinBinding$Copier;

    return-object v0
.end method

.method public getCreatedType()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "+",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/kodein/di/bindings/ArgSetBinding;->createdType:Lorg/kodein/di/TypeToken;

    return-object v0
.end method

.method public getFactory(Lorg/kodein/di/bindings/BindingKodein;Lorg/kodein/di/Kodein$Key;)Lkotlin/jvm/functions/Function1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/bindings/BindingKodein<",
            "+TC;>;",
            "Lorg/kodein/di/Kodein$Key<",
            "-TC;-TA;+",
            "Ljava/util/Set<",
            "+TT;>;>;)",
            "Lkotlin/jvm/functions/Function1<",
            "TA;",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "kodein"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lorg/kodein/di/bindings/SetBindingKodein;

    invoke-direct {v0, p1}, Lorg/kodein/di/bindings/SetBindingKodein;-><init>(Lorg/kodein/di/bindings/BindingKodein;)V

    .line 40
    new-instance p1, Lorg/kodein/di/Kodein$Key;

    invoke-virtual {p2}, Lorg/kodein/di/Kodein$Key;->getContextType()Lorg/kodein/di/TypeToken;

    move-result-object v1

    invoke-virtual {p2}, Lorg/kodein/di/Kodein$Key;->getArgType()Lorg/kodein/di/TypeToken;

    move-result-object v2

    iget-object v3, p0, Lorg/kodein/di/bindings/ArgSetBinding;->_elementType:Lorg/kodein/di/TypeToken;

    invoke-virtual {p2}, Lorg/kodein/di/Kodein$Key;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, v1, v2, v3, p2}, Lorg/kodein/di/Kodein$Key;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Lorg/kodein/di/bindings/ArgSetBinding;->getSet$kodein_di_core()Ljava/util/LinkedHashSet;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 118
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 119
    check-cast v2, Lorg/kodein/di/bindings/KodeinBinding;

    .line 41
    move-object v3, v0

    check-cast v3, Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v2, v3, p1}, Lorg/kodein/di/bindings/KodeinBinding;->getFactory(Lorg/kodein/di/bindings/BindingKodein;Lorg/kodein/di/Kodein$Key;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 42
    new-instance p1, Lorg/kodein/di/bindings/ArgSetBinding$getFactory$1;

    invoke-direct {p1, v1}, Lorg/kodein/di/bindings/ArgSetBinding$getFactory$1;-><init>(Ljava/util/List;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    return-object p1
.end method

.method public getSet$kodein_di_core()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Lorg/kodein/di/bindings/KodeinBinding<",
            "TC;TA;TT;>;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/kodein/di/bindings/ArgSetBinding;->set:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public bridge synthetic getSet$kodein_di_core()Ljava/util/Set;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/kodein/di/bindings/ArgSetBinding;->getSet$kodein_di_core()Ljava/util/LinkedHashSet;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
