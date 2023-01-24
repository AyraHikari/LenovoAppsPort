.class public final Lorg/kodein/di/bindings/NoArgBindingKodein$DefaultImpls;
.super Ljava/lang/Object;
.source "BindingKodein.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/bindings/NoArgBindingKodein;
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
.method public static getKodein(Lorg/kodein/di/bindings/NoArgBindingKodein;)Lorg/kodein/di/Kodein;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/bindings/NoArgBindingKodein<",
            "+TC;>;)",
            "Lorg/kodein/di/Kodein;"
        }
    .end annotation

    check-cast p0, Lorg/kodein/di/bindings/NoArgSimpleBindingKodein;

    invoke-static {p0}, Lorg/kodein/di/bindings/NoArgSimpleBindingKodein$DefaultImpls;->getKodein(Lorg/kodein/di/bindings/NoArgSimpleBindingKodein;)Lorg/kodein/di/Kodein;

    move-result-object p0

    return-object p0
.end method
