.class public interface abstract Lcom/zui/cores/patpat/IPatPatPayGesture;
.super Ljava/lang/Object;
.source "IPatPatPayGesture.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/cores/patpat/IPatPatPayGesture$Stub;,
        Lcom/zui/cores/patpat/IPatPatPayGesture$Default;
    }
.end annotation


# virtual methods
.method public abstract registerPatPatSensorCallBack(Lcom/zui/cores/patpat/IPatPatPayCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterPatPatSensorCallBack(Lcom/zui/cores/patpat/IPatPatPayCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
