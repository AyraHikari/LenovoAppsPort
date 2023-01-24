.class public abstract Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;
.super Landroid/os/Binder;
.source "ILPCSManager.java"

# interfaces
.implements Lcom/zui/cloudservice/lpcs/ILPCSManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/cloudservice/lpcs/ILPCSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zui.cloudservice.lpcs.ILPCSManager"

.field static final TRANSACTION_addCloudAlbum:I = 0xf

.field static final TRANSACTION_copy:I = 0x1a

.field static final TRANSACTION_cut:I = 0x19

.field static final TRANSACTION_downloadPhoto:I = 0x14

.field static final TRANSACTION_dumpTrash:I = 0x17

.field static final TRANSACTION_fetchCloudAlbums:I = 0xe

.field static final TRANSACTION_fetchMediaStore:I = 0x12

.field static final TRANSACTION_fetchPhotoDetails:I = 0x13

.field static final TRANSACTION_fetchSpaceUsage:I = 0x4

.field static final TRANSACTION_fetchTrashBin:I = 0x16

.field static final TRANSACTION_forgetSyncStat:I = 0x6

.field static final TRANSACTION_getNeedDownLoadThumbnailFileCount:I = 0x1b

.field static final TRANSACTION_getToggleAlbumAutoSync:I = 0xc

.field static final TRANSACTION_getToggleAutoSync:I = 0x8

.field static final TRANSACTION_getToggleWlanOnly:I = 0xa

.field static final TRANSACTION_hasLogin:I = 0x2

.field static final TRANSACTION_isNetworkBroken:I = 0x1

.field static final TRANSACTION_login:I = 0x3

.field static final TRANSACTION_observeSyncStat:I = 0x5

.field static final TRANSACTION_pickTrash:I = 0x18

.field static final TRANSACTION_removeCloudAlbum:I = 0x11

.field static final TRANSACTION_removePhoto:I = 0x15

.field static final TRANSACTION_renameCloudAlbum:I = 0x10

.field static final TRANSACTION_setToggleAlbumAutoSync:I = 0xd

.field static final TRANSACTION_setToggleAutoSync:I = 0x9

.field static final TRANSACTION_setToggleWlanOnly:I = 0xb

.field static final TRANSACTION_showPurchasingPage:I = 0x7

.field static final TRANSACTION_trySync:I = 0x1c


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.zui.cloudservice.lpcs.ILPCSManager"

    .line 112
    invoke-virtual {p0, p0, v0}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.zui.cloudservice.lpcs.ILPCSManager"

    .line 123
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    instance-of v1, v0, Lcom/zui/cloudservice/lpcs/ILPCSManager;

    if-eqz v1, :cond_1

    .line 125
    check-cast v0, Lcom/zui/cloudservice/lpcs/ILPCSManager;

    return-object v0

    .line 127
    :cond_1
    new-instance v0, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/zui/cloudservice/lpcs/ILPCSManager;
    .locals 1

    .line 1040
    sget-object v0, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub$Proxy;->sDefaultImpl:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/zui/cloudservice/lpcs/ILPCSManager;)Z
    .locals 1

    .line 1033
    sget-object v0, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub$Proxy;->sDefaultImpl:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1034
    sput-object p0, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub$Proxy;->sDefaultImpl:Lcom/zui/cloudservice/lpcs/ILPCSManager;

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.zui.cloudservice.lpcs.ILPCSManager"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 427
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 418
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;

    move-result-object p1

    .line 421
    invoke-virtual {p0, p1}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->trySync(Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 408
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 411
    invoke-virtual {p0, p1}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->getNeedDownLoadThumbnailFileCount(I)I

    move-result p1

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 395
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;

    move-result-object p2

    .line 402
    invoke-virtual {p0, p1, p4, p2}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->copy(Ljava/util/List;Ljava/lang/String;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 382
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;

    move-result-object p2

    .line 389
    invoke-virtual {p0, p1, p4, p2}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->cut(Ljava/util/List;Ljava/lang/String;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 371
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;

    move-result-object p2

    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->pickTrash(Ljava/util/List;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 360
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;

    move-result-object p2

    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->dumpTrash(Ljava/util/List;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 351
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;

    move-result-object p1

    .line 354
    invoke-virtual {p0, p1}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->fetchTrashBin(Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 340
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;

    move-result-object p2

    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->removePhoto(Ljava/util/List;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 331
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->downloadPhoto(J)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 318
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;

    move-result-object p2

    .line 325
    invoke-virtual {p0, p1, p4, p2}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->fetchPhotoDetails(Ljava/lang/String;Ljava/lang/String;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 309
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;

    move-result-object p1

    .line 312
    invoke-virtual {p0, p1}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->fetchMediaStore(Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 298
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;

    move-result-object p2

    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->removeCloudAlbum(Ljava/lang/String;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 283
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;

    move-result-object p2

    .line 292
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->renameCloudAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 270
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;

    move-result-object p2

    .line 277
    invoke-virtual {p0, p1, p4, p2}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->addCloudAlbum(Ljava/lang/String;Ljava/lang/String;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 261
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;

    move-result-object p1

    .line 264
    invoke-virtual {p0, p1}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->fetchCloudAlbums(Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 248
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move v0, v1

    .line 255
    :cond_0
    invoke-virtual {p0, p1, p4, v0}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->setToggleAlbumAutoSync(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 238
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-virtual {p0, p1}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->getToggleAlbumAutoSync(Ljava/lang/String;)Z

    move-result p1

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 229
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 232
    :cond_1
    invoke-virtual {p0, v0}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->setToggleWlanOnly(Z)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 221
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->getToggleWlanOnly()Z

    move-result p1

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 212
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 215
    :cond_2
    invoke-virtual {p0, v0}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->setToggleAutoSync(Z)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 204
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->getToggleAutoSync()Z

    move-result p1

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 197
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->showPurchasingPage()V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 188
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/cloudservice/lpcs/ILPCSStatObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;

    move-result-object p1

    .line 191
    invoke-virtual {p0, p1}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->forgetSyncStat(Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 179
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/cloudservice/lpcs/ILPCSStatObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;

    move-result-object p1

    .line 182
    invoke-virtual {p0, p1}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->observeSyncStat(Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 170
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;

    move-result-object p1

    .line 173
    invoke-virtual {p0, p1}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->fetchSpaceUsage(Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 161
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/cloudservice/lpcs/ILPCSResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;

    move-result-object p1

    .line 164
    invoke-virtual {p0, p1}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->login(Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 153
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->hasLogin()Z

    move-result p1

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 145
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->isNetworkBroken()Z

    move-result p1

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 140
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
