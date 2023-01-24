.class Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;
.super Landroid/os/AsyncTask;
.source "PanoramaPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PanoramaPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageLoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/util/Pair<",
        "Landroid/net/Uri;",
        "Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PanoramaPhotoActivity;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/util/Pair;)Ljava/lang/Boolean;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 384
    :try_start_0
    aget-object v1, p1, v0

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 385
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 386
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 387
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 388
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 389
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v8

    int-to-float v5, v7

    div-float/2addr v4, v5

    const/4 v11, 0x0

    if-le v8, v7, :cond_1

    const/16 v5, 0xfa0

    if-le v8, v5, :cond_1

    const/high16 v5, 0x40800000    # 4.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 392
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 393
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 394
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 396
    iget-object v2, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v2}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$300(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    move-result-object v2

    sget-object v4, Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;->left:Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    const/16 v5, 0x5a

    if-ne v2, v4, :cond_0

    const/16 v5, -0x5a

    goto :goto_0

    .line 398
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v2}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$300(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    move-result-object v2

    sget-object v4, Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;->right:Lcom/zui/gallery/app/PanoramaPhotoActivity$Rotation;

    :goto_0
    int-to-float v2, v5

    .line 401
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v9, v2, v4, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    move-object v4, v1

    .line 402
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 403
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 405
    iget-object v1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v1, v3}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$402(Lcom/zui/gallery/app/PanoramaPhotoActivity;Z)Z

    goto :goto_1

    .line 407
    :cond_1
    invoke-static {v11, v1}, Lcom/zui/gallery/util/GalleryUtils;->isCapturedBy360Mods(Lcom/zui/gallery/data/MediaItem;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 409
    iget-object v1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$200(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask$1;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask$1;-><init>(Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;)V

    invoke-virtual {v1, v2}, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 421
    :cond_2
    new-instance v11, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    aget-object v2, p1, v0

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 422
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 424
    :goto_1
    aget-object p1, p1, v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 430
    iget-object v0, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$200(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask$2;

    invoke-direct {v1, p0, v2, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask$2;-><init>(Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;Landroid/graphics/Bitmap;Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/PanoramaPhotoActivity$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 437
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$900(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 438
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$900(Lcom/zui/gallery/app/PanoramaPhotoActivity;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 440
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->this$0:Lcom/zui/gallery/app/PanoramaPhotoActivity;

    invoke-static {p1, v2}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$902(Lcom/zui/gallery/app/PanoramaPhotoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    if-eqz v11, :cond_4

    .line 443
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 446
    invoke-static {}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not close input stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_4
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 426
    invoke-static {}, Lcom/zui/gallery/app/PanoramaPhotoActivity;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 366
    check-cast p1, [Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->doInBackground([Landroid/util/Pair;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 454
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 366
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PanoramaPhotoActivity$ImageLoaderTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 370
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
