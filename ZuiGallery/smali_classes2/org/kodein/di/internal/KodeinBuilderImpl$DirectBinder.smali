.class public final Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;
.super Ljava/lang/Object;
.source "KodeinBuilderImpl.kt"

# interfaces
.implements Lorg/kodein/di/Kodein$Builder$DirectBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/internal/KodeinBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DirectBinder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u001b\u0008\u0000\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J?\u0010\u0008\u001a\u00020\t\"\u0004\u0008\u0000\u0010\n\"\u0004\u0008\u0001\u0010\u000b\"\u0008\u0008\u0002\u0010\u000c*\u00020\u00032\u001e\u0010\r\u001a\u001a\u0012\u0006\u0008\u0000\u0012\u0002H\n\u0012\u0006\u0008\u0000\u0012\u0002H\u000b\u0012\u0006\u0008\u0001\u0012\u0002H\u000c0\u000eH\u0096\u0004R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;",
        "Lorg/kodein/di/Kodein$Builder$DirectBinder;",
        "_tag",
        "",
        "_overrides",
        "",
        "(Lorg/kodein/di/internal/KodeinBuilderImpl;Ljava/lang/Object;Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "from",
        "",
        "C",
        "A",
        "T",
        "binding",
        "Lorg/kodein/di/bindings/KodeinBinding;",
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
.field private final _overrides:Ljava/lang/Boolean;

.field private final _tag:Ljava/lang/Object;

.field final synthetic this$0:Lorg/kodein/di/internal/KodeinBuilderImpl;


# direct methods
.method public constructor <init>(Lorg/kodein/di/internal/KodeinBuilderImpl;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;->this$0:Lorg/kodein/di/internal/KodeinBuilderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;->_tag:Ljava/lang/Object;

    iput-object p3, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;->_overrides:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public from(Lorg/kodein/di/bindings/KodeinBinding;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/bindings/KodeinBinding<",
            "-TC;-TA;+TT;>;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {p1}, Lorg/kodein/di/bindings/KodeinBinding;->getCreatedType()Lorg/kodein/di/TypeToken;

    move-result-object v0

    invoke-static {}, Lorg/kodein/di/TypeTokenKt;->getUnitToken()Lorg/kodein/di/TypeToken;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;->this$0:Lorg/kodein/di/internal/KodeinBuilderImpl;

    invoke-virtual {v0}, Lorg/kodein/di/internal/KodeinBuilderImpl;->getContainerBuilder()Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    move-result-object v0

    new-instance v1, Lorg/kodein/di/Kodein$Key;

    invoke-interface {p1}, Lorg/kodein/di/bindings/KodeinBinding;->getContextType()Lorg/kodein/di/TypeToken;

    move-result-object v2

    invoke-interface {p1}, Lorg/kodein/di/bindings/KodeinBinding;->getArgType()Lorg/kodein/di/TypeToken;

    move-result-object v3

    invoke-interface {p1}, Lorg/kodein/di/bindings/KodeinBinding;->getCreatedType()Lorg/kodein/di/TypeToken;

    move-result-object v4

    iget-object v5, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;->_tag:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/kodein/di/Kodein$Key;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;->this$0:Lorg/kodein/di/internal/KodeinBuilderImpl;

    invoke-static {v2}, Lorg/kodein/di/internal/KodeinBuilderImpl;->access$getModuleName$p(Lorg/kodein/di/internal/KodeinBuilderImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;->_overrides:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->bind(Lorg/kodein/di/Kodein$Key;Lorg/kodein/di/bindings/KodeinBinding;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using `bind() from` with a *Unit* "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/kodein/di/bindings/KodeinBinding;->factoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is most likely an error. If you are sure you want to bind the Unit type, please use `bind<Unit>() with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/kodein/di/bindings/KodeinBinding;->factoryName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
