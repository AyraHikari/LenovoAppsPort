.class public Lcom/zui/gallery/app/service/GalleryPreLoadService;
.super Landroid/app/Service;
.source "GalleryPreLoadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;,
        Lcom/zui/gallery/app/service/GalleryPreLoadService$LocalBinder;
    }
.end annotation


# static fields
.field private static final EXPIRTED_TIME:J = 0x1b7740L

.field private static final IMAGE_PROJECTION:[Ljava/lang/String;

.field private static final LAST_LOAD_KEY:Ljava/lang/String; = "last_load_time"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "preload_file"

.field private static final TAG:Ljava/lang/String; = "GalleryPreLoadService"

.field private static final VIDEO_PROJECTION:[Ljava/lang/String;

.field private static WAIT_NET_TASK_TIME:I


# instance fields
.field private mBinder:Lcom/zui/gallery/app/service/GalleryPreLoadService$LocalBinder;

.field private mGalleryApp:Lcom/zui/gallery/app/GalleryApp;

.field private mProcess:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

.field private needPareBigThumbnail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "_id"

    const-string/jumbo v1, "title"

    const-string v2, "mime_type"

    const-string v3, "latitude"

    const-string v4, "longitude"

    const-string v5, "datetaken"

    const-string v6, "date_added"

    const-string v7, "date_modified"

    const-string v8, "_data"

    const-string v9, "orientation"

    const-string v10, "bucket_id"

    const-string v11, "_size"

    const-string v12, "0"

    const-string v13, "0"

    .line 51
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    const-string/jumbo v2, "title"

    const-string v3, "mime_type"

    const-string v4, "latitude"

    const-string v5, "longitude"

    const-string v6, "datetaken"

    const-string v7, "date_added"

    const-string v8, "date_modified"

    const-string v9, "_data"

    const-string v10, "duration"

    const-string v11, "bucket_id"

    const-string v12, "_size"

    const-string v13, "resolution"

    .line 67
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->VIDEO_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x5

    .line 92
    sput v0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->WAIT_NET_TASK_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->needPareBigThumbnail:Z

    return-void
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->VIDEO_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/zui/gallery/app/service/GalleryPreLoadService;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->updateLastLoadTime()V

    return-void
.end method

.method static synthetic access$2000()I
    .locals 1

    .line 49
    sget v0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->WAIT_NET_TASK_TIME:I

    return v0
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/service/GalleryPreLoadService;)Lcom/zui/gallery/app/GalleryApp;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->mGalleryApp:Lcom/zui/gallery/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/service/GalleryPreLoadService;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->needPareBigThumbnail:Z

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/app/service/GalleryPreLoadService;)Z
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->isTimeExpired()Z

    move-result p0

    return p0
.end method

.method private isTimeExpired()Z
    .locals 8

    const-string v0, "preload_file"

    const/4 v1, 0x0

    .line 650
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, "last_load_time"

    .line 653
    invoke-interface {v0, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 654
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v5, 0x1b7740

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    move v1, v2

    :cond_0
    move v2, v1

    .line 656
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTimeExpired "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryPreLoadService"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private updateLastLoadTime()V
    .locals 4

    const-string v0, "preload_file"

    const/4 v1, 0x0

    .line 642
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 644
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_load_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "GalleryPreLoadService"

    const-string v0, "onBind service"

    .line 161
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->mBinder:Lcom/zui/gallery/app/service/GalleryPreLoadService$LocalBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 105
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "GalleryPreLoadService"

    const-string v1, "service create"

    .line 106
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    iput-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->mGalleryApp:Lcom/zui/gallery/app/GalleryApp;

    .line 108
    new-instance v0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;-><init>(Lcom/zui/gallery/app/service/GalleryPreLoadService;)V

    iput-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->mProcess:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    .line 109
    new-instance v0, Lcom/zui/gallery/app/service/GalleryPreLoadService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$LocalBinder;-><init>(Lcom/zui/gallery/app/service/GalleryPreLoadService;)V

    iput-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->mBinder:Lcom/zui/gallery/app/service/GalleryPreLoadService$LocalBinder;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "GalleryPreLoadService"

    const-string v1, "GalleryPreLoadService destory"

    .line 147
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->mBinder:Lcom/zui/gallery/app/service/GalleryPreLoadService$LocalBinder;

    .line 150
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->mProcess:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$100(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "GalleryPreLoadService"

    .line 116
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :try_start_1
    iget-object p3, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->mProcess:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    if-nez p3, :cond_0

    const-string p1, "Process is null"

    .line 118
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->stopSelf()V

    return p2

    :cond_0
    if-nez p1, :cond_1

    const-string p3, "onStartCommand intent is null"

    .line 123
    invoke-static {v0, p3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->stopSelf()V

    .line 126
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string v1, "com.zui.gallyer.service.start"

    .line 128
    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    iget-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->mProcess:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {p1}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$000(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.zui.gallyer.service.stop"

    .line 130
    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    iget-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->mProcess:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {p1}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$100(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.zui.gallyer.service.task"

    .line 132
    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 133
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 135
    iget-object p3, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->mProcess:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {p3, p1}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$200(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :catch_1
    const-string p1, "onStartCommand exception "

    .line 140
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return p2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "GalleryPreLoadService"

    const-string/jumbo v1, "unBind service"

    .line 155
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public pause()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->mProcess:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    if-eqz v0, :cond_0

    .line 167
    invoke-static {v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$300(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService;->mProcess:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    if-eqz v0, :cond_0

    .line 173
    invoke-static {v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$400(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V

    :cond_0
    return-void
.end method
