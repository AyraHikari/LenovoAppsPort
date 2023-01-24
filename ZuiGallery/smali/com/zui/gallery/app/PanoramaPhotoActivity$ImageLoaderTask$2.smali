.class Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask$2;
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

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$panoOptions:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;Landroid/graphics/Bitmap;Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask$2;->this$1:Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;

    iput-object p2, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask$2;->val$panoOptions:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask$2;->this$1:Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;

    iget-object v0, v0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$600(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask$2;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask$2;->val$panoOptions:Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->loadImageFromBitmap(Landroid/graphics/Bitmap;Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;)V

    return-void
.end method
