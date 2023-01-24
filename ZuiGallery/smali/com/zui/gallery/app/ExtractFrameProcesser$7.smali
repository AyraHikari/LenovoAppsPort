.class Lcom/zui/gallery/app/ExtractFrameProcesser$7;
.super Ljava/lang/Object;
.source "Best4KVideoSelectActivity.java"

# interfaces
.implements Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/ExtractFrameProcesser;
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

    .line 1747
    iput-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$7;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBestFrameSequenceCanclled()V
    .locals 2

    const-string v0, "ExtractFrameProcesser"

    const-string v1, "onBestFrameSequenceCanclled"

    .line 1809
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBestFrameSequenceDone()V
    .locals 4

    const-string v0, "ExtractFrameProcesser"

    const-string v1, "onBestFrameSequenceDone "

    .line 1784
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    iget-object v1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$7;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v1}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$200(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$7;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v1}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$200(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1786
    :goto_0
    invoke-static {}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1300()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1787
    new-instance v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;

    invoke-direct {v1}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;-><init>()V

    .line 1788
    invoke-static {}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$700()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->time:J

    .line 1790
    :try_start_0
    iget-object v2, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$7;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v2}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1792
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "onBestFrameSequenceDone but get nothing"

    .line 1797
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onBestFrameSequenceError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "ExtractFrameProcesser"

    const-string v1, "onBestFrameSequenceError "

    .line 1775
    invoke-static {v0, v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1776
    iget-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$7;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {p1}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1777
    iget-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$7;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {p1}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;->onExtractError()V

    .line 1779
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$7;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-virtual {p1}, Lcom/zui/gallery/app/ExtractFrameProcesser;->stop()V

    return-void
.end method

.method public onBestFrameSequenceProcess(Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;F)V
    .locals 3

    .line 1762
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$7;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 1763
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$7;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$200(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/List;

    move-result-object v0

    iget-wide v1, p1, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->time:J

    long-to-int p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    .line 1765
    iget-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$7;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {p1}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1766
    iget-object p1, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$7;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {p1}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$1100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/zui/gallery/app/ExtractFrameProcesser$ExtractListener;->updateExtractPercent(F)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onBestFrameSequenceStart()V
    .locals 2

    const-string v0, "ExtractFrameProcesser"

    const-string v1, "onBestFrameSequenceStart"

    .line 1752
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$7;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/zui/gallery/app/ExtractFrameProcesser$7;->this$0:Lcom/zui/gallery/app/ExtractFrameProcesser;

    invoke-static {v0}, Lcom/zui/gallery/app/ExtractFrameProcesser;->access$100(Lcom/zui/gallery/app/ExtractFrameProcesser;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    :cond_0
    return-void
.end method
