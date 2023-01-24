.class public Lcom/zui/gallery/app/CameraShotNewPictureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraShotNewPictureReceiver.java"


# static fields
.field private static final CAMERA_UPDATE_ACTION:Ljava/lang/String; = "com.zui.gallery.FORCE_UPDATE_CAMERA_ALBUM"

.field private static final SCREENRECODER_UPDATE_ACTION:Ljava/lang/String; = "com.zui.gallery.FORCE_UPDATE_SCREENRECORDER_ALBUM"

.field private static final TAG:Ljava/lang/String; = "CameraShotNewPictureReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.zui.gallery.FORCE_UPDATE_CAMERA_ALBUM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "gApp==null"

    const-string v1, "receive action:"

    const-string v2, "CameraShotNewPictureReceiver"

    if-eqz p1, :cond_3

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Lcom/zui/gallery/util/ApplicationProxy;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/GalleryApp;

    if-nez p1, :cond_0

    .line 27
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {}, Lcom/zui/gallery/util/ApplicationProxy;->getApplicationInner()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/GalleryApp;

    .line 31
    :cond_0
    invoke-static {}, Lcom/zui/gallery/util/ApplicationProxy;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p2

    sget-object v0, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    .line 32
    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 31
    invoke-virtual {p2, v0}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/data/MediaSet;

    .line 33
    instance-of v0, p2, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz v0, :cond_1

    const-string v0, "forceReload LocalAlbum image"

    .line 34
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    check-cast p2, Lcom/zui/gallery/data/LocalAlbum;

    invoke-virtual {p2}, Lcom/zui/gallery/data/LocalAlbum;->fakeChange()V

    .line 36
    invoke-virtual {p2}, Lcom/zui/gallery/data/LocalAlbum;->reload()J

    .line 38
    :cond_1
    invoke-static {}, Lcom/zui/gallery/util/ApplicationProxy;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p2

    sget-object v0, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    .line 39
    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 38
    invoke-virtual {p2, v0}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/data/MediaSet;

    .line 40
    instance-of v0, p2, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz v0, :cond_2

    const-string v0, "forceReload LocalAlbum video"

    .line 41
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    check-cast p2, Lcom/zui/gallery/data/LocalAlbum;

    invoke-virtual {p2}, Lcom/zui/gallery/data/LocalAlbum;->fakeChange()V

    .line 43
    invoke-virtual {p2}, Lcom/zui/gallery/data/LocalAlbum;->reload()J

    .line 47
    :cond_2
    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p2

    const/16 v0, 0x12

    .line 48
    invoke-virtual {p2, v0}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object p2

    .line 47
    invoke-static {p2}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p2

    .line 49
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {p2, v0}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object p2

    .line 50
    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;

    move-result-object p1

    .line 51
    instance-of p2, p1, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    if-eqz p2, :cond_6

    const-string p2, "forceReload LocalTimeMergeAlbum"

    .line 52
    invoke-static {v2, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    check-cast p1, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->setForceReload(Z)V

    .line 54
    invoke-virtual {p1}, Lcom/zui/gallery/data/localtime/LocalTimeMergeAlbum;->reload()J

    goto/16 :goto_0

    .line 56
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.zui.gallery.FORCE_UPDATE_SCREENRECORDER_ALBUM"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/zui/gallery/util/ApplicationProxy;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/GalleryApp;

    const/4 v1, 0x0

    const-string v3, "isImage"

    .line 59
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p1, :cond_4

    .line 61
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Lcom/zui/gallery/util/ApplicationProxy;->getApplicationInner()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/GalleryApp;

    :cond_4
    if-nez p2, :cond_5

    .line 67
    invoke-static {}, Lcom/zui/gallery/util/ApplicationProxy;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p1

    sget-object p2, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/zui/gallery/data/Path;

    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->SCREENRECORDER_BUCKET_ID:I

    .line 68
    invoke-virtual {p2, v0}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object p2

    .line 67
    invoke-virtual {p1, p2}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaSet;

    .line 70
    instance-of p2, p1, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz p2, :cond_6

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forceReload ScreenRecorder video"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    check-cast p1, Lcom/zui/gallery/data/LocalAlbum;

    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalAlbum;->fakeChange()V

    .line 73
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalAlbum;->reload()J

    goto :goto_0

    .line 76
    :cond_5
    invoke-static {}, Lcom/zui/gallery/util/ApplicationProxy;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p1

    sget-object p2, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    .line 77
    invoke-virtual {p2, v0}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object p2

    .line 76
    invoke-virtual {p1, p2}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaSet;

    .line 79
    instance-of p2, p1, Lcom/zui/gallery/data/LocalAlbum;

    if-eqz p2, :cond_6

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forceReload SCREENSHOTS image "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    check-cast p1, Lcom/zui/gallery/data/LocalAlbum;

    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalAlbum;->fakeChange()V

    .line 82
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalAlbum;->reload()J

    :cond_6
    :goto_0
    return-void
.end method
