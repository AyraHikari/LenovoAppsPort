.class Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerListener;
.super Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;
.source "ControllerServiceBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/internal/controller/ControllerServiceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ControllerListener"
.end annotation


# instance fields
.field private final listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 229
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;-><init>()V

    .line 230
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerListener;->listener:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getApiVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x15

    return v0
.end method

.method public getOptions()Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 241
    :cond_0
    iget-object v0, v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->options:Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    return-object v0
.end method

.method public onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventPacket"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget v1, v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->controllerIndex:I

    invoke-virtual {p1, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->setEventsControllerIndex(I)V

    .line 260
    iget-object v0, v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;

    invoke-interface {v0, p1}, Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;->onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V

    .line 261
    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->recycle()V

    return-void
.end method

.method public onControllerEventPacket2(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventPacket"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-static {p1}, Lcom/google/vr/internal/controller/ControllerServiceBridge;->access$100(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V

    .line 272
    iget v1, v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->controllerIndex:I

    invoke-virtual {p1, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->setEventsControllerIndex(I)V

    .line 273
    iget-object v0, v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;

    invoke-interface {v0, p1}, Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;->onControllerEventPacket2(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V

    .line 274
    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->recycle()V

    return-void
.end method

.method public onControllerRecentered(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientationEvent"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    iget v1, v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->controllerIndex:I

    iput v1, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->controllerId:I

    .line 284
    iget-object v0, v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;

    invoke-interface {v0, p1}, Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;->onControllerRecentered(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V

    return-void
.end method

.method public onControllerStateChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controllerIndex",
            "newState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/google/vr/internal/controller/ControllerServiceBridge$ControllerListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, v0, Lcom/google/vr/internal/controller/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;->onControllerStateChanged(II)V

    return-void
.end method
