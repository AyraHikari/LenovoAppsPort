.class Lcom/zui/gallery/app/ExtractFrameProcesser$5;
.super Ljava/lang/Object;
.source "Best4KVideoSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/ExtractFrameProcesser;->mergeTask()Ljava/lang/Runnable;
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

    .line 1560
    iput-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "ExtractFrameProcesser"

    .line 1563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 1572
    :try_start_0
    iget-object v4, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v4}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1000(Lcom/zui/gallery/app/ExtractFrameProcesser;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "isCacheFileValid() exception "

    .line 1574
    invoke-static {v0, v5, v4}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .line 1576
    :goto_0
    iget-object v5, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v5}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1577
    iget-object v5, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v5}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;->isCacheValid(Z)V

    .line 1579
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cache file exist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 1581
    iget-object v4, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v4}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1200(Lcom/zui/gallery/app/ExtractFrameProcesser;)V

    .line 1582
    :goto_1
    invoke-static {}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1300()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_2

    .line 1583
    iget-object v4, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v4}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1500(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iget-object v6, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v6}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1400(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1589
    :cond_1
    :goto_2
    invoke-static {}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1300()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_2

    .line 1590
    iget-object v4, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v4}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1500(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iget-object v6, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v6}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1600(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1607
    :cond_2
    iget-object v3, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v3}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$000(Lcom/zui/gallery/app/ExtractFrameProcesser;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1609
    :try_start_1
    iget-object v3, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v3}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$600(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 1610
    iget-object v3, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v3}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1611
    iget-object v3, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v3}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v4}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$200(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v6}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$500(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;->onExtractComplete(Ljava/util/List;Ljava/util/Map;)V

    .line 1613
    :cond_3
    iget-object v3, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v3}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$500(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v6, 0x0

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v3}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$500(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1615
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1616
    iget-object v7, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v7}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$200(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1617
    iget-object v9, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v9}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$000(Lcom/zui/gallery/app/ExtractFrameProcesser;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1618
    iget-object v9, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v9}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$500(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    if-eqz v8, :cond_4

    .line 1619
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1620
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1624
    :cond_5
    iget-object v7, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v7}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$000(Lcom/zui/gallery/app/ExtractFrameProcesser;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1625
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1626
    iget-object v7, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v7}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1700(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/data/LocalVideo;

    move-result-object v7

    invoke-virtual {v7, v4, v3, v5}, Lcom/zui/gallery/data/LocalVideo;->requestViewFrame(ILjava/util/List;Z)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v3

    iget-object v7, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    iget-object v7, v7, Lcom/zui/gallery/app/ExtractFrameProcesser;->jc:Lcom/zui/gallery/util/ThreadPool$JobContext;

    .line 1627
    invoke-interface {v3, v7}, Lcom/zui/gallery/util/ThreadPool$Job;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_6
    move-object v3, v6

    :goto_4
    if-eqz v3, :cond_8

    .line 1629
    iget-object v7, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v7}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 1630
    iget-object v7, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v7}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;->onFrameThumnailLoad(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_7
    move-object v3, v6

    :cond_8
    :goto_5
    if-nez v3, :cond_9

    .line 1638
    iget-object v3, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v3}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1700(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/data/LocalVideo;

    move-result-object v3

    invoke-virtual {v3, v4, v6, v5}, Lcom/zui/gallery/data/LocalVideo;->requestViewFrame(ILjava/util/List;Z)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    iget-object v4, v4, Lcom/zui/gallery/app/ExtractFrameProcesser;->jc:Lcom/zui/gallery/util/ThreadPool$JobContext;

    .line 1639
    invoke-interface {v3, v4}, Lcom/zui/gallery/util/ThreadPool$Job;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_9

    .line 1640
    iget-object v4, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v4}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1641
    iget-object v4, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v4}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;->onFrameThumnailLoad(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v3

    const-string v4, "mergeTask exception "

    .line 1647
    invoke-static {v0, v4, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_2
    const-string v3, "mergeTask interrupted"

    .line 1645
    invoke-static {v0, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_9
    :goto_6
    iget-object v3, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$5;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v3, v5}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1802(Lcom/zui/gallery/app/ExtractFrameProcesser;Z)Z

    .line 1651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extract best frame total spend "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " secs"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
