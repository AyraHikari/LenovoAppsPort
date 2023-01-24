.class public final Lcom/zui/sdk/lenovoone/manager/impl/LenovoOneManagerImpl;
.super Ljava/lang/Object;
.source "LenovoOneManagerImpl.kt"

# interfaces
.implements Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLenovoOneManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LenovoOneManagerImpl.kt\ncom/zui/sdk/lenovoone/manager/impl/LenovoOneManagerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1591#2,2:36\n*E\n*S KotlinDebug\n*F\n+ 1 LenovoOneManagerImpl.kt\ncom/zui/sdk/lenovoone/manager/impl/LenovoOneManagerImpl\n*L\n17#1,2:36\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\'\u0010\u000b\u001a\u0004\u0018\u0001H\u000c\"\u0008\u0008\u0000\u0010\u000c*\u00020\u00062\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\nH\u0016\u00a2\u0006\u0002\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0008\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\n\u0012\u0004\u0012\u00020\u00060\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/zui/sdk/lenovoone/manager/impl/LenovoOneManagerImpl;",
        "Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;",
        "ctx",
        "Landroid/content/Context;",
        "services",
        "",
        "Lcom/zui/sdk/service/foundation/ZuiService;",
        "(Landroid/content/Context;Ljava/util/List;)V",
        "serviceMap",
        "",
        "Ljava/lang/Class;",
        "service",
        "T",
        "clazz",
        "(Ljava/lang/Class;)Lcom/zui/sdk/service/foundation/ZuiService;",
        "lenovoone-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/zui/sdk/service/foundation/ZuiService;",
            ">;",
            "Lcom/zui/sdk/service/foundation/ZuiService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/zui/sdk/service/foundation/ZuiService;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "services"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/sdk/lenovoone/manager/impl/LenovoOneManagerImpl;->ctx:Landroid/content/Context;

    .line 13
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/zui/sdk/lenovoone/manager/impl/LenovoOneManagerImpl;->serviceMap:Ljava/util/Map;

    const-string p1, "LenovoOneSDK-Manager"

    const-string v0, "LenovoOneManagerImpl initialized"

    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    check-cast p2, Ljava/lang/Iterable;

    .line 36
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/sdk/service/foundation/ZuiService;

    .line 18
    iget-object v0, p0, Lcom/zui/sdk/lenovoone/manager/impl/LenovoOneManagerImpl;->serviceMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/sdk/lenovoone/manager/impl/LenovoOneManagerImpl;->ctx:Landroid/content/Context;

    invoke-interface {p2, v2}, Lcom/zui/sdk/service/foundation/ZuiService;->onInit(Landroid/content/Context;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public service(Ljava/lang/Class;)Lcom/zui/sdk/service/foundation/ZuiService;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/zui/sdk/service/foundation/ZuiService;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/zui/sdk/lenovoone/manager/impl/LenovoOneManagerImpl;->serviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/sdk/service/foundation/ZuiService;

    const-string v1, "LenovoOneSDK-Manager"

    if-nez v0, :cond_0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not installed"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {v0}, Lcom/zui/sdk/service/foundation/ZuiService;->isBind()Z

    move-result v2

    if-nez v2, :cond_1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " again"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcom/zui/sdk/lenovoone/manager/impl/LenovoOneManagerImpl;->ctx:Landroid/content/Context;

    invoke-interface {v0, p1}, Lcom/zui/sdk/service/foundation/ZuiService;->onInit(Landroid/content/Context;)V

    .line 32
    :cond_1
    :goto_0
    instance-of p1, v0, Lcom/zui/sdk/service/foundation/ZuiService;

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method
