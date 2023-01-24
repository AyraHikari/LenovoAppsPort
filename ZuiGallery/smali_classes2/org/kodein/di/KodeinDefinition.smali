.class public final Lorg/kodein/di/KodeinDefinition;
.super Lorg/kodein/di/KodeinDefining;
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
        "Lorg/kodein/di/KodeinDefining<",
        "TC;TA;TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u0002*\u0008\u0008\u0002\u0010\u0003*\u00020\u00042\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0005B1\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/kodein/di/KodeinDefinition;",
        "C",
        "A",
        "T",
        "",
        "Lorg/kodein/di/KodeinDefining;",
        "binding",
        "Lorg/kodein/di/bindings/KodeinBinding;",
        "fromModule",
        "",
        "tree",
        "Lorg/kodein/di/KodeinTree;",
        "(Lorg/kodein/di/bindings/KodeinBinding;Ljava/lang/String;Lorg/kodein/di/KodeinTree;)V",
        "getTree",
        "()Lorg/kodein/di/KodeinTree;",
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
.field private final tree:Lorg/kodein/di/KodeinTree;


# direct methods
.method public constructor <init>(Lorg/kodein/di/bindings/KodeinBinding;Ljava/lang/String;Lorg/kodein/di/KodeinTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/bindings/KodeinBinding<",
            "TC;TA;TT;>;",
            "Ljava/lang/String;",
            "Lorg/kodein/di/KodeinTree;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tree"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/kodein/di/KodeinDefining;-><init>(Lorg/kodein/di/bindings/KodeinBinding;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/kodein/di/KodeinDefinition;->tree:Lorg/kodein/di/KodeinTree;

    return-void
.end method


# virtual methods
.method public final getTree()Lorg/kodein/di/KodeinTree;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/kodein/di/KodeinDefinition;->tree:Lorg/kodein/di/KodeinTree;

    return-object v0
.end method
