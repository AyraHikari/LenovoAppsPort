.class final Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1;
.super Lkotlin/jvm/internal/Lambda;
.source "di.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/sdk/lenovoone/di/DiKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/kodein/di/Kodein$MainBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ndi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 di.kt\ncom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1\n+ 2 GKodeinBuilder.kt\norg/kodein/di/generic/GKodeinBuilderKt\n+ 3 types.kt\norg/kodein/di/TypesKt\n+ 4 GBindings.kt\norg/kodein/di/generic/GBindingsKt\n*L\n1#1,28:1\n17#2:29\n17#2:30\n17#2:34\n17#2:35\n17#2:39\n17#2:40\n282#3:31\n282#3:33\n282#3:36\n282#3:38\n282#3:41\n282#3:44\n93#4:32\n93#4:37\n59#4:42\n59#4:43\n*E\n*S KotlinDebug\n*F\n+ 1 di.kt\ncom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1\n*L\n15#1:29\n15#1:30\n16#1:34\n16#1:35\n18#1:39\n18#1:40\n15#1:31\n15#1:33\n16#1:36\n16#1:38\n18#1:41\n18#1:44\n15#1:32\n16#1:37\n18#1:42\n18#1:43\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lorg/kodein/di/Kodein$MainBuilder;",
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
.field public static final INSTANCE:Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1;

    invoke-direct {v0}, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1;-><init>()V

    sput-object v0, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1;->INSTANCE:Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/kodein/di/Kodein$MainBuilder;

    invoke-virtual {p0, p1}, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1;->invoke(Lorg/kodein/di/Kodein$MainBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/kodein/di/Kodein$MainBuilder;)V
    .locals 10

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    move-object v0, p1

    check-cast v0, Lorg/kodein/di/Kodein$Builder;

    const/4 v1, 0x0

    .line 29
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    .line 31
    new-instance v3, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$$special$$inlined$bind$1;

    invoke-direct {v3}, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$$special$$inlined$bind$1;-><init>()V

    check-cast v3, Lorg/kodein/di/TypeReference;

    invoke-static {v3}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v3

    .line 30
    invoke-interface {v0, v3, v1, v2}, Lorg/kodein/di/Kodein$Builder;->Bind(Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$TypeBinder;

    move-result-object v3

    .line 15
    sget-object v4, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->Companion:Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;

    invoke-virtual {v4}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 33
    new-instance v5, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$$special$$inlined$instance$1;

    invoke-direct {v5}, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$$special$$inlined$instance$1;-><init>()V

    check-cast v5, Lorg/kodein/di/TypeReference;

    invoke-static {v5}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v5

    .line 32
    new-instance v6, Lorg/kodein/di/bindings/InstanceBinding;

    invoke-direct {v6, v5, v4}, Lorg/kodein/di/bindings/InstanceBinding;-><init>(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    .line 15
    invoke-interface {v3, v6}, Lorg/kodein/di/Kodein$Builder$TypeBinder;->with(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 36
    new-instance v3, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$$special$$inlined$bind$2;

    invoke-direct {v3}, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$$special$$inlined$bind$2;-><init>()V

    check-cast v3, Lorg/kodein/di/TypeReference;

    invoke-static {v3}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v3

    .line 35
    invoke-interface {v0, v3, v1, v2}, Lorg/kodein/di/Kodein$Builder;->Bind(Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$TypeBinder;

    move-result-object v3

    .line 16
    sget-object v4, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->Companion:Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;

    invoke-virtual {v4}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager$Companion;->getServiceList()Ljava/util/List;

    move-result-object v4

    .line 38
    new-instance v5, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$$special$$inlined$instance$2;

    invoke-direct {v5}, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$$special$$inlined$instance$2;-><init>()V

    check-cast v5, Lorg/kodein/di/TypeReference;

    invoke-static {v5}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v5

    .line 37
    new-instance v6, Lorg/kodein/di/bindings/InstanceBinding;

    invoke-direct {v6, v5, v4}, Lorg/kodein/di/bindings/InstanceBinding;-><init>(Lorg/kodein/di/TypeToken;Ljava/lang/Object;)V

    check-cast v6, Lorg/kodein/di/bindings/KodeinBinding;

    .line 16
    invoke-interface {v3, v6}, Lorg/kodein/di/Kodein$Builder$TypeBinder;->with(Lorg/kodein/di/bindings/KodeinBinding;)V

    .line 41
    new-instance v3, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$$special$$inlined$bind$3;

    invoke-direct {v3}, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$$special$$inlined$bind$3;-><init>()V

    check-cast v3, Lorg/kodein/di/TypeReference;

    invoke-static {v3}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v3

    .line 40
    invoke-interface {v0, v3, v1, v2}, Lorg/kodein/di/Kodein$Builder;->Bind(Lorg/kodein/di/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lorg/kodein/di/Kodein$Builder$TypeBinder;

    move-result-object v0

    .line 18
    check-cast p1, Lorg/kodein/di/Kodein$BindBuilder$WithScope;

    sget-object v2, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$1;->INSTANCE:Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$1;

    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 42
    move-object v7, v1

    check-cast v7, Lorg/kodein/di/bindings/RefMaker;

    .line 43
    invoke-interface {p1}, Lorg/kodein/di/Kodein$BindBuilder$WithScope;->getScope()Lorg/kodein/di/bindings/Scope;

    move-result-object v4

    invoke-interface {p1}, Lorg/kodein/di/Kodein$BindBuilder$WithScope;->getContextType()Lorg/kodein/di/TypeToken;

    move-result-object v5

    .line 44
    new-instance p1, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$$special$$inlined$singleton$1;

    invoke-direct {p1}, Lcom/zui/sdk/lenovoone/di/DiKt$sdkKodein$1$$special$$inlined$singleton$1;-><init>()V

    check-cast p1, Lorg/kodein/di/TypeReference;

    invoke-static {p1}, Lorg/kodein/di/TypesKt;->TT(Lorg/kodein/di/TypeReference;)Lorg/kodein/di/TypeToken;

    move-result-object v6

    .line 43
    new-instance p1, Lorg/kodein/di/bindings/Singleton;

    const/4 v8, 0x1

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lorg/kodein/di/bindings/Singleton;-><init>(Lorg/kodein/di/bindings/Scope;Lorg/kodein/di/TypeToken;Lorg/kodein/di/TypeToken;Lorg/kodein/di/bindings/RefMaker;ZLkotlin/jvm/functions/Function1;)V

    check-cast p1, Lorg/kodein/di/bindings/KodeinBinding;

    .line 18
    invoke-interface {v0, p1}, Lorg/kodein/di/Kodein$Builder$TypeBinder;->with(Lorg/kodein/di/bindings/KodeinBinding;)V

    return-void
.end method
