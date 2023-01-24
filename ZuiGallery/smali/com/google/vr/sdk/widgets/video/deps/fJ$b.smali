.class final Lcom/google/vr/sdk/widgets/video/deps/fJ$b;
.super Landroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/fJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/vr/sdk/widgets/video/deps/fJ$c;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "LoadTask"

.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3

.field private static final h:I = 0x4


# instance fields
.field public final a:I

.field final synthetic b:Lcom/google/vr/sdk/widgets/video/deps/fJ;

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/fJ$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/fJ$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/fJ$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final k:J

.field private l:Ljava/io/IOException;

.field private m:I

.field private volatile n:Ljava/lang/Thread;

.field private volatile o:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fJ;Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/fJ$c;Lcom/google/vr/sdk/widgets/video/deps/fJ$a;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/google/vr/sdk/widgets/video/deps/fJ$a<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->b:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->i:Lcom/google/vr/sdk/widgets/video/deps/fJ$c;

    .line 4
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->j:Lcom/google/vr/sdk/widgets/video/deps/fJ$a;

    .line 5
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->a:I

    .line 6
    iput-wide p6, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->k:J

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->l:Ljava/io/IOException;

    .line 93
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->b:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->b(Lcom/google/vr/sdk/widgets/video/deps/fJ;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->b:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ;)Lcom/google/vr/sdk/widgets/video/deps/fJ$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->b:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ;Lcom/google/vr/sdk/widgets/video/deps/fJ$b;)Lcom/google/vr/sdk/widgets/video/deps/fJ$b;

    return-void
.end method

.method private c()J
    .locals 2

    .line 97
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->m:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->l:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->m:I

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->b:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ;)Lcom/google/vr/sdk/widgets/video/deps/fJ$b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->b:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-static {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ;Lcom/google/vr/sdk/widgets/video/deps/fJ$b;)Lcom/google/vr/sdk/widgets/video/deps/fJ$b;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 14
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 15
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->a()V

    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 8

    .line 17
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->o:Z

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->l:Ljava/io/IOException;

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->removeMessages(I)V

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->i:Lcom/google/vr/sdk/widgets/video/deps/fJ$c;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ$c;->a()V

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->n:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 27
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->b()V

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 29
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->j:Lcom/google/vr/sdk/widgets/video/deps/fJ$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->i:Lcom/google/vr/sdk/widgets/video/deps/fJ$c;

    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->k:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    invoke-interface/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/fJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJZ)V

    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 66
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->o:Z

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->a()V

    return-void

    .line 71
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 73
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->b()V

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 75
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->k:J

    sub-long v6, v4, v0

    .line 76
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->i:Lcom/google/vr/sdk/widgets/video/deps/fJ$c;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ$c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->j:Lcom/google/vr/sdk/widgets/video/deps/fJ$a;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->i:Lcom/google/vr/sdk/widgets/video/deps/fJ$c;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/fJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJZ)V

    return-void

    .line 79
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v9, 0x2

    if-eq v0, v9, :cond_6

    const/4 v10, 0x3

    if-eq v0, v10, :cond_3

    goto :goto_1

    .line 84
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->l:Ljava/io/IOException;

    .line 85
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->j:Lcom/google/vr/sdk/widgets/video/deps/fJ$a;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->i:Lcom/google/vr/sdk/widgets/video/deps/fJ$c;

    invoke-interface/range {v2 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/fJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJLjava/io/IOException;)I

    move-result p1

    if-ne p1, v10, :cond_4

    .line 87
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->b:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->l:Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_1

    :cond_4
    if-eq p1, v9, :cond_8

    if-ne p1, v1, :cond_5

    goto :goto_0

    .line 89
    :cond_5
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->m:I

    add-int/2addr v1, p1

    :goto_0
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->m:I

    .line 90
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->a(J)V

    goto :goto_1

    .line 82
    :cond_6
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->j:Lcom/google/vr/sdk/widgets/video/deps/fJ$a;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->i:Lcom/google/vr/sdk/widgets/video/deps/fJ$c;

    invoke-interface/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/fJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJ)V

    goto :goto_1

    .line 80
    :cond_7
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->j:Lcom/google/vr/sdk/widgets/video/deps/fJ$a;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->i:Lcom/google/vr/sdk/widgets/video/deps/fJ$c;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/fJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJZ)V

    :cond_8
    :goto_1
    return-void

    .line 72
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public run()V
    .locals 6

    const-string v0, "LoadTask"

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 31
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->n:Ljava/lang/Thread;

    .line 32
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->i:Lcom/google/vr/sdk/widgets/video/deps/fJ$c;

    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/fJ$c;->b()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "load:"

    .line 33
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->i:Lcom/google/vr/sdk/widgets/video/deps/fJ$c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :try_start_1
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->i:Lcom/google/vr/sdk/widgets/video/deps/fJ$c;

    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/fJ$c;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a()V

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 37
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a()V

    throw v3

    .line 38
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->o:Z

    if-nez v3, :cond_3

    .line 39
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "Unexpected error loading stream"

    .line 61
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->o:Z

    if-nez v0, :cond_2

    const/4 v0, 0x4

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 64
    :cond_2
    throw v1

    :catch_1
    move-exception v1

    const-string v3, "OutOfMemory error loading stream"

    .line 56
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->o:Z

    if-nez v0, :cond_3

    .line 58
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fJ$f;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fJ$f;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v3, "Unexpected exception loading stream"

    .line 51
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->o:Z

    if-nez v0, :cond_3

    .line 53
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fJ$f;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fJ$f;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 46
    :catch_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->i:Lcom/google/vr/sdk/widgets/video/deps/fJ$c;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ$c;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 47
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->o:Z

    if-nez v0, :cond_3

    .line 48
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->sendEmptyMessage(I)Z

    goto :goto_2

    :catch_4
    move-exception v0

    .line 42
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->o:Z

    if-nez v1, :cond_3

    .line 43
    invoke-virtual {p0, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_2
    return-void
.end method
