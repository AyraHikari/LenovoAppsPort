.class public abstract Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "IGvrLayout.java"

# interfaces
.implements Lcom/google/vr/vrcore/library/api/IGvrLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/library/api/IGvrLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.library.api.IGvrLayout"

.field static final TRANSACTION_enableAsyncReprojection:I = 0x9

.field static final TRANSACTION_enableCardboardTriggerEmulation:I = 0xa

.field static final TRANSACTION_getNativeGvrContext:I = 0x2

.field static final TRANSACTION_getRootView:I = 0x3

.field static final TRANSACTION_getUiLayout:I = 0x4

.field static final TRANSACTION_onBackPressed:I = 0xc

.field static final TRANSACTION_onPause:I = 0x5

.field static final TRANSACTION_onResume:I = 0x6

.field static final TRANSACTION_setPresentationView:I = 0x8

.field static final TRANSACTION_setReentryIntent:I = 0xd

.field static final TRANSACTION_setStereoModeEnabled:I = 0xb

.field static final TRANSACTION_shutdown:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/google/android/aidl/BaseStub;-><init>()V

    const-string v0, "com.google.vr.vrcore.library.api.IGvrLayout"

    .line 138
    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IGvrLayout;
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
    const-string v0, "com.google.vr.vrcore.library.api.IGvrLayout"

    .line 145
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 146
    instance-of v1, v0, Lcom/google/vr/vrcore/library/api/IGvrLayout;

    if-eqz v1, :cond_1

    .line 147
    check-cast v0, Lcom/google/vr/vrcore/library/api/IGvrLayout;

    return-object v0

    .line 149
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 155
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 224
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    .line 225
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->setReentryIntent(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 219
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->onBackPressed()V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 213
    :pswitch_2
    invoke-static {p2}, Lcom/google/android/aidl/Codecs;->createBoolean(Landroid/os/Parcel;)Z

    move-result p1

    .line 214
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->setStereoModeEnabled(Z)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 206
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    .line 207
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->enableCardboardTriggerEmulation(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Z

    move-result p1

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 199
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 200
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->enableAsyncReprojection(I)Z

    move-result p1

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 193
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    .line 194
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->setPresentationView(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 188
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->shutdown()V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 183
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->onResume()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 178
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->onPause()V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 172
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->getUiLayout()Lcom/google/vr/vrcore/library/api/IGvrUiLayout;

    move-result-object p1

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    .line 166
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->getRootView()Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object p1

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    .line 160
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/vr/vrcore/library/api/IGvrLayout$Stub;->getNativeGvrContext()J

    move-result-wide p1

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
