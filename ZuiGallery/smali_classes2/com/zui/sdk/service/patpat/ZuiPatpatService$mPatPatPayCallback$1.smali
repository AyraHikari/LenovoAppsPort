.class public final Lcom/zui/sdk/service/patpat/ZuiPatpatService$mPatPatPayCallback$1;
.super Lcom/zui/cores/patpat/IPatPatPayCallback$Stub;
.source "ZuiPatpatService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/sdk/service/patpat/ZuiPatpatService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/zui/sdk/service/patpat/ZuiPatpatService$mPatPatPayCallback$1",
        "Lcom/zui/cores/patpat/IPatPatPayCallback$Stub;",
        "patpatCallback",
        "",
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
.field final synthetic this$0:Lcom/zui/sdk/service/patpat/ZuiPatpatService;


# direct methods
.method constructor <init>(Lcom/zui/sdk/service/patpat/ZuiPatpatService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService$mPatPatPayCallback$1;->this$0:Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    invoke-direct {p0}, Lcom/zui/cores/patpat/IPatPatPayCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public patpatCallback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/zui/sdk/service/patpat/ZuiPatpatService$mPatPatPayCallback$1;->this$0:Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    invoke-static {v0}, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->access$getListeners$p(Lcom/zui/sdk/service/patpat/ZuiPatpatService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;

    .line 22
    invoke-interface {v1}, Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;->onPatpat()V

    goto :goto_0

    :cond_0
    return-void
.end method
