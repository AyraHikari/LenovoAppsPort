.class public abstract Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "IControllerService.java"

# interfaces
.implements Lcom/google/vr/vrcore/controller/api/IControllerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/IControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/controller/api/IControllerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.controller.api.IControllerService"

.field static final TRANSACTION_getNumberOfControllers:I = 0xa

.field static final TRANSACTION_initialize:I = 0x1

.field static final TRANSACTION_onHeadTrackingRecentered:I = 0x7

.field static final TRANSACTION_registerListener:I = 0x5

.field static final TRANSACTION_registerServiceListener:I = 0x8

.field static final TRANSACTION_unregisterListener:I = 0x6

.field static final TRANSACTION_unregisterServiceListener:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Lcom/google/android/aidl/BaseStub;-><init>()V

    const-string v0, "com.google.vr.vrcore.controller.api.IControllerService"

    .line 142
    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/controller/api/IControllerService;
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
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerService"

    .line 149
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 150
    instance-of v1, v0, Lcom/google/vr/vrcore/controller/api/IControllerService;

    if-eqz v1, :cond_1

    .line 151
    check-cast v0, Lcom/google/vr/vrcore/controller/api/IControllerService;

    return-object v0

    .line 153
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 159
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 207
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->getNumberOfControllers()I

    move-result p1

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 200
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/controller/api/IControllerServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;

    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->unregisterServiceListener(Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;)Z

    move-result p1

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 193
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/controller/api/IControllerServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;

    move-result-object p1

    .line 194
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->registerServiceListener(Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;)Z

    move-result p1

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 187
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p2

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->onHeadTrackingRecentered([F[F)V

    goto :goto_0

    .line 180
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->unregisterListener(Ljava/lang/String;)Z

    move-result p1

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 171
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/controller/api/IControllerListener;

    move-result-object p2

    .line 174
    invoke-virtual {p0, p1, p4, p2}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->registerListener(ILjava/lang/String;Lcom/google/vr/vrcore/controller/api/IControllerListener;)Z

    move-result p1

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 165
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->initialize(I)I

    move-result p1

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
