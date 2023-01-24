.class Lcom/zui/transcoder/engine/MediaTranscoderEngine$1;
.super Ljava/lang/Object;
.source "MediaTranscoderEngine.java"

# interfaces
.implements Lcom/zui/transcoder/engine/QueuedMuxer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/transcoder/engine/MediaTranscoderEngine;->setupTrackTranscoders(Lcom/zui/transcoder/format/MediaFormatStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/transcoder/engine/MediaTranscoderEngine;


# direct methods
.method constructor <init>(Lcom/zui/transcoder/engine/MediaTranscoderEngine;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine$1;->this$0:Lcom/zui/transcoder/engine/MediaTranscoderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetermineOutputFormat()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine$1;->this$0:Lcom/zui/transcoder/engine/MediaTranscoderEngine;

    invoke-static {v0}, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->access$000(Lcom/zui/transcoder/engine/MediaTranscoderEngine;)Lcom/zui/transcoder/engine/TrackTranscoder;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/transcoder/engine/TrackTranscoder;->getDeterminedFormat()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/transcoder/engine/MediaFormatValidator;->validateVideoOutputFormat(Landroid/media/MediaFormat;)V

    .line 151
    iget-object v0, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine$1;->this$0:Lcom/zui/transcoder/engine/MediaTranscoderEngine;

    invoke-static {v0}, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->access$100(Lcom/zui/transcoder/engine/MediaTranscoderEngine;)Lcom/zui/transcoder/engine/TrackTranscoder;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/transcoder/engine/TrackTranscoder;->getDeterminedFormat()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/transcoder/engine/MediaFormatValidator;->validateAudioOutputFormat(Landroid/media/MediaFormat;)V

    return-void
.end method
