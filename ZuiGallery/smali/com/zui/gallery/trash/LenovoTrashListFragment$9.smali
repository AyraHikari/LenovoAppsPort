.class Lcom/zui/gallery/trash/LenovoTrashListFragment$9;
.super Ljava/lang/Object;
.source "LenovoTrashListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashListFragment;->startLoadCloudData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

.field final synthetic val$mApp:Lcom/zui/gallery/app/GalleryApp;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;Lcom/zui/gallery/app/GalleryApp;)V
    .locals 0

    .line 1131
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$9;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$9;->val$mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string/jumbo v0, "zlq"

    .line 1134
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$9;->val$mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$9;->val$mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncOn()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$9;->val$mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncAllowed()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 1137
    :try_start_0
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$9;->val$mApp:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/zui/gallery/cloud/CloudManager;->CLOUD_TRASH_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1138
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$9;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iget-object v2, v2, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1139
    invoke-static {v1}, Lcom/zui/gallery/trash/CloudTrashItem;->getFromCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    .line 1140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startLoadCloudData cloud size  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v3, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$9;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-virtual {v3}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/zui/gallery/trash/LenovoTrashListFragment$9$1;

    invoke-direct {v4, p0, v2}, Lcom/zui/gallery/trash/LenovoTrashListFragment$9$1;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment$9;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1150
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$9;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iget-object v2, v2, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    if-eqz v2, :cond_1

    .line 1151
    iget-object v2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$9;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-virtual {v2}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/zui/gallery/trash/LenovoTrashListFragment$9$2;

    invoke-direct {v3, p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$9$2;-><init>(Lcom/zui/gallery/trash/LenovoTrashListFragment$9;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 1163
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 1159
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startLoadCloudData ex  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_2

    .line 1163
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1165
    :cond_2
    throw v0

    :cond_3
    :goto_3
    return-void
.end method
