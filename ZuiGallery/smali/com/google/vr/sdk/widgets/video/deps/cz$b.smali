.class public Lcom/google/vr/sdk/widgets/video/deps/cz$b;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/cz;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/cx;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/cz$a;

.field private final d:Landroid/os/Handler;

.field private e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile f:I

.field private volatile g:Lcom/google/vr/sdk/widgets/video/deps/cB;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cz;Lcom/google/vr/sdk/widgets/video/deps/cx;Lcom/google/vr/sdk/widgets/video/deps/cz$a;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cz;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->b:Lcom/google/vr/sdk/widgets/video/deps/cx;

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->c:Lcom/google/vr/sdk/widgets/video/deps/cz$a;

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->d:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->f:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cz;Lcom/google/vr/sdk/widgets/video/deps/cx;Lcom/google/vr/sdk/widgets/video/deps/cz$a;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cz$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cz;Lcom/google/vr/sdk/widgets/video/deps/cx;Lcom/google/vr/sdk/widgets/video/deps/cz$a;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cz$b;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->f:I

    return p1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)Lcom/google/vr/sdk/widgets/video/deps/cx;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->b:Lcom/google/vr/sdk/widgets/video/deps/cx;

    return-object p0
.end method

.method private declared-synchronized a(ILjava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/cz$b$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cz$b$2;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cz$b;ILjava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cz$b;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->a(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    move-object v1, v0

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    .line 36
    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_3

    :cond_3
    const/4 v0, -0x1

    .line 41
    :goto_3
    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->a(ILjava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 24
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->e:Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->e()V

    return-void
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)Lcom/google/vr/sdk/widgets/video/deps/cz;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cz;

    return-object p0
.end method

.method static synthetic d(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->f:I

    return p0
.end method

.method static synthetic e(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)Lcom/google/vr/sdk/widgets/video/deps/cz$a;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->c:Lcom/google/vr/sdk/widgets/video/deps/cz$a;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->e:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->a(ILjava/lang/Throwable;)V

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cz;

    invoke-static {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/cz;->a(Lcom/google/vr/sdk/widgets/video/deps/cz;Lcom/google/vr/sdk/widgets/video/deps/cz$b;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/vr/sdk/widgets/video/deps/cx;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->b:Lcom/google/vr/sdk/widgets/video/deps/cx;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->f:I

    return v0
.end method

.method public c()F
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->g:Lcom/google/vr/sdk/widgets/video/deps/cB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->g:Lcom/google/vr/sdk/widgets/video/deps/cB;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cB;->d()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_0
    return v0
.end method

.method public d()J
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->g:Lcom/google/vr/sdk/widgets/video/deps/cB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->g:Lcom/google/vr/sdk/widgets/video/deps/cB;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cB;->c()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->a(ILjava/lang/Throwable;)V

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->b:Lcom/google/vr/sdk/widgets/video/deps/cx;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cz;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/cz;->a(Lcom/google/vr/sdk/widgets/video/deps/cz;)Lcom/google/vr/sdk/widgets/video/deps/cC;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/cx;->a(Lcom/google/vr/sdk/widgets/video/deps/cC;)Lcom/google/vr/sdk/widgets/video/deps/cB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->g:Lcom/google/vr/sdk/widgets/video/deps/cB;

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->g:Lcom/google/vr/sdk/widgets/video/deps/cB;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cB;->a(Lcom/google/vr/sdk/widgets/video/deps/cB$a;)V

    const/4 v0, 0x2

    .line 11
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->a(ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/cz$b$1;

    invoke-direct {v1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cz$b$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/cz$b$1;

    invoke-direct {v1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cz$b$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    .line 18
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->d:Landroid/os/Handler;

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/cz$b$1;

    invoke-direct {v2, p0}, Lcom/google/vr/sdk/widgets/video/deps/cz$b$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
