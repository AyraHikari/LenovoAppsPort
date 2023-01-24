.class public abstract Lorg/kodein/di/internal/DKodeinBaseImpl;
.super Ljava/lang/Object;
.source "DKodeinImpl.kt"

# interfaces
.implements Lorg/kodein/di/DKodein;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDKodeinImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DKodeinImpl.kt\norg/kodein/di/internal/DKodeinBaseImpl\n+ 2 curry.kt\norg/kodein/di/CurryKt\n*L\n1#1,40:1\n12#2:41\n12#2:42\n*E\n*S KotlinDebug\n*F\n+ 1 DKodeinImpl.kt\norg/kodein/di/internal/DKodeinBaseImpl\n*L\n24#1:41\n28#1:42\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008 \u0018\u00002\u00020\u0001B\u001b\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u00a2\u0006\u0002\u0010\u0006JL\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00150\u0013\"\u0004\u0008\u0000\u0010\u0014\"\u0008\u0008\u0001\u0010\u0015*\u00020\u00162\u000e\u0010\u0017\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00140\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0016H\u0016JN\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0015\u0018\u00010\u0013\"\u0004\u0008\u0000\u0010\u0014\"\u0008\u0008\u0001\u0010\u0015*\u00020\u00162\u000e\u0010\u0017\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00140\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0016H\u0016J/\u0010\u001c\u001a\u0002H\u0015\"\u0008\u0008\u0000\u0010\u0015*\u00020\u00162\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0016H\u0016\u00a2\u0006\u0002\u0010\u001dJM\u0010\u001c\u001a\u0002H\u0015\"\u0004\u0008\u0000\u0010\u0014\"\u0008\u0008\u0001\u0010\u0015*\u00020\u00162\u000e\u0010\u0017\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00140\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u001e\u001a\u0002H\u0014H\u0016\u00a2\u0006\u0002\u0010\u001fJ1\u0010 \u001a\u0004\u0018\u0001H\u0015\"\u0008\u0008\u0000\u0010\u0015*\u00020\u00162\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0016H\u0016\u00a2\u0006\u0002\u0010\u001dJO\u0010 \u001a\u0004\u0018\u0001H\u0015\"\u0004\u0008\u0000\u0010\u0014\"\u0008\u0008\u0001\u0010\u0015*\u00020\u00162\u000e\u0010\u0017\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00140\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u001e\u001a\u0002H\u0014H\u0016\u00a2\u0006\u0002\u0010\u001fJ\u0014\u0010!\u001a\u00020\u00012\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0016J0\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00150#\"\u0008\u0008\u0000\u0010\u0015*\u00020\u00162\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0016H\u0016JT\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00150#\"\u0004\u0008\u0000\u0010\u0014\"\u0008\u0008\u0001\u0010\u0015*\u00020\u00162\u000e\u0010\u0017\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00140\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00162\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u00140#H\u0016J2\u0010$\u001a\n\u0012\u0004\u0012\u0002H\u0015\u0018\u00010#\"\u0008\u0008\u0000\u0010\u0015*\u00020\u00162\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0016H\u0016JV\u0010$\u001a\n\u0012\u0004\u0012\u0002H\u0015\u0018\u00010#\"\u0004\u0008\u0000\u0010\u0014\"\u0008\u0008\u0001\u0010\u0015*\u00020\u00162\u000e\u0010\u0017\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00140\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00162\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u00140#H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0015\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006%"
    }
    d2 = {
        "Lorg/kodein/di/internal/DKodeinBaseImpl;",
        "Lorg/kodein/di/DKodein;",
        "container",
        "Lorg/kodein/di/KodeinContainer;",
        "context",
        "Lorg/kodein/di/KodeinContext;",
        "(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/KodeinContext;)V",
        "getContainer",
        "()Lorg/kodein/di/KodeinContainer;",
        "getContext",
        "()Lorg/kodein/di/KodeinContext;",
        "dkodein",
        "getDkodein",
        "()Lorg/kodein/di/DKodein;",
        "lazy",
        "Lorg/kodein/di/Kodein;",
        "getLazy",
        "()Lorg/kodein/di/Kodein;",
        "Factory",
        "Lkotlin/Function1;",
        "A",
        "T",
        "",
        "argType",
        "Lorg/kodein/di/TypeToken;",
        "type",
        "tag",
        "FactoryOrNull",
        "Instance",
        "(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;",
        "arg",
        "(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "InstanceOrNull",
        "On",
        "Provider",
        "Lkotlin/Function0;",
        "ProviderOrNull",
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
.field private final container:Lorg/kodein/di/KodeinContainer;

.field private final context:Lorg/kodein/di/KodeinContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/KodeinContext<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/KodeinContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinContainer;",
            "Lorg/kodein/di/KodeinContext<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->container:Lorg/kodein/di/KodeinContainer;

    iput-object p2, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    return-void
.end method


# virtual methods
.method public Factory(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "-TA;>;",
            "Lorg/kodein/di/TypeToken<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "TA;TT;>;"
        }
    .end annotation

    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lorg/kodein/di/internal/DKodeinBaseImpl;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v1

    new-instance v2, Lorg/kodein/di/Kodein$Key;

    iget-object v0, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-static {v0}, Lorg/kodein/di/internal/DKodeinImplKt;->access$getAnyType$p(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    invoke-direct {v2, v0, p1, p2, p3}, Lorg/kodein/di/Kodein$Key;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-interface {p1}, Lorg/kodein/di/KodeinContext;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/kodein/di/KodeinContainer$DefaultImpls;->factory$default(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;IILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    return-object p1
.end method

.method public FactoryOrNull(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "-TA;>;",
            "Lorg/kodein/di/TypeToken<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "TA;TT;>;"
        }
    .end annotation

    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lorg/kodein/di/internal/DKodeinBaseImpl;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v1

    new-instance v2, Lorg/kodein/di/Kodein$Key;

    iget-object v0, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-static {v0}, Lorg/kodein/di/internal/DKodeinImplKt;->access$getAnyType$p(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    invoke-direct {v2, v0, p1, p2, p3}, Lorg/kodein/di/Kodein$Key;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-interface {p1}, Lorg/kodein/di/KodeinContext;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/kodein/di/KodeinContainer$DefaultImpls;->factoryOrNull$default(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;IILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    return-object p1
.end method

.method public Instance(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lorg/kodein/di/internal/DKodeinBaseImpl;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v1

    new-instance v2, Lorg/kodein/di/Kodein$Key;

    iget-object v0, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-static {v0}, Lorg/kodein/di/internal/DKodeinImplKt;->access$getAnyType$p(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    invoke-static {}, Lorg/kodein/di/TypeTokenKt;->getUnitToken()Lorg/kodein/di/TypeToken;

    move-result-object v3

    invoke-direct {v2, v0, v3, p1, p2}, Lorg/kodein/di/Kodein$Key;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-interface {p1}, Lorg/kodein/di/KodeinContext;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/kodein/di/KodeinContainer$DefaultImpls;->provider$default(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;IILjava/lang/Object;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public Instance(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "-TA;>;",
            "Lorg/kodein/di/TypeToken<",
            "TT;>;",
            "Ljava/lang/Object;",
            "TA;)TT;"
        }
    .end annotation

    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lorg/kodein/di/internal/DKodeinBaseImpl;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v1

    new-instance v2, Lorg/kodein/di/Kodein$Key;

    iget-object v0, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-static {v0}, Lorg/kodein/di/internal/DKodeinImplKt;->access$getAnyType$p(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    invoke-direct {v2, v0, p1, p2, p3}, Lorg/kodein/di/Kodein$Key;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-interface {p1}, Lorg/kodein/di/KodeinContext;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/kodein/di/KodeinContainer$DefaultImpls;->factory$default(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;IILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public InstanceOrNull(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lorg/kodein/di/internal/DKodeinBaseImpl;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v1

    new-instance v2, Lorg/kodein/di/Kodein$Key;

    iget-object v0, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-static {v0}, Lorg/kodein/di/internal/DKodeinImplKt;->access$getAnyType$p(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    invoke-static {}, Lorg/kodein/di/TypeTokenKt;->getUnitToken()Lorg/kodein/di/TypeToken;

    move-result-object v3

    invoke-direct {v2, v0, v3, p1, p2}, Lorg/kodein/di/Kodein$Key;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-interface {p1}, Lorg/kodein/di/KodeinContext;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/kodein/di/KodeinContainer$DefaultImpls;->providerOrNull$default(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;IILjava/lang/Object;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public InstanceOrNull(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "-TA;>;",
            "Lorg/kodein/di/TypeToken<",
            "TT;>;",
            "Ljava/lang/Object;",
            "TA;)TT;"
        }
    .end annotation

    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lorg/kodein/di/internal/DKodeinBaseImpl;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v1

    new-instance v2, Lorg/kodein/di/Kodein$Key;

    iget-object v0, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-static {v0}, Lorg/kodein/di/internal/DKodeinImplKt;->access$getAnyType$p(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    invoke-direct {v2, v0, p1, p2, p3}, Lorg/kodein/di/Kodein$Key;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-interface {p1}, Lorg/kodein/di/KodeinContext;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/kodein/di/KodeinContainer$DefaultImpls;->factoryOrNull$default(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;IILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public On(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/DKodein;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinContext<",
            "*>;)",
            "Lorg/kodein/di/DKodein;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lorg/kodein/di/internal/DKodeinImpl;

    invoke-virtual {p0}, Lorg/kodein/di/internal/DKodeinBaseImpl;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/kodein/di/internal/DKodeinImpl;-><init>(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/KodeinContext;)V

    check-cast v0, Lorg/kodein/di/DKodein;

    return-object v0
.end method

.method public Provider(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lorg/kodein/di/internal/DKodeinBaseImpl;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v1

    new-instance v2, Lorg/kodein/di/Kodein$Key;

    iget-object v0, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-static {v0}, Lorg/kodein/di/internal/DKodeinImplKt;->access$getAnyType$p(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    invoke-static {}, Lorg/kodein/di/TypeTokenKt;->getUnitToken()Lorg/kodein/di/TypeToken;

    move-result-object v3

    invoke-direct {v2, v0, v3, p1, p2}, Lorg/kodein/di/Kodein$Key;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-interface {p1}, Lorg/kodein/di/KodeinContext;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/kodein/di/KodeinContainer$DefaultImpls;->provider$default(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;IILjava/lang/Object;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    return-object p1
.end method

.method public Provider(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "-TA;>;",
            "Lorg/kodein/di/TypeToken<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TA;>;)",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lorg/kodein/di/internal/DKodeinBaseImpl;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v1

    new-instance v2, Lorg/kodein/di/Kodein$Key;

    iget-object v0, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-static {v0}, Lorg/kodein/di/internal/DKodeinImplKt;->access$getAnyType$p(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    invoke-direct {v2, v0, p1, p2, p3}, Lorg/kodein/di/Kodein$Key;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-interface {p1}, Lorg/kodein/di/KodeinContext;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/kodein/di/KodeinContainer$DefaultImpls;->factory$default(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;IILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    .line 41
    new-instance p2, Lorg/kodein/di/CurryKt$toProvider$1;

    invoke-direct {p2, p1, p4}, Lorg/kodein/di/CurryKt$toProvider$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    return-object p2
.end method

.method public ProviderOrNull(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lorg/kodein/di/internal/DKodeinBaseImpl;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v1

    new-instance v2, Lorg/kodein/di/Kodein$Key;

    iget-object v0, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-static {v0}, Lorg/kodein/di/internal/DKodeinImplKt;->access$getAnyType$p(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    invoke-static {}, Lorg/kodein/di/TypeTokenKt;->getUnitToken()Lorg/kodein/di/TypeToken;

    move-result-object v3

    invoke-direct {v2, v0, v3, p1, p2}, Lorg/kodein/di/Kodein$Key;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-interface {p1}, Lorg/kodein/di/KodeinContext;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/kodein/di/KodeinContainer$DefaultImpls;->providerOrNull$default(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;IILjava/lang/Object;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    return-object p1
.end method

.method public ProviderOrNull(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "-TA;>;",
            "Lorg/kodein/di/TypeToken<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TA;>;)",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lorg/kodein/di/internal/DKodeinBaseImpl;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v1

    new-instance v2, Lorg/kodein/di/Kodein$Key;

    iget-object v0, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-static {v0}, Lorg/kodein/di/internal/DKodeinImplKt;->access$getAnyType$p(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    invoke-direct {v2, v0, p1, p2, p3}, Lorg/kodein/di/Kodein$Key;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    invoke-interface {p1}, Lorg/kodein/di/KodeinContext;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/kodein/di/KodeinContainer$DefaultImpls;->factoryOrNull$default(Lorg/kodein/di/KodeinContainer;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;IILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    new-instance p2, Lorg/kodein/di/CurryKt$toProvider$1;

    invoke-direct {p2, p1, p4}, Lorg/kodein/di/CurryKt$toProvider$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public getContainer()Lorg/kodein/di/KodeinContainer;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->container:Lorg/kodein/di/KodeinContainer;

    return-object v0
.end method

.method public final getContext()Lorg/kodein/di/KodeinContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/KodeinContext<",
            "*>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    return-object v0
.end method

.method public getDkodein()Lorg/kodein/di/DKodein;
    .locals 1

    .line 12
    move-object v0, p0

    check-cast v0, Lorg/kodein/di/DKodein;

    return-object v0
.end method

.method public getKodein()Lorg/kodein/di/Kodein;
    .locals 1

    .line 10
    invoke-static {p0}, Lorg/kodein/di/DKodein$DefaultImpls;->getKodein(Lorg/kodein/di/DKodein;)Lorg/kodein/di/Kodein;

    move-result-object v0

    return-object v0
.end method

.method public getLazy()Lorg/kodein/di/Kodein;
    .locals 4

    .line 14
    new-instance v0, Lorg/kodein/di/internal/KodeinImpl;

    invoke-virtual {p0}, Lorg/kodein/di/internal/DKodeinBaseImpl;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lorg/kodein/di/internal/KodeinContainerImpl;

    invoke-direct {v0, v1}, Lorg/kodein/di/internal/KodeinImpl;-><init>(Lorg/kodein/di/internal/KodeinContainerImpl;)V

    check-cast v0, Lorg/kodein/di/KodeinAware;

    iget-object v1, p0, Lorg/kodein/di/internal/DKodeinBaseImpl;->context:Lorg/kodein/di/KodeinContext;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lorg/kodein/di/KodeinAwareKt;->On$default(Lorg/kodein/di/KodeinAware;Lorg/kodein/di/KodeinContext;Lorg/kodein/di/KodeinTrigger;ILjava/lang/Object;)Lorg/kodein/di/Kodein;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type org.kodein.di.internal.KodeinContainerImpl"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
