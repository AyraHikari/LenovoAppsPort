.class public interface abstract Lorg/kodein/di/DKodeinBase;
.super Ljava/lang/Object;
.source "DKodein.kt"

# interfaces
.implements Lorg/kodein/di/DKodeinAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/DKodeinBase$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001JN\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u000f0\r\"\u0004\u0008\u0000\u0010\u000e\"\u0008\u0008\u0001\u0010\u000f*\u00020\u00102\u000e\u0010\u0011\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u000e0\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u00122\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0010H&JP\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u000f\u0018\u00010\r\"\u0004\u0008\u0000\u0010\u000e\"\u0008\u0008\u0001\u0010\u000f*\u00020\u00102\u000e\u0010\u0011\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u000e0\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u00122\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0010H&J1\u0010\u0016\u001a\u0002H\u000f\"\u0008\u0008\u0000\u0010\u000f*\u00020\u00102\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u00122\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0010H&\u00a2\u0006\u0002\u0010\u0017JO\u0010\u0016\u001a\u0002H\u000f\"\u0004\u0008\u0000\u0010\u000e\"\u0008\u0008\u0001\u0010\u000f*\u00020\u00102\u000e\u0010\u0011\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u000e0\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u00122\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0018\u001a\u0002H\u000eH&\u00a2\u0006\u0002\u0010\u0019J3\u0010\u001a\u001a\u0004\u0018\u0001H\u000f\"\u0008\u0008\u0000\u0010\u000f*\u00020\u00102\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u00122\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0010H&\u00a2\u0006\u0002\u0010\u0017JQ\u0010\u001a\u001a\u0004\u0018\u0001H\u000f\"\u0004\u0008\u0000\u0010\u000e\"\u0008\u0008\u0001\u0010\u000f*\u00020\u00102\u000e\u0010\u0011\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u000e0\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u00122\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0018\u001a\u0002H\u000eH&\u00a2\u0006\u0002\u0010\u0019J\u0014\u0010\u001b\u001a\u00020\u001c2\n\u0010\u001d\u001a\u0006\u0012\u0002\u0008\u00030\u001eH&J2\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0 \"\u0008\u0008\u0000\u0010\u000f*\u00020\u00102\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u00122\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0010H&JV\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0 \"\u0004\u0008\u0000\u0010\u000e\"\u0008\u0008\u0001\u0010\u000f*\u00020\u00102\u000e\u0010\u0011\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u000e0\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u00122\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00102\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0 H&J4\u0010!\u001a\n\u0012\u0004\u0012\u0002H\u000f\u0018\u00010 \"\u0008\u0008\u0000\u0010\u000f*\u00020\u00102\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u00122\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0010H&JX\u0010!\u001a\n\u0012\u0004\u0012\u0002H\u000f\u0018\u00010 \"\u0004\u0008\u0000\u0010\u000e\"\u0008\u0008\u0001\u0010\u000f*\u00020\u00102\u000e\u0010\u0011\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u000e0\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u00122\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00102\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0 H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\""
    }
    d2 = {
        "Lorg/kodein/di/DKodeinBase;",
        "Lorg/kodein/di/DKodeinAware;",
        "container",
        "Lorg/kodein/di/KodeinContainer;",
        "getContainer",
        "()Lorg/kodein/di/KodeinContainer;",
        "kodein",
        "Lorg/kodein/di/Kodein;",
        "getKodein",
        "()Lorg/kodein/di/Kodein;",
        "lazy",
        "getLazy",
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
        "Lorg/kodein/di/DKodein;",
        "context",
        "Lorg/kodein/di/KodeinContext;",
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


# virtual methods
.method public abstract Factory(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
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
.end method

.method public abstract FactoryOrNull(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
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
.end method

.method public abstract Instance(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

.method public abstract Instance(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

.method public abstract InstanceOrNull(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

.method public abstract InstanceOrNull(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

.method public abstract On(Lorg/kodein/di/KodeinContext;)Lorg/kodein/di/DKodein;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinContext<",
            "*>;)",
            "Lorg/kodein/di/DKodein;"
        }
    .end annotation
.end method

.method public abstract Provider(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;
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
.end method

.method public abstract Provider(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;
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
.end method

.method public abstract ProviderOrNull(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;
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
.end method

.method public abstract ProviderOrNull(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;
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
.end method

.method public abstract getContainer()Lorg/kodein/di/KodeinContainer;
.end method

.method public abstract getKodein()Lorg/kodein/di/Kodein;
.end method

.method public abstract getLazy()Lorg/kodein/di/Kodein;
.end method
