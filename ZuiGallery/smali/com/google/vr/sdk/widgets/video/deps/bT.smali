.class public abstract Lcom/google/vr/sdk/widgets/video/deps/bT;
.super Lcom/google/vr/sdk/widgets/video/deps/a;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/bT$a;
    }
.end annotation


# static fields
.field private static final ADAPTATION_WORKAROUND_BUFFER:[B

.field private static final ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT:I = 0x20

.field private static final MAX_CODEC_HOTSWAP_TIME_MS:J = 0x3e8L

.field private static final RECONFIGURATION_STATE_NONE:I = 0x0

.field private static final RECONFIGURATION_STATE_QUEUE_PENDING:I = 0x2

.field private static final RECONFIGURATION_STATE_WRITE_PENDING:I = 0x1

.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaCodecRenderer"


# instance fields
.field private final buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

.field private codec:Landroid/media/MediaCodec;

.field private codecHotswapDeadlineMs:J

.field private codecInfo:Lcom/google/vr/sdk/widgets/video/deps/bS;

.field private codecNeedsAdaptationWorkaround:Z

.field private codecNeedsAdaptationWorkaroundBuffer:Z

.field private codecNeedsDiscardToSpsWorkaround:Z

.field private codecNeedsEosFlushWorkaround:Z

.field private codecNeedsEosOutputExceptionWorkaround:Z

.field private codecNeedsEosPropagationWorkaround:Z

.field private codecNeedsFlushWorkaround:Z

.field private codecNeedsMonoChannelCountWorkaround:Z

.field private codecReceivedBuffers:Z

.field private codecReceivedEos:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private codecReinitializationState:I

.field private final decodeOnlyPresentationTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

.field private drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/ab<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;"
        }
    .end annotation
.end field

.field private final drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;"
        }
    .end annotation
.end field

.field private final flagsOnlyBuffer:Lcom/google/vr/sdk/widgets/video/deps/T;

.field private format:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private final formatHolder:Lcom/google/vr/sdk/widgets/video/deps/n;

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private inputIndex:I

.field private inputStreamEnded:Z

.field private final mediaCodecSelector:Lcom/google/vr/sdk/widgets/video/deps/bU;

.field private final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputIndex:I

.field private outputStreamEnded:Z

.field private pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/ab<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;"
        }
    .end annotation
.end field

.field private final playClearSamplesWithoutKeys:Z

.field private shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field private shouldSkipOutputBuffer:Z

.field private waitingForFirstSyncFrame:Z

.field private waitingForKeys:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    .line 481
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->h(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/bT;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void
.end method

.method public constructor <init>(ILcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/ac;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/vr/sdk/widgets/video/deps/bU;",
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/a;-><init>(I)V

    .line 2
    sget p1, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 3
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/bU;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->mediaCodecSelector:Lcom/google/vr/sdk/widgets/video/deps/bU;

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;

    .line 5
    iput-boolean p4, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->playClearSamplesWithoutKeys:Z

    .line 6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/T;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    .line 7
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/T;->e()Lcom/google/vr/sdk/widgets/video/deps/T;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->flagsOnlyBuffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    .line 8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/n;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/n;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->formatHolder:Lcom/google/vr/sdk/widgets/video/deps/n;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    .line 10
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 11
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReconfigurationState:I

    .line 12
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReinitializationState:I

    return-void
.end method

.method private static codecNeedsAdaptationWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 461
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    const-string v0, "OMX.Nvidia.h264.decode"

    .line 462
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    sget-object p0, Lcom/google/vr/sdk/widgets/video/deps/gM;->b:Ljava/lang/String;

    const-string v0, "flounder"

    .line 463
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/google/vr/sdk/widgets/video/deps/gM;->b:Ljava/lang/String;

    const-string v0, "flounder_lte"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/google/vr/sdk/widgets/video/deps/gM;->b:Ljava/lang/String;

    const-string v0, "grouper"

    .line 464
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/google/vr/sdk/widgets/video/deps/gM;->b:Ljava/lang/String;

    const-string/jumbo v0, "tilapia"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/m;)Z
    .locals 2

    .line 466
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 467
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 472
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_2

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->b:Ljava/lang/String;

    const-string v1, "hb2000"

    .line 473
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    .line 474
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 475
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 477
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static codecNeedsEosPropagationWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 469
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_1

    const-string v0, "OMX.rk.video_decoder.avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OMX.allwinner.video.decoder.avc"

    .line 470
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static codecNeedsFlushWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 456
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.SEC.avc.dec"

    .line 457
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->d:Ljava/lang/String;

    const-string v1, "SM-G800"

    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OMX.Exynos.avc.dec"

    .line 459
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/m;)Z
    .locals 3

    .line 478
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-gt v0, v2, :cond_0

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    if-ne p1, v1, :cond_0

    const-string p1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 479
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    move-object/from16 v12, p0

    .line 377
    iget v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputIndex:I

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-gez v0, :cond_a

    .line 378
    iget-boolean v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReceivedEos:Z

    if-eqz v0, :cond_1

    .line 379
    :try_start_0
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    iget-object v1, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->getDequeueOutputBufferTimeoutUs()J

    move-result-wide v2

    .line 381
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputIndex:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    :catch_0
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->processEndOfStream()V

    .line 385
    iget-boolean v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->releaseCodec()V

    :cond_0
    return v15

    .line 388
    :cond_1
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    iget-object v1, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->getDequeueOutputBufferTimeoutUs()J

    move-result-wide v2

    .line 390
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputIndex:I

    .line 391
    :goto_0
    iget v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputIndex:I

    if-ltz v0, :cond_5

    .line 392
    iget-boolean v1, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    if-eqz v1, :cond_2

    .line 393
    iput-boolean v15, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 394
    iget-object v1, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v15}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 395
    iput v13, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputIndex:I

    return v14

    .line 397
    :cond_2
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->processEndOfStream()V

    .line 399
    iput v13, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputIndex:I

    return v15

    .line 401
    :cond_3
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget v1, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    .line 403
    iget-object v1, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 404
    iget-object v1, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 405
    :cond_4
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v12, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bT;->shouldSkipOutputBuffer(J)Z

    move-result v0

    iput-boolean v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->shouldSkipOutputBuffer:Z

    goto :goto_1

    :cond_5
    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    .line 408
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->processOutputFormat()V

    return v14

    :cond_6
    const/4 v1, -0x3

    if-ne v0, v1, :cond_7

    .line 411
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->processOutputBuffersChanged()V

    return v14

    .line 413
    :cond_7
    iget-boolean v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputStreamEnded:Z

    if-nez v0, :cond_8

    iget v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReinitializationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 414
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->processEndOfStream()V

    :cond_9
    return v15

    .line 416
    :cond_a
    :goto_1
    iget-boolean v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReceivedEos:Z

    if-eqz v0, :cond_c

    .line 417
    :try_start_1
    iget-object v5, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget v1, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputIndex:I

    aget-object v6, v0, v1

    iget v7, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputIndex:I

    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->shouldSkipOutputBuffer:Z

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/bT;->processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 420
    :catch_1
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->processEndOfStream()V

    .line 421
    iget-boolean v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputStreamEnded:Z

    if-eqz v0, :cond_b

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->releaseCodec()V

    :cond_b
    return v15

    .line 424
    :cond_c
    iget-object v5, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget v7, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputIndex:I

    aget-object v6, v0, v7

    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->shouldSkipOutputBuffer:Z

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/bT;->processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_d

    .line 426
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v12, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onProcessedOutputBuffer(J)V

    .line 427
    iput v13, v12, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputIndex:I

    return v14

    :cond_d
    return v15
.end method

.method private feedInputBuffer()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReinitializationState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_17

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputStreamEnded:Z

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 241
    :cond_0
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputIndex:I

    if-gez v2, :cond_2

    const-wide/16 v4, 0x0

    .line 242
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputIndex:I

    if-gez v0, :cond_1

    return v1

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v4, v0

    iput-object v0, v2, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    .line 246
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/T;->a()V

    .line 247
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReinitializationState:I

    const/4 v2, -0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 248
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 249
    :cond_3
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReceivedEos:Z

    .line 250
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputIndex:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 251
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputIndex:I

    .line 252
    :goto_0
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReinitializationState:I

    return v1

    .line 254
    :cond_4
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v0, :cond_5

    .line 255
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 256
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/bT;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 257
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputIndex:I

    const/4 v7, 0x0

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/bT;->ADAPTATION_WORKAROUND_BUFFER:[B

    array-length v8, v0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 258
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputIndex:I

    .line 259
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReceivedBuffers:Z

    return v4

    .line 262
    :cond_5
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->waitingForKeys:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x4

    move v5, v1

    goto :goto_2

    .line 264
    :cond_6
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReconfigurationState:I

    if-ne v0, v4, :cond_8

    move v0, v1

    .line 265
    :goto_1
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 266
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 267
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    :cond_7
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReconfigurationState:I

    .line 270
    :cond_8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 271
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->formatHolder:Lcom/google/vr/sdk/widgets/video/deps/n;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {p0, v5, v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/bT;->readSource(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I

    move-result v5

    move v13, v5

    move v5, v0

    move v0, v13

    :goto_2
    const/4 v6, -0x3

    if-ne v0, v6, :cond_9

    return v1

    :cond_9
    const/4 v6, -0x5

    if-ne v0, v6, :cond_b

    .line 275
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReconfigurationState:I

    if-ne v0, v3, :cond_a

    .line 276
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/T;->a()V

    .line 277
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReconfigurationState:I

    .line 278
    :cond_a
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->formatHolder:Lcom/google/vr/sdk/widgets/video/deps/n;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/n;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onInputFormatChanged(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    return v4

    .line 280
    :cond_b
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/T;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 281
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReconfigurationState:I

    if-ne v0, v3, :cond_c

    .line 282
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/T;->a()V

    .line 283
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReconfigurationState:I

    .line 284
    :cond_c
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputStreamEnded:Z

    .line 285
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReceivedBuffers:Z

    if-nez v0, :cond_d

    .line 286
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->processEndOfStream()V

    return v1

    .line 288
    :cond_d
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsEosPropagationWorkaround:Z

    if-eqz v0, :cond_e

    goto :goto_3

    .line 289
    :cond_e
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReceivedEos:Z

    .line 290
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputIndex:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 291
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputIndex:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return v1

    :catch_0
    move-exception v0

    .line 294
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object v0

    throw v0

    .line 296
    :cond_f
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->waitingForFirstSyncFrame:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/T;->d()Z

    move-result v0

    if-nez v0, :cond_11

    .line 297
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/T;->a()V

    .line 298
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReconfigurationState:I

    if-ne v0, v3, :cond_10

    .line 299
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReconfigurationState:I

    :cond_10
    return v4

    .line 301
    :cond_11
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->waitingForFirstSyncFrame:Z

    .line 302
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/T;->g()Z

    move-result v0

    .line 303
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->shouldWaitForKeys(Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->waitingForKeys:Z

    if-eqz v3, :cond_12

    return v1

    .line 306
    :cond_12
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsDiscardToSpsWorkaround:Z

    if-eqz v3, :cond_14

    if-nez v0, :cond_14

    .line 307
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gy;->a(Ljava/nio/ByteBuffer;)V

    .line 308
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_13

    return v4

    .line 310
    :cond_13
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsDiscardToSpsWorkaround:Z

    .line 311
    :cond_14
    :try_start_1
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    iget-wide v10, v3, Lcom/google/vr/sdk/widgets/video/deps/T;->f:J

    .line 312
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/T;->c_()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 313
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_15
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/T;->h()V

    .line 315
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onQueueInputBuffer(Lcom/google/vr/sdk/widgets/video/deps/T;)V

    if-eqz v0, :cond_16

    .line 317
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-static {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/bT;->getFrameworkCryptoInfo(Lcom/google/vr/sdk/widgets/video/deps/T;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v9

    .line 318
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputIndex:I

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_4

    .line 320
    :cond_16
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputIndex:I

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 321
    :goto_4
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputIndex:I

    .line 322
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReceivedBuffers:Z

    .line 323
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReconfigurationState:I

    .line 324
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/S;->c:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/S;->c:I
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    return v4

    :catch_1
    move-exception v0

    .line 327
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object v0

    throw v0

    :cond_17
    :goto_5
    return v1
.end method

.method private static getFrameworkCryptoInfo(Lcom/google/vr/sdk/widgets/video/deps/T;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 3

    .line 329
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/T;->d:Lcom/google/vr/sdk/widgets/video/deps/Q;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/Q;->a()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object p0

    if-nez p1, :cond_0

    return-object p0

    .line 332
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 333
    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 334
    :cond_1
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    return-object p0
.end method

.method private processEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 443
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReinitializationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->releaseCodec()V

    .line 445
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->maybeInitCodec()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 446
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputStreamEnded:Z

    .line 447
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->renderToEndOfStream()V

    :goto_0
    return-void
.end method

.method private processOutputBuffersChanged()V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBuffers:[Ljava/nio/ByteBuffer;

    return-void
.end method

.method private processOutputFormat()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 431
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsAdaptationWorkaround:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "width"

    .line 432
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    const-string v1, "height"

    .line 433
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 434
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    return-void

    .line 436
    :cond_0
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsMonoChannelCountWorkaround:Z

    if-eqz v1, :cond_1

    const-string v1, "channel-count"

    .line 437
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    return-void
.end method

.method private shouldSkipOutputBuffer(J)Z
    .locals 5

    .line 449
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 451
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 452
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->playClearSamplesWithoutKeys:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/ab;->c()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    move v1, v0

    :cond_1
    return v1

    .line 340
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/ab;->d()Lcom/google/vr/sdk/widgets/video/deps/ab$a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    return v1
.end method

.method private throwDecoderInitError(Lcom/google/vr/sdk/widgets/video/deps/bT$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method protected canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/m;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract configureCodec(Lcom/google/vr/sdk/widgets/video/deps/bS;Landroid/media/MediaCodec;Lcom/google/vr/sdk/widgets/video/deps/m;Landroid/media/MediaCrypto;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/bV$b;
        }
    .end annotation
.end method

.method protected flushCodec()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 219
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecHotswapDeadlineMs:J

    const/4 v0, -0x1

    .line 220
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputIndex:I

    .line 221
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputIndex:I

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->waitingForFirstSyncFrame:Z

    const/4 v1, 0x0

    .line 223
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->waitingForKeys:Z

    .line 224
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->shouldSkipOutputBuffer:Z

    .line 225
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 226
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 227
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 228
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsFlushWorkaround:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsEosFlushWorkaround:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReceivedEos:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReinitializationState:I

    if-eqz v2, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->releaseCodec()V

    .line 233
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->maybeInitCodec()V

    goto :goto_1

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V

    .line 235
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReceivedBuffers:Z

    goto :goto_1

    .line 229
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->releaseCodec()V

    .line 230
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->maybeInitCodec()V

    .line 236
    :goto_1
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReconfigured:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    if-eqz v1, :cond_3

    .line 237
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReconfigurationState:I

    :cond_3
    return-void
.end method

.method protected final getCodec()Landroid/media/MediaCodec;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected final getCodecInfo()Lcom/google/vr/sdk/widgets/video/deps/bS;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecInfo:Lcom/google/vr/sdk/widgets/video/deps/bS;

    return-object v0
.end method

.method protected getDecoderInfo(Lcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/m;Z)Lcom/google/vr/sdk/widgets/video/deps/bS;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/bV$b;
        }
    .end annotation

    .line 18
    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bU;->a(Ljava/lang/String;Z)Lcom/google/vr/sdk/widgets/video/deps/bS;

    move-result-object p1

    return-object p1
.end method

.method protected getDequeueOutputBufferTimeoutUs()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isEnded()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->waitingForKeys:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputIndex:I

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecHotswapDeadlineMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecHotswapDeadlineMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final maybeInitCodec()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 22
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    .line 25
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 26
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/ab;->e()Lcom/google/vr/sdk/widgets/video/deps/ad;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/af;

    if-nez v1, :cond_2

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ab;->d()Lcom/google/vr/sdk/widgets/video/deps/ab$a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object v0

    throw v0

    .line 32
    :cond_2
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Landroid/media/MediaCrypto;

    move-result-object v4

    .line 33
    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    move-object v4, v3

    .line 34
    :goto_0
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecInfo:Lcom/google/vr/sdk/widgets/video/deps/bS;

    if-nez v5, :cond_5

    .line 35
    :try_start_0
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->mediaCodecSelector:Lcom/google/vr/sdk/widgets/video/deps/bU;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {p0, v5, v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/bT;->getDecoderInfo(Lcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/m;Z)Lcom/google/vr/sdk/widgets/video/deps/bS;

    move-result-object v5

    iput-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecInfo:Lcom/google/vr/sdk/widgets/video/deps/bS;

    if-nez v5, :cond_4

    if-eqz v1, :cond_4

    .line 37
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->mediaCodecSelector:Lcom/google/vr/sdk/widgets/video/deps/bU;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {p0, v5, v6, v2}, Lcom/google/vr/sdk/widgets/video/deps/bT;->getDecoderInfo(Lcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/m;Z)Lcom/google/vr/sdk/widgets/video/deps/bS;

    move-result-object v2

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecInfo:Lcom/google/vr/sdk/widgets/video/deps/bS;

    if-eqz v2, :cond_4

    const-string v5, "MediaCodecRenderer"

    .line 39
    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/bS;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x63

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Drm session requires secure decoder for "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/bV$b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 42
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/bT$a;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    const v6, -0xc34e

    invoke-direct {v2, v5, v0, v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/bT$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/bT;->throwDecoderInitError(Lcom/google/vr/sdk/widgets/video/deps/bT$a;)V

    .line 43
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecInfo:Lcom/google/vr/sdk/widgets/video/deps/bS;

    if-nez v0, :cond_5

    .line 44
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/bT$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    const v5, -0xc34f

    invoke-direct {v0, v2, v3, v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/bT$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->throwDecoderInitError(Lcom/google/vr/sdk/widgets/video/deps/bT$a;)V

    .line 45
    :cond_5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecInfo:Lcom/google/vr/sdk/widgets/video/deps/bS;

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->shouldInitCodec(Lcom/google/vr/sdk/widgets/video/deps/bS;)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 47
    :cond_6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecInfo:Lcom/google/vr/sdk/widgets/video/deps/bS;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/bS;->b:Ljava/lang/String;

    .line 48
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-static {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsDiscardToSpsWorkaround(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/m;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsDiscardToSpsWorkaround:Z

    .line 49
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsFlushWorkaround(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsFlushWorkaround:Z

    .line 50
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsAdaptationWorkaround(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsAdaptationWorkaround:Z

    .line 51
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsEosPropagationWorkaround(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsEosPropagationWorkaround:Z

    .line 52
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsEosFlushWorkaround:Z

    .line 53
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 54
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-static {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsMonoChannelCountWorkaround(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/m;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsMonoChannelCountWorkaround:Z

    .line 55
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v5, "createCodec:"

    .line 56
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_7
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_2
    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a(Ljava/lang/String;)V

    .line 57
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    .line 58
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a()V

    const-string v5, "configureCodec"

    .line 59
    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a(Ljava/lang/String;)V

    .line 60
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecInfo:Lcom/google/vr/sdk/widgets/video/deps/bS;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/google/vr/sdk/widgets/video/deps/bT;->configureCodec(Lcom/google/vr/sdk/widgets/video/deps/bS;Landroid/media/MediaCodec;Lcom/google/vr/sdk/widgets/video/deps/m;Landroid/media/MediaCrypto;)V

    .line 61
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a()V

    const-string/jumbo v4, "startCodec"

    .line 62
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a(Ljava/lang/String;)V

    .line 63
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 64
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a()V

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v9, v7, v2

    move-object v5, p0

    move-object v6, v0

    .line 66
    invoke-virtual/range {v5 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onCodecInitialized(Ljava/lang/String;JJ)V

    .line 67
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 68
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 71
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/bT$a;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bT$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/m;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/bT;->throwDecoderInitError(Lcom/google/vr/sdk/widgets/video/deps/bT$a;)V

    .line 72
    :goto_3
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    goto :goto_4

    :cond_8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecHotswapDeadlineMs:J

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputIndex:I

    .line 75
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputIndex:I

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->waitingForFirstSyncFrame:Z

    .line 77
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/S;->a:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/google/vr/sdk/widgets/video/deps/S;->a:I

    :cond_9
    :goto_5
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method protected onDisabled()V
    .locals 4

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 92
    :try_start_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eq v1, v2, :cond_1

    .line 95
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :cond_1
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 97
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    return-void

    :catchall_0
    move-exception v1

    .line 99
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 100
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    throw v1

    :catchall_1
    move-exception v1

    .line 103
    :try_start_3
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eq v2, v3, :cond_2

    .line 104
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 105
    :cond_2
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 106
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 109
    throw v1

    :catchall_2
    move-exception v1

    .line 108
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 109
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    throw v1

    :catchall_3
    move-exception v1

    .line 112
    :try_start_4
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eqz v2, :cond_3

    .line 113
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 114
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eq v2, v3, :cond_4

    .line 115
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 116
    :cond_4
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 117
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 129
    throw v1

    :catchall_4
    move-exception v1

    .line 119
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 120
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    throw v1

    :catchall_5
    move-exception v1

    .line 123
    :try_start_6
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eq v2, v3, :cond_5

    .line 124
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 125
    :cond_5
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 126
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 129
    throw v1

    :catchall_6
    move-exception v1

    .line 128
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 129
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    throw v1
.end method

.method protected onEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 83
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/S;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 344
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 345
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 346
    :cond_0
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    .line 347
    :goto_0
    invoke-static {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 349
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    if-eqz p1, :cond_2

    .line 350
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;

    if-eqz p1, :cond_1

    .line 354
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    invoke-interface {p1, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/ab;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 355
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-ne p1, v1, :cond_3

    .line 356
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;

    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V

    goto :goto_1

    .line 351
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->getIndex()I

    move-result v0

    .line 353
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object p1

    throw p1

    .line 357
    :cond_2
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 358
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecInfo:Lcom/google/vr/sdk/widgets/video/deps/bS;

    iget-boolean v1, v1, Lcom/google/vr/sdk/widgets/video/deps/bS;->c:Z

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 359
    invoke-virtual {p0, p1, v1, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/bT;->canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/m;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 360
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReconfigured:Z

    .line 361
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReconfigurationState:I

    .line 362
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsAdaptationWorkaround:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsAdaptationWorkaroundBuffer:Z

    goto :goto_3

    .line 363
    :cond_5
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReceivedBuffers:Z

    if-eqz p1, :cond_6

    .line 364
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReinitializationState:I

    goto :goto_3

    .line 365
    :cond_6
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->releaseCodec()V

    .line 366
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->maybeInitCodec()V

    :goto_3
    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputStreamEnded:Z

    .line 86
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputStreamEnded:Z

    .line 87
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->flushCodec()V

    :cond_0
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 0

    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/vr/sdk/widgets/video/deps/T;)V
    .locals 0

    return-void
.end method

.method protected onStarted()V
    .locals 0

    return-void
.end method

.method protected onStopped()V
    .locals 0

    return-void
.end method

.method protected abstract processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation
.end method

.method protected releaseCodec()V
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 131
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecHotswapDeadlineMs:J

    const/4 v0, -0x1

    .line 132
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputIndex:I

    .line 133
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputIndex:I

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->waitingForKeys:Z

    .line 135
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->shouldSkipOutputBuffer:Z

    .line 136
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 137
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 138
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 139
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecInfo:Lcom/google/vr/sdk/widgets/video/deps/bS;

    .line 140
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReconfigured:Z

    .line 141
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReceivedBuffers:Z

    .line 142
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsDiscardToSpsWorkaround:Z

    .line 143
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsFlushWorkaround:Z

    .line 144
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsAdaptationWorkaround:Z

    .line 145
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsEosPropagationWorkaround:Z

    .line 146
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsEosFlushWorkaround:Z

    .line 147
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsMonoChannelCountWorkaround:Z

    .line 148
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 149
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 150
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReceivedEos:Z

    .line 151
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReconfigurationState:I

    .line 152
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codecReinitializationState:I

    .line 153
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->buffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/T;->e:Ljava/nio/ByteBuffer;

    .line 154
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/S;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/S;->b:I

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 157
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    .line 159
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eq v2, v0, :cond_3

    .line 160
    :try_start_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;

    invoke-interface {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 163
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    throw v0

    :catchall_1
    move-exception v0

    .line 164
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    .line 165
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eq v3, v2, :cond_0

    .line 166
    :try_start_3
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;

    invoke-interface {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 167
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 169
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    throw v0

    :cond_0
    :goto_0
    throw v0

    :catchall_3
    move-exception v0

    .line 172
    :try_start_4
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 173
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    .line 174
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eq v3, v2, :cond_1

    .line 175
    :try_start_5
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;

    invoke-interface {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 176
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    goto :goto_1

    :catchall_4
    move-exception v0

    .line 178
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    throw v0

    .line 184
    :cond_1
    :goto_1
    throw v0

    :catchall_5
    move-exception v0

    .line 179
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    .line 180
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->pendingDrmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eq v3, v2, :cond_2

    .line 181
    :try_start_6
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;

    invoke-interface {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 182
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    goto :goto_2

    :catchall_6
    move-exception v0

    .line 184
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSession:Lcom/google/vr/sdk/widgets/video/deps/ab;

    throw v0

    :cond_2
    :goto_2
    throw v0

    :cond_3
    :goto_3
    return-void
.end method

.method public render(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 188
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->renderToEndOfStream()V

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->format:Lcom/google/vr/sdk/widgets/video/deps/m;

    const/4 v1, -0x4

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->flagsOnlyBuffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/T;->a()V

    .line 193
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->formatHolder:Lcom/google/vr/sdk/widgets/video/deps/n;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->flagsOnlyBuffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {p0, v0, v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/bT;->readSource(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 195
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->formatHolder:Lcom/google/vr/sdk/widgets/video/deps/n;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/n;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onInputFormatChanged(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 197
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->flagsOnlyBuffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/T;->c()Z

    move-result p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 198
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputStreamEnded:Z

    .line 199
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->processEndOfStream()V

    :cond_2
    return-void

    .line 202
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->maybeInitCodec()V

    .line 203
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_6

    const-string v0, "drainAndFeed"

    .line 204
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a(Ljava/lang/String;)V

    .line 205
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/bT;->drainOutputBuffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 206
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 207
    :cond_5
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a()V

    goto :goto_3

    .line 208
    :cond_6
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    iget p4, p3, Lcom/google/vr/sdk/widgets/video/deps/S;->d:I

    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bT;->skipSource(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Lcom/google/vr/sdk/widgets/video/deps/S;->d:I

    .line 209
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->flagsOnlyBuffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/T;->a()V

    .line 210
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->formatHolder:Lcom/google/vr/sdk/widgets/video/deps/n;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->flagsOnlyBuffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bT;->readSource(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 212
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->formatHolder:Lcom/google/vr/sdk/widgets/video/deps/n;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/n;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onInputFormatChanged(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    goto :goto_3

    :cond_7
    if-ne p1, v1, :cond_8

    .line 214
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->flagsOnlyBuffer:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/T;->c()Z

    move-result p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 215
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->inputStreamEnded:Z

    .line 216
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->processEndOfStream()V

    .line 217
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/S;->a()V

    return-void
.end method

.method protected renderToEndOfStream()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    return-void
.end method

.method protected shouldInitCodec(Lcom/google/vr/sdk/widgets/video/deps/bS;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/m;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/bU;",
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/bV$b;
        }
    .end annotation
.end method

.method public final supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/m;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->mediaCodecSelector:Lcom/google/vr/sdk/widgets/video/deps/bU;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bT;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/bT;->supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/bV$b; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object p1

    throw p1
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
