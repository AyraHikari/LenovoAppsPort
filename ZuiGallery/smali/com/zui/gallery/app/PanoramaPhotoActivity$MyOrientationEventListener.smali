.class Lcom/zui/gallery/app/PanoramaPhotoActivity$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "PanoramaPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PanoramaPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/PanoramaPhotoActivity;Landroid/content/Context;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    .line 628
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    .line 638
    invoke-static {v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$1400(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$1500(Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;I)Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    move-result-object p1

    .line 639
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$1400(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-void

    .line 642
    :cond_1
    invoke-static {}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation changed (from:to) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v2}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$1400(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$1402(Lcom/zui/gallery/app/PanoramaPhotoActivity;Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;)Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;

    .line 645
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyOrientationEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$1600(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/ui/RotateImageButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity$DeviceOrientation;->getDegrees()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/ui/RotateImageButton;->setOrientation(IZ)V

    return-void
.end method
