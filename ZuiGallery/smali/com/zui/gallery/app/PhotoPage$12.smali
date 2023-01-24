.class Lcom/zui/gallery/app/PhotoPage$12;
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

    .line 3963
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$12;->this$0:Lcom/zui/gallery/app/PhotoPage;

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

    const-string/jumbo v0, "videovideo"

    const-string v1, "encrypt cover bitmap fail"

    .line 3993
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3994
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$12;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    new-instance v1, Lcom/zui/gallery/app/PhotoPage$12$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/PhotoPage$12$2;-><init>(Lcom/zui/gallery/app/PhotoPage$12;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEncryptSuccess(Ljava/lang/String;)V
    .locals 2

    .line 3967
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage$12;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v0}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/LocalVideo;

    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalVideo;->delete()V

    .line 3969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after encrypt video cover, fileName is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "videovideo"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3971
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3972
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3982
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$12;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object p1, p1, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    new-instance v0, Lcom/zui/gallery/app/PhotoPage$12$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/PhotoPage$12$1;-><init>(Lcom/zui/gallery/app/PhotoPage$12;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
