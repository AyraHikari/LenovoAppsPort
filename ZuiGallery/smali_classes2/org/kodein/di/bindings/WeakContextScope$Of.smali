.class public final Lorg/kodein/di/bindings/WeakContextScope$Of;
.super Lorg/kodein/di/bindings/WeakContextScope;
.source "standardScopes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/bindings/WeakContextScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Of"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/kodein/di/bindings/WeakContextScope<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\u0008\u0001\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/kodein/di/bindings/WeakContextScope$Of;",
        "Lorg/kodein/di/bindings/WeakContextScope;",
        "",
        "()V",
        "of",
        "Lorg/kodein/di/bindings/Scope;",
        "T",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 21
    invoke-direct {p0, v0, v1, v0}, Lorg/kodein/di/bindings/WeakContextScope;-><init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/kodein/di/bindings/WeakContextScope$Of;-><init>()V

    return-void
.end method


# virtual methods
.method public final of()Lorg/kodein/di/bindings/Scope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/kodein/di/bindings/Scope<",
            "TT;>;"
        }
    .end annotation

    .line 23
    move-object v0, p0

    check-cast v0, Lorg/kodein/di/bindings/Scope;

    return-object v0
.end method
