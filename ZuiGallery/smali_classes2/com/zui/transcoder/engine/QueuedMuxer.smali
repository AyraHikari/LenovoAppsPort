.class public Lcom/zui/transcoder/engine/QueuedMuxer;
.super Ljava/lang/Object;
.source "QueuedMuxer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/transcoder/engine/QueuedMuxer$Listener;,
        Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;,
        Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "QueuedMuxer"


# instance fields
.field private mAudioFormat:Landroid/media/MediaFormat;

.field private mAudioTrackIndex:I

.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mListener:Lcom/zui/transcoder/engine/QueuedMuxer$Listener;

.field private final mMuxer:Landroid/media/MediaMuxer;

.field private final mSampleInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z

.field private mVideoFormat:Landroid/media/MediaFormat;

.field private mVideoTrackIndex:I


# direct methods
.method public constructor <init>(Landroid/media/MediaMuxer;Lcom/zui/transcoder/engine/QueuedMuxer$Listener;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    .line 32
    iput-object p2, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mListener:Lcom/zui/transcoder/engine/QueuedMuxer$Listener;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mSampleInfoList:Ljava/util/List;

    return-void
.end method

.method private getTrackIndexForSampleType(Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;)I
    .locals 1

    .line 92
    sget-object v0, Lcom/zui/transcoder/engine/QueuedMuxer$1;->$SwitchMap$com$zui$transcoder$engine$QueuedMuxer$SampleType:[I

    invoke-virtual {p1}, Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 96
    iget p1, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mAudioTrackIndex:I

    return p1

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 94
    :cond_1
    iget p1, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mVideoTrackIndex:I

    return p1
.end method

.method private onSetOutputFormat()V
    .locals 7

    .line 51
    iget-object v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mVideoFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mAudioFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mListener:Lcom/zui/transcoder/engine/QueuedMuxer$Listener;

    invoke-interface {v0}, Lcom/zui/transcoder/engine/QueuedMuxer$Listener;->onDetermineOutputFormat()V

    .line 54
    iget-object v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mVideoFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mVideoTrackIndex:I

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added track #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mVideoTrackIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mVideoFormat:Landroid/media/MediaFormat;

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to muxer"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "QueuedMuxer"

    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v6, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mAudioTrackIndex:I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mAudioTrackIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mStarted:Z

    .line 60
    iget-object v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 61
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Output format determined, writing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mSampleInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " samples / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes to muxer."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 68
    iget-object v2, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mSampleInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;

    .line 69
    invoke-static {v3, v0, v1}, Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;->access$000(Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;Landroid/media/MediaCodec$BufferInfo;I)V

    .line 70
    iget-object v4, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-static {v3}, Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;->access$100(Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;)Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/zui/transcoder/engine/QueuedMuxer;->getTrackIndexForSampleType(Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;)I

    move-result v5

    iget-object v6, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5, v6, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 71
    invoke-static {v3}, Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;->access$200(Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mSampleInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public setOutputFormat(Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;Landroid/media/MediaFormat;)V
    .locals 1

    .line 37
    sget-object v0, Lcom/zui/transcoder/engine/QueuedMuxer$1;->$SwitchMap$com$zui$transcoder$engine$QueuedMuxer$SampleType:[I

    invoke-virtual {p1}, Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 42
    iput-object p2, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mAudioFormat:Landroid/media/MediaFormat;

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 39
    :cond_1
    iput-object p2, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mVideoFormat:Landroid/media/MediaFormat;

    .line 47
    :goto_0
    invoke-direct {p0}, Lcom/zui/transcoder/engine/QueuedMuxer;->onSetOutputFormat()V

    return-void
.end method

.method public writeSampleData(Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .line 78
    iget-boolean v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mStarted:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mMuxer:Landroid/media/MediaMuxer;

    invoke-direct {p0, p1}, Lcom/zui/transcoder/engine/QueuedMuxer;->getTrackIndexForSampleType(Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void

    .line 82
    :cond_0
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 83
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    iget-object v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    const/high16 v0, 0x10000

    .line 85
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 88
    iget-object p2, p0, Lcom/zui/transcoder/engine/QueuedMuxer;->mSampleInfoList:Ljava/util/List;

    new-instance v0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p3, v2}, Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;-><init>(Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;ILandroid/media/MediaCodec$BufferInfo;Lcom/zui/transcoder/engine/QueuedMuxer$1;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
