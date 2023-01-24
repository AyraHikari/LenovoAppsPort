.class public final Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;
.super Ljava/lang/Object;
.source "KodeinBuilderImpl.kt"

# interfaces
.implements Lorg/kodein/di/Kodein$Builder$TypeBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/internal/KodeinBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypeBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/kodein/di/Kodein$Builder$TypeBinder<",
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
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B+\u0008\u0000\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ5\u0010\u0015\u001a\u00020\u0016\"\u0004\u0008\u0001\u0010\u0017\"\u0004\u0008\u0002\u0010\u00182\u001e\u0010\u0019\u001a\u001a\u0012\u0006\u0008\u0000\u0012\u0002H\u0017\u0012\u0006\u0008\u0000\u0012\u0002H\u0018\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u001aH\u0096\u0004R\u0014\u0010\n\u001a\u00020\u000b8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;",
        "T",
        "",
        "Lorg/kodein/di/Kodein$Builder$TypeBinder;",
        "type",
        "Lorg/kodein/di/TypeToken;",
        "tag",
        "overrides",
        "",
        "(Lorg/kodein/di/internal/KodeinBuilderImpl;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)V",
        "containerBuilder",
        "Lorg/kodein/di/internal/KodeinContainerBuilderImpl;",
        "getContainerBuilder$kodein_di_core",
        "()Lorg/kodein/di/internal/KodeinContainerBuilderImpl;",
        "getOverrides",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getTag",
        "()Ljava/lang/Object;",
        "getType",
        "()Lorg/kodein/di/TypeToken;",
        "with",
        "",
        "C",
        "A",
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
.field private final overrides:Ljava/lang/Boolean;

.field private final tag:Ljava/lang/Object;

.field final synthetic this$0:Lorg/kodein/di/internal/KodeinBuilderImpl;

.field private final type:Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/TypeToken<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/kodein/di/internal/KodeinBuilderImpl;Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/TypeToken<",
            "+TT;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;->this$0:Lorg/kodein/di/internal/KodeinBuilderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;->type:Lorg/kodein/di/TypeToken;

    iput-object p3, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;->tag:Ljava/lang/Object;

    iput-object p4, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;->overrides:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final getContainerBuilder$kodein_di_core()Lorg/kodein/di/internal/KodeinContainerBuilderImpl;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;->this$0:Lorg/kodein/di/internal/KodeinBuilderImpl;

    invoke-virtual {v0}, Lorg/kodein/di/internal/KodeinBuilderImpl;->getContainerBuilder()Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public final getOverrides()Ljava/lang/Boolean;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;->overrides:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public final getType()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "+TT;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;->type:Lorg/kodein/di/TypeToken;

    return-object v0
.end method

.method public with(Lorg/kodein/di/bindings/KodeinBinding;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/bindings/KodeinBinding<",
            "-TC;-TA;+TT;>;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;->getContainerBuilder$kodein_di_core()Lorg/kodein/di/internal/KodeinContainerBuilderImpl;

    move-result-object v0

    new-instance v1, Lorg/kodein/di/Kodein$Key;

    invoke-interface {p1}, Lorg/kodein/di/bindings/KodeinBinding;->getContextType()Lorg/kodein/di/TypeToken;

    move-result-object v2

    invoke-interface {p1}, Lorg/kodein/di/bindings/KodeinBinding;->getArgType()Lorg/kodein/di/TypeToken;

    move-result-object v3

    iget-object v4, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;->type:Lorg/kodein/di/TypeToken;

    iget-object v5, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;->tag:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/kodein/di/Kodein$Key;-><init>(Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;->this$0:Lorg/kodein/di/internal/KodeinBuilderImpl;

    invoke-static {v2}, Lorg/kodein/di/internal/KodeinBuilderImpl;->access$getModuleName$p(Lorg/kodein/di/internal/KodeinBuilderImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$TypeBinder;->overrides:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/kodein/di/internal/KodeinContainerBuilderImpl;->bind(Lorg/kodein/di/Kodein$Key;Lorg/kodein/di/bindings/KodeinBinding;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
