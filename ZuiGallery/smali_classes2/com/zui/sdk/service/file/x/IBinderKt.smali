.class public final Lcom/zui/sdk/service/file/x/IBinderKt;
.super Ljava/lang/Object;
.source "IBinder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0002\u001a\u0004\u0018\u00010\u0003*\u00020\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "SERVICE_FILE",
        "",
        "transferService",
        "Lcom/zui/wifip2p/service/IFileOperation;",
        "Landroid/os/IBinder;",
        "lenovoone-service-file_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final SERVICE_FILE:I = 0x1


# direct methods
.method public static final transferService(Landroid/os/IBinder;)Lcom/zui/wifip2p/service/IFileOperation;
    .locals 1

    const-string v0, "$this$transferService"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lcom/zui/wifip2p/service/IServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/wifip2p/service/IServiceManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/zui/wifip2p/service/IServiceManager;->getService(I)Landroid/os/IBinder;

    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/zui/wifip2p/service/IFileOperation$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/wifip2p/service/IFileOperation;

    move-result-object p0

    return-object p0
.end method
