.class Lcom/zui/transcoder/MediaTranscoder$3;
.super Ljava/lang/Object;
.source "MediaTranscoder.java"

# interfaces
.implements Lcom/zui/transcoder/MediaTranscoder$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/transcoder/MediaTranscoder;->transcodeVideo(Ljava/lang/String;Ljava/lang/String;Lcom/zui/transcoder/format/MediaFormatStrategy;Lcom/zui/transcoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/transcoder/MediaTranscoder;

.field final synthetic val$finalFileInputStream:Ljava/io/FileInputStream;

.field final synthetic val$listener:Lcom/zui/transcoder/MediaTranscoder$Listener;


# direct methods
.method constructor <init>(Lcom/zui/transcoder/MediaTranscoder;Lcom/zui/transcoder/MediaTranscoder$Listener;Ljava/io/FileInputStream;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/zui/transcoder/MediaTranscoder$3;->this$0:Lcom/zui/transcoder/MediaTranscoder;

    iput-object p2, p0, Lcom/zui/transcoder/MediaTranscoder$3;->val$listener:Lcom/zui/transcoder/MediaTranscoder$Listener;

    iput-object p3, p0, Lcom/zui/transcoder/MediaTranscoder$3;->val$finalFileInputStream:Ljava/io/FileInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeStream()V
    .locals 3

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/zui/transcoder/MediaTranscoder$3;->val$finalFileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaTranscoder"

    const-string v2, "Can\'t close input stream: "

    .line 133
    invoke-static {v1, v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onTranscodeCanceled()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/zui/transcoder/MediaTranscoder$3;->val$listener:Lcom/zui/transcoder/MediaTranscoder$Listener;

    invoke-interface {v0}, Lcom/zui/transcoder/MediaTranscoder$Listener;->onTranscodeCanceled()V

    .line 120
    invoke-direct {p0}, Lcom/zui/transcoder/MediaTranscoder$3;->closeStream()V

    return-void
.end method

.method public onTranscodeCompleted()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/zui/transcoder/MediaTranscoder$3;->val$listener:Lcom/zui/transcoder/MediaTranscoder$Listener;

    invoke-interface {v0}, Lcom/zui/transcoder/MediaTranscoder$Listener;->onTranscodeCompleted()V

    .line 114
    invoke-direct {p0}, Lcom/zui/transcoder/MediaTranscoder$3;->closeStream()V

    return-void
.end method

.method public onTranscodeFailed(Ljava/lang/Exception;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/zui/transcoder/MediaTranscoder$3;->val$listener:Lcom/zui/transcoder/MediaTranscoder$Listener;

    invoke-interface {v0, p1}, Lcom/zui/transcoder/MediaTranscoder$Listener;->onTranscodeFailed(Ljava/lang/Exception;)V

    .line 126
    invoke-direct {p0}, Lcom/zui/transcoder/MediaTranscoder$3;->closeStream()V

    return-void
.end method

.method public onTranscodeProgress(D)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/zui/transcoder/MediaTranscoder$3;->val$listener:Lcom/zui/transcoder/MediaTranscoder$Listener;

    invoke-interface {v0, p1, p2}, Lcom/zui/transcoder/MediaTranscoder$Listener;->onTranscodeProgress(D)V

    return-void
.end method
