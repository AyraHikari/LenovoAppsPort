.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;
.super Ljava/lang/Object;
.source "LocalTimeAlbumPage.java"

# interfaces
.implements Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V
    .locals 0

    .line 1486
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

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

    .line 1509
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9$2;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEncryptSuccess(Ljava/lang/String;)V
    .locals 2

    const-string v0, "privatekey"

    const-string v1, "dismissLoadingDialog"

    .line 1489
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$5500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->addFileInfoToSqlite(Ljava/lang/String;Lcom/zui/gallery/data/MediaItem;)V

    .line 1491
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$5500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/gallery/data/LocalVideo;

    if-eqz p1, :cond_0

    .line 1493
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$5500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/LocalVideo;

    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalVideo;->deleteForPrivacy()V

    goto :goto_0

    .line 1495
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$5500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->delete()V

    .line 1497
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$5800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    new-instance v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9$1;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
