.class Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;
.super Ljava/lang/Object;
.source "QueuedMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/transcoder/engine/QueuedMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleInfo"
.end annotation


# instance fields
.field private final mFlags:I

.field private final mPresentationTimeUs:J

.field private final mSampleType:Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

.field private final mSize:I


# direct methods
.method private constructor <init>(Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;->mSampleType:Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    .line 112
    iput p2, p0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;->mSize:I

    .line 113
    iget-wide p1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide p1, p0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;->mPresentationTimeUs:J

    .line 114
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput p1, p0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;ILandroid/media/MediaCodec$BufferInfo;Lcom/zui/transcoder/engine/QueuedMuxer$1;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;-><init>(Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;Landroid/media/MediaCodec$BufferInfo;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;->writeToBufferInfo(Landroid/media/MediaCodec$BufferInfo;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;)Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;->mSampleType:Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;->mSize:I

    return p0
.end method

.method private writeToBufferInfo(Landroid/media/MediaCodec$BufferInfo;I)V
    .locals 6

    .line 118
    iget v2, p0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;->mSize:I

    iget-wide v3, p0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;->mPresentationTimeUs:J

    iget v5, p0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleInfo;->mFlags:I

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    return-void
.end method
