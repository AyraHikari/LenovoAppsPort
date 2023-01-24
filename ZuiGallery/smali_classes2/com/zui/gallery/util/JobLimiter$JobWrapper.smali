.class Lcom/zui/gallery/util/JobLimiter$JobWrapper;
.super Ljava/lang/Object;
.source "JobLimiter.java"

# interfaces
.implements Lcom/zui/gallery/util/Future;
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/util/JobLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/Future<",
        "TT;>;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mJob:Lcom/zui/gallery/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/zui/gallery/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/FutureListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "TT;>;",
            "Lcom/zui/gallery/util/FutureListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mState:I

    .line 52
    iput-object p1, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mJob:Lcom/zui/gallery/util/ThreadPool$Job;

    .line 53
    iput-object p2, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mListener:Lcom/zui/gallery/util/FutureListener;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mListener:Lcom/zui/gallery/util/FutureListener;

    .line 67
    iput-object v2, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mJob:Lcom/zui/gallery/util/ThreadPool$Job;

    .line 68
    iput-object v2, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mListener:Lcom/zui/gallery/util/FutureListener;

    .line 69
    iget-object v1, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mDelegate:Lcom/zui/gallery/util/Future;

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mDelegate:Lcom/zui/gallery/util/Future;

    invoke-interface {v1}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 71
    iput-object v2, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mDelegate:Lcom/zui/gallery/util/Future;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    const/4 v1, 0x2

    .line 74
    iput v1, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mState:I

    .line 75
    iput-object v2, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 77
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 78
    invoke-interface {v0, p0}, Lcom/zui/gallery/util/FutureListener;->onFutureDone(Lcom/zui/gallery/util/Future;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 77
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 94
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mState:I

    if-nez v0, :cond_0

    .line 96
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 2

    monitor-enter p0

    .line 83
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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

.method public isDone()Z
    .locals 1

    .line 89
    iget v0, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/ThreadPool$JobContext;",
            ")TT;"
        }
    .end annotation

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-object v2

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mJob:Lcom/zui/gallery/util/ThreadPool$Job;

    .line 112
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 115
    :try_start_1
    invoke-interface {v0, p1}, Lcom/zui/gallery/util/ThreadPool$Job;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v3, "JobLimiter"

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error executing job: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v2

    .line 120
    :goto_0
    monitor-enter p0

    .line 121
    :try_start_2
    iget v0, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mState:I

    if-ne v0, v1, :cond_1

    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v0, 0x1

    .line 122
    iput v0, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mState:I

    .line 123
    iget-object v0, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mListener:Lcom/zui/gallery/util/FutureListener;

    .line 124
    iput-object v2, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mListener:Lcom/zui/gallery/util/FutureListener;

    .line 125
    iput-object v2, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mJob:Lcom/zui/gallery/util/ThreadPool$Job;

    .line 126
    iput-object p1, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    .line 129
    invoke-interface {v0, p0}, Lcom/zui/gallery/util/FutureListener;->onFutureDone(Lcom/zui/gallery/util/Future;)V

    :cond_2
    return-object p1

    :catchall_1
    move-exception p1

    .line 128
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 112
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public declared-synchronized setFuture(Lcom/zui/gallery/util/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/Future<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 58
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->mDelegate:Lcom/zui/gallery/util/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public waitDone()V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->get()Ljava/lang/Object;

    return-void
.end method
