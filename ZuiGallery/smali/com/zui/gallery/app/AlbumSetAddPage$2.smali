.class Lcom/zui/gallery/app/AlbumSetAddPage$2;
.super Ljava/lang/Thread;
.source "AlbumSetAddPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumSetAddPage;->insertGroupAlbum(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

.field final synthetic val$cloud_ids:Ljava/util/ArrayList;

.field final synthetic val$groupId:I

.field final synthetic val$image_ids:Ljava/util/ArrayList;

.field final synthetic val$isMove:Z

.field final synthetic val$video_ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumSetAddPage;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLjava/util/ArrayList;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iput-object p2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->val$image_ids:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->val$video_ids:Ljava/util/ArrayList;

    iput p4, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->val$groupId:I

    iput-boolean p5, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->val$isMove:Z

    iput-object p6, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->val$cloud_ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 359
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/zui/gallery/app/GalleryApp;

    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->val$image_ids:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->val$video_ids:Ljava/util/ArrayList;

    iget v5, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->val$groupId:I

    iget-boolean v6, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->val$isMove:Z

    invoke-static/range {v1 .. v6}, Lcom/zui/gallery/util/GroupUtils;->batchCopy2Group(Lcom/zui/gallery/app/GalleryApp;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)V

    .line 362
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumSetAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->val$cloud_ids:Ljava/util/ArrayList;

    iget v2, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->val$groupId:I

    iget-boolean v3, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->val$isMove:Z

    iget-object v4, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v4}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$700(Lcom/zui/gallery/app/AlbumSetAddPage;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/zui/gallery/cloud/CloudUtils;->batchCopy2Album(Lcom/zui/gallery/app/GalleryApp;Ljava/util/List;IZLandroid/os/Handler;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertGroupAlbum groupId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->val$groupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumSetAddPage"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v0}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$700(Lcom/zui/gallery/app/AlbumSetAddPage;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 365
    iput v1, v0, Landroid/os/Message;->what:I

    .line 366
    iget v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->val$groupId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 367
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->val$cloud_ids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 368
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$700(Lcom/zui/gallery/app/AlbumSetAddPage;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumSetAddPage$2;->this$0:Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-static {v1}, Lcom/zui/gallery/app/AlbumSetAddPage;->access$700(Lcom/zui/gallery/app/AlbumSetAddPage;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method
