.class public abstract Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "IThrottlingTriggerCallback.java"

# interfaces
.implements Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.performance.api.IThrottlingTriggerCallback"

.field static final TRANSACTION_onTriggerActivated:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/google/android/aidl/BaseStub;-><init>()V

    const-string v0, "com.google.vr.vrcore.performance.api.IThrottlingTriggerCallback"

    .line 34
    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.vr.vrcore.performance.api.IThrottlingTriggerCallback"

    .line 41
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    instance-of v1, v0, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;

    if-eqz v1, :cond_1

    .line 43
    check-cast v0, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;

    return-object v0

    .line 45
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub;->routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    return p4

    :cond_0
    if-ne p1, p4, :cond_1

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p2

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub;->onTriggerActivated(FJ)V

    return p4

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
