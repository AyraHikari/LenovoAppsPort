.class Lcom/zui/gallery/data/DownloadCache$DownloadTask;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;
.implements Lcom/zui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Ljava/io/File;",
        ">;",
        "Lcom/zui/gallery/util/FutureListener<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mProxySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/zui/gallery/data/DownloadCache$TaskProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/zui/gallery/data/DownloadCache;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/DownloadCache;Ljava/lang/String;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->this$0:Lcom/zui/gallery/data/DownloadCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    .line 267
    invoke-static {p2}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/zui/gallery/data/DownloadCache$DownloadTask;Lcom/zui/gallery/util/Future;)Lcom/zui/gallery/util/Future;
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->mFuture:Lcom/zui/gallery/util/Future;

    return-object p1
.end method


# virtual methods
.method public addProxy(Lcom/zui/gallery/data/DownloadCache$TaskProxy;)V
    .locals 1

    .line 282
    invoke-static {p1, p0}, Lcom/zui/gallery/data/DownloadCache$TaskProxy;->access$302(Lcom/zui/gallery/data/DownloadCache$TaskProxy;Lcom/zui/gallery/data/DownloadCache$DownloadTask;)Lcom/zui/gallery/data/DownloadCache$DownloadTask;

    .line 283
    iget-object v0, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onFutureDone(Lcom/zui/gallery/util/Future;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/Future<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 288
    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_0

    .line 291
    iget-object v1, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->this$0:Lcom/zui/gallery/data/DownloadCache;

    iget-object v2, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/zui/gallery/data/DownloadCache;->access$400(Lcom/zui/gallery/data/DownloadCache;Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 294
    :goto_0
    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    return-void

    .line 299
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->this$0:Lcom/zui/gallery/data/DownloadCache;

    invoke-static {p1}, Lcom/zui/gallery/data/DownloadCache;->access$200(Lcom/zui/gallery/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1

    const/4 v3, 0x0

    .line 301
    :try_start_0
    iget-object v4, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->this$0:Lcom/zui/gallery/data/DownloadCache;

    invoke-static {v4}, Lcom/zui/gallery/data/DownloadCache;->access$500(Lcom/zui/gallery/data/DownloadCache;)Lcom/zui/gallery/common/LruCache;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_3

    .line 303
    :try_start_1
    new-instance v3, Lcom/zui/gallery/data/DownloadCache$Entry;

    iget-object v5, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->this$0:Lcom/zui/gallery/data/DownloadCache;

    invoke-direct {v3, v5, v1, v2, v0}, Lcom/zui/gallery/data/DownloadCache$Entry;-><init>(Lcom/zui/gallery/data/DownloadCache;JLjava/io/File;)V

    .line 304
    iget-object v0, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->this$0:Lcom/zui/gallery/data/DownloadCache;

    invoke-static {v0}, Lcom/zui/gallery/data/DownloadCache;->access$500(Lcom/zui/gallery/data/DownloadCache;)Lcom/zui/gallery/common/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/zui/gallery/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 306
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :try_start_2
    iget-object v0, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/DownloadCache$TaskProxy;

    .line 308
    invoke-virtual {v1, v3}, Lcom/zui/gallery/data/DownloadCache$TaskProxy;->setResult(Lcom/zui/gallery/data/DownloadCache$Entry;)V

    goto :goto_2

    .line 310
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->this$0:Lcom/zui/gallery/data/DownloadCache;

    invoke-static {v0}, Lcom/zui/gallery/data/DownloadCache;->access$200(Lcom/zui/gallery/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->this$0:Lcom/zui/gallery/data/DownloadCache;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/zui/gallery/data/DownloadCache;->access$600(Lcom/zui/gallery/data/DownloadCache;I)V

    .line 312
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 306
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    .line 312
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public removeProxy(Lcom/zui/gallery/data/DownloadCache$TaskProxy;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->this$0:Lcom/zui/gallery/data/DownloadCache;

    invoke-static {v0}, Lcom/zui/gallery/data/DownloadCache;->access$200(Lcom/zui/gallery/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 273
    iget-object p1, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    iget-object p1, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->mFuture:Lcom/zui/gallery/util/Future;

    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 275
    iget-object p1, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->this$0:Lcom/zui/gallery/data/DownloadCache;

    invoke-static {p1}, Lcom/zui/gallery/data/DownloadCache;->access$200(Lcom/zui/gallery/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/io/File;
    .locals 8

    const/4 v0, 0x2

    .line 318
    invoke-interface {p1, v0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setMode(I)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 321
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v4, "cache"

    const-string v5, ".tmp"

    .line 322
    iget-object v6, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->this$0:Lcom/zui/gallery/data/DownloadCache;

    invoke-static {v6}, Lcom/zui/gallery/data/DownloadCache;->access$100(Lcom/zui/gallery/data/DownloadCache;)Ljava/io/File;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :try_start_1
    invoke-interface {p1, v0}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setMode(I)Z

    .line 325
    invoke-static {p1, v3, v4}, Lcom/zui/gallery/data/DownloadUtils;->requestDownload(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/File;)Z

    move-result v0

    .line 326
    invoke-interface {p1, v2}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setMode(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 331
    invoke-interface {p1, v2}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setMode(I)Z

    return-object v4

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v1

    :goto_0
    :try_start_2
    const-string v3, "DownloadCache"

    const-string v5, "fail to download %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 329
    iget-object v7, p0, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    :cond_0
    invoke-interface {p1, v2}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setMode(I)Z

    if-eqz v4, :cond_1

    .line 333
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    return-object v1

    .line 331
    :goto_1
    invoke-interface {p1, v2}, Lcom/zui/gallery/util/ThreadPool$JobContext;->setMode(I)Z

    .line 332
    throw v0
.end method

.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 261
    invoke-virtual {p0, p1}, Lcom/zui/gallery/data/DownloadCache$DownloadTask;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
