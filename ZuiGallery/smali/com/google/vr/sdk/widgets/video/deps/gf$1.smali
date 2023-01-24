.class Lcom/google/vr/sdk/widgets/video/deps/gf$1;
.super Ljava/lang/Thread;
.source "SimpleCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/video/deps/gf;-><init>(Ljava/io/File;Lcom/google/vr/sdk/widgets/video/deps/fX;[BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/ConditionVariable;

.field final synthetic b:Lcom/google/vr/sdk/widgets/video/deps/gf;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/gf;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf$1;->b:Lcom/google/vr/sdk/widgets/video/deps/gf;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gf$1;->a:Landroid/os/ConditionVariable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gf$1;->b:Lcom/google/vr/sdk/widgets/video/deps/gf;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf$1;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf$1;->b:Lcom/google/vr/sdk/widgets/video/deps/gf;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gf;->a(Lcom/google/vr/sdk/widgets/video/deps/gf;)V
    :try_end_1
    .catch Lcom/google/vr/sdk/widgets/video/deps/fS$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    :try_start_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gf$1;->b:Lcom/google/vr/sdk/widgets/video/deps/gf;

    invoke-static {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/gf;->a(Lcom/google/vr/sdk/widgets/video/deps/gf;Lcom/google/vr/sdk/widgets/video/deps/fS$a;)Lcom/google/vr/sdk/widgets/video/deps/fS$a;

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gf$1;->b:Lcom/google/vr/sdk/widgets/video/deps/gf;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gf;->b(Lcom/google/vr/sdk/widgets/video/deps/gf;)Lcom/google/vr/sdk/widgets/video/deps/fX;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/fX;->a()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
