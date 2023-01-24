.class public interface abstract Lorg/kodein/di/KodeinContainer;
.super Ljava/lang/Object;
.source "KodeinContainer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/KodeinContainer$Builder;,
        Lorg/kodein/di/KodeinContainer$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001:\u0001\u001bJa\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u0002H\n0\u00080\u0007\"\u0004\u0008\u0000\u0010\u000b\"\u0004\u0008\u0001\u0010\t\"\u0008\u0008\u0002\u0010\n*\u00020\u00012\u0018\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u0002H\n0\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H&\u00a2\u0006\u0002\u0010\u0011JU\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\n0\u00130\u0007\"\u0004\u0008\u0000\u0010\u000b\"\u0008\u0008\u0001\u0010\n*\u00020\u00012\u0018\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u0002H\n0\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u0016\u00a2\u0006\u0002\u0010\u0011J[\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u0002H\n0\u0008\"\u0004\u0008\u0000\u0010\u000b\"\u0004\u0008\u0001\u0010\t\"\u0008\u0008\u0002\u0010\n*\u00020\u00012\u0018\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u0002H\n0\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H&\u00a2\u0006\u0002\u0010\u0016J]\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u0002H\n\u0018\u00010\u0008\"\u0004\u0008\u0000\u0010\u000b\"\u0004\u0008\u0001\u0010\t\"\u0008\u0008\u0002\u0010\n*\u00020\u00012\u0018\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u0002H\n0\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H&\u00a2\u0006\u0002\u0010\u0016JO\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u0002H\n0\u0013\"\u0004\u0008\u0000\u0010\u000b\"\u0008\u0008\u0001\u0010\n*\u00020\u00012\u0018\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u0002H\n0\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u0016\u00a2\u0006\u0002\u0010\u0019JQ\u0010\u001a\u001a\n\u0012\u0004\u0012\u0002H\n\u0018\u00010\u0013\"\u0004\u0008\u0000\u0010\u000b\"\u0008\u0008\u0001\u0010\n*\u00020\u00012\u0018\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u0002H\n0\r2\u0006\u0010\u000e\u001a\u0002H\u000b2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u0016\u00a2\u0006\u0002\u0010\u0019R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/kodein/di/KodeinContainer;",
        "",
        "tree",
        "Lorg/kodein/di/KodeinTree;",
        "getTree",
        "()Lorg/kodein/di/KodeinTree;",
        "allFactories",
        "",
        "Lkotlin/Function1;",
        "A",
        "T",
        "C",
        "key",
        "Lorg/kodein/di/Kodein$Key;",
        "context",
        "overrideLevel",
        "",
        "(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Ljava/util/List;",
        "allProviders",
        "Lkotlin/Function0;",
        "",
        "factory",
        "(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Lkotlin/jvm/functions/Function1;",
        "factoryOrNull",
        "provider",
        "(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Lkotlin/jvm/functions/Function0;",
        "providerOrNull",
        "Builder",
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
.method public abstract allFactories(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Key<",
            "-TC;-TA;+TT;>;TC;I)",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "TA;TT;>;>;"
        }
    .end annotation
.end method

.method public abstract allProviders(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Key<",
            "-TC;-",
            "Lkotlin/Unit;",
            "+TT;>;TC;I)",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract factory(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Key<",
            "-TC;-TA;+TT;>;TC;I)",
            "Lkotlin/jvm/functions/Function1<",
            "TA;TT;>;"
        }
    .end annotation
.end method

.method public abstract factoryOrNull(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Key<",
            "-TC;-TA;+TT;>;TC;I)",
            "Lkotlin/jvm/functions/Function1<",
            "TA;TT;>;"
        }
    .end annotation
.end method

.method public abstract getTree()Lorg/kodein/di/KodeinTree;
.end method

.method public abstract provider(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Key<",
            "-TC;-",
            "Lkotlin/Unit;",
            "+TT;>;TC;I)",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract providerOrNull(Lorg/kodein/di/Kodein$Key;Ljava/lang/Object;I)Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/Kodein$Key<",
            "-TC;-",
            "Lkotlin/Unit;",
            "+TT;>;TC;I)",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation
.end method
