.class Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;
.super Ljava/lang/Object;
.source "MediaSet.java"

# interfaces
.implements Lcom/zui/gallery/util/Future;
.implements Lcom/zui/gallery/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/MediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSetSyncFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/Future<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/zui/gallery/data/MediaSet$SyncListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery.MultiSetSync"


# instance fields
.field private final mFutures:[Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/zui/gallery/util/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCancelled:Z

.field private final mListener:Lcom/zui/gallery/data/MediaSet$SyncListener;

.field private mPendingCount:I

.field private mResult:I

.field final synthetic this$0:Lcom/zui/gallery/data/MediaSet;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/MediaSet;[Lcom/zui/gallery/data/MediaSet;Lcom/zui/gallery/data/MediaSet$SyncListener;)V
    .locals 3

    .line 450
    iput-object p1, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->this$0:Lcom/zui/gallery/data/MediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 445
    iput-boolean p1, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z

    const/4 v0, -0x1

    .line 446
    iput v0, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mResult:I

    .line 451
    iput-object p3, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mListener:Lcom/zui/gallery/data/MediaSet$SyncListener;

    .line 452
    array-length p3, p2

    iput p3, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    .line 453
    array-length p3, p2

    new-array p3, p3, [Lcom/zui/gallery/util/Future;

    iput-object p3, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcom/zui/gallery/util/Future;

    .line 455
    monitor-enter p0

    .line 456
    :try_start_0
    array-length p3, p2

    :goto_0
    if-ge p1, p3, :cond_0

    .line 457
    iget-object v0, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcom/zui/gallery/util/Future;

    aget-object v1, p2, p1

    invoke-virtual {v1, p0}, Lcom/zui/gallery/data/MediaSet;->requestSync(Lcom/zui/gallery/data/MediaSet$SyncListener;)Lcom/zui/gallery/util/Future;

    move-result-object v1

    aput-object v1, v0, p1

    const-string v0, "Gallery.MultiSetSync"

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  request sync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, p1

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 460
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 5

    monitor-enter p0

    .line 465
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 466
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 467
    :try_start_1
    iput-boolean v0, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z

    .line 468
    iget-object v1, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mFutures:[Lcom/zui/gallery/util/Future;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 469
    invoke-interface {v4}, Lcom/zui/gallery/util/Future;->cancel()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 470
    :cond_1
    iget v1, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mResult:I

    if-gez v1, :cond_2

    .line 471
    iput v0, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mResult:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Ljava/lang/Integer;
    .locals 1

    monitor-enter p0

    .line 486
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->waitDone()V

    .line 487
    iget v0, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mResult:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    .line 476
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    .line 481
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSyncDone(Lcom/zui/gallery/data/MediaSet;I)V
    .locals 3

    .line 504
    monitor-enter p0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 506
    :try_start_0
    iput v0, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mResult:I

    .line 507
    :cond_0
    iget p2, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    if-nez p2, :cond_1

    .line 509
    iget-object p2, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mListener:Lcom/zui/gallery/data/MediaSet$SyncListener;

    .line 510
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const-string v0, "Gallery.MultiSetSync"

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #pending="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mPendingCount:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 516
    iget-object p1, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->this$0:Lcom/zui/gallery/data/MediaSet;

    iget v0, p0, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->mResult:I

    invoke-interface {p2, p1, v0}, Lcom/zui/gallery/data/MediaSet$SyncListener;->onSyncDone(Lcom/zui/gallery/data/MediaSet;I)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 514
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized waitDone()V
    .locals 2

    monitor-enter p0

    .line 493
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet$MultiSetSyncFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v0, "Gallery.MultiSetSync"

    const-string/jumbo v1, "waitDone() interrupted"

    .line 496
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
