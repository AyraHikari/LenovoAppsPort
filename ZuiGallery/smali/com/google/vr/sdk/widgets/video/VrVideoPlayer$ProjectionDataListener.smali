.class Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$ProjectionDataListener;
.super Ljava/lang/Object;
.source "VrVideoPlayer.java"

# interfaces
.implements Lcom/google/vr/libraries/video/SphericalV2ProjectionDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProjectionDataListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$ProjectionDataListener;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$ProjectionDataListener;-><init>(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)V

    return-void
.end method


# virtual methods
.method public onProjectionDataChanged(I[B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$ProjectionDataListener;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/SphericalV2MetadataParser;->parse(I[B)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->access$402(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;)Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    .line 3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$ProjectionDataListener;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->access$500(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoTexturesListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$ProjectionDataListener;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->access$500(Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;)Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoTexturesListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer$VideoTexturesListener;->onVideoTexturesReady()V

    :cond_0
    return-void
.end method
