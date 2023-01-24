.class public abstract Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "ITransitionCallbacks.java"

# interfaces
.implements Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.common.api.ITransitionCallbacks"

.field static final TRANSACTION_onTransitionComplete:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/google/android/aidl/BaseStub;-><init>()V

    const-string v0, "com.google.vr.vrcore.common.api.ITransitionCallbacks"

    .line 37
    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;
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
    const-string v0, "com.google.vr.vrcore.common.api.ITransitionCallbacks"

    .line 44
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    instance-of v1, v0, Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;

    if-eqz v1, :cond_1

    .line 46
    check-cast v0, Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;

    return-object v0

    .line 48
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 54
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub;->routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    return p3

    :cond_0
    if-ne p1, p3, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub;->onTransitionComplete()V

    return p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
