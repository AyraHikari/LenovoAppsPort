.class final Lorg/kodein/di/KodeinWrapper;
.super Ljava/lang/Object;
.source "KodeinAware.kt"

# interfaces
.implements Lorg/kodein/di/Kodein;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0002\u0018\u00002\u00020\u0001B)\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0008\u0002\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008B%\u0012\u0006\u0010\t\u001a\u00020\u0001\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000bR\u000e\u0010\t\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/kodein/di/KodeinWrapper;",
        "Lorg/kodein/di/Kodein;",
        "base",
        "Lorg/kodein/di/KodeinAware;",
        "kodeinContext",
        "Lorg/kodein/di/KodeinContext;",
        "trigger",
        "Lorg/kodein/di/KodeinTrigger;",
        "(Lorg/kodein/di/KodeinAware;Lorg/kodein/di/KodeinContext;Lorg/kodein/di/KodeinTrigger;)V",
        "_base",
        "kodeinTrigger",
        "(Lorg/kodein/di/Kodein;Lorg/kodein/di/KodeinContext;Lorg/kodein/di/KodeinTrigger;)V",
        "container",
        "Lorg/kodein/di/KodeinContainer;",
        "getContainer",
        "()Lorg/kodein/di/KodeinContainer;",
        "kodein",
        "getKodein",
        "()Lorg/kodein/di/Kodein;",
        "getKodeinContext",
        "()Lorg/kodein/di/KodeinContext;",
        "getKodeinTrigger",
        "()Lorg/kodein/di/KodeinTrigger;",
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
.field private final _base:Lorg/kodein/di/Kodein;

.field private final kodeinContext:Lorg/kodein/di/KodeinContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/KodeinContext<",
            "*>;"
        }
    .end annotation
.end field

.field private final kodeinTrigger:Lorg/kodein/di/KodeinTrigger;


# direct methods
.method public constructor <init>(Lorg/kodein/di/Kodein;Lorg/kodein/di/KodeinContext;Lorg/kodein/di/KodeinTrigger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/Kodein;",
            "Lorg/kodein/di/KodeinContext<",
            "*>;",
            "Lorg/kodein/di/KodeinTrigger;",
            ")V"
        }
    .end annotation

    const-string v0, "_base"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kodeinContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/KodeinWrapper;->_base:Lorg/kodein/di/Kodein;

    iput-object p2, p0, Lorg/kodein/di/KodeinWrapper;->kodeinContext:Lorg/kodein/di/KodeinContext;

    iput-object p3, p0, Lorg/kodein/di/KodeinWrapper;->kodeinTrigger:Lorg/kodein/di/KodeinTrigger;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/kodein/di/Kodein;Lorg/kodein/di/KodeinContext;Lorg/kodein/di/KodeinTrigger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 227
    check-cast p3, Lorg/kodein/di/KodeinTrigger;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/kodein/di/KodeinWrapper;-><init>(Lorg/kodein/di/Kodein;Lorg/kodein/di/KodeinContext;Lorg/kodein/di/KodeinTrigger;)V

    return-void
.end method

.method public constructor <init>(Lorg/kodein/di/KodeinAware;Lorg/kodein/di/KodeinContext;Lorg/kodein/di/KodeinTrigger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/KodeinAware;",
            "Lorg/kodein/di/KodeinContext<",
            "*>;",
            "Lorg/kodein/di/KodeinTrigger;",
            ")V"
        }
    .end annotation

    const-string v0, "base"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kodeinContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-interface {p1}, Lorg/kodein/di/KodeinAware;->getKodein()Lorg/kodein/di/Kodein;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/kodein/di/KodeinWrapper;-><init>(Lorg/kodein/di/Kodein;Lorg/kodein/di/KodeinContext;Lorg/kodein/di/KodeinTrigger;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/kodein/di/KodeinAware;Lorg/kodein/di/KodeinContext;Lorg/kodein/di/KodeinTrigger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 229
    invoke-interface {p1}, Lorg/kodein/di/KodeinAware;->getKodeinContext()Lorg/kodein/di/KodeinContext;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Lorg/kodein/di/KodeinAware;->getKodeinTrigger()Lorg/kodein/di/KodeinTrigger;

    move-result-object p3

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/kodein/di/KodeinWrapper;-><init>(Lorg/kodein/di/KodeinAware;Lorg/kodein/di/KodeinContext;Lorg/kodein/di/KodeinTrigger;)V

    return-void
.end method


# virtual methods
.method public getContainer()Lorg/kodein/di/KodeinContainer;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/kodein/di/KodeinWrapper;->_base:Lorg/kodein/di/Kodein;

    invoke-interface {v0}, Lorg/kodein/di/Kodein;->getContainer()Lorg/kodein/di/KodeinContainer;

    move-result-object v0

    return-object v0
.end method

.method public getKodein()Lorg/kodein/di/Kodein;
    .locals 1

    .line 231
    move-object v0, p0

    check-cast v0, Lorg/kodein/di/Kodein;

    return-object v0
.end method

.method public getKodeinContext()Lorg/kodein/di/KodeinContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/KodeinContext<",
            "*>;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lorg/kodein/di/KodeinWrapper;->kodeinContext:Lorg/kodein/di/KodeinContext;

    return-object v0
.end method

.method public getKodeinTrigger()Lorg/kodein/di/KodeinTrigger;
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/kodein/di/KodeinWrapper;->kodeinTrigger:Lorg/kodein/di/KodeinTrigger;

    return-object v0
.end method
