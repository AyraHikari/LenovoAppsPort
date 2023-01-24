.class Lcom/zui/transcoder/MediaTranscoder$4$2;
.super Ljava/lang/Object;
.source "MediaTranscoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/transcoder/MediaTranscoder$4;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/transcoder/MediaTranscoder$4;

.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/zui/transcoder/MediaTranscoder$4;Ljava/lang/Exception;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/zui/transcoder/MediaTranscoder$4$2;->this$1:Lcom/zui/transcoder/MediaTranscoder$4;

    iput-object p2, p0, Lcom/zui/transcoder/MediaTranscoder$4$2;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/zui/transcoder/MediaTranscoder$4$2;->val$exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/zui/transcoder/MediaTranscoder$4$2;->this$1:Lcom/zui/transcoder/MediaTranscoder$4;

    iget-object v0, v0, Lcom/zui/transcoder/MediaTranscoder$4;->val$listener:Lcom/zui/transcoder/MediaTranscoder$Listener;

    invoke-interface {v0}, Lcom/zui/transcoder/MediaTranscoder$Listener;->onTranscodeCompleted()V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/zui/transcoder/MediaTranscoder$4$2;->this$1:Lcom/zui/transcoder/MediaTranscoder$4;

    iget-object v0, v0, Lcom/zui/transcoder/MediaTranscoder$4;->val$futureReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 192
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/zui/transcoder/MediaTranscoder$4$2;->this$1:Lcom/zui/transcoder/MediaTranscoder$4;

    iget-object v0, v0, Lcom/zui/transcoder/MediaTranscoder$4;->val$listener:Lcom/zui/transcoder/MediaTranscoder$Listener;

    invoke-interface {v0}, Lcom/zui/transcoder/MediaTranscoder$Listener;->onTranscodeCanceled()V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/zui/transcoder/MediaTranscoder$4$2;->this$1:Lcom/zui/transcoder/MediaTranscoder$4;

    iget-object v0, v0, Lcom/zui/transcoder/MediaTranscoder$4;->val$listener:Lcom/zui/transcoder/MediaTranscoder$Listener;

    iget-object v1, p0, Lcom/zui/transcoder/MediaTranscoder$4$2;->val$exception:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/zui/transcoder/MediaTranscoder$Listener;->onTranscodeFailed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
