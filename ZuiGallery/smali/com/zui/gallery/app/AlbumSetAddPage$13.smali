.class Lcom/zui/gallery/app/AlbumSetAddPage$13;
.super Ljava/lang/Thread;
.source "AlbumSetAddPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumSetAddPage;->addPic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

.field final synthetic val$cloud_ids:Ljava/util/ArrayList;

.field final synthetic val$image_ids:Ljava/util/ArrayList;

.field final synthetic val$video_ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetAddPage;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1295
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$13;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$13;->val$image_ids:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/zui/gallery/app/AlbumSetAddPage$13;->val$video_ids:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/zui/gallery/app/AlbumSetAddPage$13;->val$cloud_ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1300
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$13;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/zui/gallery/app/GalleryApp;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$13;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetAddPage$13;->val$image_ids:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetAddPage$13;->val$video_ids:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$13;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    .line 1301
    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$2700(Lcom/zui/gallery/app/AlbumSetAddPage;)I

    move-result v5

    const/4 v6, 0x0

    .line 1300
    invoke-static/range {v1 .. v6}, Lcom/zui/gallery/util/GroupUtils;->batchCopy2Group(Lcom/zui/gallery/app/GalleryApp;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)V

    .line 1302
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$13;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$13;->val$cloud_ids:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$13;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$2700(Lcom/zui/gallery/app/AlbumSetAddPage;)I

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetAddPage$13;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v3}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$700(Lcom/zui/gallery/app/AlbumSetAddPage;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/zui/gallery/cloud/CloudUtils;->batchCopy2Album(Lcom/zui/gallery/app/GalleryApp;Ljava/util/List;IZLandroid/os/Handler;)V

    .line 1303
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$13;->val$cloud_ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$13;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$700(Lcom/zui/gallery/app/AlbumSetAddPage;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$13;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$700(Lcom/zui/gallery/app/AlbumSetAddPage;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
