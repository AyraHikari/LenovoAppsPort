.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$13;
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

    .line 1924
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$13;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    iput-boolean p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$13;->val$isExist:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto/16 :goto_0

    .line 1945
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$13;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    const p2, 0x7f0800a7

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$13;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto :goto_0

    .line 1934
    :cond_1
    iget-boolean p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$13;->val$isExist:Z

    if-nez p2, :cond_2

    .line 1935
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$13;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$8500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$13;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$13;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    .line 1936
    invoke-static {v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v1

    .line 1935
    invoke-static {p2, v0, v1}, Lcom/zui/gallery/data/GroupBucketHelper;->addToFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;

    .line 1937
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$13;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$8600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p2

    const v0, 0x7f100030

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1939
    :cond_2
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$13;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$8700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$13;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/zui/gallery/data/GroupBucketHelper;->deleteFromFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1940
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$13;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$8800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p2

    const v0, 0x7f10020e

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1929
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$13;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    const p2, 0x7f0800ac

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$13;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    :goto_0
    return-void
.end method
