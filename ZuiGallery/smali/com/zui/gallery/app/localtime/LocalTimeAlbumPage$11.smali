.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;
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

.field final synthetic val$disableEdit:Z

.field final synthetic val$isExist:Z


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;ZZ)V
    .locals 0

    .line 1834
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    iput-boolean p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->val$disableEdit:Z

    iput-boolean p3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->val$isExist:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const p1, 0x7f0800ac

    if-eqz p2, :cond_9

    const/4 v0, 0x1

    const v1, 0x7f100030

    const v2, 0x7f10020e

    if-eq p2, v0, :cond_5

    const/4 p1, 0x2

    const v0, 0x7f0800a7

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto/16 :goto_3

    .line 1876
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto/16 :goto_3

    .line 1862
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$7400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->val$disableEdit:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1865
    :cond_2
    iget-boolean p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->val$isExist:Z

    if-nez p1, :cond_3

    .line 1866
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$7500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    .line 1867
    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    .line 1866
    invoke-static {p1, p2, v0}, Lcom/zui/gallery/data/GroupBucketHelper;->addToFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;

    .line 1868
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$7600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/zui/gallery/util/ToastUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_3

    .line 1870
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$7700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/data/GroupBucketHelper;->deleteFromFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1871
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$7800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/zui/gallery/util/ToastUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_3

    .line 1863
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto/16 :goto_3

    .line 1847
    :cond_5
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result p2

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->val$disableEdit:Z

    if-eqz p2, :cond_6

    goto :goto_1

    .line 1857
    :cond_6
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto/16 :goto_3

    .line 1848
    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->val$isExist:Z

    if-nez p1, :cond_8

    .line 1849
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$7000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    .line 1850
    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    .line 1849
    invoke-static {p1, p2, v0}, Lcom/zui/gallery/data/GroupBucketHelper;->addToFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;

    .line 1851
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$7100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/zui/gallery/util/ToastUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_3

    .line 1853
    :cond_8
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$7200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/data/GroupBucketHelper;->deleteFromFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1854
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$7300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/zui/gallery/util/ToastUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_3

    .line 1839
    :cond_9
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result p2

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->val$disableEdit:Z

    if-eqz p2, :cond_a

    goto :goto_2

    .line 1842
    :cond_a
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V

    goto :goto_3

    .line 1840
    :cond_b
    :goto_2
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;->this$0:Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    :goto_3
    return-void
.end method
