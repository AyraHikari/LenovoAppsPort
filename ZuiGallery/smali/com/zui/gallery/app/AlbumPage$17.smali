.class Lcom/zui/gallery/app/AlbumPage$17;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumPage;->showFloatDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumPage;

.field final synthetic val$isExist:Z


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumPage;Z)V
    .locals 0

    .line 2154
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iput-boolean p2, p0, Lcom/zui/gallery/app/AlbumPage$17;->val$isExist:Z

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

    .line 2186
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$2800(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto/16 :goto_0

    .line 2175
    :cond_1
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumPage$17;->val$isExist:Z

    if-nez p1, :cond_2

    .line 2176
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    .line 2177
    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    .line 2176
    invoke-static {p1, p2, v0}, Lcom/zui/gallery/data/GroupBucketHelper;->addToFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;

    .line 2178
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p2, 0x7f100030

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2180
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/data/GroupBucketHelper;->deleteFromFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 2181
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p2, 0x7f10020e

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2167
    :cond_3
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p2, p2, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2168
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$2800(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto :goto_0

    .line 2170
    :cond_4
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$2800(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto :goto_0

    .line 2159
    :cond_5
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p2, p2, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2160
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$2800(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto :goto_0

    .line 2162
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$17;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$3000(Lcom/zui/gallery/app/AlbumPage;)V

    :goto_0
    return-void
.end method
