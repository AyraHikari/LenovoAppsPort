.class Lcom/zui/gallery/jobscheduler/SyncTrashTask$1;
.super Ljava/lang/Thread;
.source "SyncTrashTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/jobscheduler/SyncTrashTask;->startSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/jobscheduler/SyncTrashTask;


# direct methods
.method constructor <init>(Lcom/zui/gallery/jobscheduler/SyncTrashTask;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/zui/gallery/jobscheduler/SyncTrashTask$1;->this$0:Lcom/zui/gallery/jobscheduler/SyncTrashTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string/jumbo v0, "wangcan"

    const-string/jumbo v1, "startSync...."

    .line 37
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/zui/gallery/jobscheduler/SyncTrashTask$1;->this$0:Lcom/zui/gallery/jobscheduler/SyncTrashTask;

    invoke-static {v0}, Lcom/zui/gallery/jobscheduler/SyncTrashTask;->access$000(Lcom/zui/gallery/jobscheduler/SyncTrashTask;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->getDeleteCloudAlbums(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wangcanDeleteCLoud"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v2, p0, Lcom/zui/gallery/jobscheduler/SyncTrashTask$1;->this$0:Lcom/zui/gallery/jobscheduler/SyncTrashTask;

    invoke-static {v2}, Lcom/zui/gallery/jobscheduler/SyncTrashTask;->access$000(Lcom/zui/gallery/jobscheduler/SyncTrashTask;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Lcom/zui/gallery/jobscheduler/SyncTrashTask$1$1;

    invoke-direct {v3, p0}, Lcom/zui/gallery/jobscheduler/SyncTrashTask$1$1;-><init>(Lcom/zui/gallery/jobscheduler/SyncTrashTask$1;)V

    invoke-virtual {v2, v1, v3}, Lcom/zui/gallery/cloud/CloudManager;->deleteCloudAlbum(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Lcom/zui/gallery/trash/TrashBackGroundTask;

    iget-object v1, p0, Lcom/zui/gallery/jobscheduler/SyncTrashTask$1;->this$0:Lcom/zui/gallery/jobscheduler/SyncTrashTask;

    invoke-static {v1}, Lcom/zui/gallery/jobscheduler/SyncTrashTask;->access$000(Lcom/zui/gallery/jobscheduler/SyncTrashTask;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/trash/TrashBackGroundTask;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/zui/gallery/trash/TrashBackGroundTask;->loadInBackground()Ljava/util/List;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/trash/TrashItem;

    .line 58
    invoke-virtual {v2}, Lcom/zui/gallery/trash/TrashItem;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/zui/gallery/jobscheduler/SyncTrashTask$1;->this$0:Lcom/zui/gallery/jobscheduler/SyncTrashTask;

    invoke-static {v0}, Lcom/zui/gallery/jobscheduler/SyncTrashTask;->access$000(Lcom/zui/gallery/jobscheduler/SyncTrashTask;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/cloud/CloudManager;->deleteCloudImage(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
