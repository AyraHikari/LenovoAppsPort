.class Lcom/zui/gallery/util/ThreadPool$Worker;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/zui/gallery/util/Future;
.implements Lcom/zui/gallery/util/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/zui/gallery/util/Future<",
        "TT;>;",
        "Lcom/zui/gallery/util/ThreadPool$JobContext;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Worker"


# instance fields
.field private mCancelListener:Lcom/zui/gallery/util/ThreadPool$CancelListener;

.field private volatile mIsCancelled:Z

.field private mIsDone:Z

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

.field private mMode:I

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mWaitOnResource:Lcom/zui/gallery/util/ThreadPool$ResourceCounter;

.field final synthetic this$0:Lcom/zui/gallery/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/util/ThreadPool;Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "TT;>;",
            "Lcom/zui/gallery/util/FutureListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->this$0:Lcom/zui/gallery/util/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p2, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mJob:Lcom/zui/gallery/util/ThreadPool$Job;

    .line 124
    iput-object p3, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mListener:Lcom/zui/gallery/util/FutureListener;

    return-void
.end method

.method private acquireResource(Lcom/zui/gallery/util/ThreadPool$ResourceCounter;)Z
    .locals 3

    .line 235
    :goto_0
    monitor-enter p0

    .line 236
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mIsCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 237
    iput-object v1, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mWaitOnResource:Lcom/zui/gallery/util/ThreadPool$ResourceCounter;

    const/4 p1, 0x0

    .line 238
    monitor-exit p0

    return p1

    .line 240
    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mWaitOnResource:Lcom/zui/gallery/util/ThreadPool$ResourceCounter;

    .line 241
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 243
    monitor-enter p1

    .line 244
    :try_start_1
    iget v0, p1, Lcom/zui/gallery/util/ThreadPool$ResourceCounter;->value:I

    if-lez v0, :cond_1

    .line 245
    iget v0, p1, Lcom/zui/gallery/util/ThreadPool$ResourceCounter;->value:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p1, Lcom/zui/gallery/util/ThreadPool$ResourceCounter;->value:I

    .line 246
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    monitor-enter p0

    .line 258
    :try_start_2
    iput-object v1, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mWaitOnResource:Lcom/zui/gallery/util/ThreadPool$ResourceCounter;

    .line 259
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 249
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 254
    :catch_0
    :try_start_4
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception p1

    .line 241
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method private modeToCounter(I)Lcom/zui/gallery/util/ThreadPool$ResourceCounter;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 225
    iget-object p1, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->this$0:Lcom/zui/gallery/util/ThreadPool;

    iget-object p1, p1, Lcom/zui/gallery/util/ThreadPool;->mCpuCounter:Lcom/zui/gallery/util/ThreadPool$ResourceCounter;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 227
    iget-object p1, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->this$0:Lcom/zui/gallery/util/ThreadPool;

    iget-object p1, p1, Lcom/zui/gallery/util/ThreadPool;->mNetworkCounter:Lcom/zui/gallery/util/ThreadPool$ResourceCounter;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private releaseResource(Lcom/zui/gallery/util/ThreadPool$ResourceCounter;)V
    .locals 1

    .line 265
    monitor-enter p1

    .line 266
    :try_start_0
    iget v0, p1, Lcom/zui/gallery/util/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/zui/gallery/util/ThreadPool$ResourceCounter;->value:I

    .line 267
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 268
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    .line 154
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 155
    :try_start_1
    iput-boolean v0, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mIsCancelled:Z

    .line 156
    iget-object v0, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mWaitOnResource:Lcom/zui/gallery/util/ThreadPool$ResourceCounter;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mWaitOnResource:Lcom/zui/gallery/util/ThreadPool$ResourceCounter;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    :try_start_2
    iget-object v1, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mWaitOnResource:Lcom/zui/gallery/util/ThreadPool$ResourceCounter;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 159
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 161
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mCancelListener:Lcom/zui/gallery/util/ThreadPool$CancelListener;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mCancelListener:Lcom/zui/gallery/util/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/zui/gallery/util/ThreadPool$CancelListener;->onCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    :cond_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 178
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 180
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Worker"

    const-string v2, "ingore exception"

    .line 182
    invoke-static {v1, v2, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mResult:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mIsCancelled:Z

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    .line 173
    :try_start_0
    iget-boolean v0, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p0, v0}, Lcom/zui/gallery/util/ThreadPool$Worker;->setMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mJob:Lcom/zui/gallery/util/ThreadPool$Job;

    invoke-interface {v1, p0}, Lcom/zui/gallery/util/ThreadPool$Job;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "Worker"

    const-string v3, "Exception in running a job"

    .line 138
    invoke-static {v2, v3, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    .line 142
    :goto_0
    monitor-enter p0

    const/4 v2, 0x0

    .line 143
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/zui/gallery/util/ThreadPool$Worker;->setMode(I)Z

    .line 144
    iput-object v1, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mResult:Ljava/lang/Object;

    .line 145
    iput-boolean v0, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mIsDone:Z

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 147
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    iget-object v0, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mListener:Lcom/zui/gallery/util/FutureListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/zui/gallery/util/FutureListener;->onFutureDone(Lcom/zui/gallery/util/Future;)V

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    .line 147
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public declared-synchronized setCancelListener(Lcom/zui/gallery/util/ThreadPool$CancelListener;)V
    .locals 0

    monitor-enter p0

    .line 198
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mCancelListener:Lcom/zui/gallery/util/ThreadPool$CancelListener;

    .line 199
    iget-boolean p1, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mCancelListener:Lcom/zui/gallery/util/ThreadPool$CancelListener;

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mCancelListener:Lcom/zui/gallery/util/ThreadPool$CancelListener;

    invoke-interface {p1}, Lcom/zui/gallery/util/ThreadPool$CancelListener;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMode(I)Z
    .locals 2

    .line 207
    iget v0, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mMode:I

    invoke-direct {p0, v0}, Lcom/zui/gallery/util/ThreadPool$Worker;->modeToCounter(I)Lcom/zui/gallery/util/ThreadPool$ResourceCounter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0, v0}, Lcom/zui/gallery/util/ThreadPool$Worker;->releaseResource(Lcom/zui/gallery/util/ThreadPool$ResourceCounter;)V

    :cond_0
    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mMode:I

    .line 212
    invoke-direct {p0, p1}, Lcom/zui/gallery/util/ThreadPool$Worker;->modeToCounter(I)Lcom/zui/gallery/util/ThreadPool$ResourceCounter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 214
    invoke-direct {p0, v1}, Lcom/zui/gallery/util/ThreadPool$Worker;->acquireResource(Lcom/zui/gallery/util/ThreadPool$ResourceCounter;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 217
    :cond_1
    iput p1, p0, Lcom/zui/gallery/util/ThreadPool$Worker;->mMode:I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public waitDone()V
    .locals 0

    .line 191
    invoke-virtual {p0}, Lcom/zui/gallery/util/ThreadPool$Worker;->get()Ljava/lang/Object;

    return-void
.end method
