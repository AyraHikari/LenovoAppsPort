.class public abstract Lcom/google/vr/vrcore/library/api/IGvrUiLayout$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "IGvrUiLayout.java"

# interfaces
.implements Lcom/google/vr/vrcore/library/api/IGvrUiLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/library/api/IGvrUiLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/library/api/IGvrUiLayout$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.library.api.IGvrUiLayout"

.field static final TRANSACTION_getRootView:I = 0x2

.field static final TRANSACTION_isEnabled:I = 0x4

.field static final TRANSACTION_setCloseButtonListener:I = 0x5

.field static final TRANSACTION_setEnabled:I = 0x3

.field static final TRANSACTION_setSettingsButtonEnabled:I = 0x8

.field static final TRANSACTION_setSettingsButtonListener:I = 0x9

.field static final TRANSACTION_setTransitionViewEnabled:I = 0x6

.field static final TRANSACTION_setTransitionViewListener:I = 0x7

.field static final TRANSACTION_setViewerName:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/google/android/aidl/BaseStub;-><init>()V

    const-string v0, "com.google.vr.vrcore.library.api.IGvrUiLayout"

    .line 109
    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IGvrUiLayout;
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
    const-string v0, "com.google.vr.vrcore.library.api.IGvrUiLayout"

    .line 116
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 117
    instance-of v1, v0, Lcom/google/vr/vrcore/library/api/IGvrUiLayout;

    if-eqz v1, :cond_1

    .line 118
    check-cast v0, Lcom/google/vr/vrcore/library/api/IGvrUiLayout;

    return-object v0

    .line 120
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/library/api/IGvrUiLayout$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 126
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout$Stub;->routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 179
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout$Stub;->setViewerName(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 173
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout$Stub;->setSettingsButtonListener(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 167
    :pswitch_2
    invoke-static {p2}, Lcom/google/android/aidl/Codecs;->createBoolean(Landroid/os/Parcel;)Z

    move-result p1

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout$Stub;->setSettingsButtonEnabled(Z)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 161
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout$Stub;->setTransitionViewListener(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 155
    :pswitch_4
    invoke-static {p2}, Lcom/google/android/aidl/Codecs;->createBoolean(Landroid/os/Parcel;)Z

    move-result p1

    .line 156
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout$Stub;->setTransitionViewEnabled(Z)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 149
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    .line 150
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout$Stub;->setCloseButtonListener(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 143
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout$Stub;->isEnabled()Z

    move-result p1

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 137
    :pswitch_7
    invoke-static {p2}, Lcom/google/android/aidl/Codecs;->createBoolean(Landroid/os/Parcel;)Z

    move-result p1

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout$Stub;->setEnabled(Z)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 131
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IGvrUiLayout$Stub;->getRootView()Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
