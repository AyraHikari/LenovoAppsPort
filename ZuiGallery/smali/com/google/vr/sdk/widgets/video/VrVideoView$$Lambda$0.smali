.class final synthetic Lcom/google/vr/sdk/widgets/video/VrVideoView$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoTexturesListener;


# instance fields
.field private final arg$1:Lcom/google/vr/sdk/widgets/video/VrVideoView;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/video/VrVideoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView$$Lambda$0;->arg$1:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    return-void
.end method


# virtual methods
.method public onVideoTexturesReady()V
    .locals 1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoView$$Lambda$0;->arg$1:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->lambda$createRenderer$0$VrVideoView()V

    return-void
.end method
