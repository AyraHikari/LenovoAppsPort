.class final Lorg/kodein/di/TypesKt$_needGATWrapper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "types.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kodein/di/TypesKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/kodein/di/TypesKt$_needGATWrapper$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/kodein/di/TypesKt$_needGATWrapper$2;

    invoke-direct {v0}, Lorg/kodein/di/TypesKt$_needGATWrapper$2;-><init>()V

    sput-object v0, Lorg/kodein/di/TypesKt$_needGATWrapper$2;->INSTANCE:Lorg/kodein/di/TypesKt$_needGATWrapper$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/kodein/di/TypesKt$_needGATWrapper$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 3

    .line 19
    new-instance v0, Lorg/kodein/di/TypesKt$_needGATWrapper$2$t1$1;

    invoke-direct {v0}, Lorg/kodein/di/TypesKt$_needGATWrapper$2$t1$1;-><init>()V

    invoke-virtual {v0}, Lorg/kodein/di/TypesKt$_needGATWrapper$2$t1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.reflect.GenericArrayType"

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 20
    new-instance v2, Lorg/kodein/di/TypesKt$_needGATWrapper$2$t2$1;

    invoke-direct {v2}, Lorg/kodein/di/TypesKt$_needGATWrapper$2$t2$1;-><init>()V

    invoke-virtual {v2}, Lorg/kodein/di/TypesKt$_needGATWrapper$2$t2$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/reflect/GenericArrayType;

    .line 21
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 20
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
