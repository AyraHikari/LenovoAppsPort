.class Lcom/zui/gallery/app/AlbumPage$5;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/AlbumPage;->onSyncDone(Lcom/zui/gallery/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/AlbumPage;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/AlbumPage;I)V
    .locals 0

    .line 1119
    iput-object p1, p0, Lcom/zui/gallery/app/AlbumPage$5;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iput p2, p0, Lcom/zui/gallery/app/AlbumPage$5;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1122
    iget-object v0, p0, Lcom/zui/gallery/app/AlbumPage$5;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v0, v0, Lcom/zui/gallery/app/AlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    .line 1123
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 1124
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$5;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget v2, p0, Lcom/zui/gallery/app/AlbumPage$5;->val$resultCode:I

    invoke-static {v1, v2}, Lcom/zui/gallery/app/AlbumPage;->access$1302(Lcom/zui/gallery/app/AlbumPage;I)I

    .line 1126
    :try_start_0
    iget v1, p0, Lcom/zui/gallery/app/AlbumPage$5;->val$resultCode:I

    if-nez v1, :cond_0

    .line 1127
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$5;->this$0:Lcom/zui/gallery/app/AlbumPage;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/zui/gallery/app/AlbumPage;->access$1402(Lcom/zui/gallery/app/AlbumPage;Z)Z

    .line 1129
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$5;->this$0:Lcom/zui/gallery/app/AlbumPage;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/zui/gallery/app/AlbumPage;->access$1500(Lcom/zui/gallery/app/AlbumPage;I)V

    .line 1130
    iget-object v1, p0, Lcom/zui/gallery/app/AlbumPage$5;->this$0:Lcom/zui/gallery/app/AlbumPage;

    iget-object v2, p0, Lcom/zui/gallery/app/AlbumPage$5;->this$0:Lcom/zui/gallery/app/AlbumPage;

    invoke-static {v2}, Lcom/zui/gallery/app/AlbumPage;->access$1600(Lcom/zui/gallery/app/AlbumPage;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/zui/gallery/app/AlbumPage;->access$1700(Lcom/zui/gallery/app/AlbumPage;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 1133
    throw v1
.end method
