.class Lcom/zui/gallery/app/AlbumAddPage$5;
.super Ljava/lang/Object;
.source "AlbumAddPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumAddPage;->onSyncDone(Lcom/zui/gallery/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumAddPage;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumAddPage;I)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumAddPage$5;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iput p2, p0, Lcom/zui/gallery/app/AlbumAddPage$5;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumAddPage$5;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumAddPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    .line 555
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 556
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage$5;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget v2, p0, Lcom/zui/gallery/app/AlbumAddPage$5;->val$resultCode:I

    invoke-static {v1, v2}, Lcom/zui/gallery/app/AlbumAddPage;->access$1102(Lcom/zui/gallery/app/AlbumAddPage;I)I

    .line 558
    :try_start_0
    iget v1, p0, Lcom/zui/gallery/app/AlbumAddPage$5;->val$resultCode:I

    if-nez v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage$5;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/zui/gallery/app/AlbumAddPage;->access$1202(Lcom/zui/gallery/app/AlbumAddPage;Z)Z

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage$5;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/zui/gallery/app/AlbumAddPage;->access$1300(Lcom/zui/gallery/app/AlbumAddPage;I)V

    .line 562
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumAddPage$5;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumAddPage$5;->this$0:Lcom/zui/gallery/app/AlbumAddPage;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumAddPage;->access$1400(Lcom/zui/gallery/app/AlbumAddPage;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/zui/gallery/app/AlbumAddPage;->access$1500(Lcom/zui/gallery/app/AlbumAddPage;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 565
    throw v1
.end method
