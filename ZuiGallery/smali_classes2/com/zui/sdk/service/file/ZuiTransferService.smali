.class public final Lcom/zui/sdk/service/file/ZuiTransferService;
.super Lcom/zui/sdk/service/foundation/ZuiServiceAbs;
.source "ZuiTransferService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/sdk/service/file/ZuiTransferService$ConnectionListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001#B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0006\u0010\u0013\u001a\u00020\u000bJ\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u000fH\u0016J\u0010\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u000e\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005J\u0010\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u000e\u0010\u001e\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\"R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/zui/sdk/service/file/ZuiTransferService;",
        "Lcom/zui/sdk/service/foundation/ZuiServiceAbs;",
        "()V",
        "connectionListenerSet",
        "",
        "Lcom/zui/sdk/service/file/ZuiTransferService$ConnectionListener;",
        "isLenovoOneConnect",
        "",
        "mLenovoOneOperationCb",
        "Lcom/zui/wifip2p/IFileOperationCallback$Stub;",
        "settingsConfig",
        "Lcom/zui/sdk/service/file/SettingsConfig;",
        "transferService",
        "Lcom/zui/wifip2p/service/IFileOperation;",
        "addConnectionListener",
        "",
        "connectionListener",
        "getBindIntent",
        "Landroid/content/Intent;",
        "getConfig",
        "getRemote",
        "Lcom/zui/sdk/service/file/model/Remote;",
        "onConnect",
        "service",
        "Landroid/os/IBinder;",
        "onDisconnect",
        "onInit",
        "context",
        "Landroid/content/Context;",
        "removeConnectionListener",
        "submit",
        "transferFileTask",
        "Lcom/zui/sdk/service/file/task/TransferFileTask;",
        "transferTask",
        "Lcom/zui/sdk/service/file/task/TransferTask;",
        "ConnectionListener",
        "lenovoone-service-file_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final connectionListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zui/sdk/service/file/ZuiTransferService$ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private isLenovoOneConnect:Z

.field private final mLenovoOneOperationCb:Lcom/zui/wifip2p/IFileOperationCallback$Stub;

.field private settingsConfig:Lcom/zui/sdk/service/file/SettingsConfig;

.field private transferService:Lcom/zui/wifip2p/service/IFileOperation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->connectionListenerSet:Ljava/util/Set;

    .line 27
    new-instance v0, Lcom/zui/sdk/service/file/ZuiTransferService$mLenovoOneOperationCb$1;

    invoke-direct {v0, p0}, Lcom/zui/sdk/service/file/ZuiTransferService$mLenovoOneOperationCb$1;-><init>(Lcom/zui/sdk/service/file/ZuiTransferService;)V

    check-cast v0, Lcom/zui/wifip2p/IFileOperationCallback$Stub;

    iput-object v0, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->mLenovoOneOperationCb:Lcom/zui/wifip2p/IFileOperationCallback$Stub;

    return-void
.end method

.method public static final synthetic access$getConnectionListenerSet$p(Lcom/zui/sdk/service/file/ZuiTransferService;)Ljava/util/Set;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->connectionListenerSet:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$isLenovoOneConnect$p(Lcom/zui/sdk/service/file/ZuiTransferService;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->isLenovoOneConnect:Z

    return p0
.end method

.method public static final synthetic access$setLenovoOneConnect$p(Lcom/zui/sdk/service/file/ZuiTransferService;Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->isLenovoOneConnect:Z

    return-void
.end method

.method private final submit(Lcom/zui/sdk/service/file/task/TransferFileTask;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->transferService:Lcom/zui/wifip2p/service/IFileOperation;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/sdk/service/file/task/TransferFileTask;->getUris()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zui/sdk/service/file/task/TransferFileTask;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/zui/wifip2p/service/IFileOperation;->sendFile(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addConnectionListener(Lcom/zui/sdk/service/file/ZuiTransferService$ConnectionListener;)V
    .locals 2

    const-string v0, "connectionListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->connectionListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "LenovoOneSDK-File"

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->connectionListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    iget-boolean v0, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->isLenovoOneConnect:Z

    invoke-interface {p1, v0}, Lcom/zui/sdk/service/file/ZuiTransferService$ConnectionListener;->onConnectionChange(Z)V

    const-string p1, "addConnectionListener listener added and invoked"

    .line 102
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "addConnectionListener listener already added do nothing"

    .line 104
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getBindIntent()Landroid/content/Intent;
    .locals 4

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.zui.wifip2p"

    const-string v3, "com.zui.wifip2p.RemoteStatusService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent().setComponent(\n \u2026S\n            )\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getConfig()Lcom/zui/sdk/service/file/SettingsConfig;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->settingsConfig:Lcom/zui/sdk/service/file/SettingsConfig;

    if-nez v0, :cond_0

    const-string v1, "settingsConfig"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getRemote()Lcom/zui/sdk/service/file/model/Remote;
    .locals 4

    .line 77
    invoke-virtual {p0}, Lcom/zui/sdk/service/file/ZuiTransferService;->isBind()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->isLenovoOneConnect:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->transferService:Lcom/zui/wifip2p/service/IFileOperation;

    if-eqz v0, :cond_1

    const-string v1, "remote"

    invoke-interface {v0, v1}, Lcom/zui/wifip2p/service/IFileOperation;->getValue(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 85
    :cond_1
    iget-boolean v0, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->isLenovoOneConnect:Z

    .line 91
    sget-object v2, Lcom/zui/sdk/service/file/model/Remote;->Companion:Lcom/zui/sdk/service/file/model/Remote$Companion;

    invoke-virtual {v2, v0, v1}, Lcom/zui/sdk/service/file/model/Remote$Companion;->fromBundle(ILandroid/os/Bundle;)Lcom/zui/sdk/service/file/model/Remote;

    move-result-object v0

    return-object v0

    .line 79
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service bind: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/sdk/service/file/ZuiTransferService;->isBind()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", lenovo one connection: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->isLenovoOneConnect:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LenovoOneSDK-File"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Lcom/zui/sdk/service/file/model/Remote;->Companion:Lcom/zui/sdk/service/file/model/Remote$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/zui/sdk/service/file/model/Remote$Companion;->default$default(Lcom/zui/sdk/service/file/model/Remote$Companion;IILjava/lang/Object;)Lcom/zui/sdk/service/file/model/Remote;

    move-result-object v0

    return-object v0
.end method

.method public onConnect(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Lcom/zui/sdk/service/file/x/IBinderKt;->transferService(Landroid/os/IBinder;)Lcom/zui/wifip2p/service/IFileOperation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->transferService:Lcom/zui/wifip2p/service/IFileOperation;

    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->mLenovoOneOperationCb:Lcom/zui/wifip2p/IFileOperationCallback$Stub;

    check-cast v0, Lcom/zui/wifip2p/IFileOperationCallback;

    invoke-interface {p1, v0}, Lcom/zui/wifip2p/service/IFileOperation;->registerCallback(Lcom/zui/wifip2p/IFileOperationCallback;)Z

    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    check-cast v0, Lcom/zui/wifip2p/service/IFileOperation;

    iput-object v0, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->transferService:Lcom/zui/wifip2p/service/IFileOperation;

    return-void
.end method

.method public onInit(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Lcom/zui/sdk/service/foundation/ZuiServiceAbs;->onInit(Landroid/content/Context;)V

    .line 43
    new-instance v0, Lcom/zui/sdk/service/file/SettingsConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "context.contentResolver"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/zui/sdk/service/file/SettingsConfig;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->settingsConfig:Lcom/zui/sdk/service/file/SettingsConfig;

    return-void
.end method

.method public final removeConnectionListener(Lcom/zui/sdk/service/file/ZuiTransferService$ConnectionListener;)V
    .locals 2

    const-string v0, "connectionListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->connectionListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "LenovoOneSDK-File"

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/zui/sdk/service/file/ZuiTransferService;->connectionListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string p1, "addConnectionListener listener removed"

    .line 111
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "addConnectionListener not add yet"

    .line 113
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final submit(Lcom/zui/sdk/service/file/task/TransferTask;)V
    .locals 2

    const-string v0, "transferTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    instance-of v0, p1, Lcom/zui/sdk/service/file/task/TransferFileTask;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Lcom/zui/sdk/service/file/task/TransferFileTask;

    invoke-direct {p0, p1}, Lcom/zui/sdk/service/file/ZuiTransferService;->submit(Lcom/zui/sdk/service/file/task/TransferFileTask;)V

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LenovoOneSDK-File"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
