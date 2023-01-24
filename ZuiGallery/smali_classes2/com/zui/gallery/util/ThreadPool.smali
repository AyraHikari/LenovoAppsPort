.class public Lcom/zui/gallery/util/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/util/ThreadPool$Worker;,
        Lcom/zui/gallery/util/ThreadPool$ResourceCounter;,
        Lcom/zui/gallery/util/ThreadPool$CancelListener;,
        Lcom/zui/gallery/util/ThreadPool$JobContextStub;,
        Lcom/zui/gallery/util/ThreadPool$JobContext;,
        Lcom/zui/gallery/util/ThreadPool$Job;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x8

.field public static final JOB_CONTEXT_STUB:Lcom/zui/gallery/util/ThreadPool$JobContext;

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_POOL_SIZE:I = 0x10

.field public static final MODE_CPU:I = 0x1

.field public static final MODE_NETWORK:I = 0x2

.field public static final MODE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ThreadPool"


# instance fields
.field mCpuCounter:Lcom/zui/gallery/util/ThreadPool$ResourceCounter;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mNetworkCounter:Lcom/zui/gallery/util/ThreadPool$ResourceCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/zui/gallery/util/ThreadPool$JobContextStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/gallery/util/ThreadPool$JobContextStub;-><init>(Lcom/zui/gallery/util/ThreadPool$1;)V

    sput-object v0, Lcom/zui/gallery/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/zui/gallery/util/ThreadPool$JobContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x10

    .line 87
    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/util/ThreadPool;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 10

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/zui/gallery/util/ThreadPool$ResourceCounter;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/zui/gallery/util/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/util/ThreadPool;->mCpuCounter:Lcom/zui/gallery/util/ThreadPool$ResourceCounter;

    .line 44
    new-instance v0, Lcom/zui/gallery/util/ThreadPool$ResourceCounter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/zui/gallery/util/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/util/ThreadPool;->mNetworkCounter:Lcom/zui/gallery/util/ThreadPool$ResourceCounter;

    .line 91
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/zui/gallery/util/PriorityThreadFactory;

    const-string v1, "thread-pool"

    const/16 v2, 0xa

    invoke-direct {v9, v1, v2}, Lcom/zui/gallery/util/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    const-wide/16 v5, 0xa

    move-object v2, v0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/zui/gallery/util/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public submit(Lcom/zui/gallery/util/ThreadPool$Job;)Lcom/zui/gallery/util/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "TT;>;)",
            "Lcom/zui/gallery/util/Future<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;
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

    .line 101
    new-instance v0, Lcom/zui/gallery/util/ThreadPool$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/gallery/util/ThreadPool$Worker;-><init>(Lcom/zui/gallery/util/ThreadPool;Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)V

    .line 102
    iget-object p1, p0, Lcom/zui/gallery/util/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
