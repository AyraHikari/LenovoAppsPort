.class public Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;
.super Lcom/google/vr/sdk/widgets/video/deps/gS;
.source "SphericalV2MediaCodecVideoRenderer.java"


# static fields
.field private static final MAX_DROPPED_FRAME_COUNT_TO_NOTIFY:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private inputFormat:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private projectionListener:Lcom/google/vr/libraries/video/SphericalV2ProjectionDataListener;

.field private final sampleTimestampBuffer:Lcom/google/vr/libraries/video/SampleTimestampBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/gU;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/gU;",
            "J)V"
        }
    .end annotation

    .line 1
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/bU;->a:Lcom/google/vr/sdk/widgets/video/deps/bU;

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p5

    move-object v5, p3

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/gS;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/bU;JLcom/google/vr/sdk/widgets/video/deps/ac;ZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/gU;I)V

    .line 2
    new-instance v0, Lcom/google/vr/libraries/video/SampleTimestampBuffer;

    invoke-direct {v0}, Lcom/google/vr/libraries/video/SampleTimestampBuffer;-><init>()V

    move-object v1, p0

    iput-object v0, v1, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;->sampleTimestampBuffer:Lcom/google/vr/libraries/video/SampleTimestampBuffer;

    return-void
.end method


# virtual methods
.method public getInputFormat()Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;->inputFormat:Lcom/google/vr/sdk/widgets/video/deps/m;

    return-object v0
.end method

.method public getSampleTimestampBuffer()Lcom/google/vr/libraries/video/SampleTimestampBuffer;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;->sampleTimestampBuffer:Lcom/google/vr/libraries/video/SampleTimestampBuffer;

    return-object v0
.end method

.method protected onInputFormatChanged(Lcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 7
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gS;->onInputFormatChanged(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 8
    iput-object p1, p0, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;->inputFormat:Lcom/google/vr/sdk/widgets/video/deps/m;

    if-eqz p1, :cond_0

    .line 9
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->r:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;->projectionListener:Lcom/google/vr/libraries/video/SphericalV2ProjectionDataListener;

    if-eqz v0, :cond_0

    .line 10
    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->q:I

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->r:[B

    invoke-interface {v0, v1, p1}, Lcom/google/vr/libraries/video/SphericalV2ProjectionDataListener;->onProjectionDataChanged(I[B)V

    :cond_0
    return-void
.end method

.method protected onStreamChanged([Lcom/google/vr/sdk/widgets/video/deps/m;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;->sampleTimestampBuffer:Lcom/google/vr/libraries/video/SampleTimestampBuffer;

    invoke-virtual {v0, p2, p3}, Lcom/google/vr/libraries/video/SampleTimestampBuffer;->setPresentationTimeOffsetUs(J)V

    .line 14
    invoke-super {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gS;->onStreamChanged([Lcom/google/vr/sdk/widgets/video/deps/m;J)V

    return-void
.end method

.method protected renderOutputBuffer(Landroid/media/MediaCodec;IJ)V
    .locals 5

    .line 16
    iget-object v0, p0, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;->sampleTimestampBuffer:Lcom/google/vr/libraries/video/SampleTimestampBuffer;

    .line 17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 18
    invoke-virtual {v0, p3, p4, v1, v2}, Lcom/google/vr/libraries/video/SampleTimestampBuffer;->addPresentationTimeUsForReleaseTimeUs(JJ)V

    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/gS;->renderOutputBuffer(Landroid/media/MediaCodec;IJ)V

    return-void
.end method

.method protected renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;->sampleTimestampBuffer:Lcom/google/vr/libraries/video/SampleTimestampBuffer;

    const-wide/16 v1, 0x3e8

    div-long v1, p5, v1

    invoke-virtual {v0, p3, p4, v1, v2}, Lcom/google/vr/libraries/video/SampleTimestampBuffer;->addPresentationTimeUsForReleaseTimeUs(JJ)V

    .line 22
    invoke-super/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/gS;->renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V

    return-void
.end method

.method public setProjectionListener(Lcom/google/vr/libraries/video/SphericalV2ProjectionDataListener;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;->projectionListener:Lcom/google/vr/libraries/video/SphericalV2ProjectionDataListener;

    return-void
.end method
