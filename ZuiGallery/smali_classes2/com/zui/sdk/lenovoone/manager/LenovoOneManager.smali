.class public interface abstract Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;
.super Ljava/lang/Object;
.source "LenovoOneManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008J\'\u0010\u0002\u001a\u0004\u0018\u0001H\u0003\"\u0008\u0008\u0000\u0010\u0003*\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u0006H&\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;",
        "",
        "service",
        "T",
        "Lcom/zui/sdk/service/foundation/ZuiService;",
        "clazz",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Lcom/zui/sdk/service/foundation/ZuiService;",
        "Companion",
        "lenovoone-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;->$$INSTANCE:Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;

    sput-object v0, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->Companion:Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->Companion:Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;

    invoke-virtual {v0, p0}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static instance()Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->Companion:Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;

    invoke-virtual {v0}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;->instance()Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract service(Ljava/lang/Class;)Lcom/zui/sdk/service/foundation/ZuiService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/zui/sdk/service/foundation/ZuiService;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
