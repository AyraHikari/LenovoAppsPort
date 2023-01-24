.class public final Lorg/kodein/di/Kodein$MainBuilder$DefaultImpls;
.super Ljava/lang/Object;
.source "Kodein.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/Kodein$MainBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKodein.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Kodein.kt\norg/kodein/di/Kodein$MainBuilder$DefaultImpls\n*L\n1#1,477:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static synthetic extend$default(Lorg/kodein/di/Kodein$MainBuilder;Lorg/kodein/di/DKodein;ZLorg/kodein/di/Copy;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 403
    sget-object p3, Lorg/kodein/di/Copy$NonCached;->INSTANCE:Lorg/kodein/di/Copy$NonCached;

    check-cast p3, Lorg/kodein/di/Copy;

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lorg/kodein/di/Kodein$MainBuilder;->extend(Lorg/kodein/di/DKodein;ZLorg/kodein/di/Copy;)V

    return-void

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: extend"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic extend$default(Lorg/kodein/di/Kodein$MainBuilder;Lorg/kodein/di/Kodein;ZLorg/kodein/di/Copy;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 384
    sget-object p3, Lorg/kodein/di/Copy$NonCached;->INSTANCE:Lorg/kodein/di/Copy$NonCached;

    check-cast p3, Lorg/kodein/di/Copy;

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lorg/kodein/di/Kodein$MainBuilder;->extend(Lorg/kodein/di/Kodein;ZLorg/kodein/di/Copy;)V

    return-void

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: extend"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic externalSource$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use externalSources instead"
    .end annotation

    return-void
.end method

.method public static getExternalSource(Lorg/kodein/di/Kodein$MainBuilder;)Lorg/kodein/di/bindings/ExternalSource;
    .locals 0

    .line 350
    invoke-interface {p0}, Lorg/kodein/di/Kodein$MainBuilder;->getExternalSources()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/kodein/di/bindings/ExternalSource;

    return-object p0
.end method

.method public static setExternalSource(Lorg/kodein/di/Kodein$MainBuilder;Lorg/kodein/di/bindings/ExternalSource;)V
    .locals 1

    .line 352
    invoke-interface {p0}, Lorg/kodein/di/Kodein$MainBuilder;->getExternalSources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 354
    invoke-interface {p0}, Lorg/kodein/di/Kodein$MainBuilder;->getExternalSources()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
