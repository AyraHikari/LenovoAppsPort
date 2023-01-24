.class Lcom/zui/gallery/ui/microvideo/VideoDraw$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/ui/microvideo/VideoDraw;->createSurfaceTexture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/ui/microvideo/VideoDraw;


# direct methods
.method constructor <init>(Lcom/zui/gallery/ui/microvideo/VideoDraw;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw$1;->this$0:Lcom/zui/gallery/ui/microvideo/VideoDraw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 220
    iget-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw$1;->this$0:Lcom/zui/gallery/ui/microvideo/VideoDraw;

    invoke-static {p1}, Lcom/zui/gallery/ui/microvideo/VideoDraw;->access$000(Lcom/zui/gallery/ui/microvideo/VideoDraw;)Lcom/zui/gallery/ui/microvideo/VideoDraw$StatusCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw$1;->this$0:Lcom/zui/gallery/ui/microvideo/VideoDraw;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/gallery/ui/microvideo/VideoDraw;->access$102(Lcom/zui/gallery/ui/microvideo/VideoDraw;Z)Z

    .line 222
    iget-object p1, p0, Lcom/zui/gallery/ui/microvideo/VideoDraw$1;->this$0:Lcom/zui/gallery/ui/microvideo/VideoDraw;

    invoke-static {p1}, Lcom/zui/gallery/ui/microvideo/VideoDraw;->access$000(Lcom/zui/gallery/ui/microvideo/VideoDraw;)Lcom/zui/gallery/ui/microvideo/VideoDraw$StatusCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/gallery/ui/microvideo/VideoDraw$StatusCallback;->onFrameAvaiable()V

    :cond_0
    return-void
.end method
