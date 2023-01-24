.class Lcom/zui/gallery/app/AlbumAddPage$6;
.super Ljava/lang/Thread;
.source "AlbumAddPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumAddPage;->addPic(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumAddPage;

.field final synthetic val$cloudItems:Ljava/util/List;

.field final synthetic val$image_ids:Ljava/util/ArrayList;

.field final synthetic val$isMove:Z

.field final synthetic val$video_ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumAddPage;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/util/List;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->val$image_ids:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->val$video_ids:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->val$isMove:Z

    iput-object p5, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->val$cloudItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 721
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/zui/gallery/app/GalleryApp;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->val$image_ids:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->val$video_ids:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    .line 722
    invoke-static {v0}, Lcom/zui/gallery/app/AlbumAddPage;->access$1700(Lcom/zui/gallery/app/AlbumAddPage;)I

    move-result v5

    iget-boolean v6, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->val$isMove:Z

    .line 721
    invoke-static/range {v1 .. v6}, Lcom/zui/gallery/util/GroupUtils;->batchCopy2Group(Lcom/zui/gallery/app/GalleryApp;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)V

    .line 723
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->val$cloudItems:Ljava/util/List;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumAddPage;->access$1700(Lcom/zui/gallery/app/AlbumAddPage;)I

    move-result v2

    iget-boolean v3, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->val$isMove:Z

    iget-object v4, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v4}, Lcom/zui/gallery/app/AlbumAddPage;->access$1800(Lcom/zui/gallery/app/AlbumAddPage;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/zui/gallery/cloud/CloudUtils;->batchCopy2Album(Lcom/zui/gallery/app/GalleryApp;Ljava/util/List;IZLandroid/os/Handler;)V

    .line 724
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->val$cloudItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 725
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumAddPage;->access$1800(Lcom/zui/gallery/app/AlbumAddPage;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$6;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumAddPage;->access$1800(Lcom/zui/gallery/app/AlbumAddPage;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
