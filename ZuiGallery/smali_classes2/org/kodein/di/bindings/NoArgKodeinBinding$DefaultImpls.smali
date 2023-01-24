.class public final Lorg/kodein/di/bindings/NoArgKodeinBinding$DefaultImpls;
.super Ljava/lang/Object;
.source "KodeinBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/bindings/NoArgKodeinBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static factoryFullName(Lorg/kodein/di/bindings/NoArgKodeinBinding;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/bindings/NoArgKodeinBinding<",
            "TC;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    check-cast p0, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-static {p0}, Lorg/kodein/di/bindings/KodeinBinding$DefaultImpls;->factoryFullName(Lorg/kodein/di/bindings/KodeinBinding;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getArgType(Lorg/kodein/di/bindings/NoArgKodeinBinding;)Lorg/kodein/di/TypeToken;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/bindings/NoArgKodeinBinding<",
            "TC;TT;>;)",
            "Lorg/kodein/di/TypeToken<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-static {}, Lorg/kodein/di/TypeTokenKt;->getUnitToken()Lorg/kodein/di/TypeToken;

    move-result-object p0

    return-object p0
.end method

.method public static getCopier(Lorg/kodein/di/bindings/NoArgKodeinBinding;)Lorg/kodein/di/bindings/KodeinBinding$Copier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/bindings/NoArgKodeinBinding<",
            "TC;TT;>;)",
            "Lorg/kodein/di/bindings/KodeinBinding$Copier<",
            "TC;",
            "Lkotlin/Unit;",
            "TT;>;"
        }
    .end annotation

    check-cast p0, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-static {p0}, Lorg/kodein/di/bindings/KodeinBinding$DefaultImpls;->getCopier(Lorg/kodein/di/bindings/KodeinBinding;)Lorg/kodein/di/bindings/KodeinBinding$Copier;

    move-result-object p0

    return-object p0
.end method

.method public static getDescription(Lorg/kodein/di/bindings/NoArgKodeinBinding;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/bindings/NoArgKodeinBinding<",
            "TC;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    check-cast p0, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-static {p0}, Lorg/kodein/di/bindings/KodeinBinding$DefaultImpls;->getDescription(Lorg/kodein/di/bindings/KodeinBinding;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFullDescription(Lorg/kodein/di/bindings/NoArgKodeinBinding;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/bindings/NoArgKodeinBinding<",
            "TC;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    check-cast p0, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-static {p0}, Lorg/kodein/di/bindings/KodeinBinding$DefaultImpls;->getFullDescription(Lorg/kodein/di/bindings/KodeinBinding;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getScope(Lorg/kodein/di/bindings/NoArgKodeinBinding;)Lorg/kodein/di/bindings/Scope;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/bindings/NoArgKodeinBinding<",
            "TC;TT;>;)",
            "Lorg/kodein/di/bindings/Scope<",
            "TC;>;"
        }
    .end annotation

    check-cast p0, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-static {p0}, Lorg/kodein/di/bindings/KodeinBinding$DefaultImpls;->getScope(Lorg/kodein/di/bindings/KodeinBinding;)Lorg/kodein/di/bindings/Scope;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportSubTypes(Lorg/kodein/di/bindings/NoArgKodeinBinding;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/bindings/NoArgKodeinBinding<",
            "TC;TT;>;)Z"
        }
    .end annotation

    check-cast p0, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-static {p0}, Lorg/kodein/di/bindings/KodeinBinding$DefaultImpls;->getSupportSubTypes(Lorg/kodein/di/bindings/KodeinBinding;)Z

    move-result p0

    return p0
.end method
