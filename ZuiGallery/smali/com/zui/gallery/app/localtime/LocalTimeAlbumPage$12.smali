.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;
.super Ljava/lang/Object;
.source "LocalTimeAlbumPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->showFloatDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

.field final synthetic val$isExist:Z


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Z)V
    .locals 0

    .line 1884
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    iput-boolean p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->val$isExist:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const p1, 0x7f0800ac

    if-eqz p2, :cond_5

    const v0, 0x7f0800a7

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto/16 :goto_0

    .line 1916
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto/16 :goto_0

    .line 1905
    :cond_1
    iget-boolean p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->val$isExist:Z

    if-nez p1, :cond_2

    .line 1906
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$8100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    .line 1907
    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    .line 1906
    invoke-static {p1, p2, v0}, Lcom/zui/gallery/data/GroupBucketHelper;->addToFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;

    .line 1908
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$8200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    const p2, 0x7f100030

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1910
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$8300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/data/GroupBucketHelper;->deleteFromFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1911
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$8400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    const p2, 0x7f10020e

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1897
    :cond_3
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$8000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1898
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto :goto_0

    .line 1900
    :cond_4
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto :goto_0

    .line 1889
    :cond_5
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$7900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1890
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto :goto_0

    .line 1892
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V

    :goto_0
    return-void
.end method
