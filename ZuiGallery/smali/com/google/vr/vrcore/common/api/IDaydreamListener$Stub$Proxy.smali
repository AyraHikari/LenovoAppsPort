.class public Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;
.super Lcom/google/android/aidl/BaseProxy;
.source "IDaydreamListener.java"

# interfaces
.implements Lcom/google/vr/vrcore/common/api/IDaydreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamListener"

    .line 267
    invoke-direct {p0, p1, v0}, Lcom/google/android/aidl/BaseProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyColorfulFade(IJI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fadeType",
            "durationMillis",
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 348
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xa

    .line 349
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public applyFade(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fadeType",
            "durationMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 291
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x3

    .line 293
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public deprecated_setLensOffsets(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftEyeOffsetX",
            "leftEyeOffsetY",
            "rightEyeOffsetX",
            "rightEyeOffsetY"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 325
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 326
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 327
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 328
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    const/16 p1, 0x8

    .line 329
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public dumpDebugData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x5

    .line 305
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public getTargetApiVersion()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    .line 273
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public invokeCloseAction()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x7

    .line 318
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public recenterHeadTracking()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x4

    .line 299
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public requestStopTracking()Lcom/google/vr/vrcore/common/api/HeadTrackingState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x2

    .line 282
    invoke-virtual {p0, v1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 283
    sget-object v1, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    .line 284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public resumeHeadTracking(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackingState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 311
    invoke-static {v0, p1}, Lcom/google/android/aidl/Codecs;->writeParcelable(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x6

    .line 312
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method

.method public setLensOffset(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "offsetX",
            "offsetY",
            "rotation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 336
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 337
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 338
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    const/16 p1, 0x9

    .line 339
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    return-void
.end method
