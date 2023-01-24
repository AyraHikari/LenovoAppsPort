.class Lcom/zui/transcoder/MediaTranscoder$2;
.super Ljava/lang/Object;
.source "MediaTranscoder.java"

# interfaces
.implements Lcom/zui/transcoder/format/MediaFormatStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/transcoder/MediaTranscoder;->transcodeVideo(Ljava/io/FileDescriptor;Ljava/lang/String;Lcom/zui/transcoder/MediaTranscoder$Listener;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/transcoder/MediaTranscoder;


# direct methods
.method constructor <init>(Lcom/zui/transcoder/MediaTranscoder;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/zui/transcoder/MediaTranscoder$2;->this$0:Lcom/zui/transcoder/MediaTranscoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAudioOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createVideoOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0

    .line 68
    invoke-static {}, Lcom/zui/transcoder/format/MediaFormatPresets;->getExportPreset960x540()Landroid/media/MediaFormat;

    move-result-object p1

    return-object p1
.end method
