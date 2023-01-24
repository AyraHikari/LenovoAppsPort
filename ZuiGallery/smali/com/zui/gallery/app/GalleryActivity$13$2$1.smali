.class Lcom/zui/gallery/app/GalleryActivity$13$2$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/zui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/GalleryActivity$13$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/gallery/util/ThreadPool$Job<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zui/gallery/app/GalleryActivity$13$2;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/GalleryActivity$13$2;)V
    .locals 0

    .line 1548
    iput-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$13$2$1;->this$2:Lcom/zui/gallery/app/GalleryActivity$13$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 1548
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/GalleryActivity$13$2$1;->run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/zui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3

    .line 1551
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$13$2$1;->this$2:Lcom/zui/gallery/app/GalleryActivity$13$2;

    iget-object p1, p1, Lcom/zui/gallery/app/GalleryActivity$13$2;->this$1:Lcom/zui/gallery/app/GalleryActivity$13;

    iget-object p1, p1, Lcom/zui/gallery/app/GalleryActivity$13;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/GalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/cloud/CloudManager;->getNeedDownloadThumbnailCount()I

    move-result p1

    .line 1552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloudtest .getNeedDownloadThumbnailCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity$13$2$1;->this$2:Lcom/zui/gallery/app/GalleryActivity$13$2;

    iget-object v0, v0, Lcom/zui/gallery/app/GalleryActivity$13$2;->this$1:Lcom/zui/gallery/app/GalleryActivity$13;

    iget-object v0, v0, Lcom/zui/gallery/app/GalleryActivity$13;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->getNeedDownloadThumbnailCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1554
    new-instance v0, Lcom/zui/gallery/app/GalleryActivity$13$2$1$1;

    invoke-direct {v0, p0, p1}, Lcom/zui/gallery/app/GalleryActivity$13$2$1$1;-><init>(Lcom/zui/gallery/app/GalleryActivity$13$2$1;I)V

    .line 1563
    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryActivity$13$2$1$1;->start()V

    goto :goto_0

    :cond_0
    const-string p1, "cloudtest onServiceConnected no need to download thumbnails"

    .line 1565
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$13$2$1;->this$2:Lcom/zui/gallery/app/GalleryActivity$13$2;

    iget-object p1, p1, Lcom/zui/gallery/app/GalleryActivity$13$2;->this$1:Lcom/zui/gallery/app/GalleryActivity$13;

    iget-object p1, p1, Lcom/zui/gallery/app/GalleryActivity$13;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/GalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/cloud/CloudManager;->isDownloadAutoSyncAllowed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1567
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$13$2$1;->this$2:Lcom/zui/gallery/app/GalleryActivity$13$2;

    iget-object p1, p1, Lcom/zui/gallery/app/GalleryActivity$13$2;->this$1:Lcom/zui/gallery/app/GalleryActivity$13;

    iget-object p1, p1, Lcom/zui/gallery/app/GalleryActivity$13;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/GalleryActivity;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/cloud/CloudManager;->tryForceSync()V

    .line 1571
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$13$2$1;->this$2:Lcom/zui/gallery/app/GalleryActivity$13$2;

    iget-object p1, p1, Lcom/zui/gallery/app/GalleryActivity$13$2;->this$1:Lcom/zui/gallery/app/GalleryActivity$13;

    iget-object p1, p1, Lcom/zui/gallery/app/GalleryActivity$13;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/zui/gallery/cloud/CloudUtils;->ALBUM_AUTO_SYNC_CHANGED_URI:Landroid/net/Uri;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v2
.end method
