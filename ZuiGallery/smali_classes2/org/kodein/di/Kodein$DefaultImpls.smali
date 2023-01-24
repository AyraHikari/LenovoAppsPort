.class public final Lorg/kodein/di/Kodein$DefaultImpls;
.super Ljava/lang/Object;
.source "Kodein.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/Kodein;
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
.method public static getKodein(Lorg/kodein/di/Kodein;)Lorg/kodein/di/Kodein;
    .locals 0

    return-object p0
.end method

.method public static getKodeinContext(Lorg/kodein/di/Kodein;)Lorg/kodein/di/KodeinContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/Kodein;",
            ")",
            "Lorg/kodein/di/KodeinContext<",
            "*>;"
        }
    .end annotation

    check-cast p0, Lorg/kodein/di/KodeinAware;

    invoke-static {p0}, Lorg/kodein/di/KodeinAware$DefaultImpls;->getKodeinContext(Lorg/kodein/di/KodeinAware;)Lorg/kodein/di/KodeinContext;

    move-result-object p0

    return-object p0
.end method

.method public static getKodeinTrigger(Lorg/kodein/di/Kodein;)Lorg/kodein/di/KodeinTrigger;
    .locals 0

    check-cast p0, Lorg/kodein/di/KodeinAware;

    invoke-static {p0}, Lorg/kodein/di/KodeinAware$DefaultImpls;->getKodeinTrigger(Lorg/kodein/di/KodeinAware;)Lorg/kodein/di/KodeinTrigger;

    move-result-object p0

    return-object p0
.end method
