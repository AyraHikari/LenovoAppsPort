.class public final Lorg/kodein/di/Typed$Companion;
.super Ljava/lang/Object;
.source "Typed.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/Typed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J1\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\tH\u0086\u0002J0\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u00072\u0006\u0010\n\u001a\u0002H\u0005H\u0086\u0002\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/kodein/di/Typed$Companion;",
        "",
        "()V",
        "invoke",
        "Lorg/kodein/di/Typed;",
        "A",
        "type",
        "Lorg/kodein/di/TypeToken;",
        "func",
        "Lkotlin/Function0;",
        "value",
        "(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lorg/kodein/di/Typed;",
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
.field static final synthetic $$INSTANCE:Lorg/kodein/di/Typed$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lorg/kodein/di/Typed$Companion;

    invoke-direct {v0}, Lorg/kodein/di/Typed$Companion;-><init>()V

    sput-object v0, Lorg/kodein/di/Typed$Companion;->$$INSTANCE:Lorg/kodein/di/Typed$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lorg/kodein/di/Typed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "TA;>;TA;)",
            "Lorg/kodein/di/Typed<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lorg/kodein/di/TypedImpl;

    invoke-direct {v0, p2, p1}, Lorg/kodein/di/TypedImpl;-><init>(Ljava/lang/Object;Lorg/kodein/di/TypeToken;)V

    check-cast v0, Lorg/kodein/di/Typed;

    return-object v0
.end method

.method public final invoke(Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function0;)Lorg/kodein/di/Typed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "TA;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TA;>;)",
            "Lorg/kodein/di/Typed<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "func"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lorg/kodein/di/TypedFunc;

    invoke-direct {v0, p2, p1}, Lorg/kodein/di/TypedFunc;-><init>(Lkotlin/jvm/functions/Function0;Lorg/kodein/di/TypeToken;)V

    check-cast v0, Lorg/kodein/di/Typed;

    return-object v0
.end method
