.class Lcom/zui/gallery/app/AlbumPage$7$1;
.super Ljava/lang/Thread;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumPage$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/gallery/app/AlbumPage$7;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumPage$7;)V
    .locals 0

    .line 1406
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$7$1;->this$1:Lcom/zui/gallery/app/AlbumPage$7;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1409
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$7$1;->this$1:Lcom/zui/gallery/app/AlbumPage$7;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage$7;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1410
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$7$1;->this$1:Lcom/zui/gallery/app/AlbumPage$7;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumPage$7;->val$ids:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage$7$1;->this$1:Lcom/zui/gallery/app/AlbumPage$7;

    iget-object v2, v2, Lcom/zui/gallery/app/AlbumPage$7;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumPage;->access$2000(Lcom/zui/gallery/app/AlbumPage;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v2

    .line 1411
    invoke-virtual {v2}, Lcom/zui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v2

    .line 1409
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/data/GroupBucketHelper;->batchDeleteGroupMemberShips(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1413
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$7$1;->this$1:Lcom/zui/gallery/app/AlbumPage$7;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage$7;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$7$1;->this$1:Lcom/zui/gallery/app/AlbumPage$7;

    iget-object v1, v1, Lcom/zui/gallery/app/AlbumPage$7;->val$paths2:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/zui/gallery/data/GroupBucketHelper;->batchDeleteMediaImageOrVideo(Lcom/zui/gallery/app/AbstractGalleryActivity;Ljava/util/ArrayList;)V

    .line 1415
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$7$1;->this$1:Lcom/zui/gallery/app/AlbumPage$7;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage$7;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumPage;->access$1900(Lcom/zui/gallery/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
