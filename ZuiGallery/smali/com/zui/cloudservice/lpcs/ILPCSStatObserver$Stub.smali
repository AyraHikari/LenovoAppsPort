.class public abstract Lcom/zui/cloudservice/lpcs/ILPCSStatObserver$Stub;
.super Landroid/os/Binder;
.source "ILPCSStatObserver.java"

# interfaces
.implements Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/cloudservice/lpcs/ILPCSStatObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zui.cloudservice.lpcs.ILPCSStatObserver"

.field static final TRANSACTION_onObserve:I = 0x1

.field static final TRANSACTION_onStatChange:I = 0x2

.field static final TRANSACTION_onSyncEnd:I = 0x4

.field static final TRANSACTION_onSyncProgress:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.zui.cloudservice.lpcs.ILPCSStatObserver"

    .line 34
    invoke-virtual {p0, p0, v0}, Lcom/zui/cloudservice/lpcs/ILPCSStatObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.zui.cloudservice.lpcs.ILPCSStatObserver"

    .line 45
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    instance-of v1, v0, Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;

    if-eqz v1, :cond_1

    .line 47
    check-cast v0, Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;

    return-object v0

    .line 49
    :cond_1
    new-instance v0, Lcom/zui/cloudservice/lpcs/ILPCSStatObserver$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/zui/cloudservice/lpcs/ILPCSStatObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;
    .locals 1

    .line 274
    sget-object v0, Lcom/zui/cloudservice/lpcs/ILPCSStatObserver$Stub$Proxy;->sDefaultImpl:Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;)Z
    .locals 1

    .line 267
    sget-object v0, Lcom/zui/cloudservice/lpcs/ILPCSStatObserver$Stub$Proxy;->sDefaultImpl:Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 268
    sput-object p0, Lcom/zui/cloudservice/lpcs/ILPCSStatObserver$Stub$Proxy;->sDefaultImpl:Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.zui.cloudservice.lpcs.ILPCSStatObserver"

    if-eq p1, v1, :cond_8

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    const/4 v3, 0x3

    if-eq p1, v3, :cond_4

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 62
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 117
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 121
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 129
    :cond_3
    invoke-virtual {p0, p1, p4, v0}, Lcom/zui/cloudservice/lpcs/ILPCSStatObserver$Stub;->onSyncEnd(ZLjava/lang/String;Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 99
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 106
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 111
    :cond_5
    invoke-virtual {p0, p1, p4, v0}, Lcom/zui/cloudservice/lpcs/ILPCSStatObserver$Stub;->onSyncProgress(IILandroid/os/Bundle;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 83
    :cond_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    .line 88
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 93
    :cond_7
    invoke-virtual {p0, p1, v0}, Lcom/zui/cloudservice/lpcs/ILPCSStatObserver$Stub;->onStatChange(ILandroid/os/Bundle;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 67
    :cond_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_9

    .line 72
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 77
    :cond_9
    invoke-virtual {p0, p1, v0}, Lcom/zui/cloudservice/lpcs/ILPCSStatObserver$Stub;->onObserve(ILandroid/os/Bundle;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
