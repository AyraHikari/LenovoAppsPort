.class Lcom/zui/gallery/app/MoreAlbumSetPage$8;
.super Ljava/lang/Object;
.source "MoreAlbumSetPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MoreAlbumSetPage;->showAddGroupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MoreAlbumSetPage;)V
    .locals 0

    .line 1184
    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$8;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1187
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$8;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    invoke-static {p1}, Lcom/zui/gallery/app/MoreAlbumSetPage;->access$2700(Lcom/zui/gallery/app/MoreAlbumSetPage;)Lzui/app/MessageDialog;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/MessageDialog;->getEditorText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1189
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "\\"

    .line 1199
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_4

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "*"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "?"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 1200
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "<"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string/jumbo p2, "|"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_1

    .line 1209
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$8;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object p2, p2, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p2, p1}, Lcom/zui/gallery/util/GroupUtils;->isSystemSameNameAlbum(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 1210
    iget-object p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$8;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object p2, p2, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$8;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object v2, v2, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v3, 0x7f100188

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {v2, v3, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1213
    :cond_1
    iget-object p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$8;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object p2, p2, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/zui/gallery/util/GroupUtils;->isGroupExist(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/zui/gallery/cloud/CloudUtils;->isSystemAlbum(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1218
    :cond_2
    iget-object p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$8;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object p2, p2, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1219
    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 1218
    invoke-static {p2, p1}, Lcom/zui/gallery/data/GroupBucketHelper;->insertGroupBucketToGroupTable(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1222
    iget-object p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$8;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object p2, p2, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$8;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object p2, p2, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncOn()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1223
    iget-object p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$8;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object p2, p2, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p2

    new-instance v0, Lcom/zui/gallery/app/MoreAlbumSetPage$8$1;

    invoke-direct {v0, p0, p1}, Lcom/zui/gallery/app/MoreAlbumSetPage$8$1;-><init>(Lcom/zui/gallery/app/MoreAlbumSetPage$8;Ljava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/cloud/CloudManager;->createCloudAlbum(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1214
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$8;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object p1, p1, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p2, 0x7f10007b

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1201
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$8;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object p1, p1, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$8;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object p2, p2, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f100043

    invoke-virtual {p2, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_2
    return-void
.end method
