.class public interface abstract Lorg/kodein/di/KodeinContainer$Builder;
.super Ljava/lang/Object;
.source "KodeinContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/KodeinContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/KodeinContainer$Builder$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001Ju\u0010\u0002\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0004\"\u0004\u0008\u0001\u0010\u0005\"\u0008\u0008\u0002\u0010\u0006*\u00020\u00012\u0018\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u00082\u001e\u0010\t\u001a\u001a\u0012\u0006\u0008\u0000\u0012\u0002H\u0004\u0012\u0006\u0008\u0000\u0012\u0002H\u0005\u0012\u0006\u0008\u0001\u0012\u0002H\u00060\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH&\u00a2\u0006\u0002\u0010\u000fJ6\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000e2\u001a\u0008\u0002\u0010\u0014\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00080\u0015H&J!\u0010\u0016\u001a\u00020\u00032\u0017\u0010\u0017\u001a\u0013\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00030\u0018\u00a2\u0006\u0002\u0008\u001aH&J\u0018\u0010\u001b\u001a\u00020\u00032\u000e\u0010\u001c\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u001dH&J\u001c\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u000eH&\u00a8\u0006 "
    }
    d2 = {
        "Lorg/kodein/di/KodeinContainer$Builder;",
        "",
        "bind",
        "",
        "C",
        "A",
        "T",
        "key",
        "Lorg/kodein/di/Kodein$Key;",
        "binding",
        "Lorg/kodein/di/bindings/KodeinBinding;",
        "fromModule",
        "",
        "overrides",
        "",
        "(Lorg/kodein/di/Kodein$Key;Lorg/kodein/di/bindings/KodeinBinding;Ljava/lang/String;Ljava/lang/Boolean;)V",
        "extend",
        "container",
        "Lorg/kodein/di/KodeinContainer;",
        "allowOverride",
        "copy",
        "",
        "onReady",
        "cb",
        "Lkotlin/Function1;",
        "Lorg/kodein/di/DKodein;",
        "Lkotlin/ExtensionFunctionType;",
        "registerContextTranslator",
        "translator",
        "Lorg/kodein/di/bindings/ContextTranslator;",
        "subBuilder",
        "silentOverride",
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
.method public abstract bind(Lorg/kodein/di/Kodein$Key;Lorg/kodein/di/bindings/KodeinBinding;Ljava/lang/String;Ljava/lang/Boolean;)V
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
            "-TC;-TA;+TT;>;",
            "Lorg/kodein/di/bindings/KodeinBinding<",
            "-TC;-TA;+TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation
.end method

.method public abstract extend(Lorg/kodein/di/KodeinContainer;ZLjava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinContainer;",
            "Z",
            "Ljava/util/Set<",
            "+",
            "Lorg/kodein/di/Kodein$Key<",
            "***>;>;)V"
        }
    .end annotation
.end method

.method public abstract onReady(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/kodein/di/DKodein;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerContextTranslator(Lorg/kodein/di/bindings/ContextTranslator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/bindings/ContextTranslator<",
            "**>;)V"
        }
    .end annotation
.end method

.method public abstract subBuilder(ZZ)Lorg/kodein/di/KodeinContainer$Builder;
.end method
