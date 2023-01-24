.class Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;
.super Ljava/lang/Object;
.source "VrVideoPlayer.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoLooperListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;-><init>(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)V

    return-void
.end method


# virtual methods
.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/vr/sdk/widgets/video/deps/s;)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lcom/google/vr/sdk/widgets/video/deps/g;)V
    .locals 4

    .line 10
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".onPlayerError"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->access$100(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->access$100(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/g;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;->onLoadError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 15
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->access$202(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 17
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->access$200(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->access$100(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->access$202(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;Z)Z

    .line 19
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->access$100(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;->onLoadSuccess()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    const/4 p1, 0x4

    if-ne p2, p1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->access$100(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 22
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->access$100(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;->onCompletion()V

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->access$300(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 24
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    monitor-enter p1

    .line 25
    :try_start_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoLooperListener;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->getExoPlayer()Lcom/google/vr/sdk/widgets/video/deps/h;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-interface {p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/h;->seekTo(J)V

    .line 26
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_3
    :goto_0
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Lcom/google/vr/sdk/widgets/video/deps/di;Lcom/google/vr/sdk/widgets/video/deps/fj;)V
    .locals 0

    return-void
.end method
