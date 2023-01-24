.class public final Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;
.super Ljava/lang/Object;
.source "BindingKodein.kt"

# interfaces
.implements Lorg/kodein/di/bindings/NoArgBindingKodein;
.implements Lorg/kodein/di/DKodein;
.implements Lorg/kodein/di/bindings/WithContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/kodein/di/bindings/NoArgBindingKodein<",
        "TC;>;",
        "Lorg/kodein/di/DKodein;",
        "Lorg/kodein/di/bindings/WithContext<",
        "TC;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBindingKodein.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BindingKodein.kt\norg/kodein/di/bindings/NoArgBindingKodeinWrap\n+ 2 curry.kt\norg/kodein/di/CurryKt\n*L\n1#1,125:1\n12#2:126\n12#2:127\n*E\n*S KotlinDebug\n*F\n+ 1 BindingKodein.kt\norg/kodein/di/bindings/NoArgBindingKodeinWrap\n*L\n120#1:126\n121#1:127\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004B\u0013\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007JU\u0010\u0018\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u001c0\u001a0\u0019\"\u0004\u0008\u0001\u0010\u001b\"\u0008\u0008\u0002\u0010\u001c*\u00020\u001d2\u000e\u0010\u001e\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u001b0\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001f2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u001dH\u0096\u0001J3\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u0019\"\u0008\u0008\u0001\u0010\u001c*\u00020\u001d2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001f2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u001dH\u0096\u0001JV\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u0019\"\u0004\u0008\u0001\u0010\u001b\"\u0008\u0008\u0002\u0010\u001c*\u00020\u001d2\u000e\u0010\u001e\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u001b0\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001f2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u001d2\u0006\u0010#\u001a\u0002H\u001bH\u0096\u0001\u00a2\u0006\u0002\u0010$J9\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u001c0&0\u0019\"\u0008\u0008\u0001\u0010\u001c*\u00020\u001d2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001f2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u001dH\u0096\u0001J]\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u001c0&0\u0019\"\u0004\u0008\u0001\u0010\u001b\"\u0008\u0008\u0002\u0010\u001c*\u00020\u001d2\u000e\u0010\u001e\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u001b0\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001f2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u001d2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u0002H\u001b0&H\u0096\u0001JM\u0010\'\u001a\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u001c0\u001a\"\u0004\u0008\u0001\u0010\u001b\"\u0008\u0008\u0002\u0010\u001c*\u00020\u001d2\u000e\u0010\u001e\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u001b0\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\u001dH\u0096\u0001JO\u0010(\u001a\u0010\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u0002H\u001c\u0018\u00010\u001a\"\u0004\u0008\u0001\u0010\u001b\"\u0008\u0008\u0002\u0010\u001c*\u00020\u001d2\u000e\u0010\u001e\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u001b0\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\u001dH\u0096\u0001J0\u0010)\u001a\u0002H\u001c\"\u0008\u0008\u0001\u0010\u001c*\u00020\u001d2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\u001dH\u0096\u0001\u00a2\u0006\u0002\u0010*JN\u0010)\u001a\u0002H\u001c\"\u0004\u0008\u0001\u0010\u001b\"\u0008\u0008\u0002\u0010\u001c*\u00020\u001d2\u000e\u0010\u001e\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u001b0\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\u001d2\u0006\u0010#\u001a\u0002H\u001bH\u0096\u0001\u00a2\u0006\u0002\u0010+J2\u0010,\u001a\u0004\u0018\u0001H\u001c\"\u0008\u0008\u0001\u0010\u001c*\u00020\u001d2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\u001dH\u0096\u0001\u00a2\u0006\u0002\u0010*JP\u0010,\u001a\u0004\u0018\u0001H\u001c\"\u0004\u0008\u0001\u0010\u001b\"\u0008\u0008\u0002\u0010\u001c*\u00020\u001d2\u000e\u0010\u001e\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u001b0\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\u001d2\u0006\u0010#\u001a\u0002H\u001bH\u0096\u0001\u00a2\u0006\u0002\u0010+J\u0015\u0010-\u001a\u00020\u00032\n\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030.H\u0096\u0001J1\u0010/\u001a\u0008\u0012\u0004\u0012\u0002H\u001c0&\"\u0008\u0008\u0001\u0010\u001c*\u00020\u001d2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\u001dH\u0096\u0001JU\u0010/\u001a\u0008\u0012\u0004\u0012\u0002H\u001c0&\"\u0004\u0008\u0001\u0010\u001b\"\u0008\u0008\u0002\u0010\u001c*\u00020\u001d2\u000e\u0010\u001e\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u001b0\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\u001d2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u0002H\u001b0&H\u0096\u0001J3\u00100\u001a\n\u0012\u0004\u0012\u0002H\u001c\u0018\u00010&\"\u0008\u0008\u0001\u0010\u001c*\u00020\u001d2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\u001dH\u0096\u0001JW\u00100\u001a\n\u0012\u0004\u0012\u0002H\u001c\u0018\u00010&\"\u0004\u0008\u0001\u0010\u001b\"\u0008\u0008\u0002\u0010\u001c*\u00020\u001d2\u000e\u0010\u001e\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u001b0\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u001c0\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\u001d2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u0002H\u001b0&H\u0096\u0001J\u0008\u00101\u001a\u00020\u001dH\u0016J\n\u00102\u001a\u0004\u0018\u00010\u001dH\u0016J\u000e\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u001d0&H\u0016J\u0010\u00104\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010&H\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\tX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00028\u0000X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u0003X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0012\u0010\u0016\u001a\u00020\u0013X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0015\u00a8\u00065"
    }
    d2 = {
        "Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;",
        "C",
        "Lorg/kodein/di/bindings/NoArgBindingKodein;",
        "Lorg/kodein/di/DKodein;",
        "Lorg/kodein/di/bindings/WithContext;",
        "_kodein",
        "Lorg/kodein/di/bindings/BindingKodein;",
        "(Lorg/kodein/di/bindings/BindingKodein;)V",
        "container",
        "Lorg/kodein/di/KodeinContainer;",
        "getContainer",
        "()Lorg/kodein/di/KodeinContainer;",
        "context",
        "getContext",
        "()Ljava/lang/Object;",
        "dkodein",
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
        "overriddenInstance",
        "overriddenInstanceOrNull",
        "overriddenProvider",
        "overriddenProviderOrNull",
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
.field private final _kodein:Lorg/kodein/di/bindings/BindingKodein;
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

    const-string v0, "_kodein"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

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

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

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

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

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

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

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

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

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

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

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

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

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

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

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

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

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

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

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

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

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

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

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

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

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

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

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

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

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

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

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

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/kodein/di/bindings/BindingKodein;->ProviderOrNull(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    return-object p1
.end method

.method public getContainer()Lorg/kodein/di/KodeinContainer;
    .locals 1

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

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

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0}, Lorg/kodein/di/bindings/BindingKodein;->getContext()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDkodein()Lorg/kodein/di/DKodein;
    .locals 1

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0}, Lorg/kodein/di/bindings/BindingKodein;->getDkodein()Lorg/kodein/di/DKodein;

    move-result-object v0

    return-object v0
.end method

.method public getKodein()Lorg/kodein/di/Kodein;
    .locals 1

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0}, Lorg/kodein/di/bindings/BindingKodein;->getKodein()Lorg/kodein/di/Kodein;

    move-result-object v0

    return-object v0
.end method

.method public getLazy()Lorg/kodein/di/Kodein;
    .locals 1

    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0}, Lorg/kodein/di/bindings/BindingKodein;->getLazy()Lorg/kodein/di/Kodein;

    move-result-object v0

    return-object v0
.end method

.method public overriddenInstance()Ljava/lang/Object;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->overriddenProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public overriddenInstanceOrNull()Ljava/lang/Object;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->overriddenProviderOrNull()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public overriddenProvider()Lkotlin/jvm/functions/Function0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0}, Lorg/kodein/di/bindings/BindingKodein;->overriddenFactory()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 126
    new-instance v1, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap$overriddenProvider$$inlined$toProvider$1;

    invoke-direct {v1, v0}, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap$overriddenProvider$$inlined$toProvider$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    return-object v1
.end method

.method public overriddenProviderOrNull()Lkotlin/jvm/functions/Function0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap;->_kodein:Lorg/kodein/di/bindings/BindingKodein;

    invoke-interface {v0}, Lorg/kodein/di/bindings/BindingKodein;->overriddenFactoryOrNull()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v1, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap$overriddenProviderOrNull$$inlined$toProvider$1;

    invoke-direct {v1, v0}, Lorg/kodein/di/bindings/NoArgBindingKodeinWrap$overriddenProviderOrNull$$inlined$toProvider$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
