.class public Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub$Proxy;
.super Lcom/google/android/aidl/BaseProxy;
.source "IThrottlingTriggerCallback.java"

# interfaces
.implements Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    const-string v0, "com.google.vr.vrcore.performance.api.IThrottlingTriggerCallback"

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/google/android/aidl/BaseProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTriggerActivated(FJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "temperature",
            "timeRemaining"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 73
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method
