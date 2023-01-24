.class public final synthetic Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$yw_k041eVTx3bHKrqtkX8e3GdEw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lcom/zui/lenovoone/ui/tool/Extras;

.field public final synthetic f$2:Lcom/zui/sdk/service/file/ZuiTransferService;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/zui/lenovoone/ui/tool/Extras;Lcom/zui/sdk/service/file/ZuiTransferService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$yw_k041eVTx3bHKrqtkX8e3GdEw;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$yw_k041eVTx3bHKrqtkX8e3GdEw;->f$1:Lcom/zui/lenovoone/ui/tool/Extras;

    iput-object p3, p0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$yw_k041eVTx3bHKrqtkX8e3GdEw;->f$2:Lcom/zui/sdk/service/file/ZuiTransferService;

    iput-object p4, p0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$yw_k041eVTx3bHKrqtkX8e3GdEw;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$yw_k041eVTx3bHKrqtkX8e3GdEw;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$yw_k041eVTx3bHKrqtkX8e3GdEw;->f$1:Lcom/zui/lenovoone/ui/tool/Extras;

    iget-object v2, p0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$yw_k041eVTx3bHKrqtkX8e3GdEw;->f$2:Lcom/zui/sdk/service/file/ZuiTransferService;

    iget-object v3, p0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$yw_k041eVTx3bHKrqtkX8e3GdEw;->f$3:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/zui/lenovoone/LenovoOneHelper;->lambda$doSend$4(Landroid/app/Activity;Lcom/zui/lenovoone/ui/tool/Extras;Lcom/zui/sdk/service/file/ZuiTransferService;Ljava/util/List;)V

    return-void
.end method
