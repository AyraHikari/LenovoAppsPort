.class final Lorg/kodein/di/bindings/ArgSetBinding$copier$1;
.super Lkotlin/jvm/internal/Lambda;
.source "set.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/bindings/ArgSetBinding;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/kodein/di/KodeinContainer$Builder;",
        "Lorg/kodein/di/bindings/ArgSetBinding<",
        "TC;TA;TT;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nset.kt\nKotlin\n*S Kotlin\n*F\n+ 1 set.kt\norg/kodein/di/bindings/ArgSetBinding$copier$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,116:1\n1313#2:117\n1382#2,3:118\n*E\n*S KotlinDebug\n*F\n+ 1 set.kt\norg/kodein/di/bindings/ArgSetBinding$copier$1\n*L\n48#1:117\n48#1,3:118\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0014\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0008\u0008\u0002\u0010\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "Lorg/kodein/di/bindings/ArgSetBinding;",
        "C",
        "A",
        "T",
        "",
        "builder",
        "Lorg/kodein/di/KodeinContainer$Builder;",
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
.field final synthetic this$0:Lorg/kodein/di/bindings/ArgSetBinding;


# direct methods
.method constructor <init>(Lorg/kodein/di/bindings/ArgSetBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/bindings/ArgSetBinding$copier$1;->this$0:Lorg/kodein/di/bindings/ArgSetBinding;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lorg/kodein/di/KodeinContainer$Builder;

    invoke-virtual {p0, p1}, Lorg/kodein/di/bindings/ArgSetBinding$copier$1;->invoke(Lorg/kodein/di/KodeinContainer$Builder;)Lorg/kodein/di/bindings/ArgSetBinding;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/kodein/di/KodeinContainer$Builder;)Lorg/kodein/di/bindings/ArgSetBinding;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinContainer$Builder;",
            ")",
            "Lorg/kodein/di/bindings/ArgSetBinding<",
            "TC;TA;TT;>;"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lorg/kodein/di/bindings/ArgSetBinding;

    iget-object v1, p0, Lorg/kodein/di/bindings/ArgSetBinding$copier$1;->this$0:Lorg/kodein/di/bindings/ArgSetBinding;

    invoke-virtual {v1}, Lorg/kodein/di/bindings/ArgSetBinding;->getContextType()Lorg/kodein/di/TypeToken;

    move-result-object v1

    iget-object v2, p0, Lorg/kodein/di/bindings/ArgSetBinding$copier$1;->this$0:Lorg/kodein/di/bindings/ArgSetBinding;

    invoke-virtual {v2}, Lorg/kodein/di/bindings/ArgSetBinding;->getArgType()Lorg/kodein/di/TypeToken;

    move-result-object v2

    iget-object v3, p0, Lorg/kodein/di/bindings/ArgSetBinding$copier$1;->this$0:Lorg/kodein/di/bindings/ArgSetBinding;

    invoke-static {v3}, Lorg/kodein/di/bindings/ArgSetBinding;->access$get_elementType$p(Lorg/kodein/di/bindings/ArgSetBinding;)Lorg/kodein/di/TypeToken;

    move-result-object v3

    iget-object v4, p0, Lorg/kodein/di/bindings/ArgSetBinding$copier$1;->this$0:Lorg/kodein/di/bindings/ArgSetBinding;

    invoke-virtual {v4}, Lorg/kodein/di/bindings/ArgSetBinding;->getCreatedType()Lorg/kodein/di/TypeToken;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/kodein/di/bindings/ArgSetBinding;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;)V

    .line 49
    invoke-virtual {v0}, Lorg/kodein/di/bindings/ArgSetBinding;->getSet$kodein_di_core()Ljava/util/LinkedHashSet;

    move-result-object v1

    iget-object v2, p0, Lorg/kodein/di/bindings/ArgSetBinding$copier$1;->this$0:Lorg/kodein/di/bindings/ArgSetBinding;

    invoke-virtual {v2}, Lorg/kodein/di/bindings/ArgSetBinding;->getSet$kodein_di_core()Ljava/util/LinkedHashSet;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 118
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 119
    check-cast v4, Lorg/kodein/di/bindings/KodeinBinding;

    .line 49
    invoke-interface {v4}, Lorg/kodein/di/bindings/KodeinBinding;->getCopier()Lorg/kodein/di/bindings/KodeinBinding$Copier;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5, p1}, Lorg/kodein/di/bindings/KodeinBinding$Copier;->copy(Lorg/kodein/di/KodeinContainer$Builder;)Lorg/kodein/di/bindings/KodeinBinding;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v4, v5

    :cond_0
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_1
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    .line 49
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
