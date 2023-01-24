.class Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$NewFrameNotifier;
.super Ljava/lang/Object;
.source "VrVideoPlayer.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/VideoTexture$OnNewFrameListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewFrameNotifier"
.end annotation


# instance fields
.field private final mainHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$NewFrameNotifier;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$NewFrameNotifier;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$NewFrameNotifier;-><init>(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)V

    return-void
.end method


# virtual methods
.method public onNewFrame()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$NewFrameNotifier;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$NewFrameNotifier;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->access$100(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$NewFrameNotifier;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->access$100(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;->onNewFrame()V

    :cond_0
    return-void
.end method
