.class Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadBitmapRequest;
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
    name = "LoadBitmapRequest"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final eventListener:Lcom/google/vr/sdk/widgets/common/VrEventListener;

.field public final options:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;

.field final synthetic this$0:Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;Landroid/graphics/Bitmap;Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;Lcom/google/vr/sdk/widgets/common/VrEventListener;)V
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
            "bitmap",
            "options",
            "eventListener"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadBitmapRequest;->this$0:Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadBitmapRequest;->bitmap:Landroid/graphics/Bitmap;

    .line 84
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadBitmapRequest;->options:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;

    .line 85
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadBitmapRequest;->eventListener:Lcom/google/vr/sdk/widgets/common/VrEventListener;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 94
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadBitmapRequest;->this$0:Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->access$000(Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadBitmapRequest;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadBitmapRequest;->options:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer$LoadBitmapRequest;->eventListener:Lcom/google/vr/sdk/widgets/common/VrEventListener;

    invoke-static/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->access$100(Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;JLandroid/graphics/Bitmap;Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;Lcom/google/vr/sdk/widgets/common/VrEventListener;)V

    return-void
.end method
