.class Lcom/zui/transcoder/MediaTranscoder$4$1;
.super Ljava/lang/Object;
.source "MediaTranscoder.java"

# interfaces
.implements Lcom/zui/transcoder/engine/MediaTranscoderEngine$ProgressCallback;


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


# direct methods
.method constructor <init>(Lcom/zui/transcoder/MediaTranscoder$4;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/zui/transcoder/MediaTranscoder$4$1;->this$1:Lcom/zui/transcoder/MediaTranscoder$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(D)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/zui/transcoder/MediaTranscoder$4$1;->this$1:Lcom/zui/transcoder/MediaTranscoder$4;

    iget-object v0, v0, Lcom/zui/transcoder/MediaTranscoder$4;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/transcoder/MediaTranscoder$4$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/transcoder/MediaTranscoder$4$1$1;-><init>(Lcom/zui/transcoder/MediaTranscoder$4$1;D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
