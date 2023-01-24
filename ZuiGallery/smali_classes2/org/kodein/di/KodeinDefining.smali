.class public Lorg/kodein/di/KodeinDefining;
.super Ljava/lang/Object;
.source "BindingsMap.kt"


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
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u0002*\u0008\u0008\u0002\u0010\u0003*\u00020\u00042\u00020\u0004B)\u0012\u0018\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tR#\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/kodein/di/KodeinDefining;",
        "C",
        "A",
        "T",
        "",
        "binding",
        "Lorg/kodein/di/bindings/KodeinBinding;",
        "fromModule",
        "",
        "(Lorg/kodein/di/bindings/KodeinBinding;Ljava/lang/String;)V",
        "getBinding",
        "()Lorg/kodein/di/bindings/KodeinBinding;",
        "getFromModule",
        "()Ljava/lang/String;",
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
.field private final binding:Lorg/kodein/di/bindings/KodeinBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/bindings/KodeinBinding<",
            "TC;TA;TT;>;"
        }
    .end annotation
.end field

.field private final fromModule:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/kodein/di/bindings/KodeinBinding;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/bindings/KodeinBinding<",
            "TC;TA;TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/KodeinDefining;->binding:Lorg/kodein/di/bindings/KodeinBinding;

    iput-object p2, p0, Lorg/kodein/di/KodeinDefining;->fromModule:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBinding()Lorg/kodein/di/bindings/KodeinBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/bindings/KodeinBinding<",
            "TC;TA;TT;>;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lorg/kodein/di/KodeinDefining;->binding:Lorg/kodein/di/bindings/KodeinBinding;

    return-object v0
.end method

.method public final getFromModule()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/kodein/di/KodeinDefining;->fromModule:Ljava/lang/String;

    return-object v0
.end method
