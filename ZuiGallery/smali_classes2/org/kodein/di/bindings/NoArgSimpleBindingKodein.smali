.class public interface abstract Lorg/kodein/di/bindings/NoArgSimpleBindingKodein;
.super Ljava/lang/Object;
.source "BindingKodein.kt"

# interfaces
.implements Lorg/kodein/di/DKodein;
.implements Lorg/kodein/di/bindings/WithContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kodein/di/bindings/NoArgSimpleBindingKodein$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/kodein/di/DKodein;",
        "Lorg/kodein/di/bindings/WithContext<",
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
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008g\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H&J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008H&J\u0010\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0008H&\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/kodein/di/bindings/NoArgSimpleBindingKodein;",
        "C",
        "Lorg/kodein/di/DKodein;",
        "Lorg/kodein/di/bindings/WithContext;",
        "overriddenInstance",
        "",
        "overriddenInstanceOrNull",
        "overriddenProvider",
        "Lkotlin/Function0;",
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

.annotation runtime Lorg/kodein/di/Kodein$KodeinDsl;
.end annotation


# virtual methods
.method public abstract overriddenInstance()Ljava/lang/Object;
.end method

.method public abstract overriddenInstanceOrNull()Ljava/lang/Object;
.end method

.method public abstract overriddenProvider()Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract overriddenProviderOrNull()Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
