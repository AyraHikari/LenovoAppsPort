.class public abstract Lcom/zui/cores/patpat/IPatPatPayGesture$Stub;
.super Landroid/os/Binder;
.source "IPatPatPayGesture.java"

# interfaces
.implements Lcom/zui/cores/patpat/IPatPatPayGesture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/cores/patpat/IPatPatPayGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/cores/patpat/IPatPatPayGesture$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zui.cores.patpat.IPatPatPayGesture"

.field static final TRANSACTION_registerPatPatSensorCallBack:I = 0x1

.field static final TRANSACTION_unregisterPatPatSensorCallBack:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.zui.cores.patpat.IPatPatPayGesture"

    .line 32
    invoke-virtual {p0, p0, v0}, Lcom/zui/cores/patpat/IPatPatPayGesture$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zui/cores/patpat/IPatPatPayGesture;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.zui.cores.patpat.IPatPatPayGesture"

    .line 43
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    instance-of v1, v0, Lcom/zui/cores/patpat/IPatPatPayGesture;

    if-eqz v1, :cond_1

    .line 45
    check-cast v0, Lcom/zui/cores/patpat/IPatPatPayGesture;

    return-object v0

    .line 47
    :cond_1
    new-instance v0, Lcom/zui/cores/patpat/IPatPatPayGesture$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/zui/cores/patpat/IPatPatPayGesture$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/zui/cores/patpat/IPatPatPayGesture;
    .locals 1

    .line 160
    sget-object v0, Lcom/zui/cores/patpat/IPatPatPayGesture$Stub$Proxy;->sDefaultImpl:Lcom/zui/cores/patpat/IPatPatPayGesture;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/zui/cores/patpat/IPatPatPayGesture;)Z
    .locals 1

    .line 153
    sget-object v0, Lcom/zui/cores/patpat/IPatPatPayGesture$Stub$Proxy;->sDefaultImpl:Lcom/zui/cores/patpat/IPatPatPayGesture;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 154
    sput-object p0, Lcom/zui/cores/patpat/IPatPatPayGesture$Stub$Proxy;->sDefaultImpl:Lcom/zui/cores/patpat/IPatPatPayGesture;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.zui.cores.patpat.IPatPatPayGesture"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 60
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 75
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/cores/patpat/IPatPatPayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cores/patpat/IPatPatPayCallback;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lcom/zui/cores/patpat/IPatPatPayGesture$Stub;->unregisterPatPatSensorCallBack(Lcom/zui/cores/patpat/IPatPatPayCallback;)Z

    move-result p1

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 65
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/cores/patpat/IPatPatPayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cores/patpat/IPatPatPayCallback;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/zui/cores/patpat/IPatPatPayGesture$Stub;->registerPatPatSensorCallBack(Lcom/zui/cores/patpat/IPatPatPayCallback;)Z

    move-result p1

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
