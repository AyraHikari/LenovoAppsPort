.class Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController$1;
.super Landroid/os/Handler;
.source "ProcessingTaskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController$1;->this$0:Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->access$000(Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;

    if-eqz v0, :cond_2

    .line 45
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Result;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->onResult(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Result;)V

    goto :goto_0

    .line 47
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 48
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Update;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->onUpdate(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Update;)V

    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received unknown message! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProcessingTaskController"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
