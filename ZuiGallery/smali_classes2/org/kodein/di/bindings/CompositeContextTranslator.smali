.class public final Lorg/kodein/di/bindings/CompositeContextTranslator;
.super Ljava/lang/Object;
.source "scopes.kt"

# interfaces
.implements Lorg/kodein/di/bindings/ContextTranslator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/kodein/di/bindings/ContextTranslator<",
        "TC;TS;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u0000*\u0004\u0008\u0001\u0010\u0002*\u0004\u0008\u0002\u0010\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004B-\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0004\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0015\u0010\u0013\u001a\u00028\u00022\u0006\u0010\u0014\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0015R\u001c\u0010\u0008\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000bR\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\r\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/kodein/di/bindings/CompositeContextTranslator;",
        "C",
        "I",
        "S",
        "Lorg/kodein/di/bindings/ContextTranslator;",
        "src",
        "dst",
        "(Lorg/kodein/di/bindings/ContextTranslator;Lorg/kodein/di/bindings/ContextTranslator;)V",
        "contextType",
        "Lorg/kodein/di/TypeToken;",
        "getContextType",
        "()Lorg/kodein/di/TypeToken;",
        "getDst",
        "()Lorg/kodein/di/bindings/ContextTranslator;",
        "scopeType",
        "getScopeType",
        "getSrc",
        "toString",
        "",
        "translate",
        "ctx",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
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
.field private final dst:Lorg/kodein/di/bindings/ContextTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/bindings/ContextTranslator<",
            "TI;TS;>;"
        }
    .end annotation
.end field

.field private final src:Lorg/kodein/di/bindings/ContextTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/bindings/ContextTranslator<",
            "TC;TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/kodein/di/bindings/ContextTranslator;Lorg/kodein/di/bindings/ContextTranslator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/bindings/ContextTranslator<",
            "-TC;TI;>;",
            "Lorg/kodein/di/bindings/ContextTranslator<",
            "-TI;TS;>;)V"
        }
    .end annotation

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/bindings/CompositeContextTranslator;->src:Lorg/kodein/di/bindings/ContextTranslator;

    iput-object p2, p0, Lorg/kodein/di/bindings/CompositeContextTranslator;->dst:Lorg/kodein/di/bindings/ContextTranslator;

    return-void
.end method


# virtual methods
.method public getContextType()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "-TC;>;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/kodein/di/bindings/CompositeContextTranslator;->src:Lorg/kodein/di/bindings/ContextTranslator;

    invoke-interface {v0}, Lorg/kodein/di/bindings/ContextTranslator;->getContextType()Lorg/kodein/di/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public final getDst()Lorg/kodein/di/bindings/ContextTranslator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/bindings/ContextTranslator<",
            "TI;TS;>;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/kodein/di/bindings/CompositeContextTranslator;->dst:Lorg/kodein/di/bindings/ContextTranslator;

    return-object v0
.end method

.method public getScopeType()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "-TS;>;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lorg/kodein/di/bindings/CompositeContextTranslator;->dst:Lorg/kodein/di/bindings/ContextTranslator;

    invoke-interface {v0}, Lorg/kodein/di/bindings/ContextTranslator;->getScopeType()Lorg/kodein/di/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public final getSrc()Lorg/kodein/di/bindings/ContextTranslator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/bindings/ContextTranslator<",
            "TC;TI;>;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/kodein/di/bindings/CompositeContextTranslator;->src:Lorg/kodein/di/bindings/ContextTranslator;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/kodein/di/bindings/CompositeContextTranslator;->src:Lorg/kodein/di/bindings/ContextTranslator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/kodein/di/bindings/CompositeContextTranslator;->dst:Lorg/kodein/di/bindings/ContextTranslator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TS;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/kodein/di/bindings/CompositeContextTranslator;->dst:Lorg/kodein/di/bindings/ContextTranslator;

    iget-object v1, p0, Lorg/kodein/di/bindings/CompositeContextTranslator;->src:Lorg/kodein/di/bindings/ContextTranslator;

    invoke-interface {v1, p1}, Lorg/kodein/di/bindings/ContextTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/kodein/di/bindings/ContextTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
