.class Lcom/zui/gallery/app/ExtractFrameProcesser$3;
.super Ljava/lang/Object;
.source "Best4KVideoSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/ExtractFrameProcesser;->getParseCacheTask()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/ExtractFrameProcesser;)V
    .locals 0

    .line 1419
    iput-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$3;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1423
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1425
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    const-string v4, "ExtractFrameProcesser"

    if-nez v3, :cond_4

    .line 1427
    :try_start_0
    iget-object v3, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$3;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v3}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;

    if-eqz v3, :cond_3

    .line 1428
    iget-object v5, v3, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->path:Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_1

    .line 1432
    :cond_1
    iget-object v3, v3, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->path:Ljava/lang/String;

    .line 1433
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1435
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1436
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1437
    iget-object v6, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$3;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v6}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$200(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1438
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v7, 0x4

    .line 1439
    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1440
    invoke-static {v3, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v6, 0x280

    const/4 v7, 0x1

    .line 1442
    invoke-static {v3, v6, v7}, Lcom/zui/gallery/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1443
    iget-object v6, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$3;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v6}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$300(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    move-result-object v6

    iget v6, v6, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoRoateDegree:I

    if-lez v6, :cond_2

    .line 1444
    iget-object v6, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$3;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    iget-object v7, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$3;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v7}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$300(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    move-result-object v7

    iget v7, v7, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mVideoRoateDegree:I

    invoke-static {v6, v2, v3, v7}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$400(Lcom/zui/gallery/app/ExtractFrameProcesser;Landroid/graphics/Matrix;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1446
    :cond_2
    iget-object v6, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$3;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v6}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$500(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    :goto_1
    const-string v3, "all cache file parsered"

    .line 1429
    invoke-static {v4, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string/jumbo v5, "task exception quit this task "

    .line 1452
    invoke-static {v4, v5, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1455
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$3;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v2}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$600(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " load file spend time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
