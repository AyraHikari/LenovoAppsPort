.class public Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;
.super Lcom/google/vr/sdk/widgets/video/deps/y;
.source "VrSimpleExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer$VrRenderersFactory;
    }
.end annotation


# instance fields
.field private final cameraMotionRenderer:Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;

.field private final videoRenderer:Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer$VrRenderersFactory;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer$VrRenderersFactory;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fe;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/fe;-><init>()V

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/e;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/e;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/y;-><init>(Lcom/google/vr/sdk/widgets/video/deps/x;Lcom/google/vr/sdk/widgets/video/deps/fk;Lcom/google/vr/sdk/widgets/video/deps/p;)V

    .line 4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->renderers:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move-object v2, v1

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    .line 5
    instance-of v5, v4, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;

    if-eqz v5, :cond_0

    .line 6
    check-cast v4, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;

    move-object v1, v4

    goto :goto_1

    .line 7
    :cond_0
    instance-of v5, v4, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;

    if-eqz v5, :cond_1

    .line 8
    check-cast v4, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;

    move-object v2, v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->cameraMotionRenderer:Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;

    .line 11
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->videoRenderer:Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;

    return-void
.end method


# virtual methods
.method public getFrameRotationBuffer()Lcom/google/vr/libraries/video/FrameRotationBuffer;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->cameraMotionRenderer:Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;

    invoke-virtual {v0}, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;->getFrameRotationBuffer()Lcom/google/vr/libraries/video/FrameRotationBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getInputFormat()Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->videoRenderer:Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;

    invoke-virtual {v0}, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;->getInputFormat()Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    return-object v0
.end method

.method public getSampleTimestampUsForReleaseTimeUs(J)J
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->videoRenderer:Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;

    .line 17
    invoke-virtual {v0}, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;->getSampleTimestampBuffer()Lcom/google/vr/libraries/video/SampleTimestampBuffer;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/google/vr/libraries/video/SampleTimestampBuffer;->getSampleTimestampUsForReleaseTimeUs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public setProjectionListener(Lcom/google/vr/libraries/video/SphericalV2ProjectionDataListener;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->videoRenderer:Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;

    invoke-virtual {v0, p1}, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;->setProjectionListener(Lcom/google/vr/libraries/video/SphericalV2ProjectionDataListener;)V

    return-void
.end method
