.class public Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;
.super Ljava/lang/Object;
.source "ProcessingTaskController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ProcessingTaskController"

.field public static final RESULT:I = 0x1

.field public static final UPDATE:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentType:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mProcessingHandler:Landroid/os/Handler;

.field private final mResultHandler:Landroid/os/Handler;

.field private mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 33
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->mProcessingHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->mTasks:Ljava/util/HashMap;

    .line 40
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController$1;-><init>(Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->mResultHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->mContext:Landroid/content/Context;

    .line 68
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ProcessingTaskController"

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 70
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->mProcessingHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;)Ljava/util/HashMap;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->mTasks:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public add(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;)V
    .locals 2

    .line 91
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->added(Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;)V

    .line 92
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->mTasks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getProcessingHandler()Landroid/os/Handler;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->mProcessingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getReservedType()I
    .locals 2

    .line 83
    iget v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->mCurrentType:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->mCurrentType:I

    return v0
.end method

.method public getResultHandler()Landroid/os/Handler;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->mResultHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->mTasks:Ljava/util/HashMap;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;

    if-eqz v0, :cond_0

    .line 60
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->processRequest(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public quit()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method
