.class Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;
.super Ljava/lang/Object;
.source "VrVideoPlayer.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cJ;
.implements Lcom/google/vr/sdk/widgets/video/deps/cS$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$NewFrameNotifier;,
        Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$ProjectionDataListener;,
        Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;,
        Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoTexturesListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXO_USER_AGENT:Ljava/lang/String; = "Video Player Widget"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cameraRotationMatrix:[F

.field private context:Landroid/content/Context;

.field private eventListener:Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;

.field private isBuffering:Z

.field private isLooping:Z

.field private final mainHandler:Landroid/os/Handler;

.field private mediaDataSourceFactory:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

.field private metadata:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

.field private final simpleExoPlayer:Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;

.field private final textureIds:[I

.field private final videoTexture:Lcom/google/vr/sdk/widgets/video/VideoTexture;

.field private final videoTexturesListener:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoTexturesListener;

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    const-class v0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoTexturesListener;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/VideoTexture;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/VideoTexture;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->videoTexture:Lcom/google/vr/sdk/widgets/video/VideoTexture;

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->textureIds:[I

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->isBuffering:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->volume:F

    .line 7
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->context:Landroid/content/Context;

    .line 8
    new-instance v1, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;

    invoke-direct {v1, p1}, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->simpleExoPlayer:Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;

    .line 9
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->videoTexturesListener:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoTexturesListener;

    .line 10
    new-instance p1, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$ProjectionDataListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$ProjectionDataListener;-><init>(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$1;)V

    invoke-virtual {v1, p1}, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->setProjectionListener(Lcom/google/vr/libraries/video/SphericalV2ProjectionDataListener;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->getExoPlayer()Lcom/google/vr/sdk/widgets/video/deps/h;

    move-result-object p1

    new-instance v1, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;

    invoke-direct {v1, p0, p2}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;-><init>(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$1;)V

    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/h;->addListener(Lcom/google/vr/sdk/widgets/video/deps/t$a;)V

    .line 12
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->getExoPlayer()Lcom/google/vr/sdk/widgets/video/deps/h;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->setPlayWhenReady(Z)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 118
    sget-object v0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->eventListener:Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->isBuffering:Z

    return p0
.end method

.method static synthetic access$202(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->isBuffering:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->isLooping:Z

    return p0
.end method

.method static synthetic access$402(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->metadata:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoTexturesListener;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->videoTexturesListener:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoTexturesListener;

    return-object p0
.end method

.method private declared-synchronized applyVolumeToPlayer()V
    .locals 2

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->simpleExoPlayer:Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->volume:F

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->setVolume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private buildMediaSource(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;)Lcom/google/vr/sdk/widgets/video/deps/cW;
    .locals 12

    .line 26
    iget p2, p2, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;->inputFormat:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 29
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/cS;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->mediaDataSourceFactory:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/aq;

    invoke-direct {v4}, Lcom/google/vr/sdk/widgets/video/deps/aq;-><init>()V

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->mainHandler:Landroid/os/Handler;

    move-object v1, p2

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/cS;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/av;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cS$a;)V

    return-object p2

    .line 28
    :cond_0
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/dz;

    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->mediaDataSourceFactory:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    new-instance v9, Lcom/google/vr/sdk/widgets/video/deps/dD$a;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->mediaDataSourceFactory:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    invoke-direct {v9, v0}, Lcom/google/vr/sdk/widgets/video/deps/dD$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv$a;)V

    iget-object v10, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->mainHandler:Landroid/os/Handler;

    move-object v6, p2

    move-object v7, p1

    move-object v11, p0

    invoke-direct/range {v6 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/dz;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/dx$a;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V

    return-object p2

    .line 27
    :cond_1
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/dZ;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->mediaDataSourceFactory:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->mainHandler:Landroid/os/Handler;

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/google/vr/sdk/widgets/video/deps/dZ;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V

    return-object p2
.end method

.method private static createMetadataFromOptions(Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;
    .locals 3

    .line 92
    new-instance v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;-><init>()V

    .line 93
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;->inputType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 96
    iput v2, v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->frameLayoutMode:I

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget p0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;->inputType:I

    const/16 v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected options.inputType "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    iput v2, v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->frameLayoutMode:I

    :goto_0
    return-object v0
.end method

.method private declared-synchronized loadVideoIntoPlayer(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;)V
    .locals 3

    monitor-enter p0

    if-nez p2, :cond_0

    .line 15
    :try_start_0
    new-instance p2, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;

    invoke-direct {p2}, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;-><init>()V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;->validate()V

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->mediaDataSourceFactory:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    if-nez v0, :cond_1

    .line 18
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fC;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->context:Landroid/content/Context;

    const-string v2, "Video Player Widget"

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fC;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->mediaDataSourceFactory:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->buildMediaSource(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;)Lcom/google/vr/sdk/widgets/video/deps/cW;

    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->simpleExoPlayer:Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;

    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->prepare(Lcom/google/vr/sdk/widgets/video/deps/cW;)V

    .line 21
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->videoTexture:Lcom/google/vr/sdk/widgets/video/VideoTexture;

    new-instance p2, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$NewFrameNotifier;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$NewFrameNotifier;-><init>(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$1;)V

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/VideoTexture;->setOnNewFrameListener(Lcom/google/vr/sdk/widgets/video/VideoTexture$OnNewFrameListener;)V

    .line 22
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->videoTexturesListener:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoTexturesListener;

    if-eqz p1, :cond_2

    .line 23
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->videoTexturesListener:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoTexturesListener;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoTexturesListener;->onVideoTexturesReady()V

    .line 24
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->applyVolumeToPlayer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static parseMetadataFromVideoInputStream(Ljava/io/InputStream;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;-><init>()V

    .line 101
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/SphericalMetadataMP4;->extract(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/SphericalMetadataParser;->parse(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized bindTexture()[I
    .locals 5

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->videoTexture:Lcom/google/vr/sdk/widgets/video/VideoTexture;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/VideoTexture;->getIsTextureSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->videoTexture:Lcom/google/vr/sdk/widgets/video/VideoTexture;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/VideoTexture;->init()V

    .line 52
    :cond_0
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->videoTexture:Lcom/google/vr/sdk/widgets/video/VideoTexture;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/VideoTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 53
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->simpleExoPlayer:Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->simpleExoPlayer:Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->getExoPlayer()Lcom/google/vr/sdk/widgets/video/deps/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->seekTo(J)V

    .line 55
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->textureIds:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->videoTexture:Lcom/google/vr/sdk/widgets/video/VideoTexture;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/VideoTexture;->getTextureId()I

    move-result v2

    aput v2, v0, v1

    .line 56
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->textureIds:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCameraRotationMatrix()[F
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->cameraRotationMatrix:[F

    return-object v0
.end method

.method public declared-synchronized getCurrentPositionMs()J
    .locals 2

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->getExoPlayer()Lcom/google/vr/sdk/widgets/video/deps/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentPosition()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExoPlayer()Lcom/google/vr/sdk/widgets/video/deps/h;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->simpleExoPlayer:Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;

    return-object v0
.end method

.method public getMetadata()Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->metadata:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    return-object v0
.end method

.method public getMetadataBytes()[B
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->metadata:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method

.method public onDownstreamFormatChanged(ILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;J)V
    .locals 0

    return-void
.end method

.method public onLoadCanceled(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJ)V
    .locals 0

    return-void
.end method

.method public onLoadCompleted(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJ)V
    .locals 0

    return-void
.end method

.method public onLoadError(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 5

    .line 110
    sget-object v0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static/range {p17 .. p17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x38

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "AdaptiveMediaSourceEventListener.onLoadError "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 111
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->eventListener:Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual/range {p17 .. p17}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;->onLoadError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLoadError(Ljava/io/IOException;)V
    .locals 5

    .line 105
    sget-object v0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ExtractorMediaSource.EventListener.onLoadError "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->eventListener:Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;->onLoadError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLoadStarted(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJ)V
    .locals 0

    return-void
.end method

.method public onUpstreamDiscarded(IJJ)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onViewDetach()V
    .locals 2

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->simpleExoPlayer:Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 77
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->videoTexture:Lcom/google/vr/sdk/widgets/video/VideoTexture;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/VideoTexture;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public openAsset(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->metadata:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    if-eqz p2, :cond_0

    .line 34
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->createMetadataFromOptions(Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->metadata:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->parseMetadataFromVideoInputStream(Ljava/io/InputStream;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->metadata:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    :goto_0
    const-string v0, "file:///android_asset/"

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->loadVideoIntoPlayer(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;)V

    return-void
.end method

.method public openUri(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->metadata:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    if-eqz p2, :cond_0

    .line 41
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->createMetadataFromOptions(Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->metadata:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "http"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 44
    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->parseMetadataFromVideoInputStream(Ljava/io/InputStream;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->metadata:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    .line 45
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->loadVideoIntoPlayer(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;)V

    return-void
.end method

.method public declared-synchronized prepareFrame()Z
    .locals 9

    monitor-enter p0

    const/4 v0, 0x1

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->videoTexture:Lcom/google/vr/sdk/widgets/video/VideoTexture;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/VideoTexture;->getIsTextureSet()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->videoTexture:Lcom/google/vr/sdk/widgets/video/VideoTexture;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/VideoTexture;->updateTexture()V

    .line 60
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->simpleExoPlayer:Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->getFrameRotationBuffer()Lcom/google/vr/libraries/video/FrameRotationBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->videoTexture:Lcom/google/vr/sdk/widgets/video/VideoTexture;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/VideoTexture;->getTimestamp()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 62
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->simpleExoPlayer:Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;

    .line 63
    invoke-virtual {v3, v1, v2}, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->getSampleTimestampUsForReleaseTimeUs(J)J

    move-result-wide v1

    .line 64
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->simpleExoPlayer:Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;

    .line 65
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->getFrameRotationBuffer()Lcom/google/vr/libraries/video/FrameRotationBuffer;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/google/vr/libraries/video/FrameRotationBuffer;->getTransform(J)[F

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->cameraRotationMatrix:[F

    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->simpleExoPlayer:Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->getInputFormat()Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->simpleExoPlayer:Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;

    .line 67
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->getInputFormat()Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v1

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/m;->o:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 68
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->cameraRotationMatrix:[F

    if-nez v1, :cond_1

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 69
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->cameraRotationMatrix:[F

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->cameraRotationMatrix:[F

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 71
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->cameraRotationMatrix:[F

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->simpleExoPlayer:Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;

    .line 72
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;->getInputFormat()Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v1

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/m;->o:I

    int-to-float v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 73
    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 75
    :cond_3
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEventListener(Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->eventListener:Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;

    return-void
.end method

.method setMediaDataSourceFactory(Lcom/google/vr/sdk/widgets/video/deps/fv$a;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->mediaDataSourceFactory:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    return-void
.end method

.method public declared-synchronized setVolume(F)V
    .locals 0

    monitor-enter p0

    .line 85
    :try_start_0
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->volume:F

    .line 86
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->applyVolumeToPlayer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    monitor-enter p0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->getExoPlayer()Lcom/google/vr/sdk/widgets/video/deps/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->stop()V

    .line 80
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->getExoPlayer()Lcom/google/vr/sdk/widgets/video/deps/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->release()V

    .line 81
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->videoTexture:Lcom/google/vr/sdk/widgets/video/VideoTexture;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/VideoTexture;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
