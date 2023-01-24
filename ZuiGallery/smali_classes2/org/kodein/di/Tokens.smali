.class final Lorg/kodein/di/Tokens;
.super Ljava/lang/Object;
.source "typeToken.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ntypeToken.kt\nKotlin\n*S Kotlin\n*F\n+ 1 typeToken.kt\norg/kodein/di/Tokens\n+ 2 types.kt\norg/kodein/di/TypesKt\n*L\n1#1,212:1\n310#2:213\n310#2:214\n*E\n*S KotlinDebug\n*F\n+ 1 typeToken.kt\norg/kodein/di/Tokens\n*L\n161#1:213\n162#1:214\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0019\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/kodein/di/Tokens;",
        "",
        "()V",
        "AnyToken",
        "Lorg/kodein/di/TypeToken;",
        "getAnyToken",
        "()Lorg/kodein/di/TypeToken;",
        "UnitToken",
        "",
        "getUnitToken",
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
.field private static final AnyToken:Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/TypeToken<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lorg/kodein/di/Tokens;

.field private static final UnitToken:Lorg/kodein/di/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/kodein/di/TypeToken<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 160
    new-instance v0, Lorg/kodein/di/Tokens;

    invoke-direct {v0}, Lorg/kodein/di/Tokens;-><init>()V

    sput-object v0, Lorg/kodein/di/Tokens;->INSTANCE:Lorg/kodein/di/Tokens;

    .line 213
    new-instance v0, Lorg/kodein/di/ClassTypeToken;

    const-class v1, Lkotlin/Unit;

    invoke-direct {v0, v1}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lorg/kodein/di/TypeToken;

    sput-object v0, Lorg/kodein/di/Tokens;->UnitToken:Lorg/kodein/di/TypeToken;

    .line 214
    new-instance v0, Lorg/kodein/di/ClassTypeToken;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/kodein/di/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lorg/kodein/di/TypeToken;

    sput-object v0, Lorg/kodein/di/Tokens;->AnyToken:Lorg/kodein/di/TypeToken;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAnyToken()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 162
    sget-object v0, Lorg/kodein/di/Tokens;->AnyToken:Lorg/kodein/di/TypeToken;

    return-object v0
.end method

.method public final getUnitToken()Lorg/kodein/di/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/kodein/di/TypeToken<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 161
    sget-object v0, Lorg/kodein/di/Tokens;->UnitToken:Lorg/kodein/di/TypeToken;

    return-object v0
.end method
