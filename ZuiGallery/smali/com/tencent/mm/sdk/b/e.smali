.class final Lcom/tencent/mm/sdk/b/e;
.super Landroid/os/Handler;

# interfaces
.implements Lcom/tencent/mm/sdk/b/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/sdk/b/e$a;
    }
.end annotation


# instance fields
.field private aN:Landroid/os/Looper;

.field private aO:Landroid/os/Handler$Callback;

.field aP:Lcom/tencent/mm/sdk/b/e$a;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/b/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0}, Lcom/tencent/mm/sdk/b/e;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mm/sdk/b/e;->aN:Landroid/os/Looper;

    iput-object p2, p0, Lcom/tencent/mm/sdk/b/e;->aP:Lcom/tencent/mm/sdk/b/e$a;

    return-void
.end method

.method constructor <init>(Lcom/tencent/mm/sdk/b/e$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/sdk/b/e;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/b/e;->aN:Landroid/os/Looper;

    iput-object p1, p0, Lcom/tencent/mm/sdk/b/e;->aP:Lcom/tencent/mm/sdk/b/e$a;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Runnable;Lcom/tencent/mm/sdk/b/g;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/sdk/b/e;->aP:Lcom/tencent/mm/sdk/b/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tencent/mm/sdk/b/e$a;->b(Ljava/lang/Runnable;Lcom/tencent/mm/sdk/b/g;)V

    :cond_0
    return-void
.end method

.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/sdk/b/e;->aO:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    invoke-virtual {p0, p1}, Lcom/tencent/mm/sdk/b/e;->handleMessage(Landroid/os/Message;)V

    iget-object p1, p0, Lcom/tencent/mm/sdk/b/e;->aP:Lcom/tencent/mm/sdk/b/e$a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/mm/sdk/b/e;->aN:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public final sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 10

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "msg is null"

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v8, p2, v1

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v4, p0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    move-object v4, v1

    :goto_1
    new-instance v1, Lcom/tencent/mm/sdk/b/g;

    iget-object v2, p0, Lcom/tencent/mm/sdk/b/e;->aN:Landroid/os/Looper;

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v1

    move-object v5, v0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/tencent/mm/sdk/b/g;-><init>(Ljava/lang/Thread;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;Lcom/tencent/mm/sdk/b/g$a;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_3

    iput-wide v8, v1, Lcom/tencent/mm/sdk/b/g;->aY:J

    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    iput v3, v2, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iput v3, v2, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    iget-object p1, p0, Lcom/tencent/mm/sdk/b/e;->aP:Lcom/tencent/mm/sdk/b/e$a;

    if-eqz p1, :cond_4

    invoke-interface {p1, v0, v1}, Lcom/tencent/mm/sdk/b/e$a;->a(Ljava/lang/Runnable;Lcom/tencent/mm/sdk/b/g;)V

    :cond_4
    invoke-super {p0, v2, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p2, p0, Lcom/tencent/mm/sdk/b/e;->aP:Lcom/tencent/mm/sdk/b/e$a;

    if-eqz p2, :cond_5

    invoke-interface {p2, v0, v1}, Lcom/tencent/mm/sdk/b/e$a;->b(Ljava/lang/Runnable;Lcom/tencent/mm/sdk/b/g;)V

    :cond_5
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MMInnerHandler{listener = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/sdk/b/e;->aP:Lcom/tencent/mm/sdk/b/e$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
