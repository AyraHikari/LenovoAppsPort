.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9$2;
.super Ljava/lang/Object;
.source "LocalTimeAlbumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;->onEncryptFail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;)V
    .locals 0

    .line 1509
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1512
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;

    iget-object v0, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-virtual {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->dismissLoadingDialog()V

    .line 1513
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;

    iget-object v0, v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$5900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9$2;->this$1:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;

    iget-object v1, v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
