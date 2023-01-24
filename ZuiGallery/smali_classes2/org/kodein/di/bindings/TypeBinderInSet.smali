.class public final Lorg/kodein/di/bindings/TypeBinderInSet;
.super Ljava/lang/Object;
.source "set.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0000*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u00020\u0002B#\u0008\u0000\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J+\u0010\t\u001a\u00020\n\"\u0004\u0008\u0002\u0010\u000b2\u001a\u0010\u000c\u001a\u0016\u0012\u0006\u0008\u0000\u0012\u0002H\u000b\u0012\u0002\u0008\u0003\u0012\u0006\u0008\u0001\u0012\u00028\u00000\rH\u0086\u0004R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0088\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/kodein/di/bindings/TypeBinderInSet;",
        "T",
        "",
        "S",
        "_binder",
        "Lorg/kodein/di/Kodein$Builder$TypeBinder;",
        "_colTypeToken",
        "Lorg/kodein/di/TypeToken;",
        "(Lorg/kodein/di/Kodein$Builder$TypeBinder;Lorg/kodein/di/TypeToken;)V",
        "with",
        "",
        "C",
        "binding",
        "Lorg/kodein/di/bindings/KodeinBinding;",
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
.field private final _binder:Lorg/kodein/di/Kodein$Builder$TypeBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/Kodein$Builder$TypeBinder<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final _colTypeToken:Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/TypeToken<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/kodein/di/Kodein$Builder$TypeBinder;Lorg/kodein/di/TypeToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/Kodein$Builder$TypeBinder<",
            "TT;>;",
            "Lorg/kodein/di/TypeToken<",
            "TS;>;)V"
        }
    .end annotation

    const-string v0, "_binder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_colTypeToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/bindings/TypeBinderInSet;->_binder:Lorg/kodein/di/Kodein$Builder$TypeBinder;

    iput-object p2, p0, Lorg/kodein/di/bindings/TypeBinderInSet;->_colTypeToken:Lorg/kodein/di/TypeToken;

    return-void
.end method


# virtual methods
.method public final with(Lorg/kodein/di/bindings/KodeinBinding;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/bindings/KodeinBinding<",
            "-TC;*+TT;>;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lorg/kodein/di/bindings/TypeBinderInSet;->_binder:Lorg/kodein/di/Kodein$Builder$TypeBinder;

    if-eqz v0, :cond_4

    check-cast v0, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;

    .line 97
    new-instance v0, Lorg/kodein/di/Kodein$Key;

    invoke-interface {p1}, Lorg/kodein/di/bindings/KodeinBinding;->getContextType()Lorg/kodein/di/TypeToken;

    move-result-object v1

    invoke-interface {p1}, Lorg/kodein/di/bindings/KodeinBinding;->getArgType()Lorg/kodein/di/TypeToken;

    move-result-object v2

    iget-object v3, p0, Lorg/kodein/di/bindings/TypeBinderInSet;->_colTypeToken:Lorg/kodein/di/TypeToken;

    iget-object v4, p0, Lorg/kodein/di/bindings/TypeBinderInSet;->_binder:Lorg/kodein/di/Kodein$Builder$TypeBinder;

    check-cast v4, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;

    invoke-virtual {v4}, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/kodein/di/Kodein$Key;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lorg/kodein/di/bindings/TypeBinderInSet;->_binder:Lorg/kodein/di/Kodein$Builder$TypeBinder;

    check-cast v1, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;

    invoke-virtual {v1}, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;->getContainerBuilder$kodein_di_core()Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->getBindingsMap$kodein_di_core()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/kodein/di/KodeinDefining;

    if-eqz v1, :cond_3

    .line 100
    invoke-virtual {v1}, Lorg/kodein/di/KodeinDefining;->getBinding()Lorg/kodein/di/bindings/KodeinBinding;

    move-result-object v2

    instance-of v3, v2, Lorg/kodein/di/bindings/BaseMultiBinding;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    check-cast v2, Lorg/kodein/di/bindings/BaseMultiBinding;

    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {v1}, Lorg/kodein/di/KodeinDefining;->getBinding()Lorg/kodein/di/bindings/KodeinBinding;

    move-result-object v0

    check-cast v0, Lorg/kodein/di/bindings/BaseMultiBinding;

    invoke-virtual {v0}, Lorg/kodein/di/bindings/BaseMultiBinding;->getSet$kodein_di_core()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableSet<org.kodein.di.bindings.KodeinBinding<*, *, *>>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is associated to a "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/kodein/di/KodeinDefining;->getBinding()Lorg/kodein/di/bindings/KodeinBinding;

    move-result-object v0

    invoke-interface {v0}, Lorg/kodein/di/bindings/KodeinBinding;->factoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " while it should be associated with bindingSet"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 98
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No set binding to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 96
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type org.kodein.di.internal.KodeinBuilderImpl.TypeBinder<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
