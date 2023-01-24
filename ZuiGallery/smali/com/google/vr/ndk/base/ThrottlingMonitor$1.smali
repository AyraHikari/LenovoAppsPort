.class Lcom/google/vr/ndk/base/ThrottlingMonitor$1;
.super Ljava/lang/Object;
.source "ThrottlingMonitor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/ThrottlingMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/ThrottlingMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-static {v0}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$000(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-static {p2}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$102(Lcom/google/vr/ndk/base/ThrottlingMonitor;Lcom/google/vr/vrcore/performance/api/IPerformanceService;)Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    .line 50
    iget-object p2, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-static {p2}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$200(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    iget-object p2, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-static {p2}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$200(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object p2, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-static {p2}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$000(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;

    .line 56
    invoke-interface {v1}, Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;->onInitialized()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 53
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 62
    iget-object p1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-static {p1}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$000(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$102(Lcom/google/vr/ndk/base/ThrottlingMonitor;Lcom/google/vr/vrcore/performance/api/IPerformanceService;)Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    .line 64
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-static {v0}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$000(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 65
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
