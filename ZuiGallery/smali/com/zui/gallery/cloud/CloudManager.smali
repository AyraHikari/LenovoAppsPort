.class public Lcom/zui/gallery/cloud/CloudManager;
.super Ljava/lang/Object;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;
    }
.end annotation


# static fields
.field public static BUNDLE_KEY_IS_SUSPENDED:Ljava/lang/String; = null

.field public static BUNDLE_KEY_PROGRESS:Ljava/lang/String; = null

.field public static BUNDLE_KEY_TOTAL:Ljava/lang/String; = null

.field public static CLOUD_TRASH_URI:Landroid/net/Uri; = null

.field public static DEFAULT_CLOUD_ALBUM_URI:Landroid/net/Uri; = null

.field public static DEFAULT_CLOUD_MEDIA_URI:Landroid/net/Uri; = null

.field public static final SYNC_STATE_DOWNLOADING_ORIGIN_FILE:I = 0xb

.field public static final SYNC_STATE_DOWNLOADING_THUMBNAIL:I = 0x6

.field public static final SYNC_STATE_DOWNLOAD_ORIGIN_FILE_FINISH:I = 0xc

.field public static final SYNC_STATE_DOWNLOAD_THUMBNAIL_FINISH:I = 0x7

.field public static final SYNC_STATE_INIT:I = 0x0

.field public static final SYNC_STATE_LOGINED:I = 0x4

.field public static final SYNC_STATE_LOGINED_BUT_AUTO_SYNC_OFF:I = 0x1

.field public static final SYNC_STATE_LOGINED_BUT_NO_NETWORK:I = 0x3

.field public static final SYNC_STATE_LOGINED_BUT_NO_SPACE:I = 0x2

.field public static final SYNC_STATE_START_DOWNLOAD_THUMBNAIL:I = 0x5

.field public static final SYNC_STATE_START_SYNC:I = 0x8

.field public static final SYNC_STATE_UPLOADING_LOCAL_FILE:I = 0x9

.field public static final SYNC_STATE_UPLOAD_LOCAL_FILE_FINISH:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CloudManager"


# instance fields
.field private iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

.field private mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private observeSync:Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/zui/gallery/cloud/CloudUtils;->isOldCloudServiceExist()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "content://com.zui.cloudservice.CloudAlbum/media"

    goto :goto_0

    :cond_0
    const-string v0, "content://com.lenovo.leos.cloud.sync.CloudAlbum/media"

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/cloud/CloudManager;->DEFAULT_CLOUD_MEDIA_URI:Landroid/net/Uri;

    .line 46
    invoke-static {}, Lcom/zui/gallery/cloud/CloudUtils;->isOldCloudServiceExist()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "content://com.zui.cloudservice.CloudAlbum/album"

    goto :goto_1

    :cond_1
    const-string v0, "content://com.lenovo.leos.cloud.sync.CloudAlbum/album"

    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/cloud/CloudManager;->DEFAULT_CLOUD_ALBUM_URI:Landroid/net/Uri;

    .line 47
    invoke-static {}, Lcom/zui/gallery/cloud/CloudUtils;->isOldCloudServiceExist()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "content://com.zui.cloudservice.CloudAlbum/recycle/media"

    goto :goto_2

    :cond_2
    const-string v0, "content://com.lenovo.leos.cloud.sync.CloudAlbum/recycle/media"

    :goto_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/cloud/CloudManager;->CLOUD_TRASH_URI:Landroid/net/Uri;

    const-string v0, "progress"

    .line 49
    sput-object v0, Lcom/zui/gallery/cloud/CloudManager;->BUNDLE_KEY_PROGRESS:Ljava/lang/String;

    const-string/jumbo v0, "total"

    .line 50
    sput-object v0, Lcom/zui/gallery/cloud/CloudManager;->BUNDLE_KEY_TOTAL:Ljava/lang/String;

    const-string v0, "is_suspended"

    .line 51
    sput-object v0, Lcom/zui/gallery/cloud/CloudManager;->BUNDLE_KEY_IS_SUSPENDED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;)V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    .line 57
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->mListeners:Ljava/util/Map;

    .line 60
    new-instance v0, Lcom/zui/gallery/cloud/CloudManager$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/cloud/CloudManager$1;-><init>(Lcom/zui/gallery/cloud/CloudManager;)V

    .line 108
    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager$1;->getILPCSStatObserver()Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->observeSync:Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;

    .line 134
    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/zui/gallery/cloud/CloudManager;->getLocalizedState(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/cloud/CloudManager;)Ljava/util/Map;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/zui/gallery/cloud/CloudManager;->mListeners:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/cloud/CloudManager;)Lcom/zui/gallery/app/GalleryApp;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/zui/gallery/cloud/CloudManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    return-object p0
.end method

.method private static getLocalizedState(I)I
    .locals 1

    .line 484
    sget-object v0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_NET_BROKEN:Lcom/zui/gallery/cloud/LPCSStat;

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/LPCSStat;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 486
    :cond_0
    sget-object v0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_LOGINED:Lcom/zui/gallery/cloud/LPCSStat;

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/LPCSStat;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x4

    return p0

    .line 488
    :cond_1
    sget-object v0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_AUTO_SYNC_CLOSE:Lcom/zui/gallery/cloud/LPCSStat;

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/LPCSStat;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 490
    :cond_2
    sget-object v0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_SYNCING:Lcom/zui/gallery/cloud/LPCSStat;

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/LPCSStat;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_3

    const/16 p0, 0x8

    return p0

    .line 492
    :cond_3
    sget-object v0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_NO_SPACE:Lcom/zui/gallery/cloud/LPCSStat;

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/LPCSStat;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private registerStatChange()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    if-eqz v0, :cond_0

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudManager;->observeSync:Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;

    invoke-interface {v0, v1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->observeSyncStat(Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 467
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private unRegisterStatChange()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    if-eqz v0, :cond_0

    .line 475
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudManager;->observeSync:Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;

    invoke-interface {v0, v1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->forgetSyncStat(Lcom/zui/cloudservice/lpcs/ILPCSStatObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 477
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public copyCloudImages(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 401
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    new-instance v1, Lcom/zui/gallery/cloud/CloudManager$8;

    invoke-direct {v1, p0}, Lcom/zui/gallery/cloud/CloudManager$8;-><init>(Lcom/zui/gallery/cloud/CloudManager;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->copy(Ljava/util/List;Ljava/lang/String;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 416
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public createCloudAlbum(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .line 347
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 349
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    const-string v1, ""

    new-instance v2, Lcom/zui/gallery/cloud/CloudManager$6;

    invoke-direct {v2, p0, p2}, Lcom/zui/gallery/cloud/CloudManager$6;-><init>(Lcom/zui/gallery/cloud/CloudManager;Ljava/lang/Runnable;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->addCloudAlbum(Ljava/lang/String;Ljava/lang/String;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 356
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public cutCloudImages(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 423
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    new-instance v1, Lcom/zui/gallery/cloud/CloudManager$9;

    invoke-direct {v1, p0}, Lcom/zui/gallery/cloud/CloudManager$9;-><init>(Lcom/zui/gallery/cloud/CloudManager;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->cut(Ljava/util/List;Ljava/lang/String;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 430
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public deleteCloudAlbum(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 361
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 364
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncOn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    goto :goto_0

    .line 367
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    new-instance v1, Lcom/zui/gallery/cloud/CloudManager$7;

    invoke-direct {v1, p0, p2}, Lcom/zui/gallery/cloud/CloudManager$7;-><init>(Lcom/zui/gallery/cloud/CloudManager;Ljava/lang/Runnable;)V

    invoke-interface {v0, p1, v1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->removeCloudAlbum(Ljava/lang/String;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 374
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public deleteCloudImage(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncOn()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 305
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    new-instance v1, Lcom/zui/gallery/cloud/CloudManager$3;

    invoke-direct {v1, p0, p2}, Lcom/zui/gallery/cloud/CloudManager$3;-><init>(Lcom/zui/gallery/cloud/CloudManager;Ljava/lang/Runnable;)V

    invoke-interface {v0, p1, v1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->removePhoto(Ljava/util/List;Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 314
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public downloadOriginal(JLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 383
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    invoke-interface {v0, p1, p2}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->downloadPhoto(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 393
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    if-eqz p3, :cond_2

    .line 394
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 387
    invoke-virtual {p1}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "space unavailable"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_2

    .line 388
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 390
    :cond_1
    invoke-virtual {p1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 385
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public fetchCloudAlbums(Ljava/lang/Runnable;)V
    .locals 2

    .line 319
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    new-instance v1, Lcom/zui/gallery/cloud/CloudManager$4;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/cloud/CloudManager$4;-><init>(Lcom/zui/gallery/cloud/CloudManager;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->fetchCloudAlbums(Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 328
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public fetchCloudMedias(Ljava/lang/Runnable;)V
    .locals 2

    .line 333
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    new-instance v1, Lcom/zui/gallery/cloud/CloudManager$5;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/cloud/CloudManager$5;-><init>(Lcom/zui/gallery/cloud/CloudManager;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->fetchMediaStore(Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 342
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getNeedDownloadThumbnailCount()I
    .locals 3

    .line 282
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudUtils;->isWifiConnectivity(Landroid/content/Context;)Z

    move-result v0

    .line 283
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 285
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zui/gallery/cloud/ThumbnailType;->LARGER_THUMBNAIL:Lcom/zui/gallery/cloud/ThumbnailType;

    :goto_0
    invoke-virtual {v0}, Lcom/zui/gallery/cloud/ThumbnailType;->ordinal()I

    move-result v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/zui/gallery/cloud/ThumbnailType;->SMALLER_THUMBNAIL:Lcom/zui/gallery/cloud/ThumbnailType;

    goto :goto_0

    :goto_1
    invoke-interface {v1, v0}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->getNeedDownLoadThumbnailFileCount(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public getiBinder()Lcom/zui/cloudservice/lpcs/ILPCSManager;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    return-object v0
.end method

.method public isAlbumAutoSync(Ljava/lang/String;)Z
    .locals 2

    .line 256
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 258
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    invoke-interface {v0, p1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->getToggleAlbumAutoSync(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 265
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :catch_1
    return v1

    :catch_2
    move-exception p1

    .line 260
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public isAutoSyncAllowed()Z
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isAutoSyncOn()Z
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 217
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    invoke-interface {v0}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->getToggleAutoSync()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public isBinded()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDownloadAutoSyncAllowed()Z
    .locals 3

    .line 202
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isWlanOnlyOn()Z

    move-result v0

    const-string v2, "CloudManager"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudUtils;->isWifiConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "isAutoSyncAllowed: -------1------"

    .line 204
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isWlanOnlyOn()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudUtils;->isWifiConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudUtils;->isMobileConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "isAutoSyncAllowed: -------2------"

    .line 208
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isLogin()Z
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 168
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    invoke-interface {v0}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->hasLogin()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public isWlanOnlyOn()Z
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 236
    :cond_0
    invoke-static {}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWifiDevicie()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 239
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    invoke-interface {v0}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->getToggleWlanOnly()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public login(Ljava/lang/Runnable;)V
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    new-instance v1, Lcom/zui/gallery/cloud/CloudManager$2;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/cloud/CloudManager$2;-><init>(Lcom/zui/gallery/cloud/CloudManager;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->login(Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 187
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public notifyDownloadThumbnailFinish(Z)V
    .locals 5

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    sget-object v1, Lcom/zui/gallery/cloud/CloudManager;->BUNDLE_KEY_IS_SUSPENDED:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    iget-object v1, p0, Lcom/zui/gallery/cloud/CloudManager;->mListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sync stat changed:   Download Thumbnail Finish isSuspended:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-interface {v2, v3, v4, v0}, Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;->onSyncStatChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDownloadThumbnailProgress(II)V
    .locals 4

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    sget-object v1, Lcom/zui/gallery/cloud/CloudManager;->BUNDLE_KEY_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    sget-object v1, Lcom/zui/gallery/cloud/CloudManager;->BUNDLE_KEY_TOTAL:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    iget-object p2, p0, Lcom/zui/gallery/cloud/CloudManager;->mListeners:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sync stat changed:   Download Thumbnail Progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v1, v2, v3, v0}, Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;->onSyncStatChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDownloadThumbnailStart()V
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const-string/jumbo v4, "sync stat changed:   Download Thumbnail Start"

    .line 112
    invoke-interface {v1, v4, v2, v3}, Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;->onSyncStatChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerSyncListener(Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/zui/gallery/cloud/CloudManager;->registerStatChange()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->mListeners:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAlbumAutoSync(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->setToggleAlbumAutoSync(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 277
    invoke-virtual {p1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 275
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAutoSync(Z)V
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    invoke-interface {v0, p1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->setToggleAutoSync(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 229
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setIBinder(Landroid/os/IBinder;)V
    .locals 0

    .line 138
    invoke-static {p1}, Lcom/zui/cloudservice/lpcs/ILPCSManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/cloudservice/lpcs/ILPCSManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    return-void
.end method

.method public setWlanOnly(Z)V
    .locals 1

    .line 247
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    invoke-interface {v0, p1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->setToggleWlanOnly(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 251
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showPurchasingPage()V
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    invoke-interface {v0}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->showPurchasingPage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 297
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public tryForceSync()V
    .locals 2

    .line 435
    invoke-virtual {p0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 437
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->iBinder:Lcom/zui/cloudservice/lpcs/ILPCSManager;

    new-instance v1, Lcom/zui/gallery/cloud/CloudManager$10;

    invoke-direct {v1, p0}, Lcom/zui/gallery/cloud/CloudManager$10;-><init>(Lcom/zui/gallery/cloud/CloudManager;)V

    invoke-interface {v0, v1}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->trySync(Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 458
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterSyncListener(Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/zui/gallery/cloud/CloudManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object p1, p0, Lcom/zui/gallery/cloud/CloudManager;->mListeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/zui/gallery/cloud/CloudManager;->unRegisterStatChange()V

    :cond_0
    return-void
.end method
