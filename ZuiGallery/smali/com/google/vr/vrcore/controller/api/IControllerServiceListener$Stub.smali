.class public abstract Lcom/google/vr/vrcore/controller/api/IControllerServiceListener$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "IControllerServiceListener.java"

# interfaces
.implements Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/controller/api/IControllerServiceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.controller.api.IControllerServiceListener"

.field static final TRANSACTION_getApiVersion:I = 0x1

.field static final TRANSACTION_onControllerServiceEvent:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/google/android/aidl/BaseStub;-><init>()V

    const-string v0, "com.google.vr.vrcore.controller.api.IControllerServiceListener"

    .line 46
    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/controller/api/IControllerServiceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;
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
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerServiceListener"

    .line 53
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    instance-of v1, v0, Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;

    if-eqz v1, :cond_1

    .line 55
    check-cast v0, Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;

    return-object v0

    .line 57
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/controller/api/IControllerServiceListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/controller/api/IControllerServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
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

    .line 63
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/vr/vrcore/controller/api/IControllerServiceListener$Stub;->routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    if-eq p1, v0, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/IControllerServiceListener$Stub;->onControllerServiceEvent(I)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/IControllerServiceListener$Stub;->getApiVersion()I

    move-result p1

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0
.end method
