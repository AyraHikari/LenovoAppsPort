.class Lcom/zui/gallery/app/AlbumPage$16;
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

.field final synthetic val$disableEdit:Z

.field final synthetic val$isExist:Z


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumPage;ZZ)V
    .locals 0

    .line 2102
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iput-boolean p2, p0, Lcom/zui/gallery/app/AlbumPage$16;->val$disableEdit:Z

    iput-boolean p3, p0, Lcom/zui/gallery/app/AlbumPage$16;->val$isExist:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

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

    .line 2144
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$2800(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    new-instance p2, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v2, v1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-string v3, "DeleteProgress"

    invoke-direct {p2, v1, v2, v3}, Lcom/zui/gallery/app/AlbumPage$DeleteProgressListener;-><init>(Lcom/zui/gallery/app/AlbumPage;Lcom/zui/gallery/app/AbstractGalleryActivity;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/ActionModeHandler;->setDeleteProgressListener(Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    .line 2146
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$2800(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto/16 :goto_3

    .line 2130
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumPage$16;->val$disableEdit:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 2133
    :cond_2
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumPage$16;->val$isExist:Z

    if-nez p1, :cond_3

    .line 2134
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    .line 2135
    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    .line 2134
    invoke-static {p1, p2, v0}, Lcom/zui/gallery/data/GroupBucketHelper;->addToFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;

    .line 2136
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1, v1}, Lcom/zui/gallery/util/ToastUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_3

    .line 2138
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/data/GroupBucketHelper;->deleteFromFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 2139
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1, v2}, Lcom/zui/gallery/util/ToastUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_3

    .line 2131
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$2800(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto/16 :goto_3

    .line 2115
    :cond_5
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p2, p2, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result p2

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/zui/gallery/app/AlbumPage$16;->val$disableEdit:Z

    if-eqz p2, :cond_6

    goto :goto_1

    .line 2125
    :cond_6
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$2800(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    goto :goto_3

    .line 2116
    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcom/zui/gallery/app/AlbumPage$16;->val$isExist:Z

    if-nez p1, :cond_8

    .line 2117
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    .line 2118
    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    .line 2117
    invoke-static {p1, p2, v0}, Lcom/zui/gallery/data/GroupBucketHelper;->addToFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;

    .line 2119
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1, v1}, Lcom/zui/gallery/util/ToastUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_3

    .line 2121
    :cond_8
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/data/GroupBucketHelper;->deleteFromFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 2122
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1, v2}, Lcom/zui/gallery/util/ToastUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_3

    .line 2107
    :cond_9
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object p2, p2, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result p2

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/zui/gallery/app/AlbumPage$16;->val$disableEdit:Z

    if-eqz p2, :cond_a

    goto :goto_2

    .line 2110
    :cond_a
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumPage;->access$3000(Lcom/zui/gallery/app/AlbumPage;)V

    goto :goto_3

    .line 2108
    :cond_b
    :goto_2
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {p2}, Lcom/zui/gallery/app/AlbumPage;->access$2800(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$16;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$2900(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->onFloatDialogItemClick(ILcom/zui/gallery/data/Path;)V

    :goto_3
    return-void
.end method
