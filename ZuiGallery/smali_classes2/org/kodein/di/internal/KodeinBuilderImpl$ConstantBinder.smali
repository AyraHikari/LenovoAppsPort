.class public final Lorg/kodein/di/internal/KodeinBuilderImpl$ConstantBinder;
.super Ljava/lang/Object;
.source "KodeinBuilderImpl.kt"

# interfaces
.implements Lorg/kodein/di/Kodein$Builder$ConstantBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/internal/KodeinBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConstantBinder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J/\u0010\u0008\u001a\u00020\t\"\u0008\u0008\u0000\u0010\n*\u00020\u00032\u000e\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\n0\u000c2\u0006\u0010\r\u001a\u0002H\nH\u0016\u00a2\u0006\u0002\u0010\u000eR\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/kodein/di/internal/KodeinBuilderImpl$ConstantBinder;",
        "Lorg/kodein/di/Kodein$Builder$ConstantBinder;",
        "_tag",
        "",
        "_overrides",
        "",
        "(Lorg/kodein/di/internal/KodeinBuilderImpl;Ljava/lang/Object;Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "With",
        "",
        "T",
        "valueType",
        "Lorg/kodein/di/TypeToken;",
        "value",
        "(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V",
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string v0, "_tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$ConstantBinder;->this$0:Lorg/kodein/di/internal/KodeinBuilderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$ConstantBinder;->_tag:Ljava/lang/Object;

    iput-object p3, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$ConstantBinder;->_overrides:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public With(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "+TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "valueType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$ConstantBinder;->this$0:Lorg/kodein/di/internal/KodeinBuilderImpl;

    iget-object v1, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$ConstantBinder;->_tag:Ljava/lang/Object;

    iget-object v2, p0, Lorg/kodein/di/internal/KodeinBuilderImpl$ConstantBinder;->_overrides:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/kodein/di/internal/KodeinBuilderImpl;->Bind(Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;

    move-result-object v0

    new-instance v1, Lorg/kodein/di/bindings/InstanceBinding;

    invoke-direct {v1, p1, p2}, Lorg/kodein/di/bindings/InstanceBinding;-><init>(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    check-cast v1, Lorg/kodein/di/bindings/KodeinBinding;

    invoke-virtual {v0, v1}, Lorg/kodein/di/internal/KodeinBuilderImpl$DirectBinder;->from(Lorg/kodein/di/bindings/KodeinBinding;)V

    return-void
.end method
