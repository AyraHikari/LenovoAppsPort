.class public abstract Lorg/kodein/di/bindings/ScopeRegistry;
.super Ljava/lang/Object;
.source "scopes.kt"

# interfaces
.implements Lorg/kodein/di/bindings/ScopeCloseable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u0006\u0010\u0005\u001a\u00020\u0004J2\u0010\u0006\u001a\u00020\u00072\n\u0010\u0008\u001a\u00060\u0007j\u0002`\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u000e0\rH&J\u001e\u0010\u000f\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\r2\n\u0010\u0008\u001a\u00060\u0007j\u0002`\tH&J\u0014\u0010\u0010\u001a\u00020\u00042\n\u0010\u0008\u001a\u00060\u0007j\u0002`\tH&J&\u0010\u0011\u001a \u0012\u001c\u0012\u001a\u0012\u0008\u0012\u00060\u0007j\u0002`\t\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\r0\u00130\u0012H&\u0082\u0001\u0002\u0014\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/kodein/di/bindings/ScopeRegistry;",
        "Lorg/kodein/di/bindings/ScopeCloseable;",
        "()V",
        "clear",
        "",
        "close",
        "getOrCreate",
        "",
        "key",
        "Lorg/kodein/di/bindings/RegKey;",
        "sync",
        "",
        "creator",
        "Lkotlin/Function0;",
        "Lorg/kodein/di/bindings/Reference;",
        "getOrNull",
        "remove",
        "values",
        "",
        "Lkotlin/Pair;",
        "Lorg/kodein/di/bindings/StandardScopeRegistry;",
        "Lorg/kodein/di/bindings/SingleItemScopeRegistry;",
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
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/kodein/di/bindings/ScopeRegistry;-><init>()V

    return-void
.end method

.method public static synthetic getOrCreate$default(Lorg/kodein/di/bindings/ScopeRegistry;Ljava/lang/Object;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 37
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/kodein/di/bindings/ScopeRegistry;->getOrCreate(Ljava/lang/Object;ZLkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getOrCreate"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public final close()V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lorg/kodein/di/bindings/ScopeRegistry;->clear()V

    return-void
.end method

.method public abstract getOrCreate(Ljava/lang/Object;ZLkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/kodein/di/bindings/Reference<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getOrNull(Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)V
.end method

.method public abstract values()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lkotlin/Pair<",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end method
