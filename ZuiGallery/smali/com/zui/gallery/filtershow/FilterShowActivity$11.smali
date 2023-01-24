.class Lcom/zui/gallery/filtershow/FilterShowActivity$11;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/FilterShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V
    .locals 0

    .line 2282
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 10

    .line 2296
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2700(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FilterShowActivity"

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2297
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 2299
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2300
    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2800(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v3

    const/16 v4, 0xb

    .line 2301
    invoke-virtual {v3, v4}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    .line 2300
    invoke-static {v3}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v3

    .line 2302
    sget v4, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v3, v4}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v3

    .line 2303
    iget-object v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v4}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2800(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/SecureAlbum;

    if-eqz v3, :cond_0

    .line 2305
    invoke-virtual {v3, v1, v0}, Lcom/zui/gallery/data/SecureAlbum;->addMediaItem(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "add edit pic to secureAlbum exception "

    .line 2308
    invoke-static {v2, v3, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2314
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRequestScanFileListener uri ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 2316
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2318
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 2320
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mRequestScanFileListener value ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "time = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v4, "datetaken"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "latitude"

    const-string v5, "longitude"

    .line 2323
    filled-new-array {v4, v0, v5}, [Ljava/lang/String;

    move-result-object v0

    .line 2328
    iget-object v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v4}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$400(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v5}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$800(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Lcom/zui/gallery/filtershow/FilterShowActivity$11$1;

    invoke-direct {v6, p0, v3}, Lcom/zui/gallery/filtershow/FilterShowActivity$11$1;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity$11;Landroid/content/ContentValues;)V

    invoke-static {v4, v5, v0, v6}, Lcom/zui/gallery/filtershow/tools/SaveImage;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/zui/gallery/filtershow/tools/SaveImage$ContentResolverQueryCallback;)V

    .line 2347
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, p2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRequestScanFileListener result ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    :cond_1
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isScreenShotLaunch:Z

    if-eqz v0, :cond_3

    const-string v0, "screenshotLaunch"

    .line 2354
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "image/png"

    .line 2356
    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 2357
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2358
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.zui.gallery"

    const-string v4, "com.zui.gallery.app.GalleryActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2360
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 2363
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$2900(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2364
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    .line 2365
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "image/*"

    .line 2366
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    .line 2367
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p2, 0xa

    const-string v2, "extraDataType"

    .line 2368
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "extraDataValue"

    const-string v2, "98"

    .line 2369
    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "awiudof"

    const-string/jumbo v2, "sharePic: cccccccccc"

    .line 2370
    invoke-static {p2, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    iget-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$400(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100254

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x62

    invoke-virtual {p2, v0, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 2375
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setResult(ILandroid/content/Intent;)V

    .line 2378
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$1000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 2380
    iget-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$3000(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    .line 2381
    iget-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    new-instance v0, Lcom/zui/gallery/filtershow/FilterShowActivity$11$2;

    invoke-direct {v0, p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity$11$2;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity$11;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2396
    sput-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSave:Z

    .line 2397
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->stopSaveIndicator()V

    .line 2402
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/util/GroupUtils;->isEffectsCleared(Landroid/content/Context;)Z

    move-result p1

    const-string/jumbo p2, "wangmeicam"

    if-nez p1, :cond_6

    .line 2403
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "before finish need clear, mBoundService is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2405
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearNvsEffectRenderCore()V

    .line 2408
    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "need sleep 1000, current thread is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, 0xc8

    .line 2409
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 2411
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_6
    const-string p1, "donot need clear"

    .line 2414
    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    :goto_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finish()V

    :cond_7
    return-void
.end method
