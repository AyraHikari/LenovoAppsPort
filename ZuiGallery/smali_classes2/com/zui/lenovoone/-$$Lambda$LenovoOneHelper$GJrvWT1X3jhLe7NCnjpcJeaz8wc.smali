.class public final synthetic Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$GJrvWT1X3jhLe7NCnjpcJeaz8wc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/zui/sdk/service/file/ZuiTransferService;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/sdk/service/file/ZuiTransferService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$GJrvWT1X3jhLe7NCnjpcJeaz8wc;->f$0:Lcom/zui/sdk/service/file/ZuiTransferService;

    iput-object p2, p0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$GJrvWT1X3jhLe7NCnjpcJeaz8wc;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$GJrvWT1X3jhLe7NCnjpcJeaz8wc;->f$0:Lcom/zui/sdk/service/file/ZuiTransferService;

    iget-object v1, p0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$GJrvWT1X3jhLe7NCnjpcJeaz8wc;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/zui/lenovoone/LenovoOneHelper;->lambda$doSend$2(Lcom/zui/sdk/service/file/ZuiTransferService;Ljava/util/List;Ljava/lang/Boolean;)V

    return-void
.end method
