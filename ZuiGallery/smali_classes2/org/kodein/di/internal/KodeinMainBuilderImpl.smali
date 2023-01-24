.class public Lorg/kodein/di/internal/KodeinMainBuilderImpl;
.super Lorg/kodein/di/internal/KodeinBuilderImpl;
.source "KodeinBuilderImpl.kt"

# interfaces
.implements Lorg/kodein/di/Kodein$MainBuilder;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKodeinBuilderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KodeinBuilderImpl.kt\norg/kodein/di/internal/KodeinMainBuilderImpl\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,103:1\n44#2,9:104\n53#2,3:117\n44#2,9:120\n53#2,3:133\n1313#3:113\n1382#3,3:114\n1313#3:129\n1382#3,3:130\n*E\n*S KotlinDebug\n*F\n+ 1 KodeinBuilderImpl.kt\norg/kodein/di/internal/KodeinMainBuilderImpl\n*L\n86#1,9:104\n86#1,3:117\n98#1,9:120\n98#1,3:133\n86#1:113\n86#1,3:114\n98#1:129\n98#1,3:130\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0010\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u0005\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/kodein/di/internal/KodeinMainBuilderImpl;",
        "Lorg/kodein/di/internal/KodeinBuilderImpl;",
        "Lorg/kodein/di/Kodein$MainBuilder;",
        "allowSilentOverride",
        "",
        "(Z)V",
        "externalSources",
        "",
        "Lorg/kodein/di/bindings/ExternalSource;",
        "getExternalSources",
        "()Ljava/util/List;",
        "fullDescriptionOnError",
        "getFullDescriptionOnError",
        "()Z",
        "setFullDescriptionOnError",
        "extend",
        "",
        "dkodein",
        "Lorg/kodein/di/DKodein;",
        "allowOverride",
        "copy",
        "Lorg/kodein/di/Copy;",
        "kodein",
        "Lorg/kodein/di/Kodein;",
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
.field private final externalSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/kodein/di/bindings/ExternalSource;",
            ">;"
        }
    .end annotation
.end field

.field private fullDescriptionOnError:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 8

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    new-instance v7, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    check-cast v6, Ljava/util/List;

    const/4 v2, 0x1

    move-object v1, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;-><init>(ZZLjava/util/Map;Ljava/util/List;Ljava/util/List;)V

    const/4 p1, 0x0

    const-string v1, ""

    invoke-direct {p0, p1, v1, v0, v7}, Lorg/kodein/di/internal/KodeinBuilderImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lorg/kodein/di/internal/KodeinContainerBuilderImpl;)V

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lorg/kodein/di/internal/KodeinMainBuilderImpl;->externalSources:Ljava/util/List;

    .line 77
    sget-object p1, Lorg/kodein/di/Kodein;->Companion:Lorg/kodein/di/Kodein$Companion;

    invoke-virtual {p1}, Lorg/kodein/di/Kodein$Companion;->getDefaultFullDescriptionOnError()Z

    move-result p1

    iput-boolean p1, p0, Lorg/kodein/di/internal/KodeinMainBuilderImpl;->fullDescriptionOnError:Z

    return-void
.end method


# virtual methods
.method public extend(Lorg/kodein/di/DKodein;ZLorg/kodein/di/Copy;)V
    .locals 3

    const-string v0, "dkodein"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "copy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-interface {p1}, Lorg/kodein/di/DKodein;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v0

    invoke-interface {v0}, Lorg/kodein/di/KodeinContainer;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/kodein/di/Copy;->keySet(Lorg/kodein/di/KodeinTree;)Ljava/util/Set;

    move-result-object p3

    .line 94
    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinMainBuilderImpl;->getContainerBuilder()Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    move-result-object v0

    invoke-interface {p1}, Lorg/kodein/di/DKodein;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->extend(Lorg/kodein/di/KodeinContainer;ZLjava/util/Set;)V

    .line 95
    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinMainBuilderImpl;->getExternalSources()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1}, Lorg/kodein/di/DKodein;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object p1

    invoke-interface {p1}, Lorg/kodein/di/KodeinContainer;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object p1

    invoke-interface {p1}, Lorg/kodein/di/KodeinTree;->getExternalSources()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 96
    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinMainBuilderImpl;->getImportedModules$kodein_di_core()Ljava/util/Set;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinMainBuilderImpl;->getContainerBuilder()Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    move-result-object p2

    invoke-virtual {p2}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->getBindingsMap$kodein_di_core()Ljava/util/Map;

    move-result-object p2

    .line 120
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 127
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 130
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 131
    check-cast v2, Lorg/kodein/di/KodeinDefining;

    .line 98
    invoke-virtual {v2}, Lorg/kodein/di/KodeinDefining;->getFromModule()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 98
    check-cast v1, Ljava/lang/Iterable;

    .line 133
    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 135
    :cond_1
    check-cast p3, Ljava/util/List;

    check-cast p3, Ljava/lang/Iterable;

    .line 99
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 96
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public extend(Lorg/kodein/di/Kodein;ZLorg/kodein/di/Copy;)V
    .locals 3

    const-string v0, "kodein"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "copy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {p1}, Lorg/kodein/di/Kodein;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v0

    invoke-interface {v0}, Lorg/kodein/di/KodeinContainer;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/kodein/di/Copy;->keySet(Lorg/kodein/di/KodeinTree;)Ljava/util/Set;

    move-result-object p3

    .line 82
    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinMainBuilderImpl;->getContainerBuilder()Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    move-result-object v0

    invoke-interface {p1}, Lorg/kodein/di/Kodein;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->extend(Lorg/kodein/di/KodeinContainer;ZLjava/util/Set;)V

    .line 83
    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinMainBuilderImpl;->getExternalSources()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1}, Lorg/kodein/di/Kodein;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object p1

    invoke-interface {p1}, Lorg/kodein/di/KodeinContainer;->getTree()Lorg/kodein/di/KodeinTree;

    move-result-object p1

    invoke-interface {p1}, Lorg/kodein/di/KodeinTree;->getExternalSources()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 84
    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinMainBuilderImpl;->getImportedModules$kodein_di_core()Ljava/util/Set;

    move-result-object p1

    .line 85
    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinMainBuilderImpl;->getContainerBuilder()Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    move-result-object p2

    invoke-virtual {p2}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->getBindingsMap$kodein_di_core()Ljava/util/Map;

    move-result-object p2

    .line 104
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 111
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 114
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 115
    check-cast v2, Lorg/kodein/di/KodeinDefining;

    .line 86
    invoke-virtual {v2}, Lorg/kodein/di/KodeinDefining;->getFromModule()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 116
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 86
    check-cast v1, Ljava/lang/Iterable;

    .line 117
    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 119
    :cond_1
    check-cast p3, Ljava/util/List;

    check-cast p3, Ljava/lang/Iterable;

    .line 87
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 84
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getExternalSource()Lorg/kodein/di/bindings/ExternalSource;
    .locals 1

    .line 73
    invoke-static {p0}, Lorg/kodein/di/Kodein$MainBuilder$DefaultImpls;->getExternalSource(Lorg/kodein/di/Kodein$MainBuilder;)Lorg/kodein/di/bindings/ExternalSource;

    move-result-object v0

    return-object v0
.end method

.method public getExternalSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/kodein/di/bindings/ExternalSource;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinMainBuilderImpl;->externalSources:Ljava/util/List;

    return-object v0
.end method

.method public getFullDescriptionOnError()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/kodein/di/internal/KodeinMainBuilderImpl;->fullDescriptionOnError:Z

    return v0
.end method

.method public setExternalSource(Lorg/kodein/di/bindings/ExternalSource;)V
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lorg/kodein/di/Kodein$MainBuilder$DefaultImpls;->setExternalSource(Lorg/kodein/di/Kodein$MainBuilder;Lorg/kodein/di/bindings/ExternalSource;)V

    return-void
.end method

.method public setFullDescriptionOnError(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lorg/kodein/di/internal/KodeinMainBuilderImpl;->fullDescriptionOnError:Z

    return-void
.end method
