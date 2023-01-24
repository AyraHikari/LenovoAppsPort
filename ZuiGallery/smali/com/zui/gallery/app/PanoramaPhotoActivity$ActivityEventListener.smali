.class Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;
.super Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;
.source "PanoramaPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PanoramaPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/PanoramaPhotoActivity;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/PanoramaPhotoActivity;Lcom/zui/gallery/app/PanoramaPhotoActivity$1;)V
    .locals 0

    .line 475
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;-><init>(Lcom/zui/gallery/app/PanoramaPhotoActivity;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$200(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDisplayModeChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 518
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onLoadError(Ljava/lang/String;)V
    .locals 4

    .line 503
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->loadImageSuccessful:Z

    .line 504
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 507
    invoke-static {}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLoadSuccess()V
    .locals 4

    .line 481
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zui/gallery/app/PanoramaPhotoActivity;->loadImageSuccessful:Z

    .line 482
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$400(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$1100(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

    move-result-object v0

    const v2, 0x7f08027b

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 486
    iget-object v2, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v2}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$1100(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    const/16 v2, 0x51

    .line 487
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 488
    iget-object v2, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v2}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$1100(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v3}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$1200(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v0, v1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$1300(Lcom/zui/gallery/app/PanoramaPhotoActivity;Z)V

    .line 492
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$200(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;->removeMessages(I)V

    .line 493
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$200(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 494
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$1100(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/google/vr/sdk/widgets/common/FullScreenDialog;

    move-result-object v0

    const v1, 0x7f0803ab

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/common/FullScreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method
