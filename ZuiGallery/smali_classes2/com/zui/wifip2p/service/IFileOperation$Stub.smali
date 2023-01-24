.class public abstract Lcom/zui/wifip2p/service/IFileOperation$Stub;
.super Landroid/os/Binder;
.source "IFileOperation.java"

# interfaces
.implements Lcom/zui/wifip2p/service/IFileOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/wifip2p/service/IFileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/wifip2p/service/IFileOperation$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zui.wifip2p.service.IFileOperation"

.field static final TRANSACTION_getValue:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_sendFile:I = 0x3

.field static final TRANSACTION_unRegisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.zui.wifip2p.service.IFileOperation"

    .line 43
    invoke-virtual {p0, p0, v0}, Lcom/zui/wifip2p/service/IFileOperation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zui/wifip2p/service/IFileOperation;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.zui.wifip2p.service.IFileOperation"

    .line 54
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    instance-of v1, v0, Lcom/zui/wifip2p/service/IFileOperation;

    if-eqz v1, :cond_1

    .line 56
    check-cast v0, Lcom/zui/wifip2p/service/IFileOperation;

    return-object v0

    .line 58
    :cond_1
    new-instance v0, Lcom/zui/wifip2p/service/IFileOperation$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/zui/wifip2p/service/IFileOperation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/zui/wifip2p/service/IFileOperation;
    .locals 1

    .line 261
    sget-object v0, Lcom/zui/wifip2p/service/IFileOperation$Stub$Proxy;->sDefaultImpl:Lcom/zui/wifip2p/service/IFileOperation;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/zui/wifip2p/service/IFileOperation;)Z
    .locals 1

    .line 254
    sget-object v0, Lcom/zui/wifip2p/service/IFileOperation$Stub$Proxy;->sDefaultImpl:Lcom/zui/wifip2p/service/IFileOperation;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 255
    sput-object p0, Lcom/zui/wifip2p/service/IFileOperation$Stub$Proxy;->sDefaultImpl:Lcom/zui/wifip2p/service/IFileOperation;

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

    const-string v1, "com.zui.wifip2p.service.IFileOperation"

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 71
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 112
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/zui/wifip2p/service/IFileOperation$Stub;->getValue(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 122
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 96
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    .line 101
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 106
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/zui/wifip2p/service/IFileOperation$Stub;->sendFile(Ljava/util/List;Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 86
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/wifip2p/IFileOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/wifip2p/IFileOperationCallback;

    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/zui/wifip2p/service/IFileOperation$Stub;->unRegisterCallback(Lcom/zui/wifip2p/IFileOperationCallback;)Z

    move-result p1

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 76
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/wifip2p/IFileOperationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/wifip2p/IFileOperationCallback;

    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/zui/wifip2p/service/IFileOperation$Stub;->registerCallback(Lcom/zui/wifip2p/IFileOperationCallback;)Z

    move-result p1

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
