.class public Lcom/zui/transcoder/engine/VideoTrackTranscoder;
.super Ljava/lang/Object;
.source "VideoTrackTranscoder.java"

# interfaces
.implements Lcom/zui/transcoder/engine/TrackTranscoder;


# static fields
.field private static final DRAIN_STATE_CONSUMED:I = 0x2

.field private static final DRAIN_STATE_NONE:I = 0x0

.field private static final DRAIN_STATE_SHOULD_RETRY_IMMEDIATELY:I = 0x1

.field private static final FRAME_INTERVAL_TIME:I = 0x9c40

.field private static final TAG:Ljava/lang/String; = "VideoTrackTranscoder"


# instance fields
.field private deltTime:J

.field private mActualOutputFormat:Landroid/media/MediaFormat;

.field private final mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mDecoder:Landroid/media/MediaCodec;

.field private mDecoderInputBuffers:[Ljava/nio/ByteBuffer;

.field private mDecoderOutputSurfaceWrapper:Lcom/zui/transcoder/engine/OutputSurface;

.field private mDecoderStarted:Z

.field private mEncoder:Landroid/media/MediaCodec;

.field private mEncoderInputSurfaceWrapper:Lcom/zui/transcoder/engine/InputSurface;

.field private mEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mEncoderStarted:Z

.field private final mExtractor:Landroid/media/MediaExtractor;

.field private mIsDecoderEOS:Z

.field private mIsEncoderEOS:Z

.field private mIsExtractorEOS:Z

.field private final mMuxer:Lcom/zui/transcoder/engine/QueuedMuxer;

.field private final mOutputFormat:Landroid/media/MediaFormat;

.field private final mTrackIndex:I

.field private mWrittenPresentationTimeUs:J


# direct methods
.method public constructor <init>(Landroid/media/MediaExtractor;ILandroid/media/MediaFormat;Lcom/zui/transcoder/engine/QueuedMuxer;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mWrittenPresentationTimeUs:J

    .line 40
    iput-wide v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->deltTime:J

    .line 44
    iput-object p1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    .line 45
    iput p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mTrackIndex:I

    .line 46
    iput-object p3, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mOutputFormat:Landroid/media/MediaFormat;

    .line 47
    iput-object p4, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mMuxer:Lcom/zui/transcoder/engine/QueuedMuxer;

    return-void
.end method

.method private drainDecoder(J)I
    .locals 4

    .line 160
    iget-boolean v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mIsDecoderEOS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v2, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    const/4 p2, -0x3

    const/4 v0, 0x1

    if-eq p1, p2, :cond_5

    const/4 p2, -0x2

    if-eq p1, p2, :cond_5

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    .line 169
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    .line 170
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 171
    iput-boolean v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mIsDecoderEOS:Z

    .line 172
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 174
    :cond_1
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez p2, :cond_2

    move v1, v0

    .line 177
    :cond_2
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v1, :cond_3

    .line 179
    iget-object p1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Lcom/zui/transcoder/engine/OutputSurface;

    invoke-virtual {p1}, Lcom/zui/transcoder/engine/OutputSurface;->awaitNewImage()V

    .line 180
    iget-object p1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Lcom/zui/transcoder/engine/OutputSurface;

    invoke-virtual {p1}, Lcom/zui/transcoder/engine/OutputSurface;->drawImage()V

    .line 181
    iget-object p1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Lcom/zui/transcoder/engine/InputSurface;

    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/zui/transcoder/engine/InputSurface;->setPresentationTime(J)V

    .line 182
    iget-object p1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Lcom/zui/transcoder/engine/InputSurface;

    invoke-virtual {p1}, Lcom/zui/transcoder/engine/InputSurface;->swapBuffers()Z

    :cond_3
    const/4 p1, 0x2

    return p1

    :cond_4
    return v1

    :cond_5
    return v0
.end method

.method private drainEncoder(J)I
    .locals 8

    .line 188
    iget-boolean v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mIsEncoderEOS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v2, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    const/4 p2, -0x3

    const/4 v0, 0x1

    if-eq p1, p2, :cond_9

    const/4 p2, -0x2

    if-eq p1, p2, :cond_7

    const/4 p2, -0x1

    if-eq p1, p2, :cond_6

    .line 204
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    if-eqz p2, :cond_5

    .line 208
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    .line 209
    iput-boolean v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mIsEncoderEOS:Z

    .line 210
    iget-object v2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 212
    :cond_1
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x2

    and-int/2addr p2, v2

    if-eqz p2, :cond_2

    .line 214
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v0

    .line 224
    :cond_2
    iget-wide v3, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mWrittenPresentationTimeUs:J

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-nez p2, :cond_3

    .line 225
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v3, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mWrittenPresentationTimeUs:J

    goto :goto_0

    .line 227
    :cond_3
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long p2, v3, v5

    if-lez p2, :cond_4

    .line 228
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mWrittenPresentationTimeUs:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 230
    :cond_4
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v5, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mWrittenPresentationTimeUs:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->deltTime:J

    .line 233
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v3, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mWrittenPresentationTimeUs:J

    .line 237
    :goto_0
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mMuxer:Lcom/zui/transcoder/engine/QueuedMuxer;

    sget-object v0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;->VIDEO:Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    iget-object v3, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p2, v0, v3, v4}, Lcom/zui/transcoder/engine/QueuedMuxer;->writeSampleData(Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 240
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v2

    .line 205
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not determine actual output format."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return v1

    .line 194
    :cond_7
    iget-object p1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    if-nez p1, :cond_8

    .line 196
    iget-object p1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    const-string p2, "bitrate-mode"

    .line 197
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 198
    iget-object p1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mMuxer:Lcom/zui/transcoder/engine/QueuedMuxer;

    sget-object p2, Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;->VIDEO:Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    iget-object v1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    invoke-virtual {p1, p2, v1}, Lcom/zui/transcoder/engine/QueuedMuxer;->setOutputFormat(Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;Landroid/media/MediaFormat;)V

    return v0

    .line 195
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Video output format changed twice."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_9
    iget-object p1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    return v0
.end method

.method private drainExtractor(J)I
    .locals 10

    .line 139
    iget-boolean v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mIsExtractorEOS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    if-ltz v0, :cond_1

    .line 141
    iget v2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mTrackIndex:I

    if-eq v0, v2, :cond_1

    return v1

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-gez v4, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    if-gez v0, :cond_3

    .line 147
    iput-boolean p1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mIsExtractorEOS:Z

    .line 148
    iget-object v3, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return v1

    .line 152
    :cond_3
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v4

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    .line 153
    iget-object p2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result p2

    and-int/2addr p2, p1

    if-eqz p2, :cond_4

    move v9, p1

    goto :goto_0

    :cond_4
    move v9, v1

    .line 154
    :goto_0
    iget-object v3, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 155
    iget-object p1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    const/4 p1, 0x2

    return p1
.end method


# virtual methods
.method public getDeterminedFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mActualOutputFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getWrittenPresentationTimeUs()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mWrittenPresentationTimeUs:J

    return-wide v0
.end method

.method public isFinished()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mIsEncoderEOS:Z

    return v0
.end method

.method public release()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Lcom/zui/transcoder/engine/OutputSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/zui/transcoder/engine/OutputSurface;->release()V

    .line 120
    iput-object v1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Lcom/zui/transcoder/engine/OutputSurface;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Lcom/zui/transcoder/engine/InputSurface;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Lcom/zui/transcoder/engine/InputSurface;->release()V

    .line 124
    iput-object v1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Lcom/zui/transcoder/engine/InputSurface;

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 127
    iget-boolean v2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoderStarted:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 129
    iput-object v1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_5

    .line 132
    iget-boolean v2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoderStarted:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 134
    iput-object v1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    :cond_5
    return-void
.end method

.method public setup()V
    .locals 6

    const-string v0, "mime"

    .line 52
    iget-object v1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    iget v2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mTrackIndex:I

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mOutputFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    iget-object v2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mOutputFormat:Landroid/media/MediaFormat;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 59
    new-instance v1, Lcom/zui/transcoder/engine/InputSurface;

    iget-object v2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zui/transcoder/engine/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoderInputSurfaceWrapper:Lcom/zui/transcoder/engine/InputSurface;

    .line 60
    invoke-virtual {v1}, Lcom/zui/transcoder/engine/InputSurface;->makeCurrent()V

    .line 61
    iget-object v1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 62
    iput-boolean v4, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoderStarted:Z

    .line 63
    iget-object v1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 65
    iget-object v1, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mExtractor:Landroid/media/MediaExtractor;

    iget v2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mTrackIndex:I

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "rotation-degrees"

    .line 66
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 72
    :cond_0
    new-instance v2, Lcom/zui/transcoder/engine/OutputSurface;

    invoke-direct {v2}, Lcom/zui/transcoder/engine/OutputSurface;-><init>()V

    iput-object v2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Lcom/zui/transcoder/engine/OutputSurface;

    .line 74
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    iget-object v2, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoderOutputSurfaceWrapper:Lcom/zui/transcoder/engine/OutputSurface;

    invoke-virtual {v2}, Lcom/zui/transcoder/engine/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 79
    iget-object v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 80
    iput-boolean v4, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoderStarted:Z

    .line 81
    iget-object v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->mDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    return-void

    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 56
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stepPipeline()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    .line 94
    invoke-direct {p0, v2, v3}, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->drainEncoder(J)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v0

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->drainDecoder(J)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v0

    :cond_1
    if-eq v4, v0, :cond_0

    .line 100
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/zui/transcoder/engine/VideoTrackTranscoder;->drainExtractor(J)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    return v1
.end method
