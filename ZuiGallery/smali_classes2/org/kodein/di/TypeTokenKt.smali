.class public final Lorg/kodein/di/TypeTokenKt;
.super Ljava/lang/Object;
.source "typeToken.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\"\u0019\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "AnyToken",
        "Lorg/kodein/di/TypeToken;",
        "",
        "getAnyToken",
        "()Lorg/kodein/di/TypeToken;",
        "UnitToken",
        "",
        "getUnitToken",
        "kodein-di-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final getAnyToken()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 211
    sget-object v0, Lorg/kodein/di/Tokens;->INSTANCE:Lorg/kodein/di/Tokens;

    invoke-virtual {v0}, Lorg/kodein/di/Tokens;->getAnyToken()Lorg/kodein/di/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public static final getUnitToken()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 206
    sget-object v0, Lorg/kodein/di/Tokens;->INSTANCE:Lorg/kodein/di/Tokens;

    invoke-virtual {v0}, Lorg/kodein/di/Tokens;->getUnitToken()Lorg/kodein/di/TypeToken;

    move-result-object v0

    return-object v0
.end method
