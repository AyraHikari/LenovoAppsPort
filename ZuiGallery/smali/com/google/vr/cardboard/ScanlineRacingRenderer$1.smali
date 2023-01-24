.class Lcom/google/vr/cardboard/ScanlineRacingRenderer$1;
.super Ljava/lang/Object;
.source "ScanlineRacingRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/ScanlineRacingRenderer;->setSurfaceSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

.field final synthetic val$surfaceHeightPixels:I

.field final synthetic val$surfaceWidthPixels:I


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/ScanlineRacingRenderer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$surfaceWidthPixels",
            "val$surfaceHeightPixels"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer$1;->this$0:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    iput p2, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer$1;->val$surfaceWidthPixels:I

    iput p3, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer$1;->val$surfaceHeightPixels:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 93
    iget v0, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer$1;->val$surfaceWidthPixels:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer$1;->val$surfaceHeightPixels:I

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer$1;->this$0:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    invoke-static {v0}, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->access$000(Lcom/google/vr/cardboard/ScanlineRacingRenderer;)Lcom/google/vr/ndk/base/GvrSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer$1;->val$surfaceWidthPixels:I

    iget v2, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer$1;->val$surfaceHeightPixels:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ScanlineRacingRenderer$1;->this$0:Lcom/google/vr/cardboard/ScanlineRacingRenderer;

    invoke-static {v0}, Lcom/google/vr/cardboard/ScanlineRacingRenderer;->access$000(Lcom/google/vr/cardboard/ScanlineRacingRenderer;)Lcom/google/vr/ndk/base/GvrSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    return-void
.end method
