.class public interface abstract Lorg/kodein/di/DKodein;
.super Ljava/lang/Object;
.source "DKodeinJVM.kt"

# interfaces
.implements Lorg/kodein/di/DKodeinBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/DKodein$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001JT\u0010\u0002\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u00040\u0003\"\u0004\u0008\u0000\u0010\u0005\"\u0008\u0008\u0001\u0010\u0006*\u00020\u00072\u000e\u0010\u0008\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00050\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007H&J2\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0003\"\u0008\u0008\u0000\u0010\u0006*\u00020\u00072\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007H&JU\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0003\"\u0004\u0008\u0000\u0010\u0005\"\u0008\u0008\u0001\u0010\u0006*\u00020\u00072\u000e\u0010\u0008\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00050\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\r\u001a\u0002H\u0005H&\u00a2\u0006\u0002\u0010\u000eJ8\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00060\u00100\u0003\"\u0008\u0008\u0000\u0010\u0006*\u00020\u00072\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007H&J\\\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00060\u00100\u0003\"\u0004\u0008\u0000\u0010\u0005\"\u0008\u0008\u0001\u0010\u0006*\u00020\u00072\u000e\u0010\u0008\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00050\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0010H&\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/kodein/di/DKodein;",
        "Lorg/kodein/di/DKodeinBase;",
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
.method public abstract AllFactories(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/util/List;
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
.end method

.method public abstract AllInstances(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/util/List;
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
.end method

.method public abstract AllInstances(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
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
.end method

.method public abstract AllProviders(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/util/List;
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
.end method

.method public abstract AllProviders(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/util/List;
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
.end method
