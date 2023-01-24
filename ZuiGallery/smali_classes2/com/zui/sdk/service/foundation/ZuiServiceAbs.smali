.class public abstract Lcom/zui/sdk/service/foundation/ZuiServiceAbs;
.super Ljava/lang/Object;
.source "ZuiServiceAbs.kt"

# interfaces
.implements Lcom/zui/sdk/service/foundation/ZuiService;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\'\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007*\u0001\u0008\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u0008\u0010\u000c\u001a\u00020\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u0004H\u0016J\u0008\u0010\u000e\u001a\u00020\u0006H\u0016J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0004H\u0017J\u0008\u0010\u0011\u001a\u00020\u000bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/zui/sdk/service/foundation/ZuiServiceAbs;",
        "Lcom/zui/sdk/service/foundation/ZuiService;",
        "()V",
        "ctx",
        "Landroid/content/Context;",
        "isServiceConnect",
        "",
        "serviceConnection",
        "com/zui/sdk/service/foundation/ZuiServiceAbs$serviceConnection$1",
        "Lcom/zui/sdk/service/foundation/ZuiServiceAbs$serviceConnection$1;",
        "bind",
        "",
        "exists",
        "getContext",
        "isBind",
        "onInit",
        "context",
        "unbind",
        "lenovoone-service-foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private isServiceConnect:Z

.field private final serviceConnection:Lcom/zui/sdk/service/foundation/ZuiServiceAbs$serviceConnection$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/zui/sdk/service/foundation/ZuiServiceAbs$serviceConnection$1;

    invoke-direct {v0, p0}, Lcom/zui/sdk/service/foundation/ZuiServiceAbs$serviceConnection$1;-><init>(Lcom/zui/sdk/service/foundation/ZuiServiceAbs;)V

    iput-object v0, p0, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;->serviceConnection:Lcom/zui/sdk/service/foundation/ZuiServiceAbs$serviceConnection$1;

    return-void
.end method

.method public static final synthetic access$isServiceConnect$p(Lcom/zui/sdk/service/foundation/ZuiServiceAbs;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;->isServiceConnect:Z

    return p0
.end method

.method public static final synthetic access$setServiceConnect$p(Lcom/zui/sdk/service/foundation/ZuiServiceAbs;Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;->isServiceConnect:Z

    return-void
.end method

.method private final bind()V
    .locals 5

    .line 51
    invoke-virtual {p0}, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;->getBindIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;->ctx:Landroid/content/Context;

    const-string v2, "ctx"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0, v1}, Lcom/zui/tools/util/x/IntentKt;->targetExist(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    const-string v3, "LenovoOneSDK-Found"

    if-nez v1, :cond_1

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "component not exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;->ctx:Landroid/content/Context;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;->serviceConnection:Lcom/zui/sdk/service/foundation/ZuiServiceAbs$serviceConnection$1;

    check-cast v2, Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start binding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind service("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") error: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private final unbind()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;->ctx:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "ctx"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;->serviceConnection:Lcom/zui/sdk/service/foundation/ZuiServiceAbs$serviceConnection$1;

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;->isServiceConnect:Z

    return-void
.end method


# virtual methods
.method public exists()Z
    .locals 3

    .line 43
    invoke-virtual {p0}, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;->getBindIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;->ctx:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v2, "ctx"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0, v1}, Lcom/zui/tools/util/x/IntentKt;->targetExist(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;->ctx:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "ctx"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public isBind()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;->isServiceConnect:Z

    return v0
.end method

.method public onInit(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LenovoOneSDK-Found"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput-object p1, p0, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;->ctx:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;->bind()V

    return-void
.end method
