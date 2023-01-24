.class Lcom/google/vr/sdk/widgets/video/VideoTexture$UpdateSurfaceListener;
.super Ljava/lang/Object;
.source "VideoTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/VideoTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSurfaceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/sdk/widgets/video/VideoTexture;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/VideoTexture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture$UpdateSurfaceListener;->this$0:Lcom/google/vr/sdk/widgets/video/VideoTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/VideoTexture;Lcom/google/vr/sdk/widgets/video/VideoTexture$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/VideoTexture$UpdateSurfaceListener;-><init>(Lcom/google/vr/sdk/widgets/video/VideoTexture;)V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture$UpdateSurfaceListener;->this$0:Lcom/google/vr/sdk/widgets/video/VideoTexture;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture$UpdateSurfaceListener;->this$0:Lcom/google/vr/sdk/widgets/video/VideoTexture;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/VideoTexture;->access$102(Lcom/google/vr/sdk/widgets/video/VideoTexture;Z)Z

    .line 4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture$UpdateSurfaceListener;->this$0:Lcom/google/vr/sdk/widgets/video/VideoTexture;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/VideoTexture;->access$200(Lcom/google/vr/sdk/widgets/video/VideoTexture;)Lcom/google/vr/sdk/widgets/video/VideoTexture$OnNewFrameListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VideoTexture$UpdateSurfaceListener;->this$0:Lcom/google/vr/sdk/widgets/video/VideoTexture;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/VideoTexture;->access$200(Lcom/google/vr/sdk/widgets/video/VideoTexture;)Lcom/google/vr/sdk/widgets/video/VideoTexture$OnNewFrameListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/VideoTexture$OnNewFrameListener;->onNewFrame()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 4
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
