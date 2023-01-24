.class public interface abstract Lcom/google/vr/internal/controller/ControllerServiceBridge$Callbacks;
.super Ljava/lang/Object;
.source "ControllerServiceBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/internal/controller/ControllerServiceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventPacket"
        }
    .end annotation
.end method

.method public abstract onControllerEventPacket2(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventPacket"
        }
    .end annotation
.end method

.method public abstract onControllerRecentered(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientationEvent"
        }
    .end annotation
.end method

.method public abstract onControllerStateChanged(II)V
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
.end method

.method public abstract onServiceConnected(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation
.end method

.method public abstract onServiceDisconnected()V
.end method

.method public abstract onServiceFailed()V
.end method

.method public abstract onServiceInitFailed(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initResult"
        }
    .end annotation
.end method

.method public abstract onServiceUnavailable()V
.end method
