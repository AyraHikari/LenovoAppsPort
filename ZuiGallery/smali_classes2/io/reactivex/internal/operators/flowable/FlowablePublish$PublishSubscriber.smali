.class final Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowablePublish.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowablePublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

.field static final TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

.field private static final serialVersionUID:J = -0x2cec618a478db7eL


# instance fields
.field final bufferSize:I

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field volatile queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field sourceMode:I

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field volatile terminalEvent:Ljava/lang/Object;

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 156
    sput-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 158
    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 186
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 187
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 188
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<",
            "TT;>;)Z"
        }
    .end annotation

    .line 285
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 288
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 292
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 294
    new-array v3, v3, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 295
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    aput-object p1, v3, v1

    .line 298
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method checkTerminated(Ljava/lang/Object;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 369
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_4

    .line 374
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 388
    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->child:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v3

    .line 394
    :cond_1
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    .line 397
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 401
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 402
    array-length v1, p2

    if-eqz v1, :cond_2

    .line 403
    array-length v1, p2

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v2, p2, v0

    .line 404
    iget-object v2, v2, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->child:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 407
    :cond_2
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_3
    return v3

    :cond_4
    return v0
.end method

.method dispatch()V
    .locals 25

    move-object/from16 v1, p0

    .line 425
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 433
    :cond_0
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 437
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    const/4 v3, 0x1

    move-object v4, v0

    move v5, v3

    .line 449
    :cond_1
    :goto_0
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 456
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    if-eqz v6, :cond_3

    .line 458
    invoke-interface {v6}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v8, v3

    .line 462
    :goto_2
    invoke-virtual {v1, v0, v8}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    if-nez v8, :cond_16

    .line 471
    array-length v0, v4

    .line 480
    array-length v9, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide v14, 0x7fffffffffffffffL

    :goto_3
    const-wide/high16 v16, -0x8000000000000000L

    if-ge v12, v9, :cond_6

    aget-object v7, v4, v12

    .line 481
    invoke-virtual {v7}, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->get()J

    move-result-wide v18

    cmp-long v16, v18, v16

    if-eqz v16, :cond_5

    .line 485
    iget-wide v10, v7, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->emitted:J

    sub-long v10, v18, v10

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    goto :goto_4

    :cond_5
    add-int/lit8 v13, v13, 0x1

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_6
    const-wide/16 v9, 0x1

    if-ne v0, v13, :cond_9

    .line 494
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 499
    :try_start_0
    invoke-interface {v6}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v6, v0

    .line 501
    invoke-static {v6}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 502
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 503
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 504
    iput-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_7

    move v7, v3

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    .line 508
    :goto_6
    invoke-virtual {v1, v0, v7}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 512
    :cond_8
    iget v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    if-eq v0, v3, :cond_1

    .line 513
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    invoke-interface {v0, v9, v10}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    :cond_9
    const/4 v11, 0x0

    :goto_7
    int-to-long v12, v11

    cmp-long v0, v12, v14

    if-gez v0, :cond_13

    .line 523
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 527
    :try_start_1
    invoke-interface {v6}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v8, v0

    .line 529
    invoke-static {v8}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 530
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 531
    invoke-static {v8}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 532
    iput-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    const/4 v8, 0x0

    :goto_8
    if-nez v8, :cond_a

    move v7, v3

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    .line 538
    :goto_9
    invoke-virtual {v1, v0, v7}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->checkTerminated(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    if-eqz v7, :cond_c

    move v8, v7

    goto/16 :goto_e

    .line 546
    :cond_c
    invoke-static {v8}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 551
    array-length v8, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_a
    if-ge v12, v8, :cond_f

    aget-object v3, v4, v12

    .line 556
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->get()J

    move-result-wide v22

    cmp-long v24, v22, v16

    if-eqz v24, :cond_e

    const-wide v20, 0x7fffffffffffffffL

    cmp-long v22, v22, v20

    if-eqz v22, :cond_d

    move-object/from16 v22, v6

    move/from16 v23, v7

    .line 560
    iget-wide v6, v3, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->emitted:J

    add-long/2addr v6, v9

    iput-wide v6, v3, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->emitted:J

    goto :goto_b

    :cond_d
    move-object/from16 v22, v6

    move/from16 v23, v7

    .line 562
    :goto_b
    iget-object v3, v3, Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;->child:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_c

    :cond_e
    move-object/from16 v22, v6

    move/from16 v23, v7

    const-wide v20, 0x7fffffffffffffffL

    const/4 v13, 0x1

    :goto_c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v22

    move/from16 v7, v23

    const/4 v3, 0x1

    goto :goto_a

    :cond_f
    move-object/from16 v22, v6

    move/from16 v23, v7

    const-wide v20, 0x7fffffffffffffffL

    add-int/lit8 v11, v11, 0x1

    .line 572
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    if-nez v13, :cond_11

    if-eq v0, v4, :cond_10

    goto :goto_d

    :cond_10
    move-object/from16 v6, v22

    move/from16 v8, v23

    const/4 v3, 0x1

    goto/16 :goto_7

    :cond_11
    :goto_d
    if-eqz v11, :cond_12

    .line 578
    iget v3, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_12

    .line 579
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/reactivestreams/Subscription;

    int-to-long v6, v11

    invoke-interface {v3, v6, v7}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_12
    move-object v4, v0

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_13
    :goto_e
    if-eqz v11, :cond_14

    .line 589
    iget v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_15

    .line 590
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    invoke-interface {v0, v12, v13}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_f

    :cond_14
    const/4 v3, 0x1

    :cond_15
    :goto_f
    const-wide/16 v6, 0x0

    cmp-long v0, v14, v6

    if-eqz v0, :cond_16

    if-nez v8, :cond_16

    goto/16 :goto_0

    :cond_16
    neg-int v0, v5

    .line 601
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_17

    return-void

    .line 607
    :cond_17
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 2

    .line 193
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    if-eq v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 196
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    if-eq v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 205
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 267
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 268
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 271
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 254
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 257
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    goto :goto_0

    .line 259
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 240
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 241
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Prefetch queue is full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3

    .line 210
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_1

    .line 213
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    const/4 v1, 0x7

    .line 215
    invoke-interface {v0, v1}, Lio/reactivex/internal/fuseable/QueueSubscription;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 217
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    .line 218
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 219
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->terminalEvent:Ljava/lang/Object;

    .line 220
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->dispatch()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 224
    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->sourceMode:I

    .line 225
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 226
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void

    .line 231
    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 233
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->bufferSize:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_2
    return-void
.end method

.method remove(Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 315
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 316
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    .line 325
    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 339
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 342
    new-array v5, v5, [Lio/reactivex/internal/operators/flowable/FlowablePublish$InnerSubscriber;

    .line 344
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 346
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 349
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowablePublish$PublishSubscriber;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_3
    return-void
.end method
