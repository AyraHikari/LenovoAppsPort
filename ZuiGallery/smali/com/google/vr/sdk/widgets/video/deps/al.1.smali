.class public final Lcom/google/vr/sdk/widgets/video/deps/al;
.super Ljava/lang/Object;
.source "OfflineLicenseHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/vr/sdk/widgets/video/deps/ad;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/ConditionVariable;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/Z<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/ak;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ae<",
            "TT;>;",
            "Lcom/google/vr/sdk/widgets/video/deps/ak;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OfflineLicenseHelper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->c:Landroid/os/HandlerThread;

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->a:Landroid/os/ConditionVariable;

    .line 8
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/al$1;

    invoke-direct {v7, p0}, Lcom/google/vr/sdk/widgets/video/deps/al$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/al;)V

    .line 9
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/Z;

    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/b;->be:Ljava/util/UUID;

    new-instance v6, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->c:Landroid/os/HandlerThread;

    .line 10
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/Z;-><init>(Ljava/util/UUID;Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/ak;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/Z$a;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->b:Lcom/google/vr/sdk/widgets/video/deps/Z;

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/al;)Landroid/os/ConditionVariable;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->a:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/fI$b;)Lcom/google/vr/sdk/widgets/video/deps/al;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/fI$b;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/al<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/am;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Ljava/lang/String;ZLcom/google/vr/sdk/widgets/video/deps/fI$b;Ljava/util/HashMap;)Lcom/google/vr/sdk/widgets/video/deps/al;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;ZLcom/google/vr/sdk/widgets/video/deps/fI$b;)Lcom/google/vr/sdk/widgets/video/deps/al;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/vr/sdk/widgets/video/deps/fI$b;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/al<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/am;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Ljava/lang/String;ZLcom/google/vr/sdk/widgets/video/deps/fI$b;Ljava/util/HashMap;)Lcom/google/vr/sdk/widgets/video/deps/al;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;ZLcom/google/vr/sdk/widgets/video/deps/fI$b;Ljava/util/HashMap;)Lcom/google/vr/sdk/widgets/video/deps/al;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/vr/sdk/widgets/video/deps/fI$b;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/al<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/am;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/al;

    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/b;->be:Ljava/util/UUID;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(Ljava/util/UUID;)Lcom/google/vr/sdk/widgets/video/deps/ag;

    move-result-object v1

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/ah;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ah;-><init>(Ljava/lang/String;ZLcom/google/vr/sdk/widgets/video/deps/fI$b;)V

    invoke-direct {v0, v1, v2, p3}, Lcom/google/vr/sdk/widgets/video/deps/al;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/ak;Ljava/util/HashMap;)V

    return-object v0
.end method

.method private a(I[BLcom/google/vr/sdk/widgets/video/deps/aa;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ab$a;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/al;->b(I[BLcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/ab;

    move-result-object p1

    .line 39
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/ab;->d()Lcom/google/vr/sdk/widgets/video/deps/ab$a;

    move-result-object p2

    .line 40
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/ab;->g()[B

    move-result-object p3

    .line 41
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->b:Lcom/google/vr/sdk/widgets/video/deps/Z;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/Z;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V

    if-nez p2, :cond_0

    return-object p3

    .line 43
    :cond_0
    throw p2
.end method

.method private b(I[BLcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/ab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Lcom/google/vr/sdk/widgets/video/deps/aa;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/ab<",
            "TT;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->b:Lcom/google/vr/sdk/widgets/video/deps/Z;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/Z;->a(I[B)V

    .line 46
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->a:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    .line 47
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->b:Lcom/google/vr/sdk/widgets/video/deps/Z;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->c:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/Z;->a(Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/ab;

    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->a:Landroid/os/ConditionVariable;

    invoke-virtual {p2}, Landroid/os/ConditionVariable;->block()V

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->b:Lcom/google/vr/sdk/widgets/video/deps/Z;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/Z;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;[B)V
    .locals 1

    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->b:Lcom/google/vr/sdk/widgets/video/deps/Z;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/Z;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/google/vr/sdk/widgets/video/deps/aa;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/google/vr/sdk/widgets/video/deps/ab$a;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(I[BLcom/google/vr/sdk/widgets/video/deps/aa;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)[B
    .locals 1

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->b:Lcom/google/vr/sdk/widgets/video/deps/Z;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/Z;->b(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ab$a;
        }
    .end annotation

    monitor-enter p0

    .line 20
    :try_start_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(I[BLcom/google/vr/sdk/widgets/video/deps/aa;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->b:Lcom/google/vr/sdk/widgets/video/deps/Z;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/Z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ab$a;
        }
    .end annotation

    monitor-enter p0

    .line 22
    :try_start_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(I[BLcom/google/vr/sdk/widgets/video/deps/aa;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c([B)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ab$a;
        }
    .end annotation

    monitor-enter p0

    .line 25
    :try_start_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/al;->b(I[BLcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/ab;

    move-result-object p1

    .line 27
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/ab;->d()Lcom/google/vr/sdk/widgets/video/deps/ab$a;

    move-result-object v0

    .line 29
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/an;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)Landroid/util/Pair;

    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/al;->b:Lcom/google/vr/sdk/widgets/video/deps/Z;

    invoke-virtual {v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/Z;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ab$a;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ai;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 34
    :cond_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
