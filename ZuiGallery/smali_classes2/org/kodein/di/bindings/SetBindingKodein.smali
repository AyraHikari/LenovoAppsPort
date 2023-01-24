.class final Lorg/kodein/di/bindings/SetBindingKodein;
.super Ljava/lang/Object;
.source "set.kt"

# interfaces
.implements Lorg/kodein/di/bindings/BindingKodein;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/kodein/di/bindings/BindingKodein<",
        "TC;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u00a2\u0006\u0002\u0010\u0004JS\u0010\u0016\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0019\u0012\u0004\u0012\u0002H\u001a0\u00180\u0017\"\u0004\u0008\u0001\u0010\u0019\"\u0008\u0008\u0002\u0010\u001a*\u00020\u001b2\u000e\u0010\u001c\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00190\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001bH\u0096\u0001J1\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u0017\"\u0008\u0008\u0001\u0010\u001a*\u00020\u001b2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001bH\u0096\u0001JT\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u0017\"\u0004\u0008\u0001\u0010\u0019\"\u0008\u0008\u0002\u0010\u001a*\u00020\u001b2\u000e\u0010\u001c\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00190\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\u0006\u0010!\u001a\u0002H\u0019H\u0096\u0001\u00a2\u0006\u0002\u0010\"J7\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u001a0$0\u0017\"\u0008\u0008\u0001\u0010\u001a*\u00020\u001b2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001bH\u0096\u0001J[\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u001a0$0\u0017\"\u0004\u0008\u0001\u0010\u0019\"\u0008\u0008\u0002\u0010\u001a*\u00020\u001b2\u000e\u0010\u001c\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00190\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H\u00190$H\u0096\u0001JM\u0010%\u001a\u000e\u0012\u0004\u0012\u0002H\u0019\u0012\u0004\u0012\u0002H\u001a0\u0018\"\u0004\u0008\u0001\u0010\u0019\"\u0008\u0008\u0002\u0010\u001a*\u00020\u001b2\u000e\u0010\u001c\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00190\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001bH\u0096\u0001JO\u0010&\u001a\u0010\u0012\u0004\u0012\u0002H\u0019\u0012\u0004\u0012\u0002H\u001a\u0018\u00010\u0018\"\u0004\u0008\u0001\u0010\u0019\"\u0008\u0008\u0002\u0010\u001a*\u00020\u001b2\u000e\u0010\u001c\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00190\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001bH\u0096\u0001J0\u0010\'\u001a\u0002H\u001a\"\u0008\u0008\u0001\u0010\u001a*\u00020\u001b2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001bH\u0096\u0001\u00a2\u0006\u0002\u0010(JN\u0010\'\u001a\u0002H\u001a\"\u0004\u0008\u0001\u0010\u0019\"\u0008\u0008\u0002\u0010\u001a*\u00020\u001b2\u000e\u0010\u001c\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00190\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\u0006\u0010!\u001a\u0002H\u0019H\u0096\u0001\u00a2\u0006\u0002\u0010)J2\u0010*\u001a\u0004\u0018\u0001H\u001a\"\u0008\u0008\u0001\u0010\u001a*\u00020\u001b2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001bH\u0096\u0001\u00a2\u0006\u0002\u0010(JP\u0010*\u001a\u0004\u0018\u0001H\u001a\"\u0004\u0008\u0001\u0010\u0019\"\u0008\u0008\u0002\u0010\u001a*\u00020\u001b2\u000e\u0010\u001c\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00190\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\u0006\u0010!\u001a\u0002H\u0019H\u0096\u0001\u00a2\u0006\u0002\u0010)J\u0015\u0010+\u001a\u00020\r2\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030,H\u0096\u0001J1\u0010-\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0$\"\u0008\u0008\u0001\u0010\u001a*\u00020\u001b2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001bH\u0096\u0001JU\u0010-\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0$\"\u0004\u0008\u0001\u0010\u0019\"\u0008\u0008\u0002\u0010\u001a*\u00020\u001b2\u000e\u0010\u001c\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00190\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H\u00190$H\u0096\u0001J3\u0010.\u001a\n\u0012\u0004\u0012\u0002H\u001a\u0018\u00010$\"\u0008\u0008\u0001\u0010\u001a*\u00020\u001b2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001bH\u0096\u0001JW\u0010.\u001a\n\u0012\u0004\u0012\u0002H\u001a\u0018\u00010$\"\u0004\u0008\u0001\u0010\u0019\"\u0008\u0008\u0002\u0010\u001a*\u00020\u001b2\u000e\u0010\u001c\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00190\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001a0\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u0002H\u00190$H\u0096\u0001J\u0008\u0010/\u001a\u000200H\u0016J\u0008\u00101\u001a\u000200H\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u0006X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0012\u0010\t\u001a\u00028\u0000X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\rX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00118VX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0012\u0010\u0014\u001a\u00020\u0011X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0013\u00a8\u00062"
    }
    d2 = {
        "Lorg/kodein/di/bindings/SetBindingKodein;",
        "C",
        "Lorg/kodein/di/bindings/BindingKodein;",
        "_base",
        "(Lorg/kodein/di/bindings/BindingKodein;)V",
        "container",
        "Lorg/kodein/di/KodeinContainer;",
        "getContainer",
        "()Lorg/kodein/di/KodeinContainer;",
        "context",
        "getContext",
        "()Ljava/lang/Object;",
        "dkodein",
        "Lorg/kodein/di/DKodein;",
        "getDkodein",
        "()Lorg/kodein/di/DKodein;",
        "kodein",
        "Lorg/kodein/di/Kodein;",
        "getKodein",
        "()Lorg/kodein/di/Kodein;",
        "lazy",
        "getLazy",
        "AllFactories",
        "",
        "Lkotlin/Function1;",
        "A",
        "T",
        "",
        "argType",
        "Lorg/kodein/di/TypeToken;",
        "type",
        "tag",
        "AllInstances",
        "arg",
        "(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;",
        "AllProviders",
        "Lkotlin/Function0;",
        "Factory",
        "FactoryOrNull",
        "Instance",
        "(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;",
        "(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "InstanceOrNull",
        "On",
        "Lorg/kodein/di/KodeinContext;",
        "Provider",
        "ProviderOrNull",
        "overriddenFactory",
        "",
        "overriddenFactoryOrNull",
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
.field private final _base:Lorg/kodein/di/bindings/BindingKodein;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/bindings/BindingKodein<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/kodein/di/bindings/BindingKodein;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/bindings/BindingKodein<",
            "+TC;>;)V"
        }
    .end annotation

    const-string v0, "_base"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    return-void
.end method


# virtual methods
.method public AllFactories(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
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
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "TA;TT;>;>;"
        }
    .end annotation

    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0, p1, p2, p3}, Lorg/kodein/di/bindings/BindingKodein;->AllFactories(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public AllInstances(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0, p1, p2}, Lorg/kodein/di/bindings/BindingKodein;->AllInstances(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public AllInstances(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
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
            "TA;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/kodein/di/bindings/BindingKodein;->AllInstances(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public AllProviders(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0, p1, p2}, Lorg/kodein/di/bindings/BindingKodein;->AllProviders(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public AllProviders(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/util/List;
    .locals 1
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
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/kodein/di/bindings/BindingKodein;->AllProviders(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public Factory(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 1
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

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0, p1, p2, p3}, Lorg/kodein/di/bindings/BindingKodein;->Factory(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    return-object p1
.end method

.method public FactoryOrNull(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 1
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

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0, p1, p2, p3}, Lorg/kodein/di/bindings/BindingKodein;->FactoryOrNull(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    return-object p1
.end method

.method public Instance(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0, p1, p2}, Lorg/kodein/di/bindings/BindingKodein;->Instance(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public Instance(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/kodein/di/bindings/BindingKodein;->Instance(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public InstanceOrNull(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0, p1, p2}, Lorg/kodein/di/bindings/BindingKodein;->InstanceOrNull(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public InstanceOrNull(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/kodein/di/bindings/BindingKodein;->InstanceOrNull(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public On(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/DKodein;
    .locals 1
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

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0, p1}, Lorg/kodein/di/bindings/BindingKodein;->On(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/DKodein;

    move-result-object p1

    return-object p1
.end method

.method public Provider(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 1
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

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0, p1, p2}, Lorg/kodein/di/bindings/BindingKodein;->Provider(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    return-object p1
.end method

.method public Provider(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;
    .locals 1
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

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/kodein/di/bindings/BindingKodein;->Provider(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    return-object p1
.end method

.method public ProviderOrNull(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 1
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

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0, p1, p2}, Lorg/kodein/di/bindings/BindingKodein;->ProviderOrNull(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    return-object p1
.end method

.method public ProviderOrNull(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;
    .locals 1
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

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/kodein/di/bindings/BindingKodein;->ProviderOrNull(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    return-object p1
.end method

.method public getContainer()Lorg/kodein/di/KodeinContainer;
    .locals 1

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0}, Lorg/kodein/di/bindings/BindingKodein;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0}, Lorg/kodein/di/bindings/BindingKodein;->getContext()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDkodein()Lorg/kodein/di/DKodein;
    .locals 1

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0}, Lorg/kodein/di/bindings/BindingKodein;->getDkodein()Lorg/kodein/di/DKodein;

    move-result-object v0

    return-object v0
.end method

.method public getKodein()Lorg/kodein/di/Kodein;
    .locals 1

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0}, Lorg/kodein/di/bindings/BindingKodein;->getKodein()Lorg/kodein/di/Kodein;

    move-result-object v0

    return-object v0
.end method

.method public getLazy()Lorg/kodein/di/Kodein;
    .locals 1

    iget-object v0, p0, Lorg/kodein/di/bindings/SetBindingKodein;->_base:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0}, Lorg/kodein/di/bindings/BindingKodein;->getLazy()Lorg/kodein/di/Kodein;

    move-result-object v0

    return-object v0
.end method

.method public overriddenFactory()Ljava/lang/Void;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access overrides in a Set binding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public bridge synthetic overriddenFactory()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/kodein/di/bindings/SetBindingKodein;->overriddenFactory()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public overriddenFactoryOrNull()Ljava/lang/Void;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access overrides in a Set binding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public bridge synthetic overriddenFactoryOrNull()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/kodein/di/bindings/SetBindingKodein;->overriddenFactoryOrNull()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
