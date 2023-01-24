.class Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$3;
.super Ljava/lang/Object;
.source "GalleryPreLoadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->parserMeditItem(I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;I)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$3;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    iput p2, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$3;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "GalleryPreLoadService"

    .line 569
    iget v1, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$3;->val$type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 570
    iget-object v2, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$3;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v2}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1600(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$3;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v2}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1500(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    .line 573
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->access$2000()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/LocalMediaItem;

    if-eqz v3, :cond_3

    .line 575
    iget-object v4, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$3;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v4}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1000(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 576
    :cond_1
    iget-object v4, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$3;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v4}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1100(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V

    .line 578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " consume data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/zui/gallery/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget v4, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$3;->val$type:I

    invoke-virtual {v3, v4}, Lcom/zui/gallery/data/LocalMediaItem;->requestImage(I)Lcom/zui/gallery/util/ThreadPool$Job;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$3;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v4}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$900(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Lcom/zui/gallery/util/ThreadPool$JobContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/zui/gallery/util/ThreadPool$Job;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    .line 581
    iget-object v3, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$3;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v3}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1000(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 582
    :cond_2
    iget-object v3, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$3;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    invoke-static {v3}, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->access$1100(Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "wait for 5 sec no data coming, stop service"

    .line 584
    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 588
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " consume data thread  interrupted "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process$3;->this$1:Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;

    iget-object v0, v0, Lcom/zui/gallery/app/service/GalleryPreLoadService$Process;->this$0:Lcom/zui/gallery/app/service/GalleryPreLoadService;

    invoke-virtual {v0}, Lcom/zui/gallery/app/service/GalleryPreLoadService;->stopSelf()V

    return-void
.end method
