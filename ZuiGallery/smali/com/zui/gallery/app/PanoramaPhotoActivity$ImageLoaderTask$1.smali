.class Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask$1;
.super Ljava/lang/Object;
.source "PanoramaPhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->doInBackground([Landroid/util/Pair;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask$1;->this$1:Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask$1;->this$1:Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;

    iget-object v0, v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$500(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask$1;->this$1:Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;

    iget-object v0, v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$600(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->setStereoModeButtonEnabled(Z)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask$1;->this$1:Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;

    iget-object v0, v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$700(Lcom/zui/gallery/app/PanoramaPhotoActivity;)V

    return-void
.end method
