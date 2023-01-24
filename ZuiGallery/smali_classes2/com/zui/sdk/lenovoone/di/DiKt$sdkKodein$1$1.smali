.class final Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "di.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1;->invoke(Lorg/kodein/di/Kodein$MainBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/kodein/di/bindings/NoArgSimpleBindingKodein<",
        "+",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ndi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 di.kt\ncom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$1\n+ 2 GDKodein.kt\norg/kodein/di/generic/GDKodeinKt\n+ 3 types.kt\norg/kodein/di/TypesKt\n*L\n1#1,28:1\n229#2:29\n229#2:30\n229#2:32\n229#2:33\n229#2:35\n229#2:36\n282#3:31\n282#3:34\n282#3:37\n*E\n*S KotlinDebug\n*F\n+ 1 di.kt\ncom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$1\n*L\n19#1:29\n19#1:30\n22#1:32\n22#1:33\n22#1:35\n22#1:36\n19#1:31\n22#1:34\n22#1:37\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;",
        "Lorg/kodein/di/bindings/NoArgSimpleBindingKodein;",
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
.field public static final INSTANCE:Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$1;

    invoke-direct {v0}, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$1;-><init>()V

    sput-object v0, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$1;->INSTANCE:Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/kodein/di/bindings/NoArgSimpleBindingKodein;)Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/kodein/di/bindings/NoArgSimpleBindingKodein<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    check-cast p1, Lorg/kodein/di/DKodeinAware;

    .line 30
    invoke-interface {p1}, Lorg/kodein/di/DKodeinAware;->getDkodein()Lorg/kodein/di/DKodein;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$1$$special$$inlined$instance$1;

    invoke-direct {v1}, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$1$$special$$inlined$instance$1;-><init>()V

    check-cast v1, Lorg/kodein/di/TypeReference;

    invoke-static {v1}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v1

    const/4 v2, 0x0

    .line 30
    invoke-interface {v0, v1, v2}, Lorg/kodein/di/DKodein;->Instance(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 19
    invoke-static {v0}, Lcom/zui/sdk/lenovoone/util/LenovoOneUtil;->isFeatureExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {p1}, Lorg/kodein/di/DKodeinAware;->getDkodein()Lorg/kodein/di/DKodein;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$1$$special$$inlined$instance$2;

    invoke-direct {v1}, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$1$$special$$inlined$instance$2;-><init>()V

    check-cast v1, Lorg/kodein/di/TypeReference;

    invoke-static {v1}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v1

    .line 33
    invoke-interface {v0, v1, v2}, Lorg/kodein/di/DKodein;->Instance(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 36
    invoke-interface {p1}, Lorg/kodein/di/DKodeinAware;->getDkodein()Lorg/kodein/di/DKodein;

    move-result-object p1

    .line 37
    new-instance v1, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$1$$special$$inlined$instance$3;

    invoke-direct {v1}, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$1$$special$$inlined$instance$3;-><init>()V

    check-cast v1, Lorg/kodein/di/TypeReference;

    invoke-static {v1}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v1

    .line 36
    invoke-interface {p1, v1, v2}, Lorg/kodein/di/DKodein;->Instance(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 22
    new-instance v1, Lcom/zui/sdk/lenovoone/manager/impl/LenovoOneManagerImpl;

    invoke-direct {v1, v0, p1}, Lcom/zui/sdk/lenovoone/manager/impl/LenovoOneManagerImpl;-><init>(Landroid/content/Context;Ljava/util/List;)V

    check-cast v1, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lcom/zui/sdk/lenovoone/manager/impl/LenovoOneManagerMock;

    invoke-direct {p1}, Lcom/zui/sdk/lenovoone/manager/impl/LenovoOneManagerMock;-><init>()V

    move-object v1, p1

    check-cast v1, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;

    :goto_0
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/kodein/di/bindings/NoArgSimpleBindingKodein;

    invoke-virtual {p0, p1}, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$1;->invoke(Lorg/kodein/di/bindings/NoArgSimpleBindingKodein;)Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;

    move-result-object p1

    return-object p1
.end method
