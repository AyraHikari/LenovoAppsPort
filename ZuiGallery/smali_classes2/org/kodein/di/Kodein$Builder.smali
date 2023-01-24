.class public interface abstract Lorg/kodein/di/Kodein$Builder;
.super Ljava/lang/Object;
.source "Kodein.kt"

# interfaces
.implements Lorg/kodein/di/Kodein$BindBuilder$WithContext;
.implements Lorg/kodein/di/Kodein$BindBuilder$WithScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/Kodein;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/Kodein$Builder$TypeBinder;,
        Lorg/kodein/di/Kodein$Builder$DirectBinder;,
        Lorg/kodein/di/Kodein$Builder$ConstantBinder;,
        Lorg/kodein/di/Kodein$Builder$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/kodein/di/Kodein$BindBuilder$WithContext<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/kodein/di/Kodein$BindBuilder$WithScope<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008g\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0003:\u0003)*+J%\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&\u00a2\u0006\u0002\u0010\rJE\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u000f0\u000e\"\u0008\u0008\u0000\u0010\u000f*\u00020\u00022\u000e\u0010\u0010\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u000f0\u00112\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&\u00a2\u0006\u0002\u0010\u0012J\u0018\u0010\u0013\u001a\u00020\u00142\u000e\u0010\u0015\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0016H&J!\u0010\u0017\u001a\u00020\u00182\u0006\u0010\n\u001a\u00020\u00022\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&\u00a2\u0006\u0002\u0010\u0019J\u001a\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u000cH&J+\u0010\u001e\u001a\u00020\u00142\u0012\u0010\u001f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001c0 \"\u00020\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u000cH&\u00a2\u0006\u0002\u0010!J \u0010\u001e\u001a\u00020\u00142\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\"2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u000cH&J\u001a\u0010#\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u000cH&J!\u0010$\u001a\u00020\u00142\u0017\u0010%\u001a\u0013\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\u00140&\u00a2\u0006\u0002\u0008(H&R\u0012\u0010\u0004\u001a\u00020\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006,"
    }
    d2 = {
        "Lorg/kodein/di/Kodein$Builder;",
        "Lorg/kodein/di/Kodein$BindBuilder$WithContext;",
        "",
        "Lorg/kodein/di/Kodein$BindBuilder$WithScope;",
        "containerBuilder",
        "Lorg/kodein/di/KodeinContainer$Builder;",
        "getContainerBuilder",
        "()Lorg/kodein/di/KodeinContainer$Builder;",
        "Bind",
        "Lorg/kodein/di/Kodein$Builder$DirectBinder;",
        "tag",
        "overrides",
        "",
        "(Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$DirectBinder;",
        "Lorg/kodein/di/Kodein$Builder$TypeBinder;",
        "T",
        "type",
        "Lorg/kodein/di/TypeToken;",
        "(Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$TypeBinder;",
        "RegisterContextTranslator",
        "",
        "translator",
        "Lorg/kodein/di/bindings/ContextTranslator;",
        "constant",
        "Lorg/kodein/di/Kodein$Builder$ConstantBinder;",
        "(Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$ConstantBinder;",
        "import",
        "module",
        "Lorg/kodein/di/Kodein$Module;",
        "allowOverride",
        "importAll",
        "modules",
        "",
        "([Lorg/kodein/di/Kodein$Module;Z)V",
        "",
        "importOnce",
        "onReady",
        "cb",
        "Lkotlin/Function1;",
        "Lorg/kodein/di/DKodein;",
        "Lkotlin/ExtensionFunctionType;",
        "ConstantBinder",
        "DirectBinder",
        "TypeBinder",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation

.annotation runtime Lorg/kodein/di/Kodein$KodeinDsl;
.end annotation


# virtual methods
.method public abstract Bind(Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$DirectBinder;
.end method

.method public abstract Bind(Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$TypeBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "+TT;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/kodein/di/Kodein$Builder$TypeBinder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract RegisterContextTranslator(Lorg/kodein/di/bindings/ContextTranslator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/bindings/ContextTranslator<",
            "**>;)V"
        }
    .end annotation
.end method

.method public abstract constant(Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$ConstantBinder;
.end method

.method public abstract getContainerBuilder()Lorg/kodein/di/KodeinContainer$Builder;
.end method

.method public abstract import(Lorg/kodein/di/Kodein$Module;Z)V
.end method

.method public abstract importAll(Ljava/lang/Iterable;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/kodein/di/Kodein$Module;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract importAll([Lorg/kodein/di/Kodein$Module;Z)V
.end method

.method public abstract importOnce(Lorg/kodein/di/Kodein$Module;Z)V
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
