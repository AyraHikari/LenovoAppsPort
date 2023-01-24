.class public final Lorg/kodein/di/KodeinContext$Companion;
.super Ljava/lang/Object;
.source "KodeinAware.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/KodeinContext;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J3\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00050\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\tH\u0086\u0002J2\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00050\u00072\u0006\u0010\n\u001a\u0002H\u0005H\u0086\u0002\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/kodein/di/KodeinContext$Companion;",
        "",
        "()V",
        "invoke",
        "Lorg/kodein/di/KodeinContext;",
        "C",
        "type",
        "Lorg/kodein/di/TypeToken;",
        "getValue",
        "Lkotlin/Function0;",
        "value",
        "(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lorg/kodein/di/KodeinContext;",
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
.field static final synthetic $$INSTANCE:Lorg/kodein/di/KodeinContext$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/kodein/di/KodeinContext$Companion;

    invoke-direct {v0}, Lorg/kodein/di/KodeinContext$Companion;-><init>()V

    sput-object v0, Lorg/kodein/di/KodeinContext$Companion;->$$INSTANCE:Lorg/kodein/di/KodeinContext$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lorg/kodein/di/KodeinContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "-TC;>;TC;)",
            "Lorg/kodein/di/KodeinContext<",
            "TC;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lorg/kodein/di/KodeinContext$Value;

    invoke-direct {v0, p1, p2}, Lorg/kodein/di/KodeinContext$Value;-><init>(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    check-cast v0, Lorg/kodein/di/KodeinContext;

    return-object v0
.end method

.method public final invoke(Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function0;)Lorg/kodein/di/KodeinContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/kodein/di/TypeToken<",
            "-TC;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TC;>;)",
            "Lorg/kodein/di/KodeinContext<",
            "TC;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lorg/kodein/di/KodeinContext$Lazy;

    invoke-direct {v0, p1, p2}, Lorg/kodein/di/KodeinContext$Lazy;-><init>(Lorg/kodein/di/TypeToken;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lorg/kodein/di/KodeinContext;

    return-object v0
.end method
