.class final Lorg/kodein/di/threadLocal$make$1;
.super Lkotlin/jvm/internal/Lambda;
.source "jvmReferences.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kodein/di/threadLocal;->make(Lkotlin/jvm/functions/Function0;)Lorg/kodein/di/bindings/Reference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
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
        "\u0000\u000c\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u0001H\u0001H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "kotlin.jvm.PlatformType",
        "",
        "invoke",
        "()Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $threadLocal:Lorg/kodein/di/threadLocal$make$threadLocal$1;


# direct methods
.method constructor <init>(Lorg/kodein/di/threadLocal$make$threadLocal$1;)V
    .locals 0

    iput-object p1, p0, Lorg/kodein/di/threadLocal$make$1;->$threadLocal:Lorg/kodein/di/threadLocal$make$threadLocal$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lorg/kodein/di/threadLocal$make$1;->$threadLocal:Lorg/kodein/di/threadLocal$make$threadLocal$1;

    invoke-virtual {v0}, Lorg/kodein/di/threadLocal$make$threadLocal$1;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
