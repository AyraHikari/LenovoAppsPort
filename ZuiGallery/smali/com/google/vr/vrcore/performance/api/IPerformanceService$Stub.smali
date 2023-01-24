.class public abstract Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "IPerformanceService.java"

# interfaces
.implements Lcom/google/vr/vrcore/performance/api/IPerformanceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/performance/api/IPerformanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.performance.api.IPerformanceService"

.field static final TRANSACTION_addTrigger:I = 0x3

.field static final TRANSACTION_getCurrentEstimatedThrottleWarningTime:I = 0x2

.field static final TRANSACTION_getCurrentThrottlingRelativeTemperature:I = 0x1

.field static final TRANSACTION_removeAllTriggers:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/google/android/aidl/BaseStub;-><init>()V

    const-string v0, "com.google.vr.vrcore.performance.api.IPerformanceService"

    .line 106
    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/performance/api/IPerformanceService;
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
    const-string v0, "com.google.vr.vrcore.performance.api.IPerformanceService"

    .line 113
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 114
    instance-of v1, v0, Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    if-eqz v1, :cond_1

    .line 115
    check-cast v0, Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    return-object v0

    .line 117
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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

    .line 123
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    if-eq p1, v0, :cond_4

    const/4 p4, 0x2

    if-eq p1, p4, :cond_3

    const/4 p4, 0x3

    if-eq p1, p4, :cond_2

    const/4 p4, 0x4

    if-eq p1, p4, :cond_1

    const/4 p1, 0x0

    return p1

    .line 151
    :cond_1
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 152
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->removeAllTriggers(Landroid/content/ComponentName;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 141
    :cond_2
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/ComponentName;

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;

    move-result-object v3

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v1, p0

    .line 146
    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->addTrigger(Landroid/content/ComponentName;Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;JFI)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {p0}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->getCurrentEstimatedThrottleWarningTime()J

    move-result-wide p1

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 128
    :cond_4
    new-instance p1, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;

    invoke-direct {p1}, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;-><init>()V

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->getCurrentThrottlingRelativeTemperature(Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeParcelableAsReturnValue(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    :goto_0
    return v0
.end method
