.class Lcom/zui/gallery/app/MoreAlbumSetPage$QueryCloudSyncSyncTask$1;
.super Ljava/lang/Object;
.source "MoreAlbumSetPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MoreAlbumSetPage$QueryCloudSyncSyncTask;->onPostExecute(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/MoreAlbumSetPage$QueryCloudSyncSyncTask;

.field final synthetic val$settings_hop_uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MoreAlbumSetPage$QueryCloudSyncSyncTask;Ljava/lang/String;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$QueryCloudSyncSyncTask$1;->this$1:Lcom/zui/gallery/app/MoreAlbumSetPage$QueryCloudSyncSyncTask;

    iput-object p2, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$QueryCloudSyncSyncTask$1;->val$settings_hop_uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 864
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$QueryCloudSyncSyncTask$1;->val$settings_hop_uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 866
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 867
    iget-object v0, p0, Lcom/zui/gallery/app/MoreAlbumSetPage$QueryCloudSyncSyncTask$1;->this$1:Lcom/zui/gallery/app/MoreAlbumSetPage$QueryCloudSyncSyncTask;

    iget-object v0, v0, Lcom/zui/gallery/app/MoreAlbumSetPage$QueryCloudSyncSyncTask;->this$0:Lcom/zui/gallery/app/MoreAlbumSetPage;

    iget-object v0, v0, Lcom/zui/gallery/app/MoreAlbumSetPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
