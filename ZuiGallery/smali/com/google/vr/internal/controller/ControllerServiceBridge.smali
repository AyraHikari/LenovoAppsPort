.class public Lcom/google/vr/internal/controller/ControllerServiceBridge;
.super Ljava/lang/Object;
.source "ControllerServiceBridge.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerListener;,
        Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerServiceListener;,
        Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;,
        Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FLAG_SUPPORTS_RECENTER:I = 0x1

.field static final LISTENER_KEY:Ljava/lang/String; = "com.google.vr.internal.controller.LISTENER_KEY"

.field static final MIN_API_VERSION_FOR_SERVICE_CALLBACKS:I = 0x15

.field static final TAG:Ljava/lang/String;

.field public static final TARGET_SERVICE_API_VERSION:I = 0x15


# instance fields
.field private final context:Landroid/content/Context;

.field private final controllerListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;",
            ">;"
        }
    .end annotation
.end field

.field private defaultListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

.field private final defaultServiceListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerServiceListener;

.field private isBound:Z

.field private final mainThreadHandler:Landroid/os/Handler;

.field private service:Lcom/google/vr/vrcore/controller/api/IControllerService;

.field private final vrcoreApiVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/google/vr/internal/controller/ControllerServiceBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "callbacks"
        }
    .end annotation

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->context:Landroid/content/Context;

    .line 316
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;-><init>()V

    invoke-direct {p0, p2, v0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->initializeDefaultListener(Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;)V

    .line 317
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->mainThreadHandler:Landroid/os/Handler;

    .line 318
    new-instance p2, Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerServiceListener;

    invoke-direct {p2, p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerServiceListener;-><init>(Lcom/google/vr/internal/controller/ControllerServiceBridge;)V

    iput-object p2, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->defaultServiceListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerServiceListener;

    .line 319
    invoke-static {p1}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->getVrCoreApiVersion(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->vrcoreApiVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "callbacks",
            "optionFlags"
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    .line 299
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->context:Landroid/content/Context;

    .line 300
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    invoke-direct {v0, p3}, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;-><init>(I)V

    invoke-direct {p0, p2, v0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->initializeDefaultListener(Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;)V

    .line 301
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->mainThreadHandler:Landroid/os/Handler;

    .line 302
    new-instance p2, Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerServiceListener;

    invoke-direct {p2, p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerServiceListener;-><init>(Lcom/google/vr/internal/controller/ControllerServiceBridge;)V

    iput-object p2, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->defaultServiceListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerServiceListener;

    .line 303
    invoke-static {p1}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->getVrCoreApiVersion(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->vrcoreApiVersion:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/internal/controller/ControllerServiceBridge;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->handleServiceEvent(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->logIfControllerPacketLags(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V

    return-void
.end method

.method private createAndConnectControllerInternal(ILcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controllerIndex",
            "callbacks",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 696
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->ensureOnMainThread()V

    .line 697
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 705
    :cond_0
    new-instance v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    invoke-direct {v0, p2, p3, p1}, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;-><init>(Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;I)V

    .line 707
    iget-object p2, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    new-instance p3, Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerListener;

    invoke-direct {p3, v0}, Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerListener;-><init>(Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;)V

    const-string v2, "com.google.vr.internal.controller.LISTENER_KEY"

    invoke-interface {p2, p1, v2, p3}, Lcom/google/vr/vrcore/controller/api/IControllerService;->registerListener(ILjava/lang/String;Lcom/google/vr/vrcore/controller/api/IControllerListener;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    .line 710
    iput-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->defaultListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    .line 712
    :cond_1
    iget-object p2, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 716
    :cond_2
    sget-object p2, Lcom/google/vr/internal/controller/ControllerServiceBridge;->TAG:Ljava/lang/String;

    const/16 p3, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Failed to connect controller "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object p2, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    return v1
.end method

.method private ensureOnMainThread()V
    .locals 2

    .line 619
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 620
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be running on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getVrCoreApiVersion(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 667
    :try_start_0
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->getVrCoreClientApiVersion(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private handleAvailableControllersChanged()V
    .locals 4

    .line 633
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->ensureOnMainThread()V

    .line 635
    invoke-virtual {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->getNumOfControllers()I

    move-result v0

    if-lez v0, :cond_0

    .line 636
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->isBound:Z

    if-eqz v0, :cond_3

    .line 637
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->setupAndBindDefaultControllerListener()V

    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 642
    iget-object v3, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    if-eqz v3, :cond_1

    .line 644
    iget-object v3, v3, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;

    invoke-interface {v3, v2, v1}, Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;->onControllerStateChanged(II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 647
    :cond_2
    invoke-virtual {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->clearControllers()V

    .line 648
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->defaultListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    iget-object v0, v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;

    invoke-interface {v0}, Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;->onServiceDisconnected()V

    :cond_3
    return-void
.end method

.method private handleServiceEvent(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventId"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 627
    iget-object p1, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge$$Lambda$2;-><init>(Lcom/google/vr/internal/controller/ControllerServiceBridge;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private initializeDefaultListener(Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callbacks",
            "options"
        }
    .end annotation

    .line 687
    new-instance v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;-><init>(Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;I)V

    iput-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->defaultListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    .line 690
    iget-object p1, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static logIfControllerPacketLags(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventPacket"
        }
    .end annotation

    .line 675
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->getTimestampMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 678
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->getTimestampMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    .line 680
    sget-object p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->TAG:Ljava/lang/String;

    const/16 v2, 0x7a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Experiencing large controller packet delivery time between service and  client: timestamp diff in ms: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private setupAndBindDefaultControllerListener()V
    .locals 4

    .line 583
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->defaultListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    iget-object v0, v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;->onServiceConnected(I)V

    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    const-string v1, "com.google.vr.internal.controller.LISTENER_KEY"

    new-instance v2, Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerListener;

    iget-object v3, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->defaultListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    invoke-direct {v2, v3}, Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerListener;-><init>(Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;)V

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/google/vr/vrcore/controller/api/IControllerService;->registerListener(ILjava/lang/String;Lcom/google/vr/vrcore/controller/api/IControllerListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    sget-object v0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->TAG:Ljava/lang/String;

    const-string v1, "Failed to register service listener."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->defaultListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    iget-object v0, v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;

    invoke-interface {v0}, Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;->onServiceFailed()V

    .line 589
    invoke-virtual {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->doUnbind()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->defaultListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 604
    sget-object v0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->TAG:Ljava/lang/String;

    const-string v1, "Successfully registered service listener."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    .line 593
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 594
    sget-object v0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->TAG:Ljava/lang/String;

    const-string v1, "RemoteException while registering service listener."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->defaultListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    iget-object v0, v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;

    invoke-interface {v0}, Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;->onServiceFailed()V

    .line 596
    invoke-virtual {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->doUnbind()V

    return-void
.end method


# virtual methods
.method final bridge synthetic bridge$lambda$0$ControllerServiceBridge()V
    .locals 0

    invoke-direct {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->handleAvailableControllersChanged()V

    return-void
.end method

.method public clearControllers()V
    .locals 1

    .line 454
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->ensureOnMainThread()V

    .line 455
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public createAndConnectController(ILcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controllerIndex",
            "callbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->createAndConnectControllerInternal(ILcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;)Z

    move-result p1

    return p1
.end method

.method public createAndConnectController(ILcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controllerIndex",
            "callbacks",
            "optionFlags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    invoke-direct {v0, p3}, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->createAndConnectControllerInternal(ILcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;)Z

    move-result p1

    return p1
.end method

.method public doBind()V
    .locals 3

    .line 365
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->ensureOnMainThread()V

    .line 367
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->isBound:Z

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->TAG:Ljava/lang/String;

    const-string v1, "Service is already bound."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 376
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.vr.vrcore.controller.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.vr.vrcore"

    .line 377
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    iget-object v1, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    sget-object v0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->TAG:Ljava/lang/String;

    const-string v1, "Bind failed. Service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->defaultListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    iget-object v0, v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;

    invoke-interface {v0}, Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;->onServiceUnavailable()V

    return-void

    .line 384
    :cond_1
    iput-boolean v2, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->isBound:Z

    return-void
.end method

.method public doUnbind()V
    .locals 4

    .line 402
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->ensureOnMainThread()V

    .line 404
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->isBound:Z

    if-nez v0, :cond_0

    .line 405
    sget-object v0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->TAG:Ljava/lang/String;

    const-string v1, "Service is already unbound."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->unregisterListener()V

    .line 411
    iget v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->vrcoreApiVersion:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    iget-object v1, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->defaultServiceListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerServiceListener;

    invoke-interface {v0, v1}, Lcom/google/vr/vrcore/controller/api/IControllerService;->unregisterServiceListener(Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    sget-object v0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->TAG:Ljava/lang/String;

    const-string v1, "Failed to unregister remote service listener."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 417
    sget-object v1, Lcom/google/vr/internal/controller/ControllerServiceBridge;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Exception while unregistering remote service listener: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 425
    iput-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    const/4 v0, 0x0

    .line 426
    iput-boolean v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->isBound:Z

    return-void
.end method

.method public getControllerCallbacks(I)Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerIndex"
        }
    .end annotation

    .line 443
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->ensureOnMainThread()V

    .line 444
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 445
    :cond_0
    iget-object p1, p1, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;

    return-object p1
.end method

.method public getNumOfControllers()I
    .locals 5

    .line 653
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 658
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/vr/vrcore/controller/api/IControllerService;->getNumberOfControllers()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 660
    sget-object v2, Lcom/google/vr/internal/controller/ControllerServiceBridge;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x36

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Remote exception while getting number of controllers: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "binder"
        }
    .end annotation

    .line 527
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->ensureOnMainThread()V

    .line 532
    invoke-static {p2}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/controller/api/IControllerService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    const/16 p2, 0x15

    .line 540
    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/vr/vrcore/controller/api/IControllerService;->initialize(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_1

    .line 550
    sget-object p2, Lcom/google/vr/internal/controller/ControllerServiceBridge;->TAG:Ljava/lang/String;

    const-string v0, "initialize() returned error: "

    invoke-static {p1}, Lcom/google/vr/vrcore/controller/api/ControllerInitResults;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object p2, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->defaultListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    iget-object p2, p2, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;

    invoke-interface {p2, p1}, Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;->onServiceInitFailed(I)V

    .line 552
    invoke-virtual {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->doUnbind()V

    return-void

    .line 560
    :cond_1
    iget v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->vrcoreApiVersion:I

    if-lt v0, p2, :cond_2

    .line 562
    :try_start_1
    iget-object p2, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->defaultServiceListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerServiceListener;

    invoke-interface {p2, v0}, Lcom/google/vr/vrcore/controller/api/IControllerService;->registerServiceListener(Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 563
    sget-object p2, Lcom/google/vr/internal/controller/ControllerServiceBridge;->TAG:Ljava/lang/String;

    const-string v0, "Failed to register remote service listener."

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object p2, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->defaultListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    iget-object p2, p2, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;

    invoke-interface {p2, p1}, Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;->onServiceInitFailed(I)V

    .line 565
    invoke-virtual {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->doUnbind()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 569
    sget-object p2, Lcom/google/vr/internal/controller/ControllerServiceBridge;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Exception while registering remote service listener: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->setupAndBindDefaultControllerListener()V

    return-void

    :catch_1
    move-exception p1

    .line 542
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 543
    sget-object p1, Lcom/google/vr/internal/controller/ControllerServiceBridge;->TAG:Ljava/lang/String;

    const-string p2, "Failed to call initialize() on controller service (RemoteException)."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object p1, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->defaultListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    iget-object p1, p1, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;

    invoke-interface {p1}, Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;->onServiceFailed()V

    .line 545
    invoke-virtual {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->doUnbind()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 610
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->ensureOnMainThread()V

    const/4 p1, 0x0

    .line 614
    iput-object p1, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    .line 615
    iget-object p1, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->defaultListener:Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    iget-object p1, p1, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;

    invoke-interface {p1}, Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;->onServiceDisconnected()V

    return-void
.end method

.method public requestBind()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/internal/controller/ControllerServiceBridge$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge$$Lambda$0;-><init>(Lcom/google/vr/internal/controller/ControllerServiceBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestUnbind()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/internal/controller/ControllerServiceBridge$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge$$Lambda$1;-><init>(Lcom/google/vr/internal/controller/ControllerServiceBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener()V
    .locals 2

    .line 503
    invoke-direct {p0}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->ensureOnMainThread()V

    .line 504
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "com.google.vr.internal.controller.LISTENER_KEY"

    .line 517
    invoke-interface {v0, v1}, Lcom/google/vr/vrcore/controller/api/IControllerService;->unregisterListener(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 519
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 520
    sget-object v0, Lcom/google/vr/internal/controller/ControllerServiceBridge;->TAG:Ljava/lang/String;

    const-string v1, "RemoteException while unregistering listener."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
