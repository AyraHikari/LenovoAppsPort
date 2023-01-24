.class public final Lcom/zui/gallery/app/GalleryActivity;
.super Lcom/zui/gallery/app/AbstractGalleryActivity;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;


# static fields
.field public static final ACTION_REVIEW:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field public static CAMERA_SHOW_ALL_ACTION:Ljava/lang/String; = "start_gallery_from_camera"

.field public static CAMERA_SHOW_SECURE_ACTION:Ljava/lang/String; = "start_gallery_from_secure_camera"

.field public static final EXTRA_CROP:Ljava/lang/String; = "crop"

.field public static final EXTRA_DREAM:Ljava/lang/String; = "dream"

.field public static final EXTRA_SLIDESHOW:Ljava/lang/String; = "slideshow"

.field public static FINISH_WHEN_CLICK_BACK:Ljava/lang/String; = "finish_when_click_back"

.field public static final KEY_DISMISS_KEYGUARD:Ljava/lang/String; = "dismiss-keyguard"

.field public static final KEY_GET_ALBUM:Ljava/lang/String; = "get-album"

.field public static final KEY_GET_CONTENT:Ljava/lang/String; = "get-content"

.field public static final KEY_GET_CONTENT_MAX:Ljava/lang/String; = "get-content-max"

.field public static final KEY_GET_CONTENT_MULIT:Ljava/lang/String; = "get-content-mulit"

.field public static final KEY_GET_GROUP_ALBUM:Ljava/lang/String; = "get-group-album"

.field public static final KEY_MEDIA_TYPES:Ljava/lang/String; = "mediaTypes"

.field public static final KEY_TYPE_BITS:Ljava/lang/String; = "type-bits"

.field public static final LOGIN_FROM_SETTING_ACTION:Ljava/lang/String; = "com.zui.gallery.action.LOGIN_FROM_SETTING_ACTION"

.field public static final MSG_CLEAR_TIP_CONTENT:I = 0x1

.field public static final MSG_INIT_PATH_AND_START_SYNC:I = 0x0

.field public static final MSG_SHOW_TIP:I = 0x2

.field public static NEED_SCREEN_BRIGHT:Ljava/lang/String; = "screen-bright"

.field private static final REQUEST_ASK_PERMISSIONS:I = 0x16

.field public static SECURE_CAMERA_EXTRA:Ljava/lang/String; = "security-camera"

.field private static final SECURE_ITEMS_KEY:Ljava/lang/String; = "security_items"

.field private static final TAG:Ljava/lang/String; = "GalleryActivity"


# instance fields
.field private LANUCHER_SET_WALLPATER_ACTION:Ljava/lang/String;

.field private TOP_PHOTO_ACTION:Ljava/lang/String;

.field private final conn:Landroid/content/ServiceConnection;

.field private hasSetFlagForCameraCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private hasSetScreenOffRecevier:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mEventHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mLoginReceiver:Landroid/content/BroadcastReceiver;

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;-><init>()V

    const-string v0, "com.zui.gallery.action.GET_CONTENT"

    .line 113
    iput-object v0, p0, Lcom/zui/gallery/app/GalleryActivity;->LANUCHER_SET_WALLPATER_ACTION:Ljava/lang/String;

    const-string v0, "com.zui.gallery.action.top.photo"

    .line 114
    iput-object v0, p0, Lcom/zui/gallery/app/GalleryActivity;->TOP_PHOTO_ACTION:Ljava/lang/String;

    .line 126
    new-instance v0, Lcom/zui/gallery/app/GalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/GalleryActivity$1;-><init>(Lcom/zui/gallery/app/GalleryActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/GalleryActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v0, Lcom/zui/gallery/app/GalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/GalleryActivity$2;-><init>(Lcom/zui/gallery/app/GalleryActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/GalleryActivity;->mLoginReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    new-instance v0, Lcom/zui/gallery/app/GalleryActivity$3;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/GalleryActivity$3;-><init>(Lcom/zui/gallery/app/GalleryActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/app/GalleryActivity;->conn:Landroid/content/ServiceConnection;

    .line 428
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/GalleryActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/GalleryActivity;)Landroid/os/Handler;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/zui/gallery/app/GalleryActivity;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private cleanWinFlag()V
    .locals 4

    .line 1461
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1462
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1463
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 1464
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1466
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 1467
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x200001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1469
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private connectService()V
    .locals 5

    const-string v0, "GalleryActivity"

    .line 194
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 196
    invoke-static {p0}, Lcom/zui/gallery/cloud/CloudUtils;->isOldCloudServiceExist(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "com.zui.cloudservice.album.CloudAlbumService"

    if-eqz v2, :cond_0

    .line 197
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.zui.cloudservice"

    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 198
    :cond_0
    invoke-static {p0}, Lcom/zui/gallery/cloud/CloudUtils;->isCloudServiceExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.lenovo.leos.cloud.sync"

    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 203
    :cond_1
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/zui/gallery/app/GalleryActivity;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/zui/gallery/app/GalleryActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v1, "cloudtest connectService"

    .line 204
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cloudtest connectService failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private forceReloadCloudImages()V
    .locals 1

    .line 1393
    new-instance v0, Lcom/zui/gallery/app/GalleryActivity$11;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/GalleryActivity$11;-><init>(Lcom/zui/gallery/app/GalleryActivity;)V

    .line 1400
    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryActivity$11;->start()V

    return-void
.end method

.method private forceUpdateAlbums()V
    .locals 2

    .line 1405
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/data/DataManager;->from(Landroid/content/Context;)Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    const-string v1, "/local/all/moredirs"

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v0

    .line 1406
    instance-of v1, v0, Lcom/zui/gallery/data/LocalAlbumSetMore;

    if-eqz v1, :cond_0

    .line 1407
    check-cast v0, Lcom/zui/gallery/data/LocalAlbumSetMore;

    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalAlbumSetMore;->fakeChange()V

    .line 1408
    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalAlbumSetMore;->reload()J

    :cond_0
    return-void
.end method

.method private getContentMediaUriByContentDownloadUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 14

    const-string v0, "external"

    const-string v1, "GalleryActivity"

    const/4 v2, 0x0

    .line 1086
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "_data"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_3

    .line 1090
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    .line 1091
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1092
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get downlaod image file path is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    if-eqz v3, :cond_0

    .line 1125
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return-object v2

    .line 1100
    :cond_1
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1102
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1103
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v2, "_id"

    const-string v6, "bucket_id"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "_data=(?)"

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    aput-object v5, v11, v4

    const/4 v12, 0x0

    .line 1102
    invoke-static/range {v7 .. v12}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    .line 1109
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1110
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1111
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1112
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1114
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tryContextMediaUri:got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_3

    .line 1116
    :cond_2
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryContextMediaUri:fail to convert "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_0
    move-object v3, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v3, :cond_5

    .line 1125
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_2
    move-object v13, v0

    move-object v0, p1

    move-object p1, v13

    :goto_3
    :try_start_8
    const-string v3, "getContentMeidiaUirByContentDownloadUri exception "

    .line 1121
    invoke-static {v1, v3, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_4

    .line 1125
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    :cond_4
    move-object p1, v0

    :catch_5
    :cond_5
    :goto_4
    return-object p1

    :goto_5
    if-eqz v2, :cond_6

    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 1129
    :catch_6
    :cond_6
    throw p1
.end method

.method private getContentType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .line 413
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string p1, "application/vnd.google.panorama360+jpg"

    .line 415
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v0, "image/jpeg"

    :cond_0
    return-object v0

    .line 419
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 421
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "GalleryActivity"

    const-string v1, "get type fail"

    .line 423
    invoke-static {v0, v1, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "GalleryActivity"

    const-string v1, "_data"

    .line 1286
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    .line 1288
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 1289
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1290
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 1291
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_0

    .line 1298
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p2

    move-object p0, v8

    .line 1294
    :goto_1
    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataColumn exception uri:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "getDataColumn exception "

    .line 1295
    invoke-static {v0, p1, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    return-object v8

    :catchall_1
    move-exception p1

    move-object v8, p0

    :goto_3
    if-eqz v8, :cond_3

    .line 1298
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1299
    :cond_3
    throw p1
.end method

.method private getImageAbsolutePath(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1217
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_8

    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1218
    invoke-static {p2}, Lcom/zui/gallery/app/GalleryActivity;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v1

    const-string v2, ":"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 1219
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 1220
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1221
    aget-object p2, p1, v3

    const-string v0, "primary"

    .line 1222
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1223
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v4

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1225
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/storage"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v4

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1227
    :cond_2
    invoke-static {p2}, Lcom/zui/gallery/app/GalleryActivity;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1228
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "raw"

    .line 1230
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "GalleryActivity"

    if-eqz v1, :cond_3

    .line 1231
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1232
    array-length p2, p1

    if-le p2, v4, :cond_c

    .line 1233
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file path: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    aget-object p1, p1, v4

    return-object p1

    :cond_3
    :try_start_0
    const-string v1, "content://downloads/all_downloads"

    .line 1243
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 1244
    invoke-static {p1, p2, v0, v0}, Lcom/zui/gallery/app/GalleryActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1245
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImageAbsolutePath: -------"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImageAbsolutePath: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1251
    :cond_4
    invoke-static {p2}, Lcom/zui/gallery/app/GalleryActivity;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1252
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 1253
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1254
    aget-object v1, p2, v3

    const-string v2, "image"

    .line 1256
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1257
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "video"

    .line 1258
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1259
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_6
    const-string v2, "audio"

    .line 1260
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1261
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_7
    :goto_0
    new-array v1, v4, [Ljava/lang/String;

    .line 1264
    aget-object p2, p2, v4

    aput-object p2, v1, v3

    const-string p2, "_id=?"

    .line 1265
    invoke-static {p1, v0, p2, v1}, Lcom/zui/gallery/app/GalleryActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1268
    :cond_8
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1270
    invoke-static {p2}, Lcom/zui/gallery/app/GalleryActivity;->isGooglePhotosUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1271
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1272
    :cond_9
    invoke-static {p1, p2, v0, v0}, Lcom/zui/gallery/app/GalleryActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1275
    :cond_a
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v1, "file"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1276
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1278
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageUri  as "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "zlq"

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_1
    return-object v0
.end method

.method private initializeByIntent()V
    .locals 5

    .line 305
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GalleryActivity"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.intent.action.GET_CONTENT"

    .line 308
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 309
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/GalleryActivity;->startGetContent(Landroid/content/Intent;)V

    .line 310
    iput-boolean v4, p0, Lcom/zui/gallery/app/GalleryActivity;->isThirdAppCall:Z

    goto/16 :goto_1

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/app/GalleryActivity;->LANUCHER_SET_WALLPATER_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    iput-boolean v4, p0, Lcom/zui/gallery/app/GalleryActivity;->isThirdAppCall:Z

    .line 313
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/GalleryActivity;->startGetContent(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    const-string v2, "android.intent.action.PICK"

    .line 314
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "action PICK is not supported"

    .line 318
    invoke-static {v3, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vnd.android.cursor.dir/"

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "/image"

    .line 321
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "image/*"

    .line 322
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v2, "/video"

    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "video/*"

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    :cond_3
    iput-boolean v4, p0, Lcom/zui/gallery/app/GalleryActivity;->isThirdAppCall:Z

    .line 327
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/GalleryActivity;->startGetContent(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    const-string v2, "android.intent.action.VIEW"

    .line 328
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "com.android.camera.action.REVIEW"

    .line 329
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 335
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity;->TOP_PHOTO_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 336
    iput-boolean v4, p0, Lcom/zui/gallery/app/GalleryActivity;->isShortCutsCall:Z

    .line 337
    invoke-direct {p0}, Lcom/zui/gallery/app/GalleryActivity;->startTopPhoto()V

    goto :goto_1

    .line 339
    :cond_6
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->startDefaultPage()V

    goto :goto_1

    .line 333
    :cond_7
    :goto_0
    invoke-virtual {p0, v4}, Lcom/zui/gallery/app/GalleryActivity;->setIsViewContent(Z)V

    .line 334
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/GalleryActivity;->startViewAction(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private isBluetoothContent(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1180
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    .line 1181
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1182
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.android.bluetooth.opp.fileprovider"

    .line 1183
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    const-string v1, "com.android.bluetooth.shareprovider"

    .line 1185
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "GalleryActivity"

    const-string v2, "parse bluetooth Content uri exception "

    .line 1190
    invoke-static {v1, v2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return v0
.end method

.method private isDownloadsContent(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1139
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    .line 1140
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1141
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v1, "downloads"

    .line 1142
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "GalleryActivity"

    const-string v2, "parse Download Content uri exception "

    .line 1147
    invoke-static {v1, v2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 1316
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 1308
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isFileManagerContent(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1201
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    .line 1202
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1203
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.zui.filemanager"

    .line 1204
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "GalleryActivity"

    const-string v2, "parse bluetooth Content uri exception "

    .line 1209
    invoke-static {v1, v2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public static isGooglePhotosUri(Landroid/net/Uri;)Z
    .locals 1

    .line 1332
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.apps.photos.content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 1324
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isMedisStoreContent(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1160
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    .line 1161
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1162
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v1, "media"

    .line 1163
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "GalleryActivity"

    const-string v2, "parse Download Content uri exception "

    .line 1168
    invoke-static {v1, v2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v0
.end method

.method private isOTGUri(Landroid/net/Uri;)Z
    .locals 1

    .line 1336
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.mtp.documents"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private registerScreenOffReceiver()V
    .locals 3

    .line 1442
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity;->hasSetScreenOffRecevier:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1443
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1444
    iget-object v1, p0, Lcom/zui/gallery/app/GalleryActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zui/gallery/app/GalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private saveCutoutValue(Landroid/view/View;)V
    .locals 1

    .line 1473
    new-instance v0, Lcom/zui/gallery/app/GalleryActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/zui/gallery/app/GalleryActivity$12;-><init>(Lcom/zui/gallery/app/GalleryActivity;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setWinFlag()V
    .locals 4

    .line 1449
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity;->hasSetFlagForCameraCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1450
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->isSecureCameraCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1451
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1452
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1453
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1454
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1455
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private startGetContent(Landroid/content/Intent;)V
    .locals 7

    .line 363
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 365
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v1, "get-content-mulit"

    .line 366
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 367
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v2, "get-content-max"

    .line 370
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 371
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v4, :cond_1

    move v1, v3

    .line 375
    :cond_1
    invoke-virtual {p0, v2}, Lcom/zui/gallery/app/GalleryActivity;->setGetMaxContent(I)V

    goto :goto_1

    :cond_2
    move v2, v4

    .line 377
    :goto_1
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/GalleryActivity;->setGetMultContent(Z)V

    goto :goto_2

    :cond_3
    move v2, v4

    .line 379
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getContent getMulitConent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " maxContent "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GalleryActivity"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v1, "isWidget"

    .line 382
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 383
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 384
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/GalleryActivity;->setWidget(Z)V

    :cond_5
    const-string v1, "className"

    .line 387
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 388
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/GalleryActivity;->setClassName(Ljava/lang/String;)V

    :cond_6
    const-string v1, "get-content"

    .line 391
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 392
    invoke-static {p0, p1}, Lcom/zui/gallery/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_7

    goto :goto_3

    :cond_7
    const/16 v1, 0x9

    if-ne p1, v1, :cond_8

    const/4 v4, 0x2

    goto :goto_3

    :cond_8
    move v4, p1

    :goto_3
    const-string/jumbo p1, "type-bits"

    .line 400
    invoke-virtual {v0, p1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x7

    if-ne v4, p1, :cond_9

    const/16 v4, 0x13

    .line 406
    :cond_9
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "media-path"

    .line 405
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    const-class v1, Lcom/zui/gallery/app/AlbumPage;

    invoke-virtual {p1, v1, v0}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private startTopPhoto()V
    .locals 5

    .line 761
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    const/16 v1, 0x12

    .line 762
    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 763
    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 771
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    .line 772
    invoke-virtual {v1, v0}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v1

    .line 774
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "index-hint"

    const/4 v4, 0x0

    .line 776
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 779
    invoke-virtual {v0}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "media-set-path"

    .line 778
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "albumpage-transition"

    const/4 v3, 0x1

    .line 780
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "in_camera_roll"

    .line 782
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "call_from_camera"

    .line 783
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez v1, :cond_0

    const v0, 0x7f10025b

    .line 785
    invoke-static {p0, v0}, Lcom/zui/gallery/util/ToastUtil;->showToast(Landroid/content/Context;I)V

    .line 786
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->startDefaultPage()V

    goto :goto_0

    .line 788
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/zui/gallery/app/SinglePhotoPage;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lcom/zui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private startViewAction(Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string/jumbo v2, "slideshow"

    const/4 v3, 0x0

    .line 431
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 432
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "GalleryActivity"

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 434
    sget-object v7, Lcom/zui/gallery/app/GalleryActivity;->CAMERA_SHOW_ALL_ACTION:Ljava/lang/String;

    invoke-virtual {v4, v7, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 436
    iput-boolean v6, v1, Lcom/zui/gallery/app/GalleryActivity;->isCameraCall:Z

    .line 437
    sget-object v7, Lcom/zui/gallery/app/GalleryActivity;->CAMERA_SHOW_SECURE_ACTION:Ljava/lang/String;

    invoke-virtual {v4, v7, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v1, Lcom/zui/gallery/app/GalleryActivity;->mIsSecureCameraCall:Z

    .line 438
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "start from camera "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v1, Lcom/zui/gallery/app/GalleryActivity;->isCameraCall:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    sget-object v7, Lcom/zui/gallery/app/GalleryActivity;->FINISH_WHEN_CLICK_BACK:Ljava/lang/String;

    invoke-virtual {v4, v7, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v1, Lcom/zui/gallery/app/GalleryActivity;->mFinishWhenClickBack:Z

    .line 441
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mFinishWhenClickBack "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v1, Lcom/zui/gallery/app/GalleryActivity;->mFinishWhenClickBack:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    iget-boolean v7, v1, Lcom/zui/gallery/app/GalleryActivity;->isCameraCall:Z

    if-eqz v7, :cond_2

    .line 444
    invoke-virtual {v1, v3}, Lcom/zui/gallery/app/GalleryActivity;->setIsViewContent(Z)V

    :cond_2
    if-eqz v4, :cond_3

    const-string v7, "isSecureCamera"

    .line 449
    invoke-virtual {v4, v7, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_0

    :cond_3
    move v7, v3

    .line 451
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "is third_secure_camera "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_4

    .line 453
    iput-boolean v6, v1, Lcom/zui/gallery/app/GalleryActivity;->mIsSecureCameraCall:Z

    .line 454
    iput-boolean v6, v1, Lcom/zui/gallery/app/GalleryActivity;->isCameraCall:Z

    .line 455
    invoke-virtual {v1, v3}, Lcom/zui/gallery/app/GalleryActivity;->setIsViewContent(Z)V

    .line 458
    :cond_4
    iget-boolean v8, v1, Lcom/zui/gallery/app/GalleryActivity;->mIsSecureCameraCall:Z

    const-string v9, "media-set-path"

    const/4 v10, 0x0

    const v13, 0x7f10011f

    if-eqz v8, :cond_d

    const/4 v2, 0x2

    if-eqz v7, :cond_7

    const-string v4, "secureAlbum"

    .line 465
    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 466
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 467
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "{items:["

    .line 469
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "\\+"

    .line 471
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 472
    array-length v8, v7

    if-ne v8, v2, :cond_5

    .line 473
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "{\'id\':"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v7, v3

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",\'isVideo\':"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v7, v6

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "},"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 476
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v0, "]}"

    .line 477
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_7
    const-string v0, "security_items"

    .line 482
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 486
    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secureCamera call view data json is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_c

    .line 487
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_4

    .line 501
    :cond_9
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 503
    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x80000

    or-int/2addr v7, v8

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 504
    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 505
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 506
    iget-object v4, v1, Lcom/zui/gallery/app/GalleryActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0}, Lcom/zui/gallery/app/GalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    const/16 v4, 0xb

    .line 509
    invoke-virtual {v0, v4}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 510
    sget v4, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v0, v4}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/data/SecureAlbum;

    .line 513
    invoke-virtual {v4}, Lcom/zui/gallery/data/SecureAlbum;->clearItems()V

    .line 514
    invoke-virtual {v4}, Lcom/zui/gallery/data/SecureAlbum;->reload()J

    .line 515
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "items"

    .line 516
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 517
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_b

    move v10, v3

    :goto_3
    if-ge v10, v8, :cond_a

    .line 520
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "id"

    .line 521
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v11, "isVideo"

    .line 522
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 523
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ID "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " isVideo "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {v4, v11, v15}, Lcom/zui/gallery/data/SecureAlbum;->addMediaItem(ZI)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 526
    :cond_a
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v7, "index-hint"

    .line 528
    invoke-virtual {v4, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 531
    invoke-virtual {v0}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-virtual {v4, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "albumpage-transition"

    .line 534
    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "in_camera_roll"

    .line 536
    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    const-class v3, Lcom/zui/gallery/app/SinglePhotoPage;

    invoke-virtual {v0, v3, v2, v4}, Lcom/zui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_6

    .line 541
    :cond_b
    invoke-static {v1, v13, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 542
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 543
    iget-object v0, v1, Lcom/zui/gallery/app/GalleryActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/zui/gallery/app/GalleryActivity$6;

    invoke-direct {v2, v1}, Lcom/zui/gallery/app/GalleryActivity$6;-><init>(Lcom/zui/gallery/app/GalleryActivity;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "parse json item exception "

    .line 555
    invoke-static {v5, v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    invoke-static {v1, v13, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 558
    iget-object v0, v1, Lcom/zui/gallery/app/GalleryActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/zui/gallery/app/GalleryActivity$7;

    invoke-direct {v2, v1}, Lcom/zui/gallery/app/GalleryActivity$7;-><init>(Lcom/zui/gallery/app/GalleryActivity;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_c
    :goto_4
    const-wide/16 v4, 0xa

    .line 488
    iput-boolean v3, v1, Lcom/zui/gallery/app/GalleryActivity;->mIsSecureCameraCall:Z

    .line 489
    invoke-static {v1, v13, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 491
    iget-object v0, v1, Lcom/zui/gallery/app/GalleryActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/zui/gallery/app/GalleryActivity$5;

    invoke-direct {v2, v1}, Lcom/zui/gallery/app/GalleryActivity$5;-><init>(Lcom/zui/gallery/app/GalleryActivity;)V

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 570
    :cond_d
    iget-boolean v4, v1, Lcom/zui/gallery/app/GalleryActivity;->isCameraCall:Z

    if-eqz v4, :cond_e

    .line 571
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->startTopPhoto()V

    goto/16 :goto_6

    .line 574
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v2

    .line 577
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/zui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 578
    invoke-virtual {v2, v4}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v5

    instance-of v5, v5, Lcom/zui/gallery/data/MediaItem;

    if-eqz v5, :cond_10

    .line 581
    :cond_f
    invoke-virtual {v2, v6}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    .line 580
    invoke-static {v2}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v4

    .line 583
    :cond_10
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 584
    invoke-virtual {v4}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "random-order"

    .line 585
    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "repeat"

    .line 586
    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "dream"

    .line 587
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 588
    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 590
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    const-class v3, Lcom/zui/gallery/app/SlideshowPage;

    invoke-virtual {v0, v3, v2}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_6

    .line 592
    :cond_12
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v4

    .line 594
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 595
    invoke-direct/range {p0 .. p1}, Lcom/zui/gallery/app/GalleryActivity;->getContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    .line 596
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "3rd view uri "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " contentType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_22

    const-string v5, "*/*"

    .line 598
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto/16 :goto_7

    :cond_13
    const-string v5, "media-path"

    if-nez v7, :cond_14

    .line 606
    invoke-static/range {p0 .. p1}, Lcom/zui/gallery/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    const-string/jumbo v3, "type-bits"

    .line 607
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    const-class v3, Lcom/zui/gallery/app/AlbumSetPage;

    invoke-virtual {v0, v3, v2}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_6

    :cond_14
    const-string/jumbo v11, "vnd.android.cursor.dir"

    .line 624
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    const-string v6, "mediaTypes"

    .line 626
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_15

    .line 628
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 629
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 628
    invoke-virtual {v7, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 630
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 632
    :cond_15
    invoke-virtual {v4, v7, v10}, Lcom/zui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 635
    invoke-virtual {v4, v6}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/zui/gallery/data/MediaSet;

    :cond_16
    if-eqz v10, :cond_18

    .line 638
    invoke-virtual {v10}, Lcom/zui/gallery/data/MediaSet;->isLeafAlbum()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 639
    invoke-virtual {v6}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x7

    .line 641
    invoke-virtual {v4, v5}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "parent-media-path"

    .line 640
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "isSecurityLauncher"

    .line 643
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 644
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 646
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    const-class v3, Lcom/zui/gallery/app/AlbumPage;

    invoke-virtual {v0, v3, v2}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_6

    .line 648
    :cond_17
    invoke-virtual {v6}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    const-class v3, Lcom/zui/gallery/app/AlbumSetPage;

    invoke-virtual {v0, v3, v2}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_6

    .line 652
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->startDefaultPage()V

    goto/16 :goto_6

    .line 657
    :cond_19
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "com.zui.filemanager"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 663
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "com.android.bluetooth"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 667
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 669
    invoke-direct {v1, v7}, Lcom/zui/gallery/app/GalleryActivity;->tryContentMediaUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    if-nez v10, :cond_1a

    const-string v11, "file"

    .line 671
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_5

    :cond_1a
    move-object v7, v10

    :goto_5
    if-nez v7, :cond_1b

    .line 677
    invoke-static {v1, v13, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 679
    iget-object v0, v1, Lcom/zui/gallery/app/GalleryActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/zui/gallery/app/GalleryActivity$8;

    invoke-direct {v2, v1}, Lcom/zui/gallery/app/GalleryActivity$8;-><init>(Lcom/zui/gallery/app/GalleryActivity;)V

    const-wide/16 v10, 0xa

    invoke-virtual {v0, v2, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1b
    const-wide/16 v10, 0xa

    .line 690
    invoke-virtual {v4, v7, v8}, Lcom/zui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v5

    .line 691
    invoke-virtual {v4, v5}, Lcom/zui/gallery/data/DataManager;->getDefaultSetOf(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/Path;

    move-result-object v4

    if-nez v5, :cond_1c

    .line 697
    invoke-static {v1, v13, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 698
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 700
    iget-object v0, v1, Lcom/zui/gallery/app/GalleryActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/zui/gallery/app/GalleryActivity$9;

    invoke-direct {v2, v1}, Lcom/zui/gallery/app/GalleryActivity$9;-><init>(Lcom/zui/gallery/app/GalleryActivity;)V

    invoke-virtual {v0, v2, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1c
    if-eqz v0, :cond_1d

    const-string v7, "isWidget"

    .line 713
    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 714
    invoke-virtual {v1, v7}, Lcom/zui/gallery/app/GalleryActivity;->setWidget(Z)V

    :cond_1d
    const-string v7, "className"

    .line 717
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 718
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 719
    invoke-virtual {v1, v7}, Lcom/zui/gallery/app/GalleryActivity;->setClassName(Ljava/lang/String;)V

    .line 722
    :cond_1e
    invoke-virtual {v5}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "media-item-path"

    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "read-only"

    .line 723
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "key_thirdappcall"

    .line 726
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "PornPicture"

    .line 733
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 734
    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v4, :cond_1f

    const-string v5, "SingleItemOnly"

    .line 740
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1f

    if-eqz v7, :cond_20

    :cond_1f
    move v3, v6

    :cond_20
    if-nez v3, :cond_21

    .line 744
    invoke-virtual {v4}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    const-class v3, Lcom/zui/gallery/app/SinglePhotoPage;

    invoke-virtual {v0, v3, v2}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_6
    return-void

    :cond_22
    :goto_7
    const v0, 0x7f1001c3

    .line 600
    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 601
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->finish()V

    return-void
.end method

.method private tryContentMediaUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 29

    move-object/from16 v7, p1

    const-string v1, "external"

    const/4 v8, 0x0

    if-nez v7, :cond_0

    return-object v8

    .line 797
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v9, "file"

    .line 800
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v10, "_id"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v13, "GalleryActivity"

    if-nez v0, :cond_2d

    .line 801
    invoke-direct/range {p0 .. p1}, Lcom/zui/gallery/app/GalleryActivity;->isDownloadsContent(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    invoke-direct/range {p0 .. p1}, Lcom/zui/gallery/app/GalleryActivity;->getContentMediaUriByContentDownloadUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 804
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/zui/gallery/app/GalleryActivity;->isOTGUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v7

    .line 807
    :cond_2
    invoke-static/range {p0 .. p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const-string v2, "_data"

    const-string/jumbo v14, "video"

    const-string v15, "mime_type"

    const-string v6, "image"

    if-eqz v0, :cond_e

    move-object/from16 v5, p0

    .line 812
    :try_start_0
    invoke-direct {v5, v5, v7}, Lcom/zui/gallery/app/GalleryActivity;->getImageAbsolutePath(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_3

    .line 815
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v8

    .line 818
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "filePath Ex as "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "zlq"

    invoke-static {v4, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v8

    .line 821
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_d

    .line 823
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez v4, :cond_4

    goto/16 :goto_7

    :cond_4
    if-eqz v3, :cond_b

    .line 830
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 831
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_2
    move-object/from16 v17, v0

    goto :goto_3

    .line 832
    :cond_5
    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 833
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    :cond_6
    move-object/from16 v17, v8

    :goto_3
    if-nez v17, :cond_7

    .line 839
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->finish()V

    return-object v8

    .line 843
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    filled-new-array {v2, v10, v15}, [Ljava/lang/String;

    move-result-object v18

    const-string v19, "_data=?"

    new-array v0, v11, [Ljava/lang/String;

    aput-object v3, v0, v12

    const/16 v21, 0x0

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_9

    .line 852
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 853
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 854
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    .line 855
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_9

    .line 857
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 859
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 860
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    .line 861
    :cond_8
    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 862
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v8, v2

    goto :goto_5

    :cond_9
    move-object v0, v7

    :goto_4
    if-eqz v2, :cond_c

    .line 869
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 872
    :cond_a
    throw v0

    :cond_b
    move-object v0, v7

    :cond_c
    :goto_6
    move-object v2, v8

    goto/16 :goto_1a

    .line 824
    :cond_d
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->finish()V

    return-object v8

    :cond_e
    move-object/from16 v5, p0

    .line 877
    invoke-direct/range {p0 .. p1}, Lcom/zui/gallery/app/GalleryActivity;->isMedisStoreContent(Landroid/net/Uri;)Z

    move-result v0

    const-string v4, "query mediaStore exception "

    if-eqz v0, :cond_20

    .line 880
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    filled-new-array {v2, v10, v15}, [Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move-object/from16 v22, v4

    move-object v4, v0

    move-object/from16 v5, v16

    move-object v8, v6

    move-object/from16 v6, v17

    :try_start_5
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const-string v0, "file not exist for uri: "

    if-eqz v1, :cond_1c

    .line 889
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 890
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 892
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_b

    .line 903
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v0, :cond_16

    .line 906
    :try_start_7
    sget-object v24, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    filled-new-array {v10, v15}, [Ljava/lang/String;

    move-result-object v25

    const-string v26, "_data=?"

    new-array v0, v11, [Ljava/lang/String;

    aput-object v2, v0, v12

    const/16 v28, 0x0

    move-object/from16 v27, v0

    invoke-virtual/range {v23 .. v28}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v2, :cond_14

    .line 913
    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 914
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 916
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_11

    .line 918
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 919
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_8

    .line 920
    :cond_10
    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 921
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_8

    .line 924
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mediaStore image table not exist for uri: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v2, :cond_12

    .line 932
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :cond_12
    if-eqz v1, :cond_13

    .line 946
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_13
    const/4 v1, 0x0

    return-object v1

    :catchall_2
    move-exception v0

    goto :goto_9

    :cond_14
    move-object v0, v7

    :goto_8
    if-eqz v2, :cond_17

    .line 932
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_3
    move-exception v0

    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_15

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 934
    :cond_15
    throw v0

    :catch_2
    const/4 v2, 0x0

    :catch_3
    if-eqz v2, :cond_16

    .line 932
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_16
    move-object v0, v7

    :cond_17
    :goto_a
    if-eqz v1, :cond_2b

    .line 946
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_18

    .line 894
    :cond_18
    :goto_b
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v1, :cond_19

    .line 946
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_19
    const/4 v1, 0x0

    return-object v1

    .line 898
    :cond_1a
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v1, :cond_1b

    .line 946
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1b
    const/4 v1, 0x0

    return-object v1

    :catch_4
    move-exception v0

    goto :goto_d

    .line 938
    :cond_1c
    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v1, :cond_1d

    .line 946
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1d
    const/4 v1, 0x0

    return-object v1

    :catch_5
    move-exception v0

    goto :goto_c

    :catchall_4
    move-exception v0

    const/4 v8, 0x0

    goto :goto_e

    :catch_6
    move-exception v0

    move-object/from16 v22, v4

    :goto_c
    const/4 v1, 0x0

    :goto_d
    move-object/from16 v2, v22

    .line 942
    :try_start_e
    invoke-static {v13, v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v1, :cond_1e

    .line 946
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1e
    const/4 v1, 0x0

    return-object v1

    :catchall_5
    move-exception v0

    move-object v8, v1

    :goto_e
    if-eqz v8, :cond_1f

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 949
    :cond_1f
    throw v0

    :cond_20
    move-object v2, v4

    move-object v8, v6

    .line 952
    invoke-direct/range {p0 .. p1}, Lcom/zui/gallery/app/GalleryActivity;->isBluetoothContent(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 953
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 954
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 955
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bluetooth"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 960
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v19

    const-string v20, "_data=?"

    new-array v1, v11, [Ljava/lang/String;

    aput-object v0, v1, v12

    const/16 v22, 0x0

    move-object/from16 v21, v1

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    if-eqz v8, :cond_21

    .line 965
    :try_start_10
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 966
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 967
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v0

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_f

    :catch_7
    move-exception v0

    goto :goto_10

    :cond_21
    move-object v0, v7

    :goto_f
    if-eqz v8, :cond_2b

    .line 973
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_18

    :catchall_6
    move-exception v0

    const/4 v8, 0x0

    goto :goto_11

    :catch_8
    move-exception v0

    const/4 v8, 0x0

    .line 970
    :goto_10
    :try_start_11
    invoke-static {v13, v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    if-eqz v8, :cond_2a

    .line 973
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_17

    :catchall_7
    move-exception v0

    :goto_11
    if-eqz v8, :cond_22

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 975
    :cond_22
    throw v0

    .line 978
    :cond_23
    invoke-direct/range {p0 .. p1}, Lcom/zui/gallery/app/GalleryActivity;->isFileManagerContent(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 979
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 980
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 981
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    .line 982
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 986
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v19

    const-string v20, "_data=?"

    new-array v1, v11, [Ljava/lang/String;

    aput-object v0, v1, v12

    const/16 v22, 0x0

    move-object/from16 v21, v1

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    if-eqz v8, :cond_24

    .line 991
    :try_start_13
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 992
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 993
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v0

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    goto :goto_12

    :catch_9
    move-exception v0

    goto :goto_13

    :cond_24
    move-object v0, v7

    :goto_12
    if-eqz v8, :cond_2b

    .line 999
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_18

    :catchall_8
    move-exception v0

    const/4 v8, 0x0

    goto :goto_14

    :catch_a
    move-exception v0

    const/4 v8, 0x0

    .line 996
    :goto_13
    :try_start_14
    invoke-static {v13, v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    if-eqz v8, :cond_2a

    .line 999
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_17

    :catchall_9
    move-exception v0

    :goto_14
    if-eqz v8, :cond_25

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1001
    :cond_25
    throw v0

    :cond_26
    const-string v0, "open file from FM uri is not support "

    .line 1004
    invoke-static {v13, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    .line 1010
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1014
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_data=?"

    new-array v5, v11, [Ljava/lang/String;

    aput-object v0, v5, v12

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 1020
    :try_start_16
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz v8, :cond_28

    .line 1021
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1022
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 1023
    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryContentMediaUri: --------------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    goto :goto_15

    :catch_b
    move-exception v0

    move-object v7, v1

    goto :goto_16

    :cond_28
    move-object v1, v7

    :goto_15
    if-eqz v8, :cond_29

    .line 1029
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_29
    move-object v0, v1

    goto :goto_18

    :catch_c
    move-exception v0

    goto :goto_16

    :catchall_a
    move-exception v0

    const/4 v8, 0x0

    goto :goto_19

    :catch_d
    move-exception v0

    const/4 v8, 0x0

    .line 1026
    :goto_16
    :try_start_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryContentMediaUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    if-eqz v8, :cond_2a

    .line 1029
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2a
    :goto_17
    move-object v0, v7

    :cond_2b
    :goto_18
    return-object v0

    :catchall_b
    move-exception v0

    :goto_19
    if-eqz v8, :cond_2c

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1031
    :cond_2c
    throw v0

    .line 1044
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryContextMediaUri:for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2e

    return-object v2

    :cond_2e
    move-object v0, v7

    .line 1054
    :goto_1a
    :try_start_19
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1055
    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "bucket_id"

    filled-new-array {v10, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "_data=(?)"

    new-array v7, v11, [Ljava/lang/String;

    .line 1060
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    const/4 v8, 0x0

    .line 1054
    invoke-static/range {v3 .. v8}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    if-eqz v8, :cond_2f

    .line 1062
    :try_start_1a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1063
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1064
    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1065
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryContextMediaUri:got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :catchall_c
    move-exception v0

    goto :goto_1c

    .line 1069
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryContextMediaUri:fail to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    :goto_1b
    if-eqz v8, :cond_30

    .line 1073
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_30
    return-object v0

    :catchall_d
    move-exception v0

    move-object v8, v2

    :goto_1c
    if-eqz v8, :cond_31

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1076
    :cond_31
    throw v0
.end method

.method private updateVideoObject(Lcom/zui/gallery/data/Path;)V
    .locals 10

    const-string v0, "GalleryActivity"

    if-nez p1, :cond_0

    return-void

    .line 1341
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->getObject()Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1342
    instance-of v2, v1, Lcom/zui/gallery/data/LocalVideo;

    if-eqz v2, :cond_3

    .line 1343
    check-cast v1, Lcom/zui/gallery/data/LocalVideo;

    .line 1344
    iget v2, v1, Lcom/zui/gallery/data/LocalVideo;->id:I

    .line 1345
    iget-object v1, v1, Lcom/zui/gallery/data/LocalVideo;->filePath:Ljava/lang/String;

    const/4 v3, 0x0

    .line 1348
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->PROJECTIONS:[Ljava/lang/String;

    const-string v7, "_data=? "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1349
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 1350
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v4, 0x13

    if-ne v1, v4, :cond_1

    .line 1352
    new-instance v1, Lcom/zui/gallery/data/LocalVideoScreenRecord;

    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {v1, p1, v4, v2}, Lcom/zui/gallery/data/LocalVideoScreenRecord;-><init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;I)V

    .line 1353
    invoke-virtual {p1, v1}, Lcom/zui/gallery/data/Path;->setObject(Lcom/zui/gallery/data/MediaObject;)V

    const-string p1, "chanage LocalVideo to LocalVideoScreenRecord"

    .line 1354
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v3, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "query shadowvideoships exception "

    .line 1358
    invoke-static {v0, v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 1361
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1363
    :cond_2
    throw p1

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public initHandler()V
    .locals 2

    const-string v0, "GalleryActivity"

    const-string v1, "init handler"

    .line 1521
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    new-instance v0, Lcom/zui/gallery/app/GalleryActivity$13;

    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/app/GalleryActivity$13;-><init>(Lcom/zui/gallery/app/GalleryActivity;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/zui/gallery/app/GalleryActivity;->mEventHandler:Landroid/os/Handler;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 292
    invoke-super {p0, p1, p2, p3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x16

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/zui/gallery/app/GalleryActivity;->initializeByIntent()V

    .line 297
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->buildTabManager()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->finishAffinity()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 145
    invoke-super {p0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "dismiss-keyguard"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    const-string p1, "GalleryActivity"

    const-string v0, "onCreate  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    .line 153
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0b0085

    .line 155
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/GalleryActivity;->setContentView(I)V

    .line 156
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 157
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/GalleryActivity;->saveCutoutValue(Landroid/view/View;)V

    .line 160
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->getPrivacyCount()I

    move-result p1

    .line 161
    invoke-static {p0, p1}, Lcom/zui/gallery/util/GroupUtils;->setPrivacyFilesSize(Landroid/content/Context;I)V

    .line 163
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->deleteSharFiles()V

    .line 170
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/zui/gallery/app/GalleryActivity;->hasSetScreenOffRecevier:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 171
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/zui/gallery/app/GalleryActivity;->hasSetFlagForCameraCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 172
    invoke-static {p0}, Lcom/zui/gallery/app/PermissionsManager;->isAllGranted(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 173
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/zui/gallery/app/PermissionsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x16

    .line 174
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/app/GalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/app/GalleryActivity;->initializeByIntent()V

    .line 179
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->buildTabManager()V

    .line 180
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->initHandler()V

    .line 181
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getCloudTipLayoutController()Lcom/zui/gallery/cloud/CloudTipLayoutController;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->setHandler(Landroid/os/Handler;)V

    .line 182
    invoke-static {p0}, Lcom/zui/gallery/util/GroupUtils;->isGroupUpdated(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 183
    invoke-direct {p0}, Lcom/zui/gallery/app/GalleryActivity;->connectService()V

    .line 186
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->isThirdAppCall()Z

    move-result p1

    if-nez p1, :cond_3

    .line 187
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getCloudTipLayoutController()Lcom/zui/gallery/cloud/CloudTipLayoutController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->showTip(Z)V

    .line 189
    :cond_3
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity;->mLoginReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.zui.gallery.action.LOGIN_FROM_SETTING_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1426
    invoke-super {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->onDestroy()V

    .line 1428
    iget-boolean v0, p0, Lcom/zui/gallery/app/GalleryActivity;->mIsSecureCameraCall:Z

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/GalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1432
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/cloud/CloudManager;->unregisterSyncListener(Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;)V

    .line 1433
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/GalleryActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GalleryActivity"

    const-string v2, "GalleryActvity ondestory error occured"

    .line 1435
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1438
    :goto_0
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/GalleryActivity;->mLoginReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1414
    invoke-super {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 266
    invoke-super {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->onRestart()V

    .line 267
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/cloud/CloudManager;->registerSyncListener(Lcom/zui/gallery/cloud/CloudManager$SyncStatListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1371
    invoke-static {p0}, Lcom/zui/gallery/util/GroupUtils;->hasCloudTrashRecovery(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    invoke-direct {p0}, Lcom/zui/gallery/app/GalleryActivity;->forceReloadCloudImages()V

    .line 1374
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/GalleryActivity;->forceUpdateAlbums()V

    .line 1375
    invoke-super {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->onResume()V

    .line 1376
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->isSecureCameraCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1377
    new-instance v0, Lcom/zui/gallery/app/GalleryActivity$10;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/GalleryActivity$10;-><init>(Lcom/zui/gallery/app/GalleryActivity;)V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 262
    invoke-super {p0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->onStop()V

    return-void
.end method

.method public onSyncStatChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloudtest aaaaaaaa:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GalleryActivity"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance p1, Lcom/zui/gallery/app/GalleryActivity$4;

    invoke-direct {p1, p0, p2, p3}, Lcom/zui/gallery/app/GalleryActivity$4;-><init>(Lcom/zui/gallery/app/GalleryActivity;ILandroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startDefaultPage()V
    .locals 3

    .line 344
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    sget-object v1, Lcom/zui/gallery/app/GalleryActivity;->CAMERA_SHOW_ALL_ACTION:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 349
    iput-boolean v1, p0, Lcom/zui/gallery/app/GalleryActivity;->isCameraCall:Z

    .line 351
    :cond_0
    sget-object v1, Lcom/zui/gallery/app/GalleryActivity;->FINISH_WHEN_CLICK_BACK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/gallery/app/GalleryActivity;->mFinishWhenClickBack:Z

    .line 352
    sget-object v1, Lcom/zui/gallery/app/GalleryActivity;->CAMERA_SHOW_SECURE_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/app/GalleryActivity;->mIsSecureCameraCall:Z

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start from camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/gallery/app/GalleryActivity;->isCameraCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsSecureCameraCall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/gallery/app/GalleryActivity;->mIsSecureCameraCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mFinishWhenClickBack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/gallery/app/GalleryActivity;->mFinishWhenClickBack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iput-boolean v2, p0, Lcom/zui/gallery/app/GalleryActivity;->mIsSecureCameraCall:Z

    .line 356
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 357
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    const/16 v2, 0xa

    .line 358
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "media-path"

    .line 357
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-virtual {v1, v2, v0}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public tryConnectCloudService()V
    .locals 1

    .line 255
    invoke-virtual {p0}, Lcom/zui/gallery/app/GalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isBinded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/zui/gallery/app/GalleryActivity;->connectService()V

    :cond_0
    return-void
.end method
