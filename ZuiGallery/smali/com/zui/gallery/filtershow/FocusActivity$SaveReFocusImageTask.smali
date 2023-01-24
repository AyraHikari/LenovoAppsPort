.class Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;
.super Landroid/os/AsyncTask;
.source "FocusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/FocusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveReFocusImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/FocusActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FocusActivity;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private saveEditFile(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 8

    const-string v0, "FocusActivity"

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 385
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd_HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 386
    new-instance v4, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/sql/Date;-><init>(J)V

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMG_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_EDIT.jpg"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {v5}, Lcom/zui/gallery/filtershow/FocusActivity;->access$1200(Lcom/zui/gallery/filtershow/FocusActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 390
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 392
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 395
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 396
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p1, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 397
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 398
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {p1, v6, v4, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    const-wide/16 v6, 0x12c

    .line 401
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 402
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1, v3}, Lcom/zui/gallery/filtershow/FocusActivity;->access$1300(Lcom/zui/gallery/filtershow/FocusActivity;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v5, v4

    :goto_1
    :try_start_3
    const-string v3, "save depth image exception "

    .line 404
    invoke-static {v0, v3, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_1

    goto :goto_0

    .line 414
    :catch_2
    :cond_1
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save depth edit image result uri is  "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " spend time "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :goto_3
    if-eqz v4, :cond_2

    .line 408
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 412
    :catch_3
    :cond_2
    throw p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 9

    .line 317
    :try_start_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$600(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 318
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FocusActivity;->access$600(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x0

    .line 320
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/FocusActivity;->access$700(Lcom/zui/gallery/filtershow/FocusActivity;)Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->isNil()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/FocusActivity;->access$700(Lcom/zui/gallery/filtershow/FocusActivity;)Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {v3}, Lcom/zui/gallery/filtershow/FocusActivity;->access$700(Lcom/zui/gallery/filtershow/FocusActivity;)Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->getPoint()Landroid/graphics/Point;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    .line 322
    invoke-static {v5}, Lcom/zui/gallery/filtershow/FocusActivity;->access$600(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v6, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {v6}, Lcom/zui/gallery/filtershow/FocusActivity;->access$600(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 321
    invoke-virtual {v2, v3, v4}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->setPoint(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 324
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {v2}, Lcom/zui/gallery/filtershow/FocusActivity;->access$700(Lcom/zui/gallery/filtershow/FocusActivity;)Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->getRealPoint()Landroid/graphics/Point;

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "FocusActivity"

    .line 334
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refocus consume "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {v2, v1, p1, v0}, Lcom/zui/gallery/filtershow/FocusActivity;->access$800(Lcom/zui/gallery/filtershow/FocusActivity;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 359
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 369
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$900(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 302
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/FocusActivity;->access$1000(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100226

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 376
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->setResult(ILandroid/content/Intent;)V

    .line 378
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->access$1100(Lcom/zui/gallery/filtershow/FocusActivity;)V

    .line 379
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->this$0:Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FocusActivity;->finish()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 302
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
