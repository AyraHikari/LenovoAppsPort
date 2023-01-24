.class Lcom/zui/gallery/trash/LenovoTrashListFragment$8;
.super Ljava/lang/Object;
.source "LenovoTrashListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/trash/LenovoTrashListFragment;->processingData(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

.field final synthetic val$data:Ljava/util/List;

.field final synthetic val$downLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1035
    iput-object p1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iput-object p2, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->val$data:Ljava/util/List;

    iput-object p3, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->val$downLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processLocalData()V
    .locals 5

    .line 1096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->val$data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/trash/TrashItem;

    .line 1098
    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    .line 1100
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_0

    .line 1101
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1104
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1106
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->val$data:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1107
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->val$data:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1109
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iget-object v1, v1, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    if-eqz v1, :cond_4

    .line 1110
    iget-object v1, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iget-object v1, v1, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->getActionModeSelectPaths()Ljava/util/List;

    move-result-object v1

    .line 1111
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1112
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$200(Lcom/zui/gallery/trash/LenovoTrashListFragment;Z)V

    .line 1113
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->val$downLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 1116
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->val$downLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1038
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    const/4 v1, 0x0

    .line 1043
    :try_start_0
    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1044
    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncOn()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncAllowed()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1046
    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/zui/gallery/cloud/CloudManager;->CLOUD_TRASH_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1047
    invoke-static {v1}, Lcom/zui/gallery/trash/CloudTrashItem;->getFromCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    if-eqz v1, :cond_5

    .line 1048
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1050
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    iget-object v3, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->val$data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/trash/TrashItem;

    .line 1052
    invoke-virtual {v4}, Lcom/zui/gallery/trash/TrashItem;->getTimestamp()Ljava/lang/String;

    move-result-object v5

    .line 1054
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_0

    .line 1055
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/gallery/trash/CloudTrashItem;

    .line 1058
    invoke-virtual {v4}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/zui/gallery/trash/CloudTrashItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1059
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1064
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1066
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->val$data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1067
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->val$data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1069
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    if-eqz v0, :cond_7

    .line 1070
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    iget-object v0, v0, Lcom/zui/gallery/trash/LenovoTrashListFragment;->trashRecyclerListAdapter:Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashRecyclerListAdapter;->getActionModeSelectPaths()Ljava/util/List;

    move-result-object v0

    .line 1071
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1072
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->this$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->access$200(Lcom/zui/gallery/trash/LenovoTrashListFragment;Z)V

    .line 1073
    iget-object v0, p0, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->val$downLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 1076
    :cond_4
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->processLocalData()V

    goto :goto_1

    .line 1079
    :cond_5
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->processLocalData()V

    goto :goto_1

    .line 1082
    :cond_6
    invoke-direct {p0}, Lcom/zui/gallery/trash/LenovoTrashListFragment$8;->processLocalData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 1088
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "zlq"

    .line 1085
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_9

    .line 1088
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1090
    :cond_9
    throw v0
.end method
