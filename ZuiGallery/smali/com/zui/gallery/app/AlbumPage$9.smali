.class Lcom/zui/gallery/app/AlbumPage$9;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumPage;)V
    .locals 0

    .line 1532
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$9;->this$0:Lcom/zui/gallery/app/AlbumPage;

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

    .line 1555
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$9;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    new-instance v1, Lcom/zui/gallery/app/AlbumPage$9$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/AlbumPage$9$2;-><init>(Lcom/zui/gallery/app/AlbumPage$9;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEncryptSuccess(Ljava/lang/String;)V
    .locals 2

    const-string v0, "privatekey"

    const-string v1, "dismissLoadingDialog"

    .line 1535
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$9;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumPage;->access$2200(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->addFileInfoToSqlite(Ljava/lang/String;Lcom/zui/gallery/data/MediaItem;)V

    .line 1537
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$9;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$2200(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/gallery/data/LocalVideo;

    if-eqz p1, :cond_0

    .line 1539
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$9;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$2200(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/LocalVideo;

    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalVideo;->deleteForPrivacy()V

    goto :goto_0

    .line 1541
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$9;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$2200(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->delete()V

    .line 1543
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$9;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    new-instance v0, Lcom/zui/gallery/app/AlbumPage$9$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/AlbumPage$9$1;-><init>(Lcom/zui/gallery/app/AlbumPage$9;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
