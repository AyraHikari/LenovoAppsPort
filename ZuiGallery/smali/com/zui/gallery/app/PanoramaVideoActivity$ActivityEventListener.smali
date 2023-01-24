.class Lcom/zui/gallery/app/PanoramaVideoActivity$ActivityEventListener;
.super Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;
.source "PanoramaVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PanoramaVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PanoramaVideoActivity;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/PanoramaVideoActivity;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaVideoActivity;

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/PanoramaVideoActivity;Lcom/zui/gallery/app/PanoramaVideoActivity$1;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PanoramaVideoActivity$ActivityEventListener;-><init>(Lcom/zui/gallery/app/PanoramaVideoActivity;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaVideoActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/PanoramaVideoActivity;->access$300(Lcom/zui/gallery/app/PanoramaVideoActivity;)V

    return-void
.end method

.method public onCompletion()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaVideoActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->seekTo(J)V

    return-void
.end method

.method public onDisplayModeChanged(I)V
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaVideoActivity;

    iget-object v1, v0, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    const-string/jumbo v2, "vrUiLayer"

    invoke-static {v0, v2, v1}, Lcom/zui/gallery/app/PanoramaVideoActivity;->access$400(Lcom/zui/gallery/app/PanoramaVideoActivity;Ljava/lang/String;Lcom/google/vr/sdk/widgets/common/VrWidgetView;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/cardboard/UiLayer;

    const/4 v1, 0x0

    .line 225
    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/UiLayer;->setSettingsButtonEnabled(Z)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 229
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaVideoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaVideoActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/PanoramaVideoActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onLoadError(Ljava/lang/String;)V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaVideoActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/zui/gallery/app/PanoramaVideoActivity;->access$202(Lcom/zui/gallery/app/PanoramaVideoActivity;I)I

    .line 205
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaVideoActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 208
    invoke-static {}, Lcom/zui/gallery/app/PanoramaVideoActivity;->access$100()Ljava/lang/String;

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

    .line 197
    invoke-static {}, Lcom/zui/gallery/app/PanoramaVideoActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully loaded video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/app/PanoramaVideoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaVideoActivity;

    iget-object v2, v2, Lcom/zui/gallery/app/PanoramaVideoActivity;->videoWidgetView:Lcom/google/vr/sdk/widgets/video/VrVideoView;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/VrVideoView;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaVideoActivity$ActivityEventListener;->this$0:Lcom/zui/gallery/app/PanoramaVideoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/gallery/app/PanoramaVideoActivity;->access$202(Lcom/zui/gallery/app/PanoramaVideoActivity;I)I

    return-void
.end method
