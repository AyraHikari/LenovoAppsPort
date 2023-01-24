.class public abstract Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "IDaydreamManager.java"

# interfaces
.implements Lcom/google/vr/vrcore/common/api/IDaydreamManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/common/api/IDaydreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.common.api.IDaydreamManager"

.field static final TRANSACTION_deprecatedLaunchInVr:I = 0x4

.field static final TRANSACTION_exitFromVr:I = 0xa

.field static final TRANSACTION_handleInsertionIntoHeadset:I = 0xb

.field static final TRANSACTION_handleRemovalFromHeadset:I = 0xc

.field static final TRANSACTION_launchInVr:I = 0x7

.field static final TRANSACTION_launchVrHome:I = 0x8

.field static final TRANSACTION_launchVrTransition:I = 0x9

.field static final TRANSACTION_launchVrTransition2:I = 0xf

.field static final TRANSACTION_onExitingFromVr:I = 0xe

.field static final TRANSACTION_prepareVr:I = 0x3

.field static final TRANSACTION_prepareVr2:I = 0xd

.field static final TRANSACTION_registerDaydreamIntent:I = 0x5

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_unregisterDaydreamIntent:I = 0x6

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 314
    invoke-direct {p0}, Lcom/google/android/aidl/BaseStub;-><init>()V

    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    .line 315
    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;
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
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    .line 322
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 323
    instance-of v1, v0, Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    if-eqz v1, :cond_1

    .line 324
    check-cast v0, Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    return-object v0

    .line 326
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
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

    .line 332
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 429
    :pswitch_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 430
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->launchVrTransition2(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 425
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->onExitingFromVr()V

    goto/16 :goto_0

    .line 414
    :pswitch_2
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 416
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    .line 417
    new-instance v1, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    invoke-direct {v1}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;-><init>()V

    .line 418
    invoke-virtual {p0, p1, p4, p2, v1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->prepareVr2(Landroid/content/ComponentName;ILandroid/app/PendingIntent;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I

    move-result p1

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    invoke-static {p3, v1}, Lcom/google/android/aidl/Codecs;->writeParcelableAsReturnValue(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 410
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->handleRemovalFromHeadset()V

    goto/16 :goto_0

    .line 405
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 406
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->handleInsertionIntoHeadset([B)V

    goto/16 :goto_0

    .line 398
    :pswitch_5
    sget-object p1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 399
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->exitFromVr(Landroid/app/PendingIntent;)Z

    move-result p1

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 391
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/vrcore/common/api/ITransitionCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;

    move-result-object p1

    .line 392
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->launchVrTransition(Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;)Z

    move-result p1

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 385
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->launchVrHome()Z

    move-result p1

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 377
    :pswitch_8
    sget-object p1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 378
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;

    .line 379
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->launchInVr(Landroid/app/PendingIntent;Landroid/content/ComponentName;)Z

    move-result p1

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 373
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->unregisterDaydreamIntent()V

    goto :goto_0

    .line 368
    :pswitch_a
    sget-object p1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 369
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->registerDaydreamIntent(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 361
    :pswitch_b
    sget-object p1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 362
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->deprecatedLaunchInVr(Landroid/app/PendingIntent;)Z

    move-result p1

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 352
    :pswitch_c
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 353
    new-instance p2, Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    invoke-direct {p2}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;-><init>()V

    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->prepareVr(Landroid/content/ComponentName;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I

    move-result p1

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    invoke-static {p3, p2}, Lcom/google/android/aidl/Codecs;->writeParcelableAsReturnValue(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 345
    :pswitch_d
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 346
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->unregisterListener(Landroid/content/ComponentName;)Z

    move-result p1

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 337
    :pswitch_e
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/vr/vrcore/common/api/IDaydreamListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/IDaydreamListener;

    move-result-object p2

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;->registerListener(Landroid/content/ComponentName;Lcom/google/vr/vrcore/common/api/IDaydreamListener;)Z

    move-result p1

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-static {p3, p1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
