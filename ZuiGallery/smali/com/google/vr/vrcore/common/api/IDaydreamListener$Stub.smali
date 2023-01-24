.class public abstract Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "IDaydreamListener.java"

# interfaces
.implements Lcom/google/vr/vrcore/common/api/IDaydreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/common/api/IDaydreamListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.common.api.IDaydreamListener"

.field static final TRANSACTION_applyColorfulFade:I = 0xa

.field static final TRANSACTION_applyFade:I = 0x3

.field static final TRANSACTION_deprecated_setLensOffsets:I = 0x8

.field static final TRANSACTION_dumpDebugData:I = 0x5

.field static final TRANSACTION_getTargetApiVersion:I = 0x1

.field static final TRANSACTION_invokeCloseAction:I = 0x7

.field static final TRANSACTION_recenterHeadTracking:I = 0x4

.field static final TRANSACTION_requestStopTracking:I = 0x2

.field static final TRANSACTION_resumeHeadTracking:I = 0x6

.field static final TRANSACTION_setLensOffset:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Lcom/google/android/aidl/BaseStub;-><init>()V

    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    .line 180
    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/IDaydreamListener;
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
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    .line 187
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 188
    instance-of v1, v0, Lcom/google/vr/vrcore/common/api/IDaydreamListener;

    if-eqz v1, :cond_1

    .line 189
    check-cast v0, Lcom/google/vr/vrcore/common/api/IDaydreamListener;

    return-object v0

    .line 191
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 197
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 252
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 255
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->applyColorfulFade(IJI)V

    goto :goto_0

    .line 245
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p3

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 248
    invoke-virtual {p0, p1, p3, p2}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->setLensOffset(FFF)V

    goto :goto_0

    .line 237
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p3

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 241
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->deprecated_setLensOffsets(FFFF)V

    goto :goto_0

    .line 233
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->invokeCloseAction()V

    goto :goto_0

    .line 228
    :pswitch_4
    sget-object p1, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    .line 229
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->resumeHeadTracking(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    goto :goto_0

    .line 224
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->dumpDebugData()V

    goto :goto_0

    .line 220
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->recenterHeadTracking()V

    goto :goto_0

    .line 214
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p2

    .line 216
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->applyFade(IJ)V

    goto :goto_0

    .line 208
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->requestStopTracking()Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    move-result-object p1

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeParcelableAsReturnValue(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 202
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->getTargetApiVersion()I

    move-result p1

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
