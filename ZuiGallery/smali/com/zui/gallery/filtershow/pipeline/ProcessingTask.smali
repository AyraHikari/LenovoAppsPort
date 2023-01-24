.class public abstract Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;
.super Ljava/lang/Object;
.source "ProcessingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Result;,
        Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Update;,
        Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;
    }
.end annotation


# static fields
.field private static final DELAY:I = 0x12c


# instance fields
.field protected mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

.field protected mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

.field private mProcessingHandler:Landroid/os/Handler;

.field private mResultHandler:Landroid/os/Handler;

.field private mTaskController:Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public added(Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;)V
    .locals 1

    .line 110
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mTaskController:Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;

    .line 111
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->getResultHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mResultHandler:Landroid/os/Handler;

    .line 112
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->getProcessingHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mProcessingHandler:Landroid/os/Handler;

    .line 113
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->getReservedType()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mType:I

    return-void
.end method

.method public abstract doInBackground(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;)Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Result;
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mTaskController:Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getNvsEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    return-object v0
.end method

.method public getNvsEffectSdkContext()Lcom/meicam/effect/sdk/NvsEffectSdkContext;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    return-object v0
.end method

.method public getStackString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 88
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 90
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 91
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mType:I

    return v0
.end method

.method public isDelayedTask()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPriorityTask()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onResult(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Result;)V
.end method

.method public onUpdate(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Update;)V
    .locals 0

    return-void
.end method

.method public postRequest(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;)Z
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mProcessingHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 68
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->isPriorityTask()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->getType()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->isDelayedTask()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 75
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->getType()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 76
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->getType()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mProcessingHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public postUpdate(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Update;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mResultHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 96
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 97
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 98
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mResultHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public processRequest(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;)V
    .locals 2

    .line 102
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->doInBackground(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Request;)Lcom/zui/gallery/filtershow/pipeline/ProcessingTask$Result;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mResultHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 104
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 105
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 106
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mResultHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    return-void
.end method

.method public setNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    return-void
.end method
