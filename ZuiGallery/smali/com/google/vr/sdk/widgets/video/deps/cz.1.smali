.class public final Lcom/google/vr/sdk/widgets/video/deps/cz;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cz$b;,
        Lcom/google/vr/sdk/widgets/video/deps/cz$d;,
        Lcom/google/vr/sdk/widgets/video/deps/cz$a;,
        Lcom/google/vr/sdk/widgets/video/deps/cz$c;
    }
.end annotation


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3


# instance fields
.field private final f:Lcom/google/vr/sdk/widgets/video/deps/cC;

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/cz$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/ExecutorService;

.field private final i:[Lcom/google/vr/sdk/widgets/video/deps/cx$a;

.field private final j:Landroid/os/Handler;

.field private k:Lcom/google/vr/sdk/widgets/video/deps/cz$c;


# direct methods
.method public varargs constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cC;Ljava/util/concurrent/ExecutorService;[Lcom/google/vr/sdk/widgets/video/deps/cx$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->f:Lcom/google/vr/sdk/widgets/video/deps/cC;

    .line 5
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->h:Ljava/util/concurrent/ExecutorService;

    .line 6
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->i:[Lcom/google/vr/sdk/widgets/video/deps/cx$a;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->g:Ljava/util/ArrayList;

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->j:Landroid/os/Handler;

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cC;[Lcom/google/vr/sdk/widgets/video/deps/cx$a;)V
    .locals 1

    const-string v0, "DownloaderThread"

    .line 1
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/cz;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cC;Ljava/util/concurrent/ExecutorService;[Lcom/google/vr/sdk/widgets/video/deps/cx$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cz;)Lcom/google/vr/sdk/widgets/video/deps/cC;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->f:Lcom/google/vr/sdk/widgets/video/deps/cC;

    return-object p0
.end method

.method private declared-synchronized a(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)V
    .locals 1

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->k:Lcom/google/vr/sdk/widgets/video/deps/cz$c;

    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->k:Lcom/google/vr/sdk/widgets/video/deps/cz$c;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cz$c;->a(Lcom/google/vr/sdk/widgets/video/deps/cz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cz;Lcom/google/vr/sdk/widgets/video/deps/cz$b;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cz;->a(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/vr/sdk/widgets/video/deps/cx;Lcom/google/vr/sdk/widgets/video/deps/cz$a;)Lcom/google/vr/sdk/widgets/video/deps/cz$b;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/cx;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->j:Landroid/os/Handler;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cz;Lcom/google/vr/sdk/widgets/video/deps/cx;Lcom/google/vr/sdk/widgets/video/deps/cz$a;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cz$1;)V

    .line 19
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->h:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->a(Lcom/google/vr/sdk/widgets/video/deps/cz$b;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-object v0

    .line 22
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->g:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/cz$b;

    .line 24
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->a(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)Lcom/google/vr/sdk/widgets/video/deps/cx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/cx;->a(Lcom/google/vr/sdk/widgets/video/deps/cx;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cz$b;->b(Lcom/google/vr/sdk/widgets/video/deps/cz$b;)V

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 27
    :cond_2
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->f:Lcom/google/vr/sdk/widgets/video/deps/cC;

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cx;->a(Lcom/google/vr/sdk/widgets/video/deps/cC;)Lcom/google/vr/sdk/widgets/video/deps/cB;

    move-result-object p1

    .line 28
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cB;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 29
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([BLcom/google/vr/sdk/widgets/video/deps/cz$a;)Lcom/google/vr/sdk/widgets/video/deps/cz$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 15
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 16
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->i:[Lcom/google/vr/sdk/widgets/video/deps/cx$a;

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cx;->a([Lcom/google/vr/sdk/widgets/video/deps/cx$a;Ljava/io/InputStream;)Lcom/google/vr/sdk/widgets/video/deps/cx;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cz;->a(Lcom/google/vr/sdk/widgets/video/deps/cx;Lcom/google/vr/sdk/widgets/video/deps/cz$a;)Lcom/google/vr/sdk/widgets/video/deps/cz$b;

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

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cz$c;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cz;->k:Lcom/google/vr/sdk/widgets/video/deps/cz$c;

    return-void
.end method
