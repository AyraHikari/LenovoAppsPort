.class public final Lorg/kodein/di/bindings/InstanceBinding;
.super Ljava/lang/Object;
.source "standardBindings.kt"

# interfaces
.implements Lorg/kodein/di/bindings/NoArgKodeinBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/kodein/di/bindings/NoArgKodeinBinding<",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u0002H\u00010\u0003B\u001d\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0015\u001a\u00020\rH\u0016J@\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00028\u00000\u00172\u000e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u001a2\u001a\u0010\u001b\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00028\u00000\u001cH\u0016R\u001c\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000fR\u0013\u0010\u0006\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/kodein/di/bindings/InstanceBinding;",
        "T",
        "",
        "Lorg/kodein/di/bindings/NoArgKodeinBinding;",
        "createdType",
        "Lorg/kodein/di/TypeToken;",
        "instance",
        "(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V",
        "contextType",
        "getContextType",
        "()Lorg/kodein/di/TypeToken;",
        "getCreatedType",
        "description",
        "",
        "getDescription",
        "()Ljava/lang/String;",
        "fullDescription",
        "getFullDescription",
        "getInstance",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "factoryName",
        "getFactory",
        "Lkotlin/Function1;",
        "",
        "kodein",
        "Lorg/kodein/di/bindings/BindingKodein;",
        "key",
        "Lorg/kodein/di/Kodein$Key;",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final contextType:Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/TypeToken<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final createdType:Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/TypeToken<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/TypeToken<",
            "+TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "createdType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instance"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/bindings/InstanceBinding;->createdType:Lorg/kodein/di/TypeToken;

    iput-object p2, p0, Lorg/kodein/di/bindings/InstanceBinding;->instance:Ljava/lang/Object;

    .line 188
    invoke-static {}, Lorg/kodein/di/TypeTokenKt;->getAnyToken()Lorg/kodein/di/TypeToken;

    move-result-object p1

    iput-object p1, p0, Lorg/kodein/di/bindings/InstanceBinding;->contextType:Lorg/kodein/di/TypeToken;

    return-void
.end method


# virtual methods
.method public factoryFullName()Ljava/lang/String;
    .locals 1

    .line 186
    invoke-static {p0}, Lorg/kodein/di/bindings/NoArgKodeinBinding$DefaultImpls;->factoryFullName(Lorg/kodein/di/bindings/NoArgKodeinBinding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public factoryName()Ljava/lang/String;
    .locals 1

    const-string v0, "instance"

    return-object v0
.end method

.method public getArgType()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lorg/kodein/di/bindings/NoArgKodeinBinding$DefaultImpls;->getArgType(Lorg/kodein/di/bindings/NoArgKodeinBinding;)Lorg/kodein/di/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public getContextType()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/kodein/di/bindings/InstanceBinding;->contextType:Lorg/kodein/di/TypeToken;

    return-object v0
.end method

.method public getCopier()Lorg/kodein/di/bindings/KodeinBinding$Copier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/bindings/KodeinBinding$Copier<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lorg/kodein/di/bindings/NoArgKodeinBinding$DefaultImpls;->getCopier(Lorg/kodein/di/bindings/NoArgKodeinBinding;)Lorg/kodein/di/bindings/KodeinBinding$Copier;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedType()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "+TT;>;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/kodein/di/bindings/InstanceBinding;->createdType:Lorg/kodein/di/TypeToken;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/kodein/di/bindings/InstanceBinding;->factoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/kodein/di/bindings/InstanceBinding;->getCreatedType()Lorg/kodein/di/TypeToken;

    move-result-object v1

    invoke-interface {v1}, Lorg/kodein/di/TypeToken;->simpleDispString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFactory(Lorg/kodein/di/bindings/BindingKodein;Lorg/kodein/di/Kodein$Key;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/bindings/BindingKodein<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/kodein/di/Kodein$Key<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/Unit;",
            "+TT;>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/Unit;",
            "TT;>;"
        }
    .end annotation

    const-string v0, "kodein"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance p1, Lorg/kodein/di/bindings/InstanceBinding$getFactory$1;

    invoke-direct {p1, p0}, Lorg/kodein/di/bindings/InstanceBinding$getFactory$1;-><init>(Lorg/kodein/di/bindings/InstanceBinding;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    return-object p1
.end method

.method public getFullDescription()Ljava/lang/String;
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/kodein/di/bindings/InstanceBinding;->factoryFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/kodein/di/bindings/InstanceBinding;->getCreatedType()Lorg/kodein/di/TypeToken;

    move-result-object v1

    invoke-interface {v1}, Lorg/kodein/di/TypeToken;->fullDispString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/kodein/di/bindings/InstanceBinding;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public getScope()Lorg/kodein/di/bindings/Scope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/bindings/Scope<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lorg/kodein/di/bindings/NoArgKodeinBinding$DefaultImpls;->getScope(Lorg/kodein/di/bindings/NoArgKodeinBinding;)Lorg/kodein/di/bindings/Scope;

    move-result-object v0

    return-object v0
.end method

.method public getSupportSubTypes()Z
    .locals 1

    .line 186
    invoke-static {p0}, Lorg/kodein/di/bindings/NoArgKodeinBinding$DefaultImpls;->getSupportSubTypes(Lorg/kodein/di/bindings/NoArgKodeinBinding;)Z

    move-result v0

    return v0
.end method
