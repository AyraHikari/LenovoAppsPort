.class public final Lorg/kodein/di/bindings/TypeBinderSubTypes;
.super Ljava/lang/Object;
.source "subTypes.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0015\u0008\u0000\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0002\u0010\u0005Jv\u0010\u0006\u001a\u00020\u0007\"\u0004\u0008\u0001\u0010\u0008\"\u0004\u0008\u0002\u0010\t2\u000e\u0010\n\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00080\u000b2\u000e\u0010\u000c\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\t0\u000b2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u000b22\u0010\u000e\u001a.\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u000b\u0012\u001c\u0012\u001a\u0012\u0006\u0008\u0000\u0012\u0002H\u0008\u0012\u0006\u0008\u0000\u0012\u0002H\t\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u00100\u000fR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/kodein/di/bindings/TypeBinderSubTypes;",
        "T",
        "",
        "_binder",
        "Lorg/kodein/di/Kodein$Builder$TypeBinder;",
        "(Lorg/kodein/di/Kodein$Builder$TypeBinder;)V",
        "With",
        "",
        "C",
        "A",
        "contextType",
        "Lorg/kodein/di/TypeToken;",
        "argType",
        "createdType",
        "block",
        "Lkotlin/Function1;",
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
.field private final _binder:Lorg/kodein/di/Kodein$Builder$TypeBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/Kodein$Builder$TypeBinder<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/kodein/di/Kodein$Builder$TypeBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/Kodein$Builder$TypeBinder<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "_binder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/kodein/di/bindings/TypeBinderSubTypes;->_binder:Lorg/kodein/di/Kodein$Builder$TypeBinder;

    return-void
.end method


# virtual methods
.method public final With(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "-TC;>;",
            "Lorg/kodein/di/TypeToken<",
            "-TA;>;",
            "Lorg/kodein/di/TypeToken<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/kodein/di/TypeToken<",
            "+TT;>;+",
            "Lorg/kodein/di/bindings/KodeinBinding<",
            "-TC;-TA;+TT;>;>;)V"
        }
    .end annotation

    const-string v0, "contextType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lorg/kodein/di/bindings/TypeBinderSubTypes;->_binder:Lorg/kodein/di/Kodein$Builder$TypeBinder;

    new-instance v1, Lorg/kodein/di/bindings/SubTypes;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/kodein/di/bindings/SubTypes;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-interface {v0, v1}, Lorg/kodein/di/Kodein$Builder$TypeBinder;->with(Lorg/kodein/di/bindings/KodeinBinding;)V

    return-void
.end method
