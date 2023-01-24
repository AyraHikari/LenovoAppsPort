.class Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadImageFromByteArrayRequest;
.super Ljava/lang/Object;
.source "VrPanoramaRenderer.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageFromByteArrayRequest"
.end annotation


# instance fields
.field public final eventListener:Lcom/google/vr/sdk/widgets/common/VrEventListener;

.field public final jpegImageData:[B

.field public final options:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;

.field final synthetic this$0:Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;[BLcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;Lcom/google/vr/sdk/widgets/common/VrEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "jpegImageData",
            "options",
            "eventListener"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadImageFromByteArrayRequest;->this$0:Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadImageFromByteArrayRequest;->jpegImageData:[B

    .line 109
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadImageFromByteArrayRequest;->options:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;

    .line 110
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadImageFromByteArrayRequest;->eventListener:Lcom/google/vr/sdk/widgets/common/VrEventListener;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 119
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadImageFromByteArrayRequest;->this$0:Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->access$200(Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadImageFromByteArrayRequest;->jpegImageData:[B

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadImageFromByteArrayRequest;->options:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadImageFromByteArrayRequest;->eventListener:Lcom/google/vr/sdk/widgets/common/VrEventListener;

    invoke-static/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->access$300(Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;J[BLcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;Lcom/google/vr/sdk/widgets/common/VrEventListener;)V

    return-void
.end method
