.class Lcom/zui/gallery/app/AlbumSetAddPage$8;
.super Ljava/lang/Object;
.source "AlbumSetAddPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumSetAddPage;->showAddGroupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetAddPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetAddPage;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 857
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {p1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$2100(Lcom/zui/gallery/app/AlbumSetAddPage;)Lzui/app/MessageDialog;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/MessageDialog;->getEditorText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 859
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 860
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "\\"

    .line 869
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_7

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "*"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "?"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 870
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "<"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string/jumbo p2, "|"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_1

    .line 879
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object p2, p2, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p2, p1}, Lcom/zui/gallery/util/GroupUtils;->isSystemSameNameAlbum(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 880
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object p2, p2, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v2, v2, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v3, 0x7f100188

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {v2, v3, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 883
    :cond_1
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object p2, p2, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/zui/gallery/util/GroupUtils;->isGroupExist(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {p1}, Lcom/zui/gallery/cloud/CloudUtils;->isSystemAlbum(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_0

    .line 887
    :cond_2
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object p2, p2, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 888
    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 887
    invoke-static {p2, p1}, Lcom/zui/gallery/data/GroupBucketHelper;->insertGroupBucketToGroupTable(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 890
    invoke-static {p1}, Lcom/zui/gallery/util/GroupUtils;->makeGroupDir(Ljava/lang/String;)Z

    if-eqz p2, :cond_5

    .line 892
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v2, v2, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v2, v2, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 893
    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v2, v2, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v2

    new-instance v3, Lcom/zui/gallery/app/AlbumSetAddPage$8$1;

    invoke-direct {v3, p0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage$8$1;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage$8;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/zui/gallery/cloud/CloudManager;->createCloudAlbum(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 900
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 903
    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    instance-of p2, p2, Lcom/zui/gallery/app/AlbumSetAddMorePage;

    if-eqz p2, :cond_4

    .line 904
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 905
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 907
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 906
    invoke-static {v0, p2}, Lcom/zui/gallery/data/GroupBucketHelper;->batchDeleteWhite(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 908
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 909
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 908
    invoke-static {v0, p2, v1}, Lcom/zui/gallery/data/GroupBucketHelper;->batchUpdateGroupWhiteState(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)V

    .line 915
    :cond_4
    new-instance p2, Lzui/app/ActionDialog$Builder;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->getCurrentActionDialogTheme(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p2, v0, v1}, Lzui/app/ActionDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f100087

    .line 916
    invoke-virtual {p2, v0}, Lzui/app/ActionDialog$Builder;->setTitle(I)Lzui/app/ActionDialog$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 917
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/app/AlbumSetAddPage$8$2;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/app/AlbumSetAddPage$8$2;-><init>(Lcom/zui/gallery/app/AlbumSetAddPage$8;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lzui/app/ActionDialog$Builder;->setOptionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    .line 925
    invoke-virtual {p1, p2, v0}, Lzui/app/ActionDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/ActionDialog$Builder;->show()Lzui/app/ActionDialog;

    goto :goto_2

    .line 930
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    goto :goto_2

    .line 884
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p2, 0x7f10007b

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 871
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object p1, p1, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$8;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object p2, p2, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f100043

    invoke-virtual {p2, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_8
    :goto_2
    return-void
.end method
