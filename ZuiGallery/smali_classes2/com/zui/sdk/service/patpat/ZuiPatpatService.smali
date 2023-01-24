.class public final Lcom/zui/sdk/service/patpat/ZuiPatpatService;
.super Lcom/zui/sdk/service/foundation/ZuiServiceAbs;
.source "ZuiPatpatService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007J\u0008\u0010\u000f\u001a\u00020\rH\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\rH\u0016J\u000e\u0010\u0016\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/zui/sdk/service/patpat/ZuiPatpatService;",
        "Lcom/zui/sdk/service/foundation/ZuiServiceAbs;",
        "()V",
        "isRemoteCbRegister",
        "",
        "listeners",
        "Ljava/util/concurrent/CopyOnWriteArraySet;",
        "Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;",
        "mPatPatPayCallback",
        "Lcom/zui/cores/patpat/IPatPatPayCallback;",
        "patpatService",
        "Lcom/zui/cores/patpat/IPatPatPayGesture;",
        "addListener",
        "",
        "zuiGestureListener",
        "checkRemoteCallback",
        "getBindIntent",
        "Landroid/content/Intent;",
        "onConnect",
        "service",
        "Landroid/os/IBinder;",
        "onDisconnect",
        "removeListener",
        "PatpatListener",
        "lenovoone-service-patpat_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private isRemoteCbRegister:Z

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPatPatPayCallback:Lcom/zui/cores/patpat/IPatPatPayCallback;

.field private patpatService:Lcom/zui/cores/patpat/IPatPatPayGesture;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 18
    new-instance v0, Lcom/zui/sdk/service/patpat/ZuiPatpatService$mPatPatPayCallback$1;

    invoke-direct {v0, p0}, Lcom/zui/sdk/service/patpat/ZuiPatpatService$mPatPatPayCallback$1;-><init>(Lcom/zui/sdk/service/patpat/ZuiPatpatService;)V

    check-cast v0, Lcom/zui/cores/patpat/IPatPatPayCallback;

    iput-object v0, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->mPatPatPayCallback:Lcom/zui/cores/patpat/IPatPatPayCallback;

    return-void
.end method

.method public static final synthetic access$getListeners$p(Lcom/zui/sdk/service/patpat/ZuiPatpatService;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private final checkRemoteCallback()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->patpatService:Lcom/zui/cores/patpat/IPatPatPayGesture;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 60
    iput-boolean v1, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->isRemoteCbRegister:Z

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    const-string v2, "LenovoOneSDK-patpat"

    if-eqz v0, :cond_2

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->patpatService:Lcom/zui/cores/patpat/IPatPatPayGesture;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->mPatPatPayCallback:Lcom/zui/cores/patpat/IPatPatPayCallback;

    invoke-interface {v0, v3}, Lcom/zui/cores/patpat/IPatPatPayGesture;->unregisterPatPatSensorCallBack(Lcom/zui/cores/patpat/IPatPatPayCallback;)Z

    .line 67
    :cond_1
    iput-boolean v1, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->isRemoteCbRegister:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->patpatService:Lcom/zui/cores/patpat/IPatPatPayGesture;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->mPatPatPayCallback:Lcom/zui/cores/patpat/IPatPatPayCallback;

    invoke-interface {v0, v1}, Lcom/zui/cores/patpat/IPatPatPayGesture;->registerPatPatSensorCallBack(Lcom/zui/cores/patpat/IPatPatPayCallback;)Z

    :cond_3
    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->isRemoteCbRegister:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 76
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;)V
    .locals 2

    const-string v0, "zuiGestureListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "LenovoOneSDK-patpat"

    const-string v1, "gesture addListener"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-direct {p0}, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->checkRemoteCallback()V

    return-void
.end method

.method public getBindIntent()Landroid/content/Intent;
    .locals 4

    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 29
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.zui.cores"

    const-string v3, "com.zui.cores.wus.service.PayGestureService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent().setComponent(\n \u2026S\n            )\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onConnect(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Lcom/zui/cores/patpat/IPatPatPayGesture$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cores/patpat/IPatPatPayGesture;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->patpatService:Lcom/zui/cores/patpat/IPatPatPayGesture;

    .line 38
    invoke-direct {p0}, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->checkRemoteCallback()V

    return-void
.end method

.method public onDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    check-cast v0, Lcom/zui/cores/patpat/IPatPatPayGesture;

    iput-object v0, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->patpatService:Lcom/zui/cores/patpat/IPatPatPayGesture;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->isRemoteCbRegister:Z

    return-void
.end method

.method public final removeListener(Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;)V
    .locals 2

    const-string v0, "zuiGestureListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "LenovoOneSDK-patpat"

    const-string v1, "remove addListener"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 55
    invoke-direct {p0}, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->checkRemoteCallback()V

    return-void
.end method
