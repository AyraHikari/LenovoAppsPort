.class Lcom/zui/gallery/data/DownloadCache$TaskProxy$1;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/DownloadCache$TaskProxy;->get(Lcom/zui/gallery/util/ThreadPool$JobContext;)Lcom/zui/gallery/data/DownloadCache$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/DownloadCache$TaskProxy;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/DownloadCache$TaskProxy;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/zui/gallery/data/DownloadCache$TaskProxy$1;->this$0:Lcom/zui/gallery/data/DownloadCache$TaskProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/zui/gallery/data/DownloadCache$TaskProxy$1;->this$0:Lcom/zui/gallery/data/DownloadCache$TaskProxy;

    invoke-static {v0}, Lcom/zui/gallery/data/DownloadCache$TaskProxy;->access$300(Lcom/zui/gallery/data/DownloadCache$TaskProxy;)Lcom/zui/gallery/data/DownloadCache$DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/data/DownloadCache$TaskProxy$1;->this$0:Lcom/zui/gallery/data/DownloadCache$TaskProxy;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->removeProxy(Lcom/zui/gallery/data/DownloadCache$TaskProxy;)V

    .line 354
    iget-object v0, p0, Lcom/zui/gallery/data/DownloadCache$TaskProxy$1;->this$0:Lcom/zui/gallery/data/DownloadCache$TaskProxy;

    monitor-enter v0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/data/DownloadCache$TaskProxy$1;->this$0:Lcom/zui/gallery/data/DownloadCache$TaskProxy;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/zui/gallery/data/DownloadCache$TaskProxy;->access$702(Lcom/zui/gallery/data/DownloadCache$TaskProxy;Z)Z

    .line 356
    iget-object v1, p0, Lcom/zui/gallery/data/DownloadCache$TaskProxy$1;->this$0:Lcom/zui/gallery/data/DownloadCache$TaskProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
