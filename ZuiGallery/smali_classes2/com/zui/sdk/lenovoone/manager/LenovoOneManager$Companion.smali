.class public final Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;
.super Ljava/lang/Object;
.source "LenovoOneManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLenovoOneManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LenovoOneManager.kt\ncom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion\n+ 2 GKodeinAware.kt\norg/kodein/di/generic/GKodeinAwareKt\n+ 3 types.kt\norg/kodein/di/TypesKt\n*L\n1#1,43:1\n226#2:44\n226#2:45\n282#3:46\n*E\n*S KotlinDebug\n*F\n+ 1 LenovoOneManager.kt\ncom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion\n*L\n36#1:44\n36#1:45\n36#1:46\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\u0008J\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008H\u0007J\u0008\u0010\u000e\u001a\u00020\u000fH\u0007R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010\u00b2\u0006\n\u0010\u0011\u001a\u00020\u000fX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;",
        "",
        "()V",
        "services",
        "",
        "Lcom/zui/sdk/service/foundation/ZuiService;",
        "weakCtx",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/content/Context;",
        "getContext",
        "getServiceList",
        "init",
        "",
        "context",
        "instance",
        "Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;",
        "lenovoone-sdk_release",
        "lenovoOneManager"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;

.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field private static services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/zui/sdk/service/foundation/ZuiService;",
            ">;"
        }
    .end annotation
.end field

.field private static weakCtx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference0Impl;

    const-class v2, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "lenovoOneManager"

    const-string v4, "<v#0>"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 12
    new-instance v0, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;

    invoke-direct {v0}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;-><init>()V

    sput-object v0, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;->$$INSTANCE:Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 2

    .line 17
    sget-object v0, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;->weakCtx:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const-string v1, "weakCtx"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public final getServiceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/sdk/service/foundation/ZuiService;",
            ">;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;->services:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "services"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;->weakCtx:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/zui/sdk/service/foundation/ZuiServiceAbs;

    .line 28
    new-instance v0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    invoke-direct {v0}, Lcom/zui/sdk/service/patpat/ZuiPatpatService;-><init>()V

    check-cast v0, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 29
    new-instance v0, Lcom/zui/sdk/service/file/ZuiTransferService;

    invoke-direct {v0}, Lcom/zui/sdk/service/file/ZuiTransferService;-><init>()V

    check-cast v0, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 27
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sput-object p1, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;->services:Ljava/util/List;

    .line 31
    move-object p1, p0

    check-cast p1, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;

    invoke-virtual {p1}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;->instance()Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;

    return-void
.end method

.method public final instance()Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 36
    invoke-static {}, Lcom/zui/sdk/lenovoone/di/DiKt;->getSdkKodein()Lorg/kodein/di/Kodein;

    move-result-object v0

    check-cast v0, Lorg/kodein/di/KodeinAware;

    .line 46
    new-instance v1, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion$instance$$inlined$instance$1;

    invoke-direct {v1}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion$instance$$inlined$instance$1;-><init>()V

    check-cast v1, Lorg/kodein/di/TypeReference;

    invoke-static {v1}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v1

    const/4 v2, 0x0

    .line 45
    invoke-static {v0, v1, v2}, Lorg/kodein/di/KodeinAwareKt;->Instance(Lorg/kodein/di/KodeinAware;Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Lorg/kodein/di/KodeinProperty;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lorg/kodein/di/KodeinProperty;->provideDelegate(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/Lazy;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;

    return-object v0
.end method
