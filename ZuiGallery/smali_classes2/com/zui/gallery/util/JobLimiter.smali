.class public Lcom/zui/gallery/util/JobLimiter;
.super Ljava/lang/Object;
.source "JobLimiter.java"

# interfaces
.implements Lcom/zui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/util/JobLimiter$JobWrapper;
    }
.end annotation


# static fields
.field private static final STATE_CANCELLED:I = 0x2

.field private static final STATE_DONE:I = 0x1

.field private static final STATE_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "JobLimiter"


# instance fields
.field private final mJobs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/zui/gallery/util/JobLimiter$JobWrapper<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mLimit:I

.field private final mPool:Lcom/zui/gallery/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/util/ThreadPool;I)V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    .line 135
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/util/ThreadPool;

    iput-object p1, p0, Lcom/zui/gallery/util/JobLimiter;->mPool:Lcom/zui/gallery/util/ThreadPool;

    .line 136
    iput p2, p0, Lcom/zui/gallery/util/JobLimiter;->mLimit:I

    return-void
.end method

.method private submitTasksIfAllowed()V
    .locals 2

    .line 158
    :cond_0
    :goto_0
    iget v0, p0, Lcom/zui/gallery/util/JobLimiter;->mLimit:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/zui/gallery/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;

    .line 160
    invoke-virtual {v0}, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget v1, p0, Lcom/zui/gallery/util/JobLimiter;->mLimit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/zui/gallery/util/JobLimiter;->mLimit:I

    .line 162
    iget-object v1, p0, Lcom/zui/gallery/util/JobLimiter;->mPool:Lcom/zui/gallery/util/ThreadPool;

    invoke-virtual {v1, v0, p0}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/JobLimiter$JobWrapper;->setFuture(Lcom/zui/gallery/util/Future;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized onFutureDone(Lcom/zui/gallery/util/Future;)V
    .locals 0

    monitor-enter p0

    .line 169
    :try_start_0
    iget p1, p0, Lcom/zui/gallery/util/JobLimiter;->mLimit:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zui/gallery/util/JobLimiter;->mLimit:I

    .line 170
    invoke-direct {p0}, Lcom/zui/gallery/util/JobLimiter;->submitTasksIfAllowed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "TT;>;",
            "Lcom/zui/gallery/util/FutureListener<",
            "TT;>;)",
            "Lcom/zui/gallery/util/Future<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 140
    :try_start_0
    new-instance v0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;

    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/util/ThreadPool$Job;

    invoke-direct {v0, p1, p2}, Lcom/zui/gallery/util/JobLimiter$JobWrapper;-><init>(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)V

    .line 141
    iget-object p1, p0, Lcom/zui/gallery/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 142
    invoke-direct {p0}, Lcom/zui/gallery/util/JobLimiter;->submitTasksIfAllowed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized submitFirst(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "TT;>;",
            "Lcom/zui/gallery/util/FutureListener<",
            "TT;>;)",
            "Lcom/zui/gallery/util/Future<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 149
    :try_start_0
    new-instance v0, Lcom/zui/gallery/util/JobLimiter$JobWrapper;

    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/util/ThreadPool$Job;

    invoke-direct {v0, p1, p2}, Lcom/zui/gallery/util/JobLimiter$JobWrapper;-><init>(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)V

    .line 150
    iget-object p1, p0, Lcom/zui/gallery/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 151
    invoke-direct {p0}, Lcom/zui/gallery/util/JobLimiter;->submitTasksIfAllowed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
