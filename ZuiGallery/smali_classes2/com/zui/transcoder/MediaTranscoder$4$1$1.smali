.class Lcom/zui/transcoder/MediaTranscoder$4$1$1;
.super Ljava/lang/Object;
.source "MediaTranscoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/transcoder/MediaTranscoder$4$1;->onProgress(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zui/transcoder/MediaTranscoder$4$1;

.field final synthetic val$progress:D


# direct methods
.method constructor <init>(Lcom/zui/transcoder/MediaTranscoder$4$1;D)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/zui/transcoder/MediaTranscoder$4$1$1;->this$2:Lcom/zui/transcoder/MediaTranscoder$4$1;

    iput-wide p2, p0, Lcom/zui/transcoder/MediaTranscoder$4$1$1;->val$progress:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/zui/transcoder/MediaTranscoder$4$1$1;->this$2:Lcom/zui/transcoder/MediaTranscoder$4$1;

    iget-object v0, v0, Lcom/zui/transcoder/MediaTranscoder$4$1;->this$1:Lcom/zui/transcoder/MediaTranscoder$4;

    iget-object v0, v0, Lcom/zui/transcoder/MediaTranscoder$4;->val$listener:Lcom/zui/transcoder/MediaTranscoder$Listener;

    iget-wide v1, p0, Lcom/zui/transcoder/MediaTranscoder$4$1$1;->val$progress:D

    invoke-interface {v0, v1, v2}, Lcom/zui/transcoder/MediaTranscoder$Listener;->onTranscodeProgress(D)V

    return-void
.end method
