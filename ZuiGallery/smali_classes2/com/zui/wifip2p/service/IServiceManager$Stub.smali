.class public abstract Lcom/zui/wifip2p/service/IServiceManager$Stub;
.super Landroid/os/Binder;
.source "IServiceManager.java"

# interfaces
.implements Lcom/zui/wifip2p/service/IServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/wifip2p/service/IServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/wifip2p/service/IServiceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zui.wifip2p.service.IServiceManager"

.field static final TRANSACTION_getService:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.zui.wifip2p.service.IServiceManager"

    .line 31
    invoke-virtual {p0, p0, v0}, Lcom/zui/wifip2p/service/IServiceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zui/wifip2p/service/IServiceManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.zui.wifip2p.service.IServiceManager"

    .line 42
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    instance-of v1, v0, Lcom/zui/wifip2p/service/IServiceManager;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lcom/zui/wifip2p/service/IServiceManager;

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Lcom/zui/wifip2p/service/IServiceManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/zui/wifip2p/service/IServiceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/zui/wifip2p/service/IServiceManager;
    .locals 1

    .line 128
    sget-object v0, Lcom/zui/wifip2p/service/IServiceManager$Stub$Proxy;->sDefaultImpl:Lcom/zui/wifip2p/service/IServiceManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/zui/wifip2p/service/IServiceManager;)Z
    .locals 1

    .line 121
    sget-object v0, Lcom/zui/wifip2p/service/IServiceManager$Stub$Proxy;->sDefaultImpl:Lcom/zui/wifip2p/service/IServiceManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 122
    sput-object p0, Lcom/zui/wifip2p/service/IServiceManager$Stub$Proxy;->sDefaultImpl:Lcom/zui/wifip2p/service/IServiceManager;

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

    const-string v1, "com.zui.wifip2p.service.IServiceManager"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 59
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 64
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/zui/wifip2p/service/IServiceManager$Stub;->getService(I)Landroid/os/IBinder;

    move-result-object p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0
.end method
