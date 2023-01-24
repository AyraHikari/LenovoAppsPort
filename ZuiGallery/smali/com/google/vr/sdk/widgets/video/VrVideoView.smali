.class public Lcom/google/vr/sdk/widgets/video/VrVideoView;
.super Lcom/google/vr/sdk/widgets/common/VrWidgetView;
.source "VrVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private renderer:Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;

.field private videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/google/vr/sdk/widgets/video/VrVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createRenderer(Landroid/content/Context;Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;FF)Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->createRenderer(Landroid/content/Context;Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;FF)Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;

    move-result-object p1

    return-object p1
.end method

.method protected createRenderer(Landroid/content/Context;Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;FF)Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;
    .locals 8

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/VrVideoView$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/google/vr/sdk/widgets/video/VrVideoView$$Lambda$0;-><init>(Lcom/google/vr/sdk/widgets/video/VrVideoView;)V

    invoke-direct {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoTexturesListener;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    .line 6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;-><init>(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;Landroid/content/Context;Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;FF)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->renderer:Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;

    return-object p1
.end method

.method public getCurrentPosition()J
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->getExoPlayer()Lcom/google/vr/sdk/widgets/video/deps/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentPosition()J

    move-result-wide v1

    .line 38
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDuration()J
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->getExoPlayer()Lcom/google/vr/sdk/widgets/video/deps/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/h;->getDuration()J

    move-result-wide v1

    .line 34
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final synthetic lambda$createRenderer$0$VrVideoView()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->renderer:Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    .line 44
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->getMetadata()Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;->setSphericalMetadata(Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;)V

    return-void
.end method

.method public loadVideo(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->openUri(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;)V

    return-void
.end method

.method public loadVideoFromAsset(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->openAsset(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;)V

    return-void
.end method

.method public pauseRendering()V
    .locals 0

    .line 8
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->pauseRendering()V

    .line 9
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->pauseVideo()V

    return-void
.end method

.method public pauseVideo()V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->getExoPlayer()Lcom/google/vr/sdk/widgets/video/deps/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/h;->setPlayWhenReady(Z)V

    .line 26
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public playVideo()V
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->getExoPlayer()Lcom/google/vr/sdk/widgets/video/deps/h;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/h;->setPlayWhenReady(Z)V

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public seekTo(J)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->getExoPlayer()Lcom/google/vr/sdk/widgets/video/deps/h;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/h;->seekTo(J)V

    .line 30
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setEventListener(Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;)V
    .locals 1

    .line 17
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->setEventListener(Lcom/google/vr/sdk/widgets/common/VrEventListener;)V

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->setEventListener(Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;)V

    return-void
.end method

.method public setMediaDataSourceFactory(Lcom/google/vr/sdk/widgets/video/deps/fv$a;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->setMediaDataSourceFactory(Lcom/google/vr/sdk/widgets/video/deps/fv$a;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView;->videoPlayer:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->setVolume(F)V

    return-void
.end method
