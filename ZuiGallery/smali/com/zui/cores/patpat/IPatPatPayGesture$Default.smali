.class public Lcom/zui/cores/patpat/IPatPatPayGesture$Default;
.super Ljava/lang/Object;
.source "IPatPatPayGesture.java"

# interfaces
.implements Lcom/zui/cores/patpat/IPatPatPayGesture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/cores/patpat/IPatPatPayGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public registerPatPatSensorCallBack(Lcom/zui/cores/patpat/IPatPatPayCallback;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public unregisterPatPatSensorCallBack(Lcom/zui/cores/patpat/IPatPatPayCallback;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
