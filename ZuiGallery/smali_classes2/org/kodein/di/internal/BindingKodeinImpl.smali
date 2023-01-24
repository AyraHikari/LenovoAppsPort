.class public Lorg/kodein/di/internal/BindingKodeinImpl;
.super Ljava/lang/Object;
.source "KodeinImpl.kt"

# interfaces
.implements Lorg/kodein/di/DKodein;
.implements Lorg/kodein/di/bindings/BindingKodein;


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
        "Ljava/lang/Object;",
        "Lorg/kodein/di/DKodein;",
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
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0010\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u0001*\u0006\u0008\u0001\u0010\u0002 \u0001*\n\u0008\u0002\u0010\u0003 \u0001*\u00020\u00042\u00020\u00052\u0008\u0012\u0004\u0012\u0002H\u00010\u0006B9\u0008\u0000\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0018\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\t\u0012\u0006\u0010\n\u001a\u00028\u0000\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJU\u0010\u001d\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u001f0\u001e\"\u0004\u0008\u0003\u0010\u0002\"\u0008\u0008\u0004\u0010\u0003*\u00020\u00042\u000e\u0010 \u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00020!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00030!2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0004H\u0096\u0001J3\u0010$\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u001e\"\u0008\u0008\u0003\u0010\u0003*\u00020\u00042\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00030!2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0004H\u0096\u0001JV\u0010$\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u001e\"\u0004\u0008\u0003\u0010\u0002\"\u0008\u0008\u0004\u0010\u0003*\u00020\u00042\u000e\u0010 \u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00020!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00030!2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00042\u0006\u0010%\u001a\u0002H\u0002H\u0096\u0001\u00a2\u0006\u0002\u0010&J9\u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00030(0\u001e\"\u0008\u0008\u0003\u0010\u0003*\u00020\u00042\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00030!2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0004H\u0096\u0001J]\u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00030(0\u001e\"\u0004\u0008\u0003\u0010\u0002\"\u0008\u0008\u0004\u0010\u0003*\u00020\u00042\u000e\u0010 \u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00020!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00030!2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00042\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H\u00020(H\u0096\u0001JM\u0010)\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u001f\"\u0004\u0008\u0003\u0010\u0002\"\u0008\u0008\u0004\u0010\u0003*\u00020\u00042\u000e\u0010 \u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00020!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00030!2\u0008\u0010#\u001a\u0004\u0018\u00010\u0004H\u0096\u0001JO\u0010*\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003\u0018\u00010\u001f\"\u0004\u0008\u0003\u0010\u0002\"\u0008\u0008\u0004\u0010\u0003*\u00020\u00042\u000e\u0010 \u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00020!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00030!2\u0008\u0010#\u001a\u0004\u0018\u00010\u0004H\u0096\u0001J0\u0010+\u001a\u0002H\u0003\"\u0008\u0008\u0003\u0010\u0003*\u00020\u00042\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00030!2\u0008\u0010#\u001a\u0004\u0018\u00010\u0004H\u0096\u0001\u00a2\u0006\u0002\u0010,JN\u0010+\u001a\u0002H\u0003\"\u0004\u0008\u0003\u0010\u0002\"\u0008\u0008\u0004\u0010\u0003*\u00020\u00042\u000e\u0010 \u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00020!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00030!2\u0008\u0010#\u001a\u0004\u0018\u00010\u00042\u0006\u0010%\u001a\u0002H\u0002H\u0096\u0001\u00a2\u0006\u0002\u0010-J2\u0010.\u001a\u0004\u0018\u0001H\u0003\"\u0008\u0008\u0003\u0010\u0003*\u00020\u00042\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00030!2\u0008\u0010#\u001a\u0004\u0018\u00010\u0004H\u0096\u0001\u00a2\u0006\u0002\u0010,JP\u0010.\u001a\u0004\u0018\u0001H\u0003\"\u0004\u0008\u0003\u0010\u0002\"\u0008\u0008\u0004\u0010\u0003*\u00020\u00042\u000e\u0010 \u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00020!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00030!2\u0008\u0010#\u001a\u0004\u0018\u00010\u00042\u0006\u0010%\u001a\u0002H\u0002H\u0096\u0001\u00a2\u0006\u0002\u0010-J\u0015\u0010/\u001a\u00020\u00052\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u000300H\u0096\u0001J1\u00101\u001a\u0008\u0012\u0004\u0012\u0002H\u00030(\"\u0008\u0008\u0003\u0010\u0003*\u00020\u00042\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00030!2\u0008\u0010#\u001a\u0004\u0018\u00010\u0004H\u0096\u0001JU\u00101\u001a\u0008\u0012\u0004\u0012\u0002H\u00030(\"\u0004\u0008\u0003\u0010\u0002\"\u0008\u0008\u0004\u0010\u0003*\u00020\u00042\u000e\u0010 \u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00020!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00030!2\u0008\u0010#\u001a\u0004\u0018\u00010\u00042\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H\u00020(H\u0096\u0001J3\u00102\u001a\n\u0012\u0004\u0012\u0002H\u0003\u0018\u00010(\"\u0008\u0008\u0003\u0010\u0003*\u00020\u00042\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00030!2\u0008\u0010#\u001a\u0004\u0018\u00010\u0004H\u0096\u0001JW\u00102\u001a\n\u0012\u0004\u0012\u0002H\u0003\u0018\u00010(\"\u0004\u0008\u0003\u0010\u0002\"\u0008\u0008\u0004\u0010\u0003*\u00020\u00042\u000e\u0010 \u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00020!2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00030!2\u0008\u0010#\u001a\u0004\u0018\u00010\u00042\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H\u00020(H\u0096\u0001J\u0016\u00103\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u00040\u001fH\u0016J\u0018\u00104\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001fH\u0016R \u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\tX\u0088\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000fX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\n\u001a\u00028\u0000X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0007\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0012\u0010\u001b\u001a\u00020\u0018X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001a\u00a8\u00065"
    }
    d2 = {
        "Lorg/kodein/di/internal/BindingKodeinImpl;",
        "C",
        "A",
        "T",
        "",
        "Lorg/kodein/di/DKodein;",
        "Lorg/kodein/di/bindings/BindingKodein;",
        "dkodein",
        "_key",
        "Lorg/kodein/di/Kodein$Key;",
        "context",
        "_overrideLevel",
        "",
        "(Lorg/kodein/di/DKodein;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)V",
        "container",
        "Lorg/kodein/di/KodeinContainer;",
        "getContainer",
        "()Lorg/kodein/di/KodeinContainer;",
        "getContext",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
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
.field private final _key:Lorg/kodein/di/Kodein$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/Kodein$Key<",
            "TC;TA;TT;>;"
        }
    .end annotation
.end field

.field private final _overrideLevel:I

.field private final context:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final dkodein:Lorg/kodein/di/DKodein;


# direct methods
.method public constructor <init>(Lorg/kodein/di/DKodein;Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/DKodein;",
            "Lorg/kodein/di/Kodein$Key<",
            "-TC;-TA;+TT;>;TC;I)V"
        }
    .end annotation

    const-string v0, "dkodein"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    iput-object p2, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->_key:Lorg/kodein/di/Kodein$Key;

    iput-object p3, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->context:Ljava/lang/Object;

    iput p4, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->_overrideLevel:I

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

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0, p1, p2, p3}, Lorg/kodein/di/DKodein;->AllFactories(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/util/List;

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

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0, p1, p2}, Lorg/kodein/di/DKodein;->AllInstances(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/util/List;

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

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/kodein/di/DKodein;->AllInstances(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

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

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0, p1, p2}, Lorg/kodein/di/DKodein;->AllProviders(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/util/List;

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

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/kodein/di/DKodein;->AllProviders(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/util/List;

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

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0, p1, p2, p3}, Lorg/kodein/di/DKodein;->Factory(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

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

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0, p1, p2, p3}, Lorg/kodein/di/DKodein;->FactoryOrNull(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

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

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0, p1, p2}, Lorg/kodein/di/DKodein;->Instance(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/kodein/di/DKodein;->Instance(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0, p1, p2}, Lorg/kodein/di/DKodein;->InstanceOrNull(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/kodein/di/DKodein;->InstanceOrNull(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0, p1}, Lorg/kodein/di/DKodein;->On(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/DKodein;

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

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0, p1, p2}, Lorg/kodein/di/DKodein;->Provider(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;

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

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/kodein/di/DKodein;->Provider(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;

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

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0, p1, p2}, Lorg/kodein/di/DKodein;->ProviderOrNull(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;

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

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/kodein/di/DKodein;->ProviderOrNull(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    return-object p1
.end method

.method public getContainer()Lorg/kodein/di/KodeinContainer;
    .locals 1

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0}, Lorg/kodein/di/DKodein;->getContainer()Lorg/kodein/di/KodeinContainer;

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

    .line 42
    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->context:Ljava/lang/Object;

    return-object v0
.end method

.method public getDkodein()Lorg/kodein/di/DKodein;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    return-object v0
.end method

.method public getKodein()Lorg/kodein/di/Kodein;
    .locals 1

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0}, Lorg/kodein/di/DKodein;->getKodein()Lorg/kodein/di/Kodein;

    move-result-object v0

    return-object v0
.end method

.method public getLazy()Lorg/kodein/di/Kodein;
    .locals 1

    iget-object v0, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->dkodein:Lorg/kodein/di/DKodein;

    invoke-interface {v0}, Lorg/kodein/di/DKodein;->getLazy()Lorg/kodein/di/Kodein;

    move-result-object v0

    return-object v0
.end method

.method public overriddenFactory()Lkotlin/jvm/functions/Function1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/kodein/di/internal/BindingKodeinImpl;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v0

    iget-object v1, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->_key:Lorg/kodein/di/Kodein$Key;

    invoke-virtual {p0}, Lorg/kodein/di/internal/BindingKodeinImpl;->getContext()Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->_overrideLevel:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lorg/kodein/di/KodeinContainer;->factory(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type (kotlin.Any?) -> kotlin.Any"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public overriddenFactoryOrNull()Lkotlin/jvm/functions/Function1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/kodein/di/internal/BindingKodeinImpl;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v0

    iget-object v1, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->_key:Lorg/kodein/di/Kodein$Key;

    invoke-virtual {p0}, Lorg/kodein/di/internal/BindingKodeinImpl;->getContext()Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lorg/kodein/di/internal/BindingKodeinImpl;->_overrideLevel:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lorg/kodein/di/KodeinContainer;->factoryOrNull(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
