.class public Lcom/zui/lenovoone/LenovoOneHelper;
.super Ljava/lang/Object;
.source "LenovoOneHelper.java"


# static fields
.field private static final KEY_DRAG_AND_DROP_ENABLE:Ljava/lang/String; = "drag_and_drop_enable"

.field private static final TAG:Ljava/lang/String; = "LenovoOneHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doDrag(Lcom/zui/sdk/service/file/ZuiTransferService;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/sdk/service/file/ZuiTransferService;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-static {p1}, Lcom/zui/sdk/service/file/task/TransferFileTask;->drag(Ljava/util/List;)Lcom/zui/sdk/service/file/task/TransferTask;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/sdk/service/file/ZuiTransferService;->submit(Lcom/zui/sdk/service/file/task/TransferTask;)V

    return-void
.end method

.method private static doSend(Lcom/zui/sdk/service/file/model/Remote;Landroid/app/Activity;Lcom/zui/sdk/service/file/ZuiTransferService;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/sdk/service/file/model/Remote;",
            "Landroid/app/Activity;",
            "Lcom/zui/sdk/service/file/ZuiTransferService;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 148
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$cYL0L0IM52LyojJwo43i0vo5gn4;->INSTANCE:Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$cYL0L0IM52LyojJwo43i0vo5gn4;

    .line 149
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 150
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 154
    new-instance v1, Lcom/zui/lenovoone/ui/tool/Extras;

    .line 155
    invoke-virtual {p0}, Lcom/zui/sdk/service/file/model/Remote;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/zui/lenovoone/ui/tool/Extras;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 160
    new-instance p0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$yw_k041eVTx3bHKrqtkX8e3GdEw;

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$yw_k041eVTx3bHKrqtkX8e3GdEw;-><init>(Landroid/app/Activity;Lcom/zui/lenovoone/ui/tool/Extras;Lcom/zui/sdk/service/file/ZuiTransferService;Ljava/util/List;)V

    invoke-virtual {p1, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {p3}, Lcom/zui/sdk/service/file/task/TransferFileTask;->open(Ljava/util/List;)Lcom/zui/sdk/service/file/task/TransferTask;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/zui/sdk/service/file/ZuiTransferService;->submit(Lcom/zui/sdk/service/file/task/TransferTask;)V

    :goto_0
    return-void
.end method

.method public static drag(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaItem;I)Z
    .locals 7

    .line 41
    invoke-static {}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->instance()Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;

    move-result-object v0

    const-class v1, Lcom/zui/sdk/service/file/ZuiTransferService;

    invoke-interface {v0, v1}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->service(Ljava/lang/Class;)Lcom/zui/sdk/service/foundation/ZuiService;

    move-result-object v0

    check-cast v0, Lcom/zui/sdk/service/file/ZuiTransferService;

    const-string v1, "lenovooneXX"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 43
    invoke-virtual {v0}, Lcom/zui/sdk/service/file/ZuiTransferService;->getRemote()Lcom/zui/sdk/service/file/model/Remote;

    move-result-object v3

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drag):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/zui/sdk/service/file/model/Remote;->getConnection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isLenovoOneMotion(deviceId):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/zui/lenovoone/LenovoOneHelper;->isLenovoOneMotion(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {v3}, Lcom/zui/sdk/service/file/model/Remote;->getConnection()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 46
    invoke-static {p2}, Lcom/zui/lenovoone/LenovoOneHelper;->isLenovoOneMotion(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p0

    iget-object p1, p1, Lcom/zui/gallery/data/MediaItem;->mPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static {v0, p2}, Lcom/zui/lenovoone/LenovoOneHelper;->doDrag(Lcom/zui/sdk/service/file/ZuiTransferService;Ljava/util/List;)V

    return v6

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/lenovoone/LenovoOneHelper;->isEnableDragAndDrop(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "LenovoOneHelper"

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 60
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "drag fail remote.getConnection():"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/zui/sdk/service/file/model/Remote;->getConnection()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " deviceId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 53
    :cond_3
    :goto_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/zui/lenovoone/LenovoOneHelper;->startDragAndDrop(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v6

    :cond_4
    const-string p0, "drag: zuiTransferService!=null"

    .line 64
    invoke-static {v1, p0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static dragBatch(Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/ui/SelectionManager;I)Z
    .locals 7

    .line 70
    invoke-static {}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->instance()Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;

    move-result-object v0

    const-class v1, Lcom/zui/sdk/service/file/ZuiTransferService;

    invoke-interface {v0, v1}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->service(Ljava/lang/Class;)Lcom/zui/sdk/service/foundation/ZuiService;

    move-result-object v0

    check-cast v0, Lcom/zui/sdk/service/file/ZuiTransferService;

    const/4 v1, 0x0

    const-string v2, "lenovooneXX"

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {v0}, Lcom/zui/sdk/service/file/ZuiTransferService;->getRemote()Lcom/zui/sdk/service/file/model/Remote;

    move-result-object v3

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dragBatch):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/zui/sdk/service/file/model/Remote;->getConnection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isLenovoOneMotion(deviceId):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/zui/lenovoone/LenovoOneHelper;->isLenovoOneMotion(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v3}, Lcom/zui/sdk/service/file/model/Remote;->getConnection()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 75
    invoke-static {p2}, Lcom/zui/lenovoone/LenovoOneHelper;->isLenovoOneMotion(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    invoke-static {p0, p1}, Lcom/zui/lenovoone/LenovoOneHelper;->selectedUris(Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/ui/SelectionManager;)Ljava/util/List;

    move-result-object p0

    .line 78
    invoke-static {v0, p0}, Lcom/zui/lenovoone/LenovoOneHelper;->doDrag(Lcom/zui/sdk/service/file/ZuiTransferService;Ljava/util/List;)V

    return v6

    .line 81
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "dragBatch fail remote.getConnection():"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/zui/sdk/service/file/model/Remote;->getConnection()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " deviceId:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string p0, "dragBatch: zuiTransferService!=null"

    .line 85
    invoke-static {v2, p0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isEnableDragAndDrop(Landroid/content/Context;)Z
    .locals 2

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "drag_and_drop_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isLenovoOneMotion(I)Z
    .locals 0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$cYL0L0IM52LyojJwo43i0vo5gn4(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$doSend$0(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$doSend$1(Ljava/lang/Boolean;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$doSend$2(Lcom/zui/sdk/service/file/ZuiTransferService;Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    invoke-static {p1}, Lcom/zui/sdk/service/file/task/TransferFileTask;->open(Ljava/util/List;)Lcom/zui/sdk/service/file/task/TransferTask;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/sdk/service/file/ZuiTransferService;->submit(Lcom/zui/sdk/service/file/task/TransferTask;)V

    return-void
.end method

.method static synthetic lambda$doSend$3(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LenovoOneHelper"

    invoke-static {v0, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$doSend$4(Landroid/app/Activity;Lcom/zui/lenovoone/ui/tool/Extras;Lcom/zui/sdk/service/file/ZuiTransferService;Ljava/util/List;)V
    .locals 1

    .line 161
    invoke-static {p0}, Lrx_activity_result2/RxActivityResult;->on(Landroid/app/Activity;)Lrx_activity_result2/RxActivityResult$Builder;

    move-result-object v0

    .line 162
    invoke-static {p0, p1}, Lcom/zui/lenovoone/ui/tool/LenovoOneUIUtil;->intent(Landroid/content/Context;Lcom/zui/lenovoone/ui/tool/Extras;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Lrx_activity_result2/RxActivityResult$Builder;->startIntent(Landroid/content/Intent;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$jasiMaLeOjkn0q7-jN0MQoaqIrw;->INSTANCE:Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$jasiMaLeOjkn0q7-jN0MQoaqIrw;

    .line 163
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$6_b1dPOx81mOn7TLMCMwkqaC3LM;->INSTANCE:Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$6_b1dPOx81mOn7TLMCMwkqaC3LM;

    .line 164
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$KVixCLVeil-2sl3Ub2YM-6R3YFE;->INSTANCE:Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$KVixCLVeil-2sl3Ub2YM-6R3YFE;

    .line 165
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$GJrvWT1X3jhLe7NCnjpcJeaz8wc;

    invoke-direct {p1, p2, p3}, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$GJrvWT1X3jhLe7NCnjpcJeaz8wc;-><init>(Lcom/zui/sdk/service/file/ZuiTransferService;Ljava/util/List;)V

    sget-object p2, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$JmN3ceI9HVMx3FZhdqlT-g3mXhA;->INSTANCE:Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$JmN3ceI9HVMx3FZhdqlT-g3mXhA;

    .line 166
    invoke-virtual {p0, p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static synthetic lambda$jasiMaLeOjkn0q7-jN0MQoaqIrw(Lrx_activity_result2/Result;)I
    .locals 0

    invoke-virtual {p0}, Lrx_activity_result2/Result;->resultCode()I

    move-result p0

    return p0
.end method

.method public static open(Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/data/MediaItem;I)Z
    .locals 6

    .line 91
    invoke-static {}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->instance()Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;

    move-result-object v0

    const-class v1, Lcom/zui/sdk/service/file/ZuiTransferService;

    invoke-interface {v0, v1}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->service(Ljava/lang/Class;)Lcom/zui/sdk/service/foundation/ZuiService;

    move-result-object v0

    check-cast v0, Lcom/zui/sdk/service/file/ZuiTransferService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/zui/sdk/service/file/ZuiTransferService;->getRemote()Lcom/zui/sdk/service/file/model/Remote;

    move-result-object v2

    .line 94
    invoke-virtual {v0}, Lcom/zui/sdk/service/file/ZuiTransferService;->getConfig()Lcom/zui/sdk/service/file/SettingsConfig;

    move-result-object v3

    .line 95
    invoke-virtual {v2}, Lcom/zui/sdk/service/file/model/Remote;->getConnection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 96
    invoke-static {p2}, Lcom/zui/lenovoone/LenovoOneHelper;->isLenovoOneMotion(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {v3}, Lcom/zui/sdk/service/file/SettingsConfig;->isOpenMediaRemotely()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 98
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    iget-object p1, p1, Lcom/zui/gallery/data/MediaItem;->mPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 100
    invoke-static {v2, p0, v0, p2}, Lcom/zui/lenovoone/LenovoOneHelper;->doSend(Lcom/zui/sdk/service/file/model/Remote;Landroid/app/Activity;Lcom/zui/sdk/service/file/ZuiTransferService;Ljava/util/List;)V

    return v5

    :cond_0
    return v1
.end method

.method private static selectedUris(Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/ui/SelectionManager;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/data/DataManager;",
            "Lcom/zui/gallery/ui/SelectionManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/Path;

    .line 184
    invoke-virtual {p0, v1}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v1

    .line 185
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static send(Landroid/app/Activity;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/data/MediaItem;)V
    .locals 6

    .line 110
    invoke-static {}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->instance()Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;

    move-result-object v0

    const-class v1, Lcom/zui/sdk/service/file/ZuiTransferService;

    invoke-interface {v0, v1}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->service(Ljava/lang/Class;)Lcom/zui/sdk/service/foundation/ZuiService;

    move-result-object v0

    check-cast v0, Lcom/zui/sdk/service/file/ZuiTransferService;

    const-string v1, "lenovooneXX"

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Lcom/zui/sdk/service/file/ZuiTransferService;->getRemote()Lcom/zui/sdk/service/file/model/Remote;

    move-result-object v2

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zui/sdk/service/file/model/Remote;->getConnection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v2}, Lcom/zui/sdk/service/file/model/Remote;->getConnection()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 115
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    iget-object p2, p2, Lcom/zui/gallery/data/MediaItem;->mPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "start to doSend"

    .line 117
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {v2, p0, v0, v3}, Lcom/zui/lenovoone/LenovoOneHelper;->doSend(Lcom/zui/sdk/service/file/model/Remote;Landroid/app/Activity;Lcom/zui/sdk/service/file/ZuiTransferService;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const-string p0, "send: zuiTransferService!=null"

    .line 121
    invoke-static {v1, p0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static sendBatch(Landroid/app/Activity;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/ui/SelectionManager;)V
    .locals 6

    .line 126
    invoke-static {}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->instance()Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;

    move-result-object v0

    const-class v1, Lcom/zui/sdk/service/file/ZuiTransferService;

    invoke-interface {v0, v1}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->service(Ljava/lang/Class;)Lcom/zui/sdk/service/foundation/ZuiService;

    move-result-object v0

    check-cast v0, Lcom/zui/sdk/service/file/ZuiTransferService;

    const-string v1, "lenovooneXX"

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Lcom/zui/sdk/service/file/ZuiTransferService;->getRemote()Lcom/zui/sdk/service/file/model/Remote;

    move-result-object v2

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBatch):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zui/sdk/service/file/model/Remote;->getConnection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v2}, Lcom/zui/sdk/service/file/model/Remote;->getConnection()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 131
    invoke-static {p1, p2}, Lcom/zui/lenovoone/LenovoOneHelper;->selectedUris(Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/ui/SelectionManager;)Ljava/util/List;

    move-result-object p1

    const-string p2, "sendBatch start to doSend"

    .line 132
    invoke-static {v1, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {v2, p0, v0, p1}, Lcom/zui/lenovoone/LenovoOneHelper;->doSend(Lcom/zui/sdk/service/file/model/Remote;Landroid/app/Activity;Lcom/zui/sdk/service/file/ZuiTransferService;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const-string p0, "sendBatch: zuiTransferService!=null"

    .line 136
    invoke-static {v1, p0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static startDragAndDrop(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaItem;)V
    .locals 6

    .line 199
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 200
    new-instance v1, Landroid/content/ClipData;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 202
    new-instance v0, Lcom/zui/lenovoone/ImageDragShadowBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/zui/lenovoone/ImageDragShadowBuilder;-><init>(Lcom/zui/gallery/data/MediaItem;Landroid/content/res/Resources;)V

    .line 203
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/4 p1, 0x0

    const/16 v2, 0x101

    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method
