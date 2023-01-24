.class public final Lcom/zui/sdk/lenovoone/di/DiKt;
.super Ljava/lang/Object;
.source "di.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "sdkKodein",
        "Lorg/kodein/di/Kodein;",
        "getSdkKodein",
        "()Lorg/kodein/di/Kodein;",
        "lenovoone-sdk_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final sdkKodein:Lorg/kodein/di/Kodein;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    sget-object v0, Lorg/kodein/di/Kodein;->Companion:Lorg/kodein/di/Kodein$Companion;

    sget-object v1, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1;->INSTANCE:Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lorg/kodein/di/Kodein$Companion;->invoke$default(Lorg/kodein/di/Kodein$Companion;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/kodein/di/Kodein;

    move-result-object v0

    sput-object v0, Lcom/zui/sdk/lenovoone/di/DiKt;->sdkKodein:Lorg/kodein/di/Kodein;

    return-void
.end method

.method public static final getSdkKodein()Lorg/kodein/di/Kodein;
    .locals 1

    .line 14
    sget-object v0, Lcom/zui/sdk/lenovoone/di/DiKt;->sdkKodein:Lorg/kodein/di/Kodein;

    return-object v0
.end method
