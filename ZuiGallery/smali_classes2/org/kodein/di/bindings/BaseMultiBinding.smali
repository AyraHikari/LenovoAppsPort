.class public abstract Lorg/kodein/di/bindings/BaseMultiBinding;
.super Ljava/lang/Object;
.source "set.kt"

# interfaces
.implements Lorg/kodein/di/bindings/KodeinBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/kodein/di/bindings/KodeinBinding<",
        "TC;TA;",
        "Ljava/util/Set<",
        "+TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u0002*\u0008\u0008\u0002\u0010\u0003*\u00020\u00042\u001a\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00030\u00060\u0005B\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000c\u001a\u00020\rH\u0016R*\u0010\u0008\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00050\tX\u00a0\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/kodein/di/bindings/BaseMultiBinding;",
        "C",
        "A",
        "T",
        "",
        "Lorg/kodein/di/bindings/KodeinBinding;",
        "",
        "()V",
        "set",
        "",
        "getSet$kodein_di_core",
        "()Ljava/util/Set;",
        "factoryName",
        "",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public factoryFullName()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-static {p0}, Lorg/kodein/di/bindings/KodeinBinding$DefaultImpls;->factoryFullName(Lorg/kodein/di/bindings/KodeinBinding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public factoryName()Ljava/lang/String;
    .locals 1

    const-string v0, "bindingSet"

    return-object v0
.end method

.method public getCopier()Lorg/kodein/di/bindings/KodeinBinding$Copier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/bindings/KodeinBinding$Copier<",
            "TC;TA;",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 15
    invoke-static {p0}, Lorg/kodein/di/bindings/KodeinBinding$DefaultImpls;->getCopier(Lorg/kodein/di/bindings/KodeinBinding;)Lorg/kodein/di/bindings/KodeinBinding$Copier;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-static {p0}, Lorg/kodein/di/bindings/KodeinBinding$DefaultImpls;->getDescription(Lorg/kodein/di/bindings/KodeinBinding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullDescription()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-static {p0}, Lorg/kodein/di/bindings/KodeinBinding$DefaultImpls;->getFullDescription(Lorg/kodein/di/bindings/KodeinBinding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScope()Lorg/kodein/di/bindings/Scope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/bindings/Scope<",
            "TC;>;"
        }
    .end annotation

    .line 15
    invoke-static {p0}, Lorg/kodein/di/bindings/KodeinBinding$DefaultImpls;->getScope(Lorg/kodein/di/bindings/KodeinBinding;)Lorg/kodein/di/bindings/Scope;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSet$kodein_di_core()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/kodein/di/bindings/KodeinBinding<",
            "TC;TA;TT;>;>;"
        }
    .end annotation
.end method

.method public getSupportSubTypes()Z
    .locals 1

    .line 15
    invoke-static {p0}, Lorg/kodein/di/bindings/KodeinBinding$DefaultImpls;->getSupportSubTypes(Lorg/kodein/di/bindings/KodeinBinding;)Z

    move-result v0

    return v0
.end method
