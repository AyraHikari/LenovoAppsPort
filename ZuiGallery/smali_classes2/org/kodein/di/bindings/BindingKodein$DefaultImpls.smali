.class public final Lorg/kodein/di/bindings/BindingKodein$DefaultImpls;
.super Ljava/lang/Object;
.source "BindingKodein.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/bindings/BindingKodein;
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
.method public static getKodein(Lorg/kodein/di/bindings/BindingKodein;)Lorg/kodein/di/Kodein;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/bindings/BindingKodein<",
            "+TC;>;)",
            "Lorg/kodein/di/Kodein;"
        }
    .end annotation

    check-cast p0, Lorg/kodein/di/bindings/SimpleBindingKodein;

    invoke-static {p0}, Lorg/kodein/di/bindings/SimpleBindingKodein$DefaultImpls;->getKodein(Lorg/kodein/di/bindings/SimpleBindingKodein;)Lorg/kodein/di/Kodein;

    move-result-object p0

    return-object p0
.end method
