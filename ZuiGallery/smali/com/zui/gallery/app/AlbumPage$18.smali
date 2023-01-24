.class Lcom/zui/gallery/app/AlbumPage$18;
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

    .line 2195
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$18;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iput-boolean p2, p0, Lcom/zui/gallery/app/AlbumPage$18;->val$isExist:Z

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

    .line 2215
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$18;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$2800(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    const p2, 0x7f0800a7

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$18;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto :goto_0

    .line 2204
    :cond_1
    iget-boolean p2, p0, Lcom/zui/gallery/app/AlbumPage$18;->val$isExist:Z

    if-nez p2, :cond_2

    .line 2205
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$18;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p2, p2, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$18;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$18;->this$0:Lcom/zui/gallery/app/AlbumPage;

    .line 2206
    invoke-static {v1}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v1

    .line 2205
    invoke-static {p2, v0, v1}, Lcom/zui/gallery/data/GroupBucketHelper;->addToFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;

    .line 2207
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$18;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p2, p2, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v0, 0x7f100030

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2209
    :cond_2
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$18;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p2, p2, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$18;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/zui/gallery/data/GroupBucketHelper;->deleteFromFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 2210
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$18;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p2, p2, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v0, 0x7f10020e

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2200
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$18;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$2800(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    const p2, 0x7f0800ac

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$18;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    :goto_0
    return-void
.end method
