.class public final Lorg/kodein/di/threadLocal;
.super Ljava/lang/Object;
.source "jvmReferences.kt"

# interfaces
.implements Lorg/kodein/di/bindings/RefMaker;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0008\u0008\u0000\u0010\u0005*\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/kodein/di/threadLocal;",
        "Lorg/kodein/di/bindings/RefMaker;",
        "()V",
        "make",
        "Lorg/kodein/di/bindings/Reference;",
        "T",
        "",
        "creator",
        "Lkotlin/Function0;",
        "kodein-di-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/kodein/di/threadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lorg/kodein/di/threadLocal;

    invoke-direct {v0}, Lorg/kodein/di/threadLocal;-><init>()V

    sput-object v0, Lorg/kodein/di/threadLocal;->INSTANCE:Lorg/kodein/di/threadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public make(Lkotlin/jvm/functions/Function0;)Lorg/kodein/di/bindings/Reference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lorg/kodein/di/bindings/Reference<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "creator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lorg/kodein/di/threadLocal$make$threadLocal$1;

    invoke-direct {v0, p1}, Lorg/kodein/di/threadLocal$make$threadLocal$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 19
    new-instance p1, Lorg/kodein/di/bindings/Reference;

    invoke-virtual {v0}, Lorg/kodein/di/threadLocal$make$threadLocal$1;->get()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lorg/kodein/di/threadLocal$make$1;

    invoke-direct {v2, v0}, Lorg/kodein/di/threadLocal$make$1;-><init>(Lorg/kodein/di/threadLocal$make$threadLocal$1;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v1, v2}, Lorg/kodein/di/bindings/Reference;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-object p1
.end method
