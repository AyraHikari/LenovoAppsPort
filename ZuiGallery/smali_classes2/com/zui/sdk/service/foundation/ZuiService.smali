.class public interface abstract Lcom/zui/sdk/service/foundation/ZuiService;
.super Ljava/lang/Object;
.source "ZuiService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0008\u0010\r\u001a\u00020\nH&J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0007H&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/zui/sdk/service/foundation/ZuiService;",
        "",
        "exists",
        "",
        "getBindIntent",
        "Landroid/content/Intent;",
        "getContext",
        "Landroid/content/Context;",
        "isBind",
        "onConnect",
        "",
        "service",
        "Landroid/os/IBinder;",
        "onDisconnect",
        "onInit",
        "context",
        "lenovoone-service-foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract exists()Z
.end method

.method public abstract getBindIntent()Landroid/content/Intent;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract isBind()Z
.end method

.method public abstract onConnect(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDisconnect()V
.end method

.method public abstract onInit(Landroid/content/Context;)V
.end method
