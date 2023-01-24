.class Lcom/zui/gallery/app/PhotoPage$10;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 3730
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$10;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecryptSccess()V
    .locals 0

    return-void
.end method

.method public onEncryptFail()V
    .locals 2

    .line 3761
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$10;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    new-instance v1, Lcom/zui/gallery/app/PhotoPage$10$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/PhotoPage$10$2;-><init>(Lcom/zui/gallery/app/PhotoPage$10;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEncryptSuccess(Ljava/lang/String;)V
    .locals 4

    .line 3733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after encrypt, filename is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "videovideo"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "privatekey"

    const-string v2, "dismissLoadingDialog"

    .line 3734
    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$10;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0, p1}, Lcom/zui/gallery/app/PhotoPage;->access$4900(Lcom/zui/gallery/app/PhotoPage;Ljava/lang/String;)V

    .line 3736
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$10;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/data/LocalVideo;

    if-eqz v0, :cond_1

    .line 3737
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$10;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/common/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video.cover is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage$10;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-virtual {v2, v0, p1}, Lcom/zui/gallery/app/PhotoPage;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "videoCoverPath is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 3741
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3742
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object v0

    sget-object v1, Lcom/zui/gallery/app/GalleryAppImpl;->mApp:Lcom/zui/gallery/app/GalleryAppImpl;

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage$10;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v2}, Lcom/zui/gallery/app/PhotoPage;->access$5000(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->encryptVideoCoverForVideo(Lcom/zui/gallery/app/GalleryApp;Ljava/lang/String;Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "videoCoverPath is null, \u76f4\u63a5\u5f39toast"

    .line 3744
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$10;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$5000(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;->onEncryptSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 3748
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$10;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->delete()V

    .line 3749
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$10;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    new-instance v0, Lcom/zui/gallery/app/PhotoPage$10$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/PhotoPage$10$1;-><init>(Lcom/zui/gallery/app/PhotoPage$10;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
