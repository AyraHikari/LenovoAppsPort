.class Lcom/zui/gallery/app/ExtractFrameProcesser$4;
.super Ljava/lang/Object;
.source "Best4KVideoSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/ExtractFrameProcesser;->getProcessYUVTask()Ljava/lang/Runnable;
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

    .line 1531
    iput-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$4;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1535
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1536
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    const-string v4, "ExtractFrameProcesser"

    if-nez v3, :cond_2

    .line 1538
    :try_start_0
    iget-object v3, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$4;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v3}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;

    if-eqz v3, :cond_1

    .line 1539
    iget-wide v5, v3, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->time:J

    invoke-static {}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$700()I

    move-result v7

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto :goto_1

    .line 1543
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$4;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v6}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$800(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->time:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1544
    iget-object v6, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$4;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v6, v5, v3, v2}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$900(Lcom/zui/gallery/app/ExtractFrameProcesser;Ljava/lang/String;Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_1
    :goto_1
    const-string v3, "no more yuv timeframes"

    .line 1540
    invoke-static {v4, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string/jumbo v5, "task exception quit this task "

    .line 1547
    invoke-static {v4, v5, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1550
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$4;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v2}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$600(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " process yuv file spend time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1553
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
