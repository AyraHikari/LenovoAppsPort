.class final synthetic Lorg/kodein/di/internal/KodeinContainerImpl$Node$displayString$descProp$1;
.super Lkotlin/jvm/internal/PropertyReference0;
.source "KodeinContainerImpl.kt"


# annotations
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
.method constructor <init>(Lorg/kodein/di/Kodein$Key;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/PropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/kodein/di/internal/KodeinContainerImpl$Node$displayString$descProp$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lorg/kodein/di/Kodein$Key;

    .line 88
    invoke-virtual {v0}, Lorg/kodein/di/Kodein$Key;->getBindFullDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "bindFullDescription"

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lorg/kodein/di/Kodein$Key;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getBindFullDescription()Ljava/lang/String;"

    return-object v0
.end method
