.class Lcom/google/vr/sdk/widgets/video/VrVideoRenderer$LoadVideoRequest;
.super Ljava/lang/Object;
.source "VrVideoRenderer.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadVideoRequest"
.end annotation


# instance fields
.field private final metadata:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

.field final synthetic this$0:Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/VrVideoRenderer$LoadVideoRequest;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/VrVideoRenderer$LoadVideoRequest;->metadata:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoRenderer$LoadVideoRequest;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;->access$000(Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/VrVideoRenderer$LoadVideoRequest;->metadata:Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/nano/SphericalMetadataOuterClass$SphericalMetadata;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;->access$100(Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;J[B)V

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/VrVideoRenderer$LoadVideoRequest;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;->access$200(Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/VrVideoRenderer$LoadVideoRequest;->this$0:Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;->access$300(Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;)Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/VrVideoPlayer;->bindTexture()[I

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;->access$400(Lcom/google/vr/sdk/widgets/video/VrVideoRenderer;J[I)J

    return-void
.end method
