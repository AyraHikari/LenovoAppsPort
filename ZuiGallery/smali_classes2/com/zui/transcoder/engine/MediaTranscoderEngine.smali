.class public Lcom/zui/transcoder/engine/MediaTranscoderEngine;
.super Ljava/lang/Object;
.source "MediaTranscoderEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/transcoder/engine/MediaTranscoderEngine$ProgressCallback;
    }
.end annotation


# static fields
.field private static final PROGRESS_INTERVAL_STEPS:J = 0xaL

.field private static final PROGRESS_UNKNOWN:D = -1.0

.field private static final SLEEP_TO_WAIT_TRACK_TRANSCODERS:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "MediaTranscoderEngine"


# instance fields
.field private mAudioTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

.field private mDurationUs:J

.field private mExtractor:Landroid/media/MediaExtractor;

.field private mInputFileDescriptor:Ljava/io/FileDescriptor;

.field private mMuxer:Landroid/media/MediaMuxer;

.field private volatile mProgress:D

.field private mProgressCallback:Lcom/zui/transcoder/engine/MediaTranscoderEngine$ProgressCallback;

.field private mVideoTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/transcoder/engine/MediaTranscoderEngine;)Lcom/zui/transcoder/engine/TrackTranscoder;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/transcoder/engine/MediaTranscoderEngine;)Lcom/zui/transcoder/engine/TrackTranscoder;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    return-object p0
.end method

.method private runPipelines()V
    .locals 15

    move-object v0, p0

    .line 173
    iget-wide v1, v0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mDurationUs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 175
    iput-wide v1, v0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mProgress:D

    .line 176
    iget-object v5, v0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mProgressCallback:Lcom/zui/transcoder/engine/MediaTranscoderEngine$ProgressCallback;

    if-eqz v5, :cond_0

    invoke-interface {v5, v1, v2}, Lcom/zui/transcoder/engine/MediaTranscoderEngine$ProgressCallback;->onProgress(D)V

    :cond_0
    move-wide v1, v3

    .line 178
    :goto_0
    iget-object v5, v0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    invoke-interface {v5}, Lcom/zui/transcoder/engine/TrackTranscoder;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    invoke-interface {v5}, Lcom/zui/transcoder/engine/TrackTranscoder;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 179
    :cond_2
    :goto_1
    iget-object v5, v0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    invoke-interface {v5}, Lcom/zui/transcoder/engine/TrackTranscoder;->stepPipeline()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    .line 180
    invoke-interface {v5}, Lcom/zui/transcoder/engine/TrackTranscoder;->stepPipeline()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v5, 0x1

    :goto_3
    const-wide/16 v6, 0x1

    add-long/2addr v1, v6

    .line 182
    iget-wide v6, v0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mDurationUs:J

    cmp-long v6, v6, v3

    const-wide/16 v7, 0xa

    if-lez v6, :cond_7

    rem-long v9, v1, v7

    cmp-long v6, v9, v3

    if-nez v6, :cond_7

    .line 183
    iget-object v6, v0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    invoke-interface {v6}, Lcom/zui/transcoder/engine/TrackTranscoder;->isFinished()Z

    move-result v6

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-eqz v6, :cond_5

    move-wide v11, v9

    goto :goto_4

    :cond_5
    iget-object v6, v0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    invoke-interface {v6}, Lcom/zui/transcoder/engine/TrackTranscoder;->getWrittenPresentationTimeUs()J

    move-result-wide v11

    long-to-double v11, v11

    iget-wide v13, v0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mDurationUs:J

    long-to-double v13, v13

    div-double/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    .line 184
    :goto_4
    iget-object v6, v0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    invoke-interface {v6}, Lcom/zui/transcoder/engine/TrackTranscoder;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    iget-object v6, v0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    invoke-interface {v6}, Lcom/zui/transcoder/engine/TrackTranscoder;->getWrittenPresentationTimeUs()J

    move-result-wide v13

    long-to-double v13, v13

    iget-wide v3, v0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mDurationUs:J

    long-to-double v3, v3

    div-double/2addr v13, v3

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    :goto_5
    add-double/2addr v11, v9

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v3

    .line 186
    iput-wide v11, v0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mProgress:D

    .line 187
    iget-object v3, v0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mProgressCallback:Lcom/zui/transcoder/engine/MediaTranscoderEngine$ProgressCallback;

    if-eqz v3, :cond_7

    invoke-interface {v3, v11, v12}, Lcom/zui/transcoder/engine/MediaTranscoderEngine$ProgressCallback;->onProgress(D)V

    :cond_7
    if-nez v5, :cond_8

    .line 191
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method private setupMetadata()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mInputFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const/16 v1, 0x18

    .line 119
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    const/16 v1, 0x9

    .line 131
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mDurationUs:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    const-wide/16 v1, -0x1

    .line 133
    :try_start_1
    iput-wide v1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mDurationUs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duration (us): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mDurationUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaTranscoderEngine"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 136
    throw v1
.end method

.method private setupTrackTranscoders(Lcom/zui/transcoder/format/MediaFormatStrategy;)V
    .locals 6

    .line 141
    iget-object v0, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/zui/transcoder/utils/MediaExtractorUtils;->getFirstVideoAndAudioTrack(Landroid/media/MediaExtractor;)Lcom/zui/transcoder/utils/MediaExtractorUtils$TrackResult;

    move-result-object v0

    .line 142
    iget-object v1, v0, Lcom/zui/transcoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackFormat:Landroid/media/MediaFormat;

    invoke-interface {p1, v1}, Lcom/zui/transcoder/format/MediaFormatStrategy;->createVideoOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v1

    .line 143
    iget-object v2, v0, Lcom/zui/transcoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackFormat:Landroid/media/MediaFormat;

    invoke-interface {p1, v2}, Lcom/zui/transcoder/format/MediaFormatStrategy;->createAudioOutputFormat(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object p1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    new-instance p1, Lcom/zui/transcoder/engine/InvalidOutputFormatException;

    const-string v0, "MediaFormatStrategy returned pass-through for both video and audio. No transcoding is necessary."

    invoke-direct {p1, v0}, Lcom/zui/transcoder/engine/InvalidOutputFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_1
    :goto_0
    new-instance v2, Lcom/zui/transcoder/engine/QueuedMuxer;

    iget-object v3, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    new-instance v4, Lcom/zui/transcoder/engine/MediaTranscoderEngine$1;

    invoke-direct {v4, p0}, Lcom/zui/transcoder/engine/MediaTranscoderEngine$1;-><init>(Lcom/zui/transcoder/engine/MediaTranscoderEngine;)V

    invoke-direct {v2, v3, v4}, Lcom/zui/transcoder/engine/QueuedMuxer;-><init>(Landroid/media/MediaMuxer;Lcom/zui/transcoder/engine/QueuedMuxer$Listener;)V

    if-nez v1, :cond_2

    .line 156
    new-instance v1, Lcom/zui/transcoder/engine/PassThroughTrackTranscoder;

    iget-object v3, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    iget v4, v0, Lcom/zui/transcoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    sget-object v5, Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;->VIDEO:Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/zui/transcoder/engine/PassThroughTrackTranscoder;-><init>(Landroid/media/MediaExtractor;ILcom/zui/transcoder/engine/QueuedMuxer;Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;)V

    iput-object v1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    goto :goto_1

    .line 158
    :cond_2
    new-instance v3, Lcom/zui/transcoder/engine/VideoTrackTranscoder;

    iget-object v4, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    iget v5, v0, Lcom/zui/transcoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/zui/transcoder/engine/VideoTrackTranscoder;-><init>(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;Lcom/zui/transcoder/engine/QueuedMuxer;)V

    iput-object v3, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    .line 160
    :goto_1
    iget-object v1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    invoke-interface {v1}, Lcom/zui/transcoder/engine/TrackTranscoder;->setup()V

    if-nez p1, :cond_3

    .line 162
    new-instance p1, Lcom/zui/transcoder/engine/PassThroughTrackTranscoder;

    iget-object v1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    iget v3, v0, Lcom/zui/transcoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    sget-object v4, Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;->AUDIO:Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    invoke-direct {p1, v1, v3, v2, v4}, Lcom/zui/transcoder/engine/PassThroughTrackTranscoder;-><init>(Landroid/media/MediaExtractor;ILcom/zui/transcoder/engine/QueuedMuxer;Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;)V

    iput-object p1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    .line 166
    invoke-interface {p1}, Lcom/zui/transcoder/engine/TrackTranscoder;->setup()V

    .line 167
    iget-object p1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    iget v1, v0, Lcom/zui/transcoder/utils/MediaExtractorUtils$TrackResult;->mVideoTrackIndex:I

    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 168
    iget-object p1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    iget v0, v0, Lcom/zui/transcoder/utils/MediaExtractorUtils$TrackResult;->mAudioTrackIndex:I

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    return-void

    .line 164
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Transcoding audio tracks currently not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getProgress()D
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mProgress:D

    return-wide v0
.end method

.method public getProgressCallback()Lcom/zui/transcoder/engine/MediaTranscoderEngine$ProgressCallback;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mProgressCallback:Lcom/zui/transcoder/engine/MediaTranscoderEngine$ProgressCallback;

    return-object v0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mInputFileDescriptor:Ljava/io/FileDescriptor;

    return-void
.end method

.method public setProgressCallback(Lcom/zui/transcoder/engine/MediaTranscoderEngine$ProgressCallback;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mProgressCallback:Lcom/zui/transcoder/engine/MediaTranscoderEngine$ProgressCallback;

    return-void
.end method

.method public transcodeVideo(Ljava/lang/String;Lcom/zui/transcoder/format/MediaFormatStrategy;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "Failed to release muxer."

    const-string v1, "MediaTranscoderEngine"

    const-string v2, "Could not shutdown extractor, codecs and muxer pipeline."

    if-eqz p1, :cond_9

    .line 73
    iget-object v3, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mInputFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    .line 78
    :try_start_0
    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v4, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    .line 79
    iget-object v5, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mInputFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 80
    new-instance v4, Landroid/media/MediaMuxer;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    .line 81
    invoke-direct {p0}, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->setupMetadata()V

    .line 82
    invoke-direct {p0, p2}, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->setupTrackTranscoders(Lcom/zui/transcoder/format/MediaFormatStrategy;)V

    .line 83
    invoke-direct {p0}, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->runPipelines()V

    .line 84
    iget-object p1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    iget-object p1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    invoke-interface {p1}, Lcom/zui/transcoder/engine/TrackTranscoder;->release()V

    .line 89
    iput-object v3, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    invoke-interface {p1}, Lcom/zui/transcoder/engine/TrackTranscoder;->release()V

    .line 93
    iput-object v3, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    if-eqz p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->release()V

    .line 97
    iput-object v3, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz p1, :cond_3

    .line 106
    iget-object p1, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->release()V

    .line 107
    iput-object v3, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    invoke-static {v1, v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 102
    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, v2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 87
    :try_start_3
    iget-object p2, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    if-eqz p2, :cond_4

    .line 88
    iget-object p2, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    invoke-interface {p2}, Lcom/zui/transcoder/engine/TrackTranscoder;->release()V

    .line 89
    iput-object v3, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mVideoTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    .line 91
    :cond_4
    iget-object p2, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    if-eqz p2, :cond_5

    .line 92
    iget-object p2, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    invoke-interface {p2}, Lcom/zui/transcoder/engine/TrackTranscoder;->release()V

    .line 93
    iput-object v3, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mAudioTrackTranscoder:Lcom/zui/transcoder/engine/TrackTranscoder;

    .line 95
    :cond_5
    iget-object p2, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    if-eqz p2, :cond_6

    .line 96
    iget-object p2, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2}, Landroid/media/MediaExtractor;->release()V

    .line 97
    iput-object v3, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mExtractor:Landroid/media/MediaExtractor;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 105
    :cond_6
    :try_start_4
    iget-object p2, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz p2, :cond_7

    .line 106
    iget-object p2, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p2}, Landroid/media/MediaMuxer;->release()V

    .line 107
    iput-object v3, p0, Lcom/zui/transcoder/engine/MediaTranscoderEngine;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p2

    .line 110
    invoke-static {v1, v0, p2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :cond_7
    :goto_1
    throw p1

    :catch_3
    move-exception p1

    .line 102
    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, v2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 74
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Data source is not set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Output path cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
