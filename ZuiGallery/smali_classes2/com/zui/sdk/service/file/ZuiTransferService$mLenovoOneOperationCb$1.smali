.class public final Lcom/zui/sdk/service/file/ZuiTransferService$mLenovoOneOperationCb$1;
.super Lcom/zui/wifip2p/IFileOperationCallback$Stub;
.source "ZuiTransferService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/sdk/service/file/ZuiTransferService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZuiTransferService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZuiTransferService.kt\ncom/zui/sdk/service/file/ZuiTransferService$mLenovoOneOperationCb$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,121:1\n1591#2,2:122\n*E\n*S KotlinDebug\n*F\n+ 1 ZuiTransferService.kt\ncom/zui/sdk/service/file/ZuiTransferService$mLenovoOneOperationCb$1\n*L\n34#1,2:122\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001a\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/zui/sdk/service/file/ZuiTransferService$mLenovoOneOperationCb$1",
        "Lcom/zui/wifip2p/IFileOperationCallback$Stub;",
        "onConnectionStateChange",
        "",
        "status",
        "",
        "onSendFileStatus",
        "extra",
        "Landroid/os/Bundle;",
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
.field final synthetic this$0:Lcom/zui/sdk/service/file/ZuiTransferService;


# direct methods
.method constructor <init>(Lcom/zui/sdk/service/file/ZuiTransferService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/zui/sdk/service/file/ZuiTransferService$mLenovoOneOperationCb$1;->this$0:Lcom/zui/sdk/service/file/ZuiTransferService;

    invoke-direct {p0}, Lcom/zui/wifip2p/IFileOperationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChange(I)V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionStateChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LenovoOneSDK-File"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/zui/sdk/service/file/ZuiTransferService$mLenovoOneOperationCb$1;->this$0:Lcom/zui/sdk/service/file/ZuiTransferService;

    invoke-static {p1, v0}, Lcom/zui/sdk/service/file/ZuiTransferService;->access$setLenovoOneConnect$p(Lcom/zui/sdk/service/file/ZuiTransferService;Z)V

    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/zui/sdk/service/file/ZuiTransferService$mLenovoOneOperationCb$1;->this$0:Lcom/zui/sdk/service/file/ZuiTransferService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/sdk/service/file/ZuiTransferService;->access$setLenovoOneConnect$p(Lcom/zui/sdk/service/file/ZuiTransferService;Z)V

    .line 34
    :goto_0
    iget-object p1, p0, Lcom/zui/sdk/service/file/ZuiTransferService$mLenovoOneOperationCb$1;->this$0:Lcom/zui/sdk/service/file/ZuiTransferService;

    invoke-static {p1}, Lcom/zui/sdk/service/file/ZuiTransferService;->access$getConnectionListenerSet$p(Lcom/zui/sdk/service/file/ZuiTransferService;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 122
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/sdk/service/file/ZuiTransferService$ConnectionListener;

    .line 34
    iget-object v1, p0, Lcom/zui/sdk/service/file/ZuiTransferService$mLenovoOneOperationCb$1;->this$0:Lcom/zui/sdk/service/file/ZuiTransferService;

    invoke-static {v1}, Lcom/zui/sdk/service/file/ZuiTransferService;->access$isLenovoOneConnect$p(Lcom/zui/sdk/service/file/ZuiTransferService;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/zui/sdk/service/file/ZuiTransferService$ConnectionListener;->onConnectionChange(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onSendFileStatus(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
