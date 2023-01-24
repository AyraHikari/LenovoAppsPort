.class Lcom/zui/gallery/ui/GLRootView$IdleRunner;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/GLRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunner"
.end annotation


# instance fields
.field private mActive:Z

.field final synthetic this$0:Lcom/zui/gallery/ui/GLRootView;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/GLRootView;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/zui/gallery/ui/GLRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 563
    iput-boolean p1, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->mActive:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/GLRootView;Lcom/zui/gallery/ui/GLRootView$1;)V
    .locals 0

    .line 561
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/GLRootView$IdleRunner;-><init>(Lcom/zui/gallery/ui/GLRootView;)V

    return-void
.end method


# virtual methods
.method public enable()V
    .locals 1

    .line 588
    iget-boolean v0, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->mActive:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 589
    iput-boolean v0, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->mActive:Z

    .line 590
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/zui/gallery/ui/GLRootView;

    invoke-virtual {v0, p0}, Lcom/zui/gallery/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/zui/gallery/ui/GLRootView;

    invoke-static {v0}, Lcom/zui/gallery/ui/GLRootView;->access$300(Lcom/zui/gallery/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 569
    :try_start_0
    iput-boolean v1, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->mActive:Z

    .line 570
    iget-object v1, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/zui/gallery/ui/GLRootView;

    invoke-static {v1}, Lcom/zui/gallery/ui/GLRootView;->access$300(Lcom/zui/gallery/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/zui/gallery/ui/GLRootView;

    invoke-static {v1}, Lcom/zui/gallery/ui/GLRootView;->access$300(Lcom/zui/gallery/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/GLRoot$OnGLIdleListener;

    .line 572
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 573
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/zui/gallery/ui/GLRootView;

    invoke-static {v0}, Lcom/zui/gallery/ui/GLRootView;->access$400(Lcom/zui/gallery/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 576
    :try_start_1
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/zui/gallery/ui/GLRootView;

    invoke-static {v0}, Lcom/zui/gallery/ui/GLRootView;->access$500(Lcom/zui/gallery/ui/GLRootView;)Lcom/zui/gallery/glrenderer/GLCanvas;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/zui/gallery/ui/GLRootView;

    invoke-static {v2}, Lcom/zui/gallery/ui/GLRootView;->access$600(Lcom/zui/gallery/ui/GLRootView;)Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/zui/gallery/ui/GLRoot$OnGLIdleListener;->onGLIdle(Lcom/zui/gallery/glrenderer/GLCanvas;Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 578
    iget-object v2, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/zui/gallery/ui/GLRootView;

    invoke-static {v2}, Lcom/zui/gallery/ui/GLRootView;->access$400(Lcom/zui/gallery/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 580
    iget-object v2, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/zui/gallery/ui/GLRootView;

    invoke-static {v2}, Lcom/zui/gallery/ui/GLRootView;->access$300(Lcom/zui/gallery/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    monitor-enter v2

    if-eqz v0, :cond_1

    .line 581
    :try_start_2
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/zui/gallery/ui/GLRootView;

    invoke-static {v0}, Lcom/zui/gallery/ui/GLRootView;->access$300(Lcom/zui/gallery/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/zui/gallery/ui/GLRootView;

    invoke-static {v0}, Lcom/zui/gallery/ui/GLRootView;->access$600(Lcom/zui/gallery/ui/GLRootView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/zui/gallery/ui/GLRootView;

    invoke-static {v0}, Lcom/zui/gallery/ui/GLRootView;->access$300(Lcom/zui/gallery/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->enable()V

    .line 583
    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 578
    iget-object v1, p0, Lcom/zui/gallery/ui/GLRootView$IdleRunner;->this$0:Lcom/zui/gallery/ui/GLRootView;

    invoke-static {v1}, Lcom/zui/gallery/ui/GLRootView;->access$400(Lcom/zui/gallery/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 579
    throw v0

    :catchall_2
    move-exception v1

    .line 572
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method
